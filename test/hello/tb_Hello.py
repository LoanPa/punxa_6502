# -*- coding: utf-8 -*-
"""
Created on Wed May 28 13:42:54 2025

@author: 2016570
"""
import py4hw


import punxa_6502 as punxa

class ParseHexFile:
    def __init__(self, filename):
        self.n = 0
        with open(filename, 'r') as f:
            self.lines = f.readlines()
            
    def parseLine(self, line):
        line = line.strip()
        
        if not(line.startswith(':')):
            return None, None, None
        
        line = line[1:] # remove 
        
        byte_count_str = line[0:2]
        address_str = line[2:6]
        record_type_str = line[6:8]
        data_str = line[8:-2] # Data is everything between record type and checksum
        checksum_str = line[-2:]
        
        byte_count = int(byte_count_str, 16)
        address = int(address_str, 16)
        record_type = int(record_type_str, 16)
        provided_checksum = int(checksum_str, 16)

        data_bytes = []

        if record_type == 0x00:
            for i in range(0, len(data_str), 2):
                data_bytes.append(int(data_str[i:i+2], 16))
            
        return record_type, address, data_bytes

def buildHw():
    global hw
    global cpu
    global mem
    global uart
    
    hw = py4hw.HWSystem()
    
    reset = hw.wire('reset')
    irq = hw.wire('irq')
    nmi = hw.wire('nmi')
    
    mem_width = 8
    mem_base = 0
    
    port_c = punxa.MemoryInterface(hw, 'port_c', mem_width, 16)
    port_m = punxa.MemoryInterface(hw, 'port_m', mem_width, 12)
    port_u = punxa.MemoryInterface(hw, 'port_u', mem_width, 2)
    
    serial = punxa.SerialInterface(hw, 'serial')
    
    memory = punxa.SparseMemory(hw, 'main_memory', mem_width, 32, port_m, mem_base=mem_base)
    
    uart = punxa.Uart6551(hw, 'uart', port_u, reset, serial)
    
    UART_BASE = 0xE000
    
    bus = punxa.MultiplexedBus(hw, 'bus', port_c, [(port_m, mem_base),
                                          #(port_t, test_base),
                                          #(port_d, 0x01BFF00000),
                                          (port_u, UART_BASE),
                                          #(port_p, 0xFFF1100000),
                                          #(port_l, 0xFFF1020000)
                                          ])
    
    
    cpu = punxa.SingleCycle6502(hw, 'cpu', port_c, reset, irq, nmi, 0)
    
    
    memory.reallocArea(0, 0x1000) # 4 KB
    #memory.reallocArea(0xFFF0, 0x10)
    
    parser = ParseHexFile('hello.ihx')
        
    for line in parser.lines:
        linetype, address, data = parser.parseLine(line)
        
        #print(linetype, f'{address:04X}', data)
        
        if (linetype == 0x00):
            for i in range(len(data)):
                ea = address+i # effective address
                
                
                if (ea == 0xFFFA):
                    nmi_lo = data[i]
                elif (ea == 0xFFFB):
                    nmi_hi = data[i]
                elif (ea == 0xFFFC):
                    reset_lo = data[i]
                elif (ea == 0xFFFD):
                    reset_hi = data[i]
                elif (ea == 0xFFFE):
                    irq_lo = data[i]
                elif (ea == 0xFFFF):
                    irq_hi = data[i]
                else:
                    memory.writeByte(ea, data[i])    
                    
    # Load symbols
    symbols = punxa.readSymbols('hello.map')
    
    for symbol, add in symbols:
        cpu.symbols[add] = symbol
    
    
    #for i in range(len(data)):
    #    memory.writeByte(i, data[i])
    #    if (i % 16 == 0):
    #        print(f'\nwriting {i:04X} =', end='')
    #    print(f'{data[i]:02X} ', end='')
    
    cpu.nmi_address = (nmi_hi << 8) | nmi_lo
    cpu.reset_address = (reset_hi << 8) | reset_lo
    cpu.irq = (irq_hi << 8) | irq_lo
    
    cpu.pc = cpu.reset_address
    
    print()
    
    
buildHw()