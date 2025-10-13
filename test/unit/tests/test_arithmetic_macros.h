#include "test.h"
#define test_arithmetic(void) 
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
    zp_var2 = 0x2;
    TEST_INX(#0x02, 0x03, 0, 0, 0, 0, 0);
    // ---- INY/DEY (Y Register) ----

    
}
