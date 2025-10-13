;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2slonglong
	
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
	.globl ___fs2slonglong
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
;Allocation info for local variables in function '__fs2slonglong'
;------------------------------------------------------------
;f             Allocated to stack - sp +15 +4 
;sloc0         Allocated to stack - sp +9 +4 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../_fs2slonglong.c: 34: signed long long __fs2slonglong (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2slonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
___fs2slonglong:
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fs2slonglong.c: 37: if (!f)
;	genIfx
	lda	0x112,x
	and	#0x7F
	ora	0x111,x
	ora	0x110,x
	ora	0x10f,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	../_fs2slonglong.c: 38: return 0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00106$
;	Raw cost for generated ic 5 : (18, 25.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 40: if (f<0) {
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 24 : (6, 14.000000) count=1.000000
;	genIpush
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 25 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 26 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00123$
	jmp	00104$
00123$:
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	../_fs2slonglong.c: 41: return -__fs2ulonglong(-f);
;	genUminus
;	genUminusFloat
	lda	0x10f,x
	sta	0x109,x
	lda	0x110,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x10b,x
	lda	0x112,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 11 : (26, 38.000000) count=0.750000
;	genIpush
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (13, 24.000000) count=0.750000
;	genCall
	jsr	___fs2ulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	lda	*___SDCC_m6502_ret4
	sta	0x109,x
	lda	*___SDCC_m6502_ret5
	sta	0x10a,x
	lda	*___SDCC_m6502_ret6
	sta	0x10b,x
	lda	*___SDCC_m6502_ret7
	sta	0x10c,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 13 : (49, 82.000000) count=0.750000
;	genUminus
	lda	#0x00
	sec
	sbc	0x101,x
	sta	0x101,x
	lda	#0x00
	sbc	0x102,x
	sta	0x102,x
	lda	#0x00
	sbc	0x103,x
	sta	0x103,x
	lda	#0x00
	sbc	0x104,x
	sta	0x104,x
	lda	#0x00
	sbc	0x105,x
	sta	0x105,x
	lda	#0x00
	sbc	0x106,x
	sta	0x106,x
	lda	#0x00
	sbc	0x107,x
	sta	0x107,x
	lda	#0x00
	sbc	0x108,x
	sta	0x108,x
;	Raw cost for generated ic 14 : (65, 90.000000) count=0.750000
;	genRet
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
	ldx	*(REGTEMP+0)
	jmp	00106$
;	Raw cost for generated ic 15 : (40, 55.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 43: return __fs2ulonglong(f);
;	genIpush
	tsx
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 18 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fs2ulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
	lda	*___SDCC_m6502_ret4
	sta	0x109,x
	lda	*___SDCC_m6502_ret5
	sta	0x10a,x
	lda	*___SDCC_m6502_ret6
	sta	0x10b,x
	lda	*___SDCC_m6502_ret7
	sta	0x10c,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 19 : (49, 82.000000) count=1.000000
;	genRet
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
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 20 : (37, 52.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 45: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 23 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
