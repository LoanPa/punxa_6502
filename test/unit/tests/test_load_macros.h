         
#include "test.h"

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
    __asm 
    ldy #00
    lda _abs_y_var,y
    sta _actual
    __endasm; 
    verify(0x33); // 0x0E

    __asm
    ldy #00
    ldx _abs_y_var,y
    stx _actual
    __endasm; 
    verify(0x33); // 0x0F
    
    // 7. (Indirect,X) - LDA (ind,X)
    LDA_IND_X(_ind_x_addr_lo, 0);
    __asm
    sta _actual
    __endasm; 
    verify(0x22); // 0x10
    
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
