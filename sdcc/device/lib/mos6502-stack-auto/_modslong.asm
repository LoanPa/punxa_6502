;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modslong
	
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
	.globl __modslong
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;a             Allocated to stack - sp +11 +4 
;b             Allocated to stack - sp +15 +4 
;r             Allocated to stack - sp +5 +4 
;sloc0         Allocated to stack - sp +5 +4 
;sloc1         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_modslong.c: 259: _modslong (long a, long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
__modslong:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_modslong.c: 263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
;	genCmp
	lda	0x10e,x
	sec
	sbc	#0x00
	bvc	00130$
	bpl	00128$
	bmi	00131$
00130$:
	bmi	00128$
00131$:
	lda	#0x00
	jmp	00129$
00128$:
	lda	#0x01
00129$:
	tay
;	Raw cost for generated ic 2 : (22, 27.400002) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 3 : (5, 5.600000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x10b,x
	sta	0x105,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x106,x
	lda	#0x00
	sbc	0x10d,x
	sta	0x107,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x108,x
;	Raw cost for generated ic 4 : (33, 46.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x10e,x
	sta	0x108,x
	lda	0x10d,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 8 : (25, 38.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCmp
	tsx
	lda	0x112,x
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00108$
00135$:
	bpl	00108$
00134$:
;	Raw cost for generated ic 11 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x10f,x
	sta	0x101,x
	lda	#0x00
	sbc	0x110,x
	sta	0x102,x
	lda	#0x00
	sbc	0x111,x
	sta	0x103,x
	lda	#0x00
	sbc	0x112,x
	sta	0x104,x
;	Raw cost for generated ic 13 : (33, 46.000000) count=0.750000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 17 : (25, 38.000000) count=0.250000
;	genLabel
00109$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genIpush
	tya
	pha
	tsx
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 34 : (19, 35.000000) count=1.000000
;	genIpush
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 35 : (16, 28.000000) count=1.000000
;	../_modslong.c: 265: if (a < 0)
;	genCall
	jsr	__modulong
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 36 : (36, 62.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 23 : (7, 7.600000) count=1.000000
;	../_modslong.c: 266: return -r;
;	genUminus
	lda	#0x00
	sec
	sbc	0x102,x
	sta	0x106,x
	lda	#0x00
	sbc	0x103,x
	sta	0x107,x
	lda	#0x00
	sbc	0x104,x
	sta	0x108,x
	lda	#0x00
	sbc	0x105,x
	sta	0x109,x
;	Raw cost for generated ic 26 : (33, 46.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x108,x
	sta	*___SDCC_m6502_ret2
	lda	0x107,x
	sta	*(REGTEMP+0)
	lda	0x106,x
	ldx	*(REGTEMP+0)
	jmp	00104$
;	Raw cost for generated ic 27 : (20, 27.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../_modslong.c: 268: return r;
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 30 : (21, 30.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../_modslong.c: 269: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 33 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
