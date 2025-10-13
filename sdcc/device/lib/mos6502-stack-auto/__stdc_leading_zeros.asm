;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_leading_zeros
	
	.optsdcc -mmos6502

;--------------------------------------------------------
;  Ordering of segments for the linker.
;--------------------------------------------------------
	.area ZP      (PAG)
	.area OSEG    (PAG, OVR)
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area CODE
	.area RODATA
	.area XINIT
	.area _DATA
	.area DATA
	.area BSS
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___stdc_leading_zeros
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function '__stdc_leading_zeros'
;------------------------------------------------------------
;value         Allocated to stack - sp +12 +8 
;width         Allocated to stack - sp +20 +1 
;i             Allocated to stack - sp +9 +1 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../__stdc_leading_zeros.c: 36: unsigned _BitInt(8) __stdc_leading_zeros(unsigned long long value, uint_fast8_t width)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_leading_zeros
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
___stdc_leading_zeros:
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../__stdc_leading_zeros.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
;	genCast
;	genCopy
	lda	0x114,x
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=1  icount=1
	sec
	sbc	#0x01
	sta	0x109,x
;	Raw cost for generated ic 3 : (6, 9.000000) count=1.000000
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 36 : (1, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999596
;	genCmp
	tya
	sec
	sbc	#0x00
	bvs	00128$
	bpl	00127$
	bmi	00129$
00128$:
	bmi	00127$
00129$:
	jmp	00103$
00127$:
;	Raw cost for generated ic 6 : (15, 19.400002) count=3.999596
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999596
;	../__stdc_leading_zeros.c: 39: if(value & (1ull << i))
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 40 : (1, 2.000000) count=2.999697
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 41 : (7, 14.000000) count=2.999697
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 42 : (12, 28.000000) count=2.999697
;	genCall
	jsr	__slulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sta	0x10c,x
	lda	*___SDCC_m6502_ret2
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
	lda	*___SDCC_m6502_ret4
	sta	0x10f,x
	lda	*___SDCC_m6502_ret5
	sta	0x110,x
	lda	*___SDCC_m6502_ret6
	sta	0x111,x
	lda	*___SDCC_m6502_ret7
	sta	0x112,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 43 : (56, 94.000000) count=2.999697
;	genAnd
	lda	0x10d,x
	and	0x102,x
	bne	00130$
	lda	0x10e,x
	and	0x103,x
	bne	00130$
	lda	0x10f,x
	and	0x104,x
	bne	00130$
	lda	0x110,x
	and	0x105,x
	bne	00130$
	lda	0x111,x
	and	0x106,x
	bne	00130$
	lda	0x112,x
	and	0x107,x
	bne	00130$
	lda	0x113,x
	and	0x108,x
	bne	00130$
	lda	0x114,x
	and	0x109,x
00130$:
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 11 : (67, 87.799995) count=2.999697
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999697
;	../__stdc_leading_zeros.c: 40: return (width - i - 1);
;	genCast
;	genCopy
	lda	0x115,x
;	Raw cost for generated ic 34 : (3, 4.000000) count=2.249697
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	lda	0x10a,x
	sta	0x102,x
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 16 : (10, 15.000000) count=2.249697
;	genMinus
	sec
	sbc	0x102,x
;	Raw cost for generated ic 17 : (4, 6.000000) count=2.249697
;	genMinus
;	  genMinusDec - size=1  icount=1
	sec
	sbc	#0x01
;	Raw cost for generated ic 18 : (3, 4.000000) count=2.249697
;	genRet
	jmp	00107$
;	Raw cost for generated ic 20 : (3, 3.000000) count=2.249697
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=2.999596
;	../__stdc_leading_zeros.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 24 : (1, 2.000000) count=2.999596
;	genAssign
;	genCopy
	tya
	tsx
	sta	0x109,x
;	Raw cost for generated ic 25 : (5, 9.000000) count=2.999596
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 26 : (3, 3.000000) count=2.999596
;	genLabel
00103$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999821
;	../__stdc_leading_zeros.c: 41: return width;
;	genCast
;	genCopy
	tsx
	lda	0x114,x
;	Raw cost for generated ic 28 : (4, 6.000000) count=0.999821
;	genRet
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999821
;	genLabel
00107$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999821
;	../__stdc_leading_zeros.c: 42: }
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 31 : (16, 30.000000) count=0.999821
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
