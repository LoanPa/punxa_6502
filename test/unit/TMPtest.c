/*
 * Comprehensive 6502 Instruction Set and Addressing Mode Tester
 * With result verification and error reporting
 * Designed for SDCC (Small Device C Compiler)
 */

#include <stdint.h>
#pragma preproc_asm +

#include "test_macros.h"
#include "test.h"

// Memory locations
#define TEST_ZP      0x20    // Zero page location
#define TEST_ABS     0x1000  // Absolute location
#define TEST_ABS_ST  0x1002  // Absolute location
#define TEST_ABS_X   0x1100  // Absolute,X location
#define TEST_ABS_Y   0x1200  // Absolute,Y location

#define TEST_IND_X   0x30    // Indirect,X location
#define TEST_IND_Y   0x40    // Indirect,Y location
#define TEST_RESULT  0x2000  // Where to write test result
#define TEST_NUM     0x60    // Current test number
#define TEST_STATUS  0x2004  // 0 = running, 1 = passed, 0xFF = failed

#define TEST_VARS      0x50

// Global variables in zero page
__at (TEST_ZP) uint8_t zp_var;
__at (TEST_ZP+1) uint8_t zp_var2;
__at (TEST_ZP+2) uint8_t zp_store;
__at (TEST_ZP+3) uint8_t zp_store2;
__at (TEST_IND_X) uint8_t ind_x_addr_lo;
__at (TEST_IND_X+1) uint8_t ind_x_addr_hi;
__at (TEST_IND_X+2) uint8_t ind_store_lo;
__at (TEST_IND_X+3) uint8_t ind_store_hi;

__at (TEST_IND_Y) uint8_t ind_y_addr_lo;
__at (TEST_IND_Y+1) uint8_t ind_y_addr_hi;

__at (TEST_VARS+0)  uint8_t actual;
__at (TEST_VARS+1)  uint8_t flags;
__at (TEST_VARS+2)  uint16_t addr;

// Variables in absolute memory
__at (TEST_ABS) uint8_t abs_var;
__at (TEST_ABS_ST) uint8_t abs_store;
__at (TEST_ABS_ST+1) uint8_t abs_store2;
__at (TEST_ABS_X) uint8_t abs_x_var;
__at (TEST_ABS_X+1) uint8_t abs_x_var2;
__at (TEST_ABS_Y) uint8_t abs_y_var;
__at (TEST_ABS_Y+1) uint8_t abs_y_var2;

// Test results
__at (TEST_RESULT) uint8_t test_result;
__at (TEST_NUM) uint16_t test_num;
__at (TEST_STATUS) uint8_t test_status;

// Function prototypes
void test_load(void);
void test_store(void);
void test_arithmetic(void);
void test_logical(void);
void test_shift_rotate(void);
void test_branch(void);
void test_flags(void);
void test_stack(void);
void test_jump_subroutine(void);
void test_misc(void);
void test_failed(void);
void test_passed(void);
void verify(uint8_t expected);
void verify_mem(uint16_t paddr, uint8_t expected);
void verify_zp(uint8_t paddr, uint8_t expected);

void main(void) {
    // Initialize test status
    test_status = 0;
    test_num = 0;
    
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
    test_load();
    test_store();
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
void test_failed(void) 
{
    test_result = 0xCA;
    test_status = 0xFF;

    while(1); // Halt on failure
}

// Mark a test as passed
void test_passed(void) 
{
    test_result = 0xBE;
    test_num++;
}


// Verify accumulator value
void verify(uint8_t expected) 
{    
    if (actual != expected) 
        test_failed(); 
    else
        test_passed();
}


void verify_flags(uint8_t expected, uint8_t ef) 
{
    
    if (actual != expected) 
        test_failed(); 
    else if (ef != (flags & FLAGS_MASK)) 
        test_failed();
    else
        test_passed();
}



// Verify memory value
void verify_mem(uint16_t paddr, uint8_t expected)
{
    addr = paddr;
    
    __asm
    lda _addr
    sta _actual        
    __endasm;
    
    ASSERT_EQ();
}

// Verify zero page value
void verify_zp(uint8_t paddr, uint8_t expected) 
{
    verify_mem(paddr, expected);
}











