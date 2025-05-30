/*
 * Comprehensive 6502 Instruction Set and Addressing Mode Tester
 * With result verification and error reporting
 * Designed for SDCC (Small Device C Compiler)
 */

#include <stdint.h>
#pragma preproc_asm +

// Memory locations
#define TEST_ZP      0x20    // Zero page location
#define TEST_ABS     0x1000  // Absolute location
#define TEST_ABS_X   0x1100  // Absolute,X location
#define TEST_ABS_Y   0x1200  // Absolute,Y location
#define TEST_IND_X   0x30    // Indirect,X location
#define TEST_IND_Y   0x40    // Indirect,Y location
#define TEST_RESULT  0x2000  // Where to write test result
#define TEST_CURRENT 0x2010  // Current test number
#define TEST_STATUS  0x2011  // 0 = running, 1 = passed, 0xFF = failed

#define ACTUAL      0x50
#define ADDR        0x51

// Global variables in zero page
__at (TEST_ZP) uint8_t zp_var;
__at (TEST_ZP+1) uint8_t zp_var2;
__at (TEST_IND_X) uint8_t ind_x_addr_lo;
__at (TEST_IND_X+1) uint8_t ind_x_addr_hi;
__at (TEST_IND_Y) uint8_t ind_y_addr_lo;
__at (TEST_IND_Y+1) uint8_t ind_y_addr_hi;

__at (ACTUAL) uint8_t actual;
__at (ADDR) uint16_t addr;

// Variables in absolute memory
__at (TEST_ABS) uint8_t abs_var;
__at (TEST_ABS_X) uint8_t abs_x_var;
__at (TEST_ABS_Y) uint8_t abs_y_var;

// Test results
__at (TEST_RESULT) uint8_t test_result;
__at (TEST_CURRENT) uint8_t current_test;
__at (TEST_STATUS) uint8_t test_status;

// Function prototypes
void test_load_store(void);
void test_arithmetic(void);
void test_logical(void);
void test_shift_rotate(void);
void test_branch(void);
void test_flags(void);
void test_stack(void);
void test_jump_subroutine(void);
void test_misc(void);
void test_failed(uint8_t test_num);
void test_passed(uint8_t test_num);
void verify_a(uint8_t expected, uint8_t test_num);
void verify_x(uint8_t expected, uint8_t test_num);
void verify_y(uint8_t expected, uint8_t test_num);
void verify_mem(uint16_t paddr, uint8_t expected, uint8_t test_num);
void verify_zp(uint8_t paddr, uint8_t expected, uint8_t test_num);

void main(void) {
    // Initialize test status
    test_status = 0;
    current_test = 0;
    
    // Initialize indirect addressing pointers
    ind_x_addr_lo = (TEST_ABS_X & 0xFF);
    ind_x_addr_hi = (TEST_ABS_X >> 8);
    
    ind_y_addr_lo = (TEST_ABS_Y & 0xFF);
    ind_y_addr_hi = (TEST_ABS_Y >> 8);
    
    // Initialize test variables
    zp_var = 0x42;
    zp_var2 = 0x84;
    abs_var = 0x11;
    abs_x_var = 0x22;
    abs_y_var = 0x33;
    
    // Run all test categories
    test_load_store();
    test_arithmetic();
    test_logical();
    test_shift_rotate();
    test_branch();
    test_flags();
    test_stack();
    test_jump_subroutine();
    test_misc();
    
    // If we get here, all tests passed
    test_status = 1;
    
    // Infinite loop when done
    while(1);
}

// Mark a test as failed and halt
void test_failed(uint8_t test_num) 
{
    test_result = 0xCA;
    test_status = 0xFF;
    current_test = test_num;
    while(1); // Halt on failure
}

// Mark a test as passed
void test_passed(uint8_t test_num) 
{
    test_result = 0xBE;
    current_test = test_num;
}

// Verify accumulator value
void verify_a(uint8_t expected, uint8_t test_num) 
{
    __asm
    sta _actual
    __endasm;
    
    if (actual != expected) {
        test_failed(test_num);
    }
}

// Verify X register value
void verify_x(uint8_t expected, uint8_t test_num) {
    __asm
    stx _actual
    __endasm;
    
    if (actual != expected) {
        test_failed(test_num);
    }
}

