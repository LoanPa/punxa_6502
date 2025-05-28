# (Addressing Mode Constants defined above should precede this)

# The lookup table for all 256 opcodes.
# Each entry is a tuple: (mnemonic, addressing_mode)
# 'None' or ('ILL', ADDRESSING_NONE) for illegal opcodes.
_OPCODE_MAP = [None] * 256 # Initialize with None for all 256 possible opcodes

# Fill in the legal opcodes based on the sorted table provided previously
# Format: (mnemonic, addressing_mode)

# Row 0x00-0x0F
_OPCODE_MAP[0x00] = ('BRK', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x01] = ('ORA', ADDRESSING_INDIRECTX)
# 0x02, 0x03, 0x04 are illegal/undocumented
_OPCODE_MAP[0x05] = ('ORA', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x06] = ('ASL', ADDRESSING_ZEROPAGE)
# 0x07 is illegal/undocumented
_OPCODE_MAP[0x08] = ('PHP', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x09] = ('ORA', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0x0A] = ('ASL', ADDRESSING_ACCUMULATOR)
# 0x0B, 0x0C are illegal/undocumented
_OPCODE_MAP[0x0D] = ('ORA', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x0E] = ('ASL', ADDRESSING_ABSOLUTE)
# 0x0F is illegal/undocumented

# Row 0x10-0x1F
_OPCODE_MAP[0x10] = ('BPL', ADDRESSING_RELATIVE)
_OPCODE_MAP[0x11] = ('ORA', ADDRESSING_INDIRECTY)
# 0x12, 0x13, 0x14 are illegal/undocumented
_OPCODE_MAP[0x15] = ('ORA', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x16] = ('ASL', ADDRESSING_ZEROPAGEX)
# 0x17 is illegal/undocumented
_OPCODE_MAP[0x18] = ('CLC', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x19] = ('ORA', ADDRESSING_ABSOLUTEY)
# 0x1A, 0x1B, 0x1C are illegal/undocumented
_OPCODE_MAP[0x1D] = ('ORA', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0x1E] = ('ASL', ADDRESSING_ABSOLUTEX)
# 0x1F is illegal/undocumented

# Row 0x20-0x2F
_OPCODE_MAP[0x20] = ('JSR', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x21] = ('AND', ADDRESSING_INDIRECTX)
# 0x22, 0x23 are illegal/undocumented
_OPCODE_MAP[0x24] = ('BIT', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x25] = ('AND', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x26] = ('ROL', ADDRESSING_ZEROPAGE)
# 0x27 is illegal/undocumented
_OPCODE_MAP[0x28] = ('PLP', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x29] = ('AND', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0x2A] = ('ROL', ADDRESSING_ACCUMULATOR)
# 0x2B is illegal/undocumented
_OPCODE_MAP[0x2C] = ('BIT', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x2D] = ('AND', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x2E] = ('ROL', ADDRESSING_ABSOLUTE)
# 0x2F is illegal/undocumented

# Row 0x30-0x3F
_OPCODE_MAP[0x30] = ('BMI', ADDRESSING_RELATIVE)
_OPCODE_MAP[0x31] = ('AND', ADDRESSING_INDIRECTY)
# 0x32, 0x33, 0x34 are illegal/undocumented
_OPCODE_MAP[0x35] = ('AND', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x36] = ('ROL', ADDRESSING_ZEROPAGEX)
# 0x37 is illegal/undocumented
_OPCODE_MAP[0x38] = ('SEC', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x39] = ('AND', ADDRESSING_ABSOLUTEY)
# 0x3A, 0x3B, 0x3C are illegal/undocumented
_OPCODE_MAP[0x3D] = ('AND', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0x3E] = ('ROL', ADDRESSING_ABSOLUTEX)
# 0x3F is illegal/undocumented

