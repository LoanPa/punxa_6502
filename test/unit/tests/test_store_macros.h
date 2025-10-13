#include "test.h"


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

