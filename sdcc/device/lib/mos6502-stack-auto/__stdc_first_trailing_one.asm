;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_first_trailing_one
	
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
	.globl ___stdc_first_trailing_one
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
;Allocation info for local variables in function '__stdc_first_trailing_one'
;------------------------------------------------------------
;value         Allocated to stack - sp +12 +8 
;i             Allocated to stack - sp +9 +1 
;sloc0         Allocated to stack - sp +9 +1 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../__stdc_first_trailing_one.c: 36: unsigned _BitInt(8) __stdc_first_trailing_one(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_first_trailing_one
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
___stdc_first_trailing_one:
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../__stdc_first_trailing_one.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x109,x
;	Raw cost for generated ic 2 : (5, 7.000000) count=1.000000
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 29 : (1, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999993
;	genCmp
	cpy	#0x40
	bcc	00127$
	jmp	00103$
00127$:
;	Raw cost for generated ic 4 : (7, 7.600000) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999993
;	../__stdc_first_trailing_one.c: 39: if(value & (1ull << i))
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 33 : (1, 2.000000) count=2.999995
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 34 : (7, 14.000000) count=2.999995
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
;	Raw cost for generated ic 35 : (12, 28.000000) count=2.999995
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
;	Raw cost for generated ic 36 : (56, 94.000000) count=2.999995
;	genAnd
	lda	0x10d,x
	and	0x102,x
	bne	00128$
	lda	0x10e,x
	and	0x103,x
	bne	00128$
	lda	0x10f,x
	and	0x104,x
	bne	00128$
	lda	0x110,x
	and	0x105,x
	bne	00128$
	lda	0x111,x
	and	0x106,x
	bne	00128$
	lda	0x112,x
	and	0x107,x
	bne	00128$
	lda	0x113,x
	and	0x108,x
	bne	00128$
	lda	0x114,x
	and	0x109,x
00128$:
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 9 : (67, 87.799995) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=2.999995
;	../__stdc_first_trailing_one.c: 40: return (i + 1);
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
;	Raw cost for generated ic 28 : (6, 9.000000) count=2.249995
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
;	Raw cost for generated ic 14 : (3, 4.000000) count=2.249995
;	genRet
	jmp	00107$
;	Raw cost for generated ic 16 : (3, 3.000000) count=2.249995
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999993
;	../__stdc_first_trailing_one.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 20 : (1, 2.000000) count=2.999993
;	genAssign
;	genCopy
	tya
	tsx
	sta	0x109,x
;	Raw cost for generated ic 21 : (5, 9.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 22 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999997
;	../__stdc_first_trailing_one.c: 41: return 0;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 24 : (2, 2.000000) count=0.999997
;	genLabel
00107$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.999997
;	../__stdc_first_trailing_one.c: 42: }
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
;	Raw cost for generated ic 26 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