# Row 0x40-0x4F
_OPCODE_MAP[0x40] = ('RTI', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x41] = ('EOR', ADDRESSING_INDIRECTX)
# 0x42, 0x43, 0x44 are illegal/undocumented
_OPCODE_MAP[0x45] = ('EOR', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x46] = ('LSR', ADDRESSING_ZEROPAGE)
# 0x47 is illegal/undocumented
_OPCODE_MAP[0x48] = ('PHA', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x49] = ('EOR', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0x4A] = ('LSR', ADDRESSING_ACCUMULATOR)
# 0x4B is illegal/undocumented
_OPCODE_MAP[0x4C] = ('JMP', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x4D] = ('EOR', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x4E] = ('LSR', ADDRESSING_ABSOLUTE)
# 0x4F is illegal/undocumented

# Row 0x50-0x5F
_OPCODE_MAP[0x50] = ('BVC', ADDRESSING_RELATIVE)
_OPCODE_MAP[0x51] = ('EOR', ADDRESSING_INDIRECTY)
# 0x52, 0x53, 0x54 are illegal/undocumented
_OPCODE_MAP[0x55] = ('EOR', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x56] = ('LSR', ADDRESSING_ZEROPAGEX)
# 0x57 is illegal/undocumented
_OPCODE_MAP[0x58] = ('CLI', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x59] = ('EOR', ADDRESSING_ABSOLUTEY)
# 0x5A, 0x5B, 0x5C are illegal/undocumented
_OPCODE_MAP[0x5D] = ('EOR', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0x5E] = ('LSR', ADDRESSING_ABSOLUTEX)
# 0x5F is illegal/undocumented

# Row 0x60-0x6F
_OPCODE_MAP[0x60] = ('RTS', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x61] = ('ADC', ADDRESSING_INDIRECTX)
# 0x62, 0x63, 0x64 are illegal/undocumented
_OPCODE_MAP[0x65] = ('ADC', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x66] = ('ROR', ADDRESSING_ZEROPAGE)
# 0x67 is illegal/undocumented
_OPCODE_MAP[0x68] = ('PLA', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x69] = ('ADC', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0x6A] = ('ROR', ADDRESSING_ACCUMULATOR)
# 0x6B is illegal/undocumented
_OPCODE_MAP[0x6C] = ('JMP', ADDRESSING_INDIRECT) # JMP only uses this mode
_OPCODE_MAP[0x6D] = ('ADC', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x6E] = ('ROR', ADDRESSING_ABSOLUTE)
# 0x6F is illegal/undocumented

# Row 0x70-0x7F
_OPCODE_MAP[0x70] = ('BVS', ADDRESSING_RELATIVE)
_OPCODE_MAP[0x71] = ('ADC', ADDRESSING_INDIRECTY)
# 0x72, 0x73, 0x74 are illegal/undocumented
_OPCODE_MAP[0x75] = ('ADC', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x76] = ('ROR', ADDRESSING_ZEROPAGEX)
# 0x77 is illegal/undocumented
_OPCODE_MAP[0x78] = ('SEI', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x79] = ('ADC', ADDRESSING_ABSOLUTEY)
# 0x7A, 0x7B, 0x7C are illegal/undocumented
_OPCODE_MAP[0x7D] = ('ADC', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0x7E] = ('ROR', ADDRESSING_ABSOLUTEX)
# 0x7F is illegal/undocumented

# Row 0x80-0x8F
# 0x80 is illegal/undocumented
_OPCODE_MAP[0x81] = ('STA', ADDRESSING_INDIRECTX)
# 0x82, 0x83 are illegal/undocumented
_OPCODE_MAP[0x84] = ('STY', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x85] = ('STA', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0x86] = ('STX', ADDRESSING_ZEROPAGE)
# 0x87 is illegal/undocumented
_OPCODE_MAP[0x88] = ('DEY', ADDRESSING_IMPLIED)
# 0x89 is illegal/undocumented
_OPCODE_MAP[0x8A] = ('TXA', ADDRESSING_IMPLIED)
# 0x8B is illegal/undocumented
_OPCODE_MAP[0x8C] = ('STY', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x8D] = ('STA', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0x8E] = ('STX', ADDRESSING_ABSOLUTE)
# 0x8F is illegal/undocumented

