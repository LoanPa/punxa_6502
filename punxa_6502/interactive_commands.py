# -*- coding: utf-8 -*-
"""
Created on Thu Jun  5 17:32:10 2025

@author: 2016570
"""
import punxa_6502

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


def step(num=1):
    global hw
    cpu = _ci_cpu
    sim = cpu.parent.getSimulator()
    
    while (num > 0):
        ret = cpu.getRetiredInstructions()
        
        while (ret == cpu.getRetiredInstructions()):
            sim.clk()        

        num -= 1
        
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
    