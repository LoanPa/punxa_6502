;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_trailing_ones
	
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
	.globl ___stdc_count_trailing_ones
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
;Allocation info for local variables in function '__stdc_count_trailing_ones'
;------------------------------------------------------------
;value         Allocated to stack - sp +12 +8 
;count         Allocated to stack - sp +9 +1 
;i             Allocated to registers y 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../__stdc_trailing_ones.c: 37: unsigned _BitInt(8) __stdc_count_trailing_ones(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_count_trailing_ones
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
___stdc_count_trailing_ones:
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../__stdc_trailing_ones.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x109,x
;	Raw cost for generated ic 32 : (5, 7.000000) count=1.000000
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 35 : (1, 2.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285585
;	genCmp
	cpy	#0x40
	bcc	00129$
	jmp	00104$
00129$:
;	Raw cost for generated ic 5 : (7, 7.600000) count=2.285585
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.285585
;	../__stdc_trailing_ones.c: 41: if(value & (1ull << i))
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 40 : (1, 2.000000) count=1.714114
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 41 : (7, 14.000000) count=1.714114
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
;	Raw cost for generated ic 42 : (12, 28.000000) count=1.714114
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
;	Raw cost for generated ic 43 : (56, 94.000000) count=1.714114
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
	beq	00104$
;	Raw cost for generated ic 10 : (67, 87.799995) count=1.714114
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.714114
;	../__stdc_trailing_ones.c: 42: count++;
;	genPlus
;	  genPlusInc
	lda	0x10a,x
	clc
	adc	#0x01
	sta	0x10a,x
;	Raw cost for generated ic 15 : (9, 13.000000) count=1.285585
;	../__stdc_trailing_ones.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 23 : (1, 2.000000) count=1.285585
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 25 : (3, 3.000000) count=1.285585
;	genLabel
00104$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999925
;	../__stdc_trailing_ones.c: 45: return count;
;	genCast
;	genCopy
	tsx
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 27 : (7, 11.000000) count=0.999925
;	genRet
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999925
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999925
;	../__stdc_trailing_ones.c: 46: }
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
;	Raw cost for generated ic 30 : (16, 30.000000) count=0.999925
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