# Row 0x90-0x9F
_OPCODE_MAP[0x90] = ('BCC', ADDRESSING_RELATIVE)
_OPCODE_MAP[0x91] = ('STA', ADDRESSING_INDIRECTY)
# 0x92, 0x93 are illegal/undocumented
_OPCODE_MAP[0x94] = ('STY', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x95] = ('STA', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0x96] = ('STX', ADDRESSING_ZEROPAGEY) # Note: STX uses Y, not X for Zero Page indexed
# 0x97 is illegal/undocumented
_OPCODE_MAP[0x98] = ('TYA', ADDRESSING_IMPLIED)
_OPCODE_MAP[0x99] = ('STA', ADDRESSING_ABSOLUTEY)
_OPCODE_MAP[0x9A] = ('TXS', ADDRESSING_IMPLIED)
# 0x9B, 0x9C are illegal/undocumented
_OPCODE_MAP[0x9D] = ('STA', ADDRESSING_ABSOLUTEX)
# 0x9E, 0x9F are illegal/undocumented

# Row 0xA0-0xAF
_OPCODE_MAP[0xA0] = ('LDY', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xA1] = ('LDA', ADDRESSING_INDIRECTX)
_OPCODE_MAP[0xA2] = ('LDX', ADDRESSING_IMMEDIATE)
# 0xA3 is illegal/undocumented
_OPCODE_MAP[0xA4] = ('LDY', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xA5] = ('LDA', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xA6] = ('LDX', ADDRESSING_ZEROPAGE)
# 0xA7 is illegal/undocumented
_OPCODE_MAP[0xA8] = ('TAY', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xA9] = ('LDA', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xAA] = ('TAX', ADDRESSING_IMPLIED)
# 0xAB is illegal/undocumented
_OPCODE_MAP[0xAC] = ('LDY', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xAD] = ('LDA', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xAE] = ('LDX', ADDRESSING_ABSOLUTE)
# 0xAF is illegal/undocumented

# Row 0xB0-0xBF
_OPCODE_MAP[0xB0] = ('BCS', ADDRESSING_RELATIVE)
_OPCODE_MAP[0xB1] = ('LDA', ADDRESSING_INDIRECTY)
# 0xB2, 0xB3, B4 (illegal/undocumented) (LDY ZP,X was 0xB4 - this is for 65C02)
_OPCODE_MAP[0xB4] = ('LDY', ADDRESSING_ZEROPAGEX) # This is a 65C02 legal opcode, but was illegal on NMOS. Assuming you want legal NMOS.
_OPCODE_MAP[0xB5] = ('LDA', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0xB6] = ('LDX', ADDRESSING_ZEROPAGEY) # Note: LDX uses Y, not X for Zero Page indexed
# 0xB7 is illegal/undocumented
_OPCODE_MAP[0xB8] = ('CLV', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xB9] = ('LDA', ADDRESSING_ABSOLUTEY)
_OPCODE_MAP[0xBA] = ('TSX', ADDRESSING_IMPLIED)
# 0xBB is illegal/undocumented
_OPCODE_MAP[0xBC] = ('LDY', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0xBD] = ('LDA', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0xBE] = ('LDX', ADDRESSING_ABSOLUTEY)
# 0xBF is illegal/undocumented

# Row 0xC0-0xCF
_OPCODE_MAP[0xC0] = ('CPY', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xC1] = ('CMP', ADDRESSING_INDIRECTX)
# 0xC2, 0xC3 are illegal/undocumented
_OPCODE_MAP[0xC4] = ('CPY', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xC5] = ('CMP', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xC6] = ('DEC', ADDRESSING_ZEROPAGE)
# 0xC7 is illegal/undocumented
_OPCODE_MAP[0xC8] = ('INY', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xC9] = ('CMP', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xCA] = ('DEX', ADDRESSING_IMPLIED)
# 0xCB is illegal/undocumented
_OPCODE_MAP[0xCC] = ('CPY', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xCD] = ('CMP', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xCE] = ('DEC', ADDRESSING_ABSOLUTE)
# 0xCF is illegal/undocumented

