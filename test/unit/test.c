/*
 * Comprehensive 6502 Instruction Set and Addressing Mode Tester
 * With result verification and error reporting
 * Designed for SDCC (Small Device C Compiler)
 */

#include <stdint.h>
#pragma preproc_asm +

#include "test_macros.h"

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
#define TEST_BLOCK   0x2002  // Current test block number
#define TEST_STATUS  0x2004  // 0 = done, 1 = running

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
__at (TEST_BLOCK) uint8_t test_block;

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
void verify_flags(uint8_t expected, uint8_t ef);
void start_test_block(void);
void verify_mem(uint16_t paddr, uint8_t expected);
void verify_zp(uint8_t paddr, uint8_t expected);

void main(void) {
    // Initialize test status
   
    test_num = 0;
    test_block = 0;
    test_status = 1;
    
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
    start_test_block();
    test_store();
    start_test_block();
    test_arithmetic();
    test_status = 0; // Temporarily disable status to skip remaining tests
    start_test_block();
    test_logical();
    start_test_block();
    test_shift_rotate();
    start_test_block();
    test_branch();
    start_test_block();
    test_flags();
    start_test_block();
    test_stack();
    start_test_block();
    test_jump_subroutine();
    start_test_block();
    test_misc();
    
    // If we get here, all tests done
    test_status = 0; 
    
    // Infinite loop when done
    //while(1);
}

