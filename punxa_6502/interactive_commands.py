# -*- coding: utf-8 -*-
"""
Created on Thu Jun  5 17:32:10 2025

@author: 2016570
"""
import punxa_6502
import io
from contextlib import redirect_stdout

TEST_NUM_ADDRESS = 0x60
TEST_RESULT_ADDRESS = 0x2000
TEST_BLOCK_ADDRESS = 0x2002
TEST_STATUS_ADDRESS = 0x2004
_ci_cpu = None
_ci_mem = None

def dump(address, size=0x100, mem_base=0):
    memory = _ci_mem
    pos = address 
    for i in range((size+15)//16):
        sline = ''
        print('{:016X}:|'.format(pos), end='')
        for j in range(16):
            value = memory.readByte(pos-mem_base)
            print('{:02X}'.format(value), end='')
            if (value >= 32 and value < 127):
                sline += chr(value)
            else:
                sline += '·'
            pos += 1
            
        print('| "{}"'.format(sline))
#    memory.write(32*4+0x00, 0xfe010113) # addi    sp,sp,-32
#    memory.write(32*4+0x04, 0x00112e23) # sw      ra,28(sp)

def byte(address, n_bytes=1):
    memory = _ci_mem
    pos = address
    #print('{:016X}:|'.format(pos), end='')
    for j in range(n_bytes):
        value = memory.readByte(pos+j)
        print('{:02X}'.format(value), end='')

def step(num=1):
    global hw
    cpu = _ci_cpu
    sim = cpu.parent.getSimulator()
    
    while (num > 0):
        ret = cpu.getRetiredInstructions()
        
        while (ret == cpu.getRetiredInstructions()):
            sim.clk()        

        num -= 1
    
def silentStep(cpu, sim):
    ret = cpu.getRetiredInstructions()
        
    while(ret == cpu.getRetiredInstructions()):
        # Això és per eliminar l'output de la funció
        f = io.StringIO()
        with redirect_stdout(f):
            sim.clk()
      
def tests():
    cpu = _ci_cpu
    sim = cpu.parent.getSimulator()
    memory = _ci_mem
    
    passed = 0
    failed = 0
    passedTotal = 0
    failedTotal = 0
    
    test_status = memory.readByte(TEST_STATUS_ADDRESS)

    while(test_status == 0):
        test_status = memory.readByte(TEST_STATUS_ADDRESS)
         # Seguir passant cicles
        silentStep(cpu, sim)  

    test_result = memory.readByte(TEST_RESULT_ADDRESS)
    test_number = memory.readByte(TEST_NUM_ADDRESS)
    test_block = memory.readByte(TEST_BLOCK_ADDRESS)

    while(test_status == 1): # Mentre els tests no hagin acabat
        print("Test block", test_block)
        passed = 0
        failed = 0
        while (test_block == memory.readByte(TEST_BLOCK_ADDRESS)): # Seguim en el mateix bloc      
            while (test_number == memory.readByte(TEST_NUM_ADDRESS)): # Seguim en el mateix test
                # Seguir passant cicles
                silentStep(cpu, sim)         
            # Canvia el num del test
            test_number = memory.readByte(TEST_NUM_ADDRESS)
            test_status = memory.readByte(TEST_STATUS_ADDRESS)
            test_result = memory.readByte(TEST_RESULT_ADDRESS)
            if (test_result == 0xBE):
                passed+=1
                passedTotal += 1
                #print("passed")
            else:
                failed+=1
                failedTotal += 1
                print("-> Failed test number", test_number)
            if(test_status == 0):
                break
        test_block = memory.readByte(TEST_BLOCK_ADDRESS)
        
        # Canvia el num de bloc
        print(f"    Result: {passed}/{passed + failed} passed")
        if(test_status == 0):
                break
    if (failedTotal == 0):
        print(f"\nWell done, all tests passed! ({passedTotal} tests)")
    else:
        print(f"\nSome tests failed. {passedTotal} passed, {failedTotal} failed.")
    sim.stop()


def regs():
    cpu = _ci_cpu

    pc = cpu._wires['q_PC'].get()
    a = cpu._wires['q_A'].get()
    x = cpu._wires['q_X'].get()
    y = cpu._wires['q_Y'].get()
    sp = cpu._wires['q_SP'].get()
    
    print(f'PC= {pc:04X}')    
    print(f' A=   {a:02X}')    
    print(f' X=   {x:02X}')    
    print(f' Y=   {y:02X}')    
    print(f'SP=   {sp:02X}')    
    
def info():
    print("Test number: ", end='')
    byte(address=0x60)
    print()
    print("Test result: ", end='')
    byte(address=0x2000)
    print()
    print("Test status: ", end='')
    byte(address=0x2004)
    print()