# Row 0xD0-0xDF
_OPCODE_MAP[0xD0] = ('BNE', ADDRESSING_RELATIVE)
_OPCODE_MAP[0xD1] = ('CMP', ADDRESSING_INDIRECTY)
# 0xD2, 0xD3, 0xD4 are illegal/undocumented
_OPCODE_MAP[0xD5] = ('CMP', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0xD6] = ('DEC', ADDRESSING_ZEROPAGEX)
# 0xD7 is illegal/undocumented
_OPCODE_MAP[0xD8] = ('CLD', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xD9] = ('CMP', ADDRESSING_ABSOLUTEY)
# 0xDA, 0xDB, 0xDC are illegal/undocumented
_OPCODE_MAP[0xDD] = ('CMP', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0xDE] = ('DEC', ADDRESSING_ABSOLUTEX)
# 0xDF is illegal/undocumented

# Row 0xE0-0xEF
_OPCODE_MAP[0xE0] = ('CPX', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xE1] = ('SBC', ADDRESSING_INDIRECTX)
# 0xE2, 0xE3 are illegal/undocumented
_OPCODE_MAP[0xE4] = ('CPX', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xE5] = ('SBC', ADDRESSING_ZEROPAGE)
_OPCODE_MAP[0xE6] = ('INC', ADDRESSING_ZEROPAGE)
# 0xE7 is illegal/undocumented
_OPCODE_MAP[0xE8] = ('INX', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xE9] = ('SBC', ADDRESSING_IMMEDIATE)
_OPCODE_MAP[0xEA] = ('NOP', ADDRESSING_IMPLIED)
# 0xEB is illegal/undocumented
_OPCODE_MAP[0xEC] = ('CPX', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xED] = ('SBC', ADDRESSING_ABSOLUTE)
_OPCODE_MAP[0xEE] = ('INC', ADDRESSING_ABSOLUTE)
# 0xEF is illegal/undocumented

# Row 0xF0-0xFF
_OPCODE_MAP[0xF0] = ('BEQ', ADDRESSING_RELATIVE)
_OPCODE_MAP[0xF1] = ('SBC', ADDRESSING_INDIRECTY)
# 0xF2, 0xF3, 0xF4 are illegal/undocumented
_OPCODE_MAP[0xF5] = ('SBC', ADDRESSING_ZEROPAGEX)
_OPCODE_MAP[0xF6] = ('INC', ADDRESSING_ZEROPAGEX)
# 0xF7 is illegal/undocumented
_OPCODE_MAP[0xF8] = ('SED', ADDRESSING_IMPLIED)
_OPCODE_MAP[0xF9] = ('SBC', ADDRESSING_ABSOLUTEY)
# 0xFA, 0xFB, 0xFC are illegal/undocumented
_OPCODE_MAP[0xFD] = ('SBC', ADDRESSING_ABSOLUTEX)
_OPCODE_MAP[0xFE] = ('INC', ADDRESSING_ABSOLUTEX)
# 0xFF is illegal/undocumented


def ins_to_str(op_code):
    """
    Looks up the mnemonic and addressing mode for a given 6502 opcode.

    Args:
        op_code (int): The 8-bit opcode (0x00 to 0xFF).

    Returns:
        tuple: A tuple containing (mnemonic_string, addressing_mode_constant).
               Returns ('ILL', ADDRESSING_NONE) for illegal/undocumented opcodes.
    """
    if not (0x00 <= op_code <= 0xFF):
        raise ValueError("Opcode must be an 8-bit value (0x00 to 0xFF).")

    info = _OPCODE_MAP[op_code]

    if info is None:
        return 'ILL', ADDRESSING_NONE # Represents an illegal/undocumented opcode
    else:
        return info

