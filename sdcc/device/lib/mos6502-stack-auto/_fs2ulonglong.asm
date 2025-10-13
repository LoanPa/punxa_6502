;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2ulonglong
	
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
	.globl ___fs2ulonglong
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
;Allocation info for local variables in function '__fs2ulonglong'
;------------------------------------------------------------
;a1            Allocated to stack - sp +29 +4 
;fl1           Allocated to stack - sp +9 +4 
;exp           Allocated to stack - sp +25 +2 
;l             Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +13 +8 
;------------------------------------------------------------
;	../_fs2ulonglong.c: 60: unsigned long long __fs2ulonglong (float a1) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2ulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 26 bytes.
___fs2ulonglong:
;	  adjustStack : cycles stk:78  incdec:56  adc:12
	tsx
	txa
	clc
	adc	#0xe6
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fs2ulonglong.c: 66: fl1.f = a1;
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x11d,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11e,x
	iny
	sta	[DPTR],y
	lda	0x11f,x
	iny
	sta	[DPTR],y
	lda	0x120,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../_fs2ulonglong.c: 68: if (!fl1.l || SIGN(fl1.l))
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
	iny
	lda	[DPTR],y
	sta	0x118,x
;	Raw cost for generated ic 7 : (28, 53.000000) count=1.000000
;	genIfx
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 8 : (14, 17.600000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 11 : (6, 8.000000) count=0.750000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
	iny
	lda	[DPTR],y
	sta	0x118,x
;	Raw cost for generated ic 13 : (28, 53.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x118,x
	asl	a
	lda	#0x00
	sta	0x118,x
	sta	0x117,x
	sta	0x116,x
	rol	a
	sta	0x115,x
;	Raw cost for generated ic 15 : (19, 30.000000) count=0.750000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 16 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.812500
;	../_fs2ulonglong.c: 69: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00109$
;	Raw cost for generated ic 20 : (18, 25.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 71: exp = EXP (fl1.l) - EXCESS - 24;
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 22 : (7, 10.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
	iny
	lda	[DPTR],y
	sta	0x118,x
;	Raw cost for generated ic 24 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x117,x
	rol	a
	lda	0x118,x
	rol	a
	sta	0x115,x
	lda	#0x00
	sta	0x117,x
	sta	0x118,x
	rol	a
	sta	0x116,x
;	Raw cost for generated ic 26 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x115,x
	tay
	lda	0x116,x
	tax
	tya
;	Raw cost for generated ic 61 : (9, 14.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=150
	sec
	sbc	#0x96
	tsx
	sta	0x119,x
	lda	#0x00
	sbc	#0x00
	sta	0x11a,x
;	Raw cost for generated ic 28 : (14, 20.000000) count=1.000000
;	../_fs2ulonglong.c: 72: l = MANT (fl1.l);
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 31 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
	iny
	lda	[DPTR],y
	sta	0x118,x
;	Raw cost for generated ic 33 : (28, 53.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x118,x
;	Raw cost for generated ic 34 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x117,x
	ora	#0x80
	sta	0x117,x
;	Raw cost for generated ic 35 : (8, 11.000000) count=1.000000
;	genCast
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
	lda	0x117,x
	sta	0x10f,x
	lda	0x118,x
	sta	0x110,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
;	Raw cost for generated ic 36 : (43, 64.000000) count=1.000000
;	../_fs2ulonglong.c: 74: if (exp > 8)
;	genCmp
	lda	#0x08
	sec
	sbc	0x119,x
	lda	#0x00
	sbc	0x11a,x
	bvc	00134$
	bpl	00133$
	bmi	00105$
00134$:
	bpl	00105$
00133$:
;	Raw cost for generated ic 38 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 75: return 0xfffffffful;
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	ldy	#0x00
	sty	*___SDCC_m6502_ret4
	sty	*___SDCC_m6502_ret5
	sty	*___SDCC_m6502_ret6
	sty	*___SDCC_m6502_ret7
	jmp	00109$
;	Raw cost for generated ic 42 : (20, 27.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 77: if (exp < 0)
;	genCmp
	tsx
	lda	0x11a,x
	sec
	sbc	#0x00
	bvc	00137$
	bpl	00136$
	bmi	00107$
00137$:
	bpl	00107$
00136$:
;	Raw cost for generated ic 44 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 78: l >>= -exp;
;	genCast
;	genCopy
	lda	0x119,x
;	Raw cost for generated ic 60 : (3, 4.000000) count=0.750000
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
;	Raw cost for generated ic 48 : (5, 6.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.750000
;	genIpush
	pha
;	Raw cost for generated ic 63 : (1, 3.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 64 : (32, 56.000000) count=0.750000
;	genCall
	jsr	__srulonglong
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
;	Raw cost for generated ic 65 : (50, 82.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 51 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.250000
;	../_fs2ulonglong.c: 80: l <<= exp;
;	genCast
;	genCopy
	tsx
	lda	0x119,x
;	Raw cost for generated ic 66 : (4, 6.000000) count=0.250000
;	genIpush
	pha
;	Raw cost for generated ic 67 : (1, 3.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 68 : (32, 56.000000) count=0.250000
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
;	Raw cost for generated ic 69 : (50, 82.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 82: return l;
;	genRet
	tsx
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
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 56 : (41, 58.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 83: }
;	genEndFunction
;	  adjustStack : cycles stk:110  incdec:62  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x1a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 58 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
