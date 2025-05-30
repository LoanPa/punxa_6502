# -*- coding: utf-8 -*-
"""
Created on Fri May 30 15:54:56 2025

@author: dcr
"""

def readSymbols(filename):
    """
    Parses the content of a map file to extract symbol addresses and names
    without using regular expressions.

    Args:
        map_file_content (str): The entire content of the map file as a string.

    Returns:
        list: A list of tuples, where each tuple contains (symbol_name, address).
              The address is an integer.
    """
    
    symbols = []

    with open(filename, "r") as f:
         lines = f.readlines()

    for line in lines:
        line = line.strip() # Remove leading/trailing whitespace for easier processing

        # Check if the line is long enough to potentially contain a symbol and address
        # A minimal line like "00000000 _a" would be at least 11 chars
        if len(line) < 10:
            continue

        # Check if the first 8 characters are hexadecimal digits
        potential_address_hex = line[:8]
        try:
            address_int = int(potential_address_hex, 16)
        except ValueError:
            # Not a valid hexadecimal number, so it's not a symbol line
            continue

        # After the 8-digit address, there should be whitespace, then the symbol name.
        # Find the end of the address and the start of the symbol.
        # We need to find the first non-whitespace character after the address.
        symbol_start_index = -1
        for i in range(8, len(line)):
            if not line[i].isspace():
                symbol_start_index = i
                break

        if symbol_start_index != -1:
            # The symbol name goes until the next block of multiple spaces
            # or the end of the line if no more spaces.
            # We assume the symbol name is the first word after the address.
            parts_after_address = line[symbol_start_index:].split(maxsplit=1)
            if parts_after_address:
                symbol_name = parts_after_address[0]
                symbols.append((symbol_name, address_int))

    return symbols


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