// Mark a test as failed and halt
void test_failed(void) 
{
    test_result = 0xCA;
    //test_status = 0xFF;
    test_num++;
    //while(1); // Halt on failure
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

void start_test_block(void)
{
    test_block ++;
    test_num = 0;
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


         
void test_load(void) 
{
    // Initialize test offsets
    __asm
    ldx #0x10
    ldy #0x20
    __endasm;
    
    // 1. Immediate  #
    TEST_LDA(#0x55, #0x00, #0x00, #0x55);  // 0x01
    TEST_LDX(#0x00, #0x56, #0x00, #0x56);  // 0x02
    TEST_LDY(#0x00, #0x00, #0x57, #0x57);  // 0x03
    
        
    // 2. Zero Page - LDA zp
    TEST_LDA(_zp_var, #0x00, #0x00, #0x42); // 0x04
    TEST_LDX(#0x00, _zp_var, #0x00, #0x42); // 0x05
    TEST_LDY(#0x00, #0x00, _zp_var, #0x42); // 0x06
    
    // 3. Zero Page,X - LDA zp,X
    zp_var2 = 0x43;
    TEST_LDA_X(_zp_var, #0x01, #0x00, #0x43); // 0x07
    
    zp_var2 = 0x53;
    TEST_LDY_X(#0x00, #0x01, _zp_var, #0x53);   // 0x08
    
    // 4. Absolute 
    TEST_LDA(_abs_var, #0x00, #0x00, #0x11);        // 0x09
    TEST_LDX(#0x00, _abs_var, #0x00, #0x11);        // 0x0A
    TEST_LDY(#0x00, #0x00, _abs_var, #0x11);        // 0x0B
    
    // 5. Absolute,X - LDA abs,X (with offset)
    abs_x_var2 = 0x23;
    TEST_LDA_X(_abs_x_var, #0x01, #0x01, #0x23);    // 0x0C
    TEST_LDY_X(#0x00, #0x01, _abs_x_var, #0x23);    // 0x0D
    
    // 6. Absolute,Y - LDA abs,Y (with offset)
    abs_y_var = 0x33;
    TEST_LDA_Y(_abs_y_var, #00, #0x33);             // 0x0E
    TEST_LDX_Y(_abs_y_var, #00, #0x33);             // 0x0F

    
    // 7. (Indirect,X) - LDA (ind,X)
    
    LDA_IND_X(_ind_x_addr_lo, 0);
    __asm
    sta _actual
    __endasm; 
    verify(0x22); // 0x10
    
   // TEST_LDA_IND_X(_ind_x_addr_lo, 0, #0x22); // 0x10

    // 8. (Indirect),Y - LDA (ind),Y
    abs_y_var = 0x33;
    LDA_IND_Y(_ind_y_addr_lo, 0);
    __asm 
    sta _actual
    __endasm; 
    verify(0x33); // 0x11
    
    // 9. Zero Page,Y - LDX zp,Y (special case)
    __asm 
    ldy #0
    ldx _zp_var,y 
    stx _actual
    __endasm; 
    verify(0x42); // 0x12    
}

void test_store(void)
{
    // 1. Zero Page
    __asm
        lda #0xAA
        sta _zp_store
    __endasm;
    verify_mem(zp_store, 0xAA); // 0x13

    __asm
        ldx #0xBB
        stx _zp_store
    __endasm;
    verify_mem(zp_store, 0xBB); // 0x14

    __asm
        ldy #0xCC
        sty _zp_store
    __endasm;
    verify_mem(zp_store, 0xCC); // 0x15
    
    // 2. Zero Page X STA zp,X
    __asm
        lda #0xDD
        ldx #0x01
        sta _zp_store,x
    __endasm;
    verify_mem(zp_store2, 0xDD); // 0x16

    __asm
        ldy #0xEE
        ldx #0x01
        sty _zp_store,x
    __endasm;
    verify_mem(zp_store2, 0xEE); // 0x17
    
    // 3. Zero Page Y STX zp,Y
    __asm
        ldx #0xFF
        ldy #0x01
        stx _zp_store,y
    __endasm;
    verify_mem(zp_store2, 0xFF);    // 0x18
    
    // 4. Absolute  STA abs
    __asm
        lda #0x11
        sta _abs_store
    __endasm;
    verify_mem(abs_store, 0x11);    // 0x19

    __asm
        ldx #0x22
        stx _abs_store
    __endasm;
    verify_mem(abs_store, 0x22);    // 0x1A

    __asm
        ldy #0x33
        sty _abs_store
    __endasm;
    verify_mem(abs_store, 0x33);    // 0x1B
    // 5. Absolute , X
    __asm
        lda #0x44
        ldx #0x01
        sta _abs_store,x
    __endasm;
    verify_mem(abs_store2, 0x44);   // 0x1C

    
    // 6. Absolute , Y STA abs,Y
    __asm
        lda #0x66
        ldy #0x01
        sta _abs_store,y
    __endasm;
    verify_mem(abs_store2, 0x66);   // 0x1D
    
    // 7. Indirect, X STA (ind,X)
    __asm
        lda #0x88
        ldx #0x01
        sta (_ind_store_lo),x
    __endasm;
    verify_mem(ind_store_hi, 0x88);  // 0x1E

    // 8. Indirect, Y STA (ind),Y
    __asm
        lda #0x99
        ldy #0x01
        sta (_ind_store_lo),y
    __endasm;
    verify_mem(ind_store_hi, 0x99);  // 0x1F        
}

void test_arithmetic(void) 
{
    // flags = FLAGS(n,z,d,c,v) 
    
    // ---- ADC (Add with Carry) ----
    // 1. Immediate
    TEST_ADC(#0x01, #0x02, 0x03, 0, 0, 0, 0, 0);    // 0x20
    TEST_ADC(#0x7F, #0x01, 0x80, 1, 0, 0, 0, 1);    // 0x21
    
    // 2. Zero Page
    TEST_ADC(#0x10, _zp_var, 0x52, 0, 0, 0, 0, 0);  // 0x22
    
    // 3. Zero Page,X
    zp_var2 = 0x42;
    TEST_ADCX(#0x10, _zp_var, #0x01, 0x52, 0, 0, 0, 0, 0);  // 0x23

    // 4. Absolute
    TEST_ADC(#0x10, _abs_var, 0x21, 0, 0, 0, 0, 0);         // 0x24
    
    // 5. Absolute,X
    abs_x_var2 = 0x22;
    TEST_ADCX(#0x10,  _abs_x_var, #0x01, 0x32, 0, 0, 0, 0, 0);  // 0x25
    
    // 6. Absolute,Y
    abs_y_var2 = 0x33;
    TEST_ADCY(#0x10, _abs_y_var, #0x01, 0x43, 0, 0, 0, 0, 0);   // 0x26
    
    // 7. (Indirect,X)
    __asm
        clc
        lda #0x10
    __endasm;
        ADC_IND_X(_ind_x_addr_lo, 0);
    __asm
        sta _actual
    __endasm;
    SAVE_FLAGS();
    verify_flags(0x32, FLAGS(0, 0, 0, 0, 0));                   // 0x27
    
    // 8. (Indirect),Y
    __asm
        clc
        lda #0x10
    __endasm;
        ADC_IND_Y(_ind_y_addr_lo, 0)
    __asm
        sta _actual
    __endasm;
    SAVE_FLAGS();
    verify_flags(0x43, FLAGS(0, 0, 0, 0, 0));                   // 0x28
    
    // Test carry flag behavior
    __asm
        sec             // Set carry first
        lda #0xFF
        adc #0x01       // 0xFF + 0x01 + 1(carry) = 0x01 (N=0, Z=0, C=1, V=0)
        sta _actual
    __endasm;
    SAVE_FLAGS();
    verify_flags(0x01, FLAGS(0, 0, 0, 1, 0));                   // 0x29
    
    // Test decimal mode (BCD arithmetic)
    __asm
        sed             // Set decimal mode
        clc
        lda #0x19
        adc #0x01       // 19 + 1 = 20 in BCD (0x20)
        sta _actual
    __endasm;
    SAVE_FLAGS();
    __asm 
        cld             // Clear decimal mode
    __endasm;
    verify_flags(0x20, FLAGS(0, 0, 1, 0, 0));                   // 0x2A
         
    // flags = FLAGS(n,z,d,c,v) 
             
    // ---- SBC (Subtract with Carry) ----
    // 1. Immediate
    TEST_SBC(#0x03, #0x01, 0x02, 0, 0, 0, 1, 0);                // 0x2B
    TEST_SBC(#0x80, #0x01, 0x7F, 0, 0, 0, 1, 1);                // 0x2C
    TEST_SBC(#0x00, #0x01, 0xFF, 1, 0, 0, 0, 0);                // 0x2D
    
    // 2. Zero Page
    TEST_SBC(#0x10, _zp_var, 0xCE, 1, 0, 0, 0, 0);              // 0x2E
    
    // 3. Zero Page,X
    zp_var2 = 0x12;
    TEST_SBCX(#0x10, _zp_var, #0x01, 0xFE, 1, 0, 0, 0, 0);  // 0x23

    // 4. Absolute
    TEST_SBC(#0x10, _abs_var, 0xFF, 1, 0, 0, 0, 0);         // 0x24
    
    // 5. Absolute,X
    abs_x_var2 = 0x22;
    TEST_SBCX(#0x10,  _abs_x_var, #0x01, 0xEE, 1, 0, 0, 0, 0);  // 0x25
    
    // 6. Absolute,Y
    abs_y_var2 = 0x33;
    TEST_SBCY(#0x10, _abs_y_var, #0x01, 0xDD, 1, 0, 0, 0, 0);   // 0x26
                
    // ---- INC/DEC (Memory) ----
    // 1. Immediate not supported
    // 2. Zero Page
    TEST_INC(_zp_var, 0x43, 0, 0, 0, 0, 0);              // 0x27
    TEST_DEC(_zp_var, 0x42, 0, 0, 0, 0, 0);              // 0x28

    // ---- INX/DEX (X Register) ----
    TEST_INX(#0x02, 0x03, 0, 0, 0, 0, 0);
    // ---- INY/DEY (Y Register) ----

    
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



