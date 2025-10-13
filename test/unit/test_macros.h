#define ASSERT_EQ()  if (actual != expected) test_failed(); else test_passed(); 

#define SAVE_FLAGS() __asm \
    php  \
    pla  \
    sta _flags \
__endasm


#define FLAGS(n,z,d,c,v)    ((n) << 7 | (v) << 6 |  (d) << 3 | (z) << 1 | (c))
#define FLAGS_MASK  FLAGS(1,1,1,1,1)

#define LDA_IND_X(ptr_lo, x_reg) __asm \
    ldx x_reg                 ; Set X offset \
    .db 0xA1, ptr_lo         ; Opcode for LDA (zp,X) \
__endasm;   

#define ADC_IND_X(ptr_lo, x_reg) __asm \
    ldx x_reg                 ; Set X offset \
    .db 0x61, ptr_lo         ; Opcode for ADC (zp,X) \
__endasm;

#define LDA_IND_Y(ptr_lo, y_reg) __asm \
    ldy y_reg                 ; Set Y offset \
    .db 0xB1, ptr_lo         ; Opcode for LDA (zp),Y \
__endasm;

#define ADC_IND_Y(ptr_lo, y_reg) __asm \
    ldy y_reg                 ; Set Y offset \
    .db 0x71, ptr_lo         ; Opcode for ADC (zp),Y \
__endasm;

#define VERIFY(a) __asm \
    lda a \
    jsr _verify \
    __endasm;
    

#define TEST_LDA(a, x, y, r)     __asm \
    lda a \
    ldx x \
    ldy y \
    sta _actual \
    __endasm; \
    VERIFY(r); 

#define TEST_LDA_X(a, xv, y, r)     __asm \
    ldx xv \
    ldy y \
    lda a, x \
    sta _actual \
    __endasm; \
    VERIFY(r); 

#define TEST_LDX(a, x, y, r)     __asm \
    lda a \
    ldx x \
    ldy y \
    stx _actual \
    __endasm; \
    VERIFY(r); 

#define TEST_LDY(a, x, y, r)     __asm \
    lda a \
    ldx x \
    ldy y \
    sty _actual \
    __endasm; \
    VERIFY(r);

#define TEST_LDY_X(a, xv, y, r)     __asm \
    ldx xv \
    lda a \
    ldy y, x \
    sty _actual \
    __endasm; \
    VERIFY(r); 
    
    

#define TEST_ADC(a, b, r, n, z, d, c, v)        __asm \
        clc \
        lda a \
        adc b \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));

#define TEST_SBC(a, b, r, n, z, d, c, v)        __asm \
        sec \
        lda a \
        sbc b \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));

#define TEST_INC(b, r, n, z, d, c, v)        __asm \
        clc \
        inc b \
        lda b \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));
    

    
#define TEST_DEC(b, r, n, z, d, c, v)        __asm \
        clc \
        dec b \
        lda b \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));
    
// X value, expected result, n, z, d, c, v
#define TEST_INX(xv, r, n, z, d, c, v)        __asm \
        clc \
        ldx xv \
        inx \
        stx _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));

    #define TEST_DEX(xv, r, n, z, d, c, v)        __asm \
        clc \
        ldx xv\
        dex \
        stx _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v)); 
    
#define TEST_ADCX(a, b, xv, r, n, z, d, c, v)        __asm \
        clc \
        lda a \
        ldx xv \
        adc b,x \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));

#define TEST_SBCX(a, b, xv, r, n, z, d, c, v)        __asm \
        sec \
        lda a \
        ldx xv \
        sbc b,x \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));


#define TEST_ADCY(a, b, yv, r, n, z, d, c, v)        __asm \
        clc \
        lda a \
        ldy yv \
        adc b,y \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));

#define TEST_SBCY(a, b, yv, r, n, z, d, c, v)        __asm \
        sec \
        lda a \
        ldy yv \
        sbc b,y \
        sta _actual \
    __endasm; \
    SAVE_FLAGS(); \
    verify_flags(r, FLAGS(n, z, d, c, v));
    
