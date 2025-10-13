;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	
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
	.globl ___stdc_bit_ceilull
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
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;value         Allocated to stack - sp +11 +8 
;i             Allocated to registers y 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../__stdc_bit_ceilull.c: 37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
___stdc_bit_ceilull:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 24 : (2, 2.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	../__stdc_bit_ceilull.c: 41: if(value <= (1ull << i))
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 30 : (1, 2.000000) count=2.285713
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 31 : (7, 14.000000) count=2.285713
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
;	Raw cost for generated ic 32 : (12, 28.000000) count=2.285713
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
;	Raw cost for generated ic 33 : (56, 94.000000) count=2.285713
;	genCmp
	lda	0x102,x
	sec
	sbc	0x10c,x
	lda	0x103,x
	sbc	0x10d,x
	lda	0x104,x
	sbc	0x10e,x
	lda	0x105,x
	sbc	0x10f,x
	lda	0x106,x
	sbc	0x110,x
	lda	0x107,x
	sbc	0x111,x
	lda	0x108,x
	sbc	0x112,x
	lda	0x109,x
	sbc	0x113,x
	bcs	00103$
;	Raw cost for generated ic 5 : (54, 71.599998) count=2.285713
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.285713
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 13 : (1, 2.000000) count=1.714284
;	genCmp
	cpy	#0x40
	bcs	00122$
	jmp	00104$
00122$:
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.714284
;	genLabel
00103$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.999999
;	../__stdc_bit_ceilull.c: 43: return (1ull << i);
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 34 : (1, 2.000000) count=0.999999
;	genIpush
	pha
;	Raw cost for generated ic 35 : (1, 3.000000) count=0.999999
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
;	Raw cost for generated ic 36 : (12, 28.000000) count=0.999999
;	genCall
	jsr	__slulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10a,x
	lda	*(REGTEMP+0)
	sta	0x10b,x
	lda	*___SDCC_m6502_ret2
	sta	0x10c,x
	lda	*___SDCC_m6502_ret3
	sta	0x10d,x
	lda	*___SDCC_m6502_ret4
	sta	0x10e,x
	lda	*___SDCC_m6502_ret5
	sta	0x10f,x
	lda	*___SDCC_m6502_ret6
	sta	0x110,x
	lda	*___SDCC_m6502_ret7
	sta	0x111,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
;	Raw cost for generated ic 37 : (50, 82.000000) count=0.999999
;	genRet
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 20 : (40, 56.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.999999
;	../__stdc_bit_ceilull.c: 44: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 22 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