// Verify Y register value
void verify_y(uint8_t expected, uint8_t test_num) {
    __asm
    sty _actual
    __endasm;
    
    if (actual != expected) {
        test_failed(test_num);
    }
}

// Verify memory value
void verify_mem(uint16_t paddr, uint8_t expected, uint8_t test_num) {

    addr = paddr;
    
    __asm
    lda _addr
    sta _actual        
    __endasm;
    
    if (actual != expected) {
        test_failed(test_num);
    }
}

// Verify zero page value
void verify_zp(uint8_t paddr, uint8_t expected, uint8_t test_num) {
    verify_mem(paddr, expected, test_num);
}

void test_load_store(void) 
{
    uint8_t test_num = 0;
    
    // Initialize test offsets
    __asm
    ldx #0x10
    ldy #0x20
    __endasm;
    
    // 1. Immediate - LDA #
    __asm lda #0x55 __endasm;
    verify_a(0x55, test_num++);
    
    // 2. Zero Page - LDA zp
    __asm lda _zp_var __endasm;
    verify_a(0x42, test_num++);
    
    // 3. Zero Page,X - LDA zp,X
    __asm lda _zp_var,x __endasm;
    verify_a(0x42, test_num++);
    
    // 4. Absolute - LDA abs
    __asm lda _abs_var __endasm;
    verify_a(0x11, test_num++);
    
    // 5. Absolute,X - LDA abs,X (with offset)
    __asm lda _abs_x_var,x __endasm;
    verify_a(0x22, test_num++);
    
    // 6. Absolute,Y - LDA abs,Y (with offset)
    __asm lda _abs_y_var,y __endasm;
    verify_a(0x33, test_num++);
    
    // 7. (Indirect,X) - LDA (ind,X)
    __asm lda (_ind_x_addr_lo),x __endasm;
    verify_a(0x22, test_num++);
    
    // 8. (Indirect),Y - LDA (ind),Y
    __asm lda (_ind_y_addr_lo),y __endasm;
    verify_a(0x33, test_num++);
    
    // 9. Zero Page,Y - LDX zp,Y (special case)
    __asm ldx _zp_var,y __endasm;
    verify_x(0x42, test_num++);
    
    // 10. STA variants (same addressing modes)
    __asm 
    lda #0xAA
    sta _zp_var
    sta _zp_var,x
    sta _abs_var
    sta _abs_var,x
    sta _abs_var,y
    sta (_ind_x_addr_lo),x
    sta (_ind_y_addr_lo),y
    __endasm;
    verify_zp(TEST_ZP, 0xAA, test_num++);
    verify_mem(TEST_ABS, 0xAA, test_num++);
    
    // 11. STX variants
    __asm
    ldx #0xBB
    stx _zp_var
    stx _zp_var,y  // Zero Page,Y
    stx _abs_var
    __endasm;
    
    // 12. STY variants
    __asm
    ldy #0xCC
    sty _zp_var
    sty _zp_var,x  // Zero Page,X
    sty _abs_var
    __endasm;
    
    // Verify all stores
    verify_zp(TEST_ZP, 0xCC, test_num++);
    verify_mem(TEST_ABS, 0xBB, test_num++);
}

void test_arithmetic(void) 
{

    uint8_t test_num = 16; // Start from test 16
    
    // Test 16: ADC Immediate
    __asm
    lda #0x10
    clc
    adc #0x20
    __endasm;
    
    verify_a(0x30, test_num);
    test_passed(test_num++);
    
    // Test 17: ADC with carry
    __asm
    lda #0x10
    sec
    adc #0x20
    __endasm;
    verify_a(0x31, test_num);
    test_passed(test_num++);
    
    // Test 18: SBC Immediate
    __asm
    lda #0x30
    sec
    sbc #0x10
    __endasm;
    verify_a(0x20, test_num);
    test_passed(test_num++);
    
    // Test 19: SBC with borrow
    __asm
    lda #0x30
    clc
    sbc #0x10
    __endasm;    
    verify_a(0x1F, test_num);
    test_passed(test_num++);
    
}

void test_logical(void)
{
}

void test_shift_rotate(void)
{
}

void test_branch(void)
{
}

void test_flags(void)
{
}

void test_stack(void)
{
}

void test_jump_subroutine(void)
{
}

void test_misc(void)
{
}



