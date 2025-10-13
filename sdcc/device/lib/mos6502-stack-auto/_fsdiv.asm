;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	
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
	.globl ___fsdiv
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
;Allocation info for local variables in function '__fsdiv_org'
;------------------------------------------------------------
;a1            Allocated to stack - sp +48 +4 
;a2            Allocated to stack - sp +52 +4 
;fl1           Allocated to stack - sp +25 +4 
;fl2           Allocated to stack - sp +21 +4 
;result        Allocated to stack - sp +17 +4 
;mask          Allocated to stack - sp +13 +4 
;mant1         Allocated to stack - sp +9 +4 
;mant2         Allocated to stack - sp +5 +4 
;exp           Allocated to registers a x 
;sign          Allocated to stack - sp +45 +1 
;diff          Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +41 +4 
;sloc1         Allocated to stack - sp +37 +4 
;sloc2         Allocated to stack - sp +33 +4 
;sloc3         Allocated to stack - sp +29 +4 
;------------------------------------------------------------
;	../_fsdiv.c: 274: static float __fsdiv_org (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 45 bytes.
___fsdiv_org:
;	  adjustStack : cycles stk:135  incdec:94  adc:12
	tsx
	txa
	clc
	adc	#0xd3
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fsdiv.c: 283: fl1.f = a1;
;	genAddrOf
	txa
	clc
	adc	#0x19
	ldx	#0x01
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x130,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x131,x
	iny
	sta	[DPTR],y
	lda	0x132,x
	iny
	sta	[DPTR],y
	lda	0x133,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../_fsdiv.c: 285: exp = EXP (fl1.l);
;	genAddrOf
	txa
	clc
	adc	#0x19
	ldx	#0x01
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x129,x
	iny
	lda	[DPTR],y
	sta	0x12a,x
	iny
	lda	[DPTR],y
	sta	0x12b,x
	iny
	lda	[DPTR],y
	sta	0x12c,x
;	Raw cost for generated ic 7 : (28, 53.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x12b,x
	rol	a
	lda	0x12c,x
	rol	a
	sta	0x129,x
	lda	#0x00
	sta	0x12b,x
	sta	0x12c,x
	rol	a
	sta	0x12a,x
;	Raw cost for generated ic 9 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x12a,x
	lda	0x129,x
	sta	0x129,x
;	Raw cost for generated ic 143 : (9, 14.000000) count=1.000000
;	genAnd
	sta	0x129,x
	lda	#0x00
	sta	0x12a,x
;	Raw cost for generated ic 10 : (8, 12.000000) count=1.000000
;	../_fsdiv.c: 287: if (!exp)
;	genIfx
	lda	0x12a,x
	ora	0x129,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 13 : (11, 13.600000) count=1.000000
;	../_fsdiv.c: 288: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
;	Raw cost for generated ic 16 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 290: fl2.f = a2;
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x15
	ldx	#0x01
;	Raw cost for generated ic 18 : (7, 10.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x134,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x135,x
	iny
	sta	[DPTR],y
	lda	0x136,x
	iny
	sta	[DPTR],y
	lda	0x137,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 20 : (30, 56.000000) count=1.000000
;	../_fsdiv.c: 292: exp -= EXP (fl2.l);
;	genAddrOf
	txa
	clc
	adc	#0x15
	ldx	#0x01
;	Raw cost for generated ic 21 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x125,x
	iny
	lda	[DPTR],y
	sta	0x126,x
	iny
	lda	[DPTR],y
	sta	0x127,x
	iny
	lda	[DPTR],y
	sta	0x128,x
;	Raw cost for generated ic 23 : (28, 53.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x127,x
	rol	a
	lda	0x128,x
	rol	a
	sta	0x125,x
	lda	#0x00
	sta	0x127,x
	sta	0x128,x
	rol	a
	sta	0x126,x
;	Raw cost for generated ic 25 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x126,x
	lda	0x125,x
	sta	0x125,x
;	Raw cost for generated ic 148 : (9, 14.000000) count=1.000000
;	genAnd
	sta	0x125,x
	lda	#0x00
	sta	0x126,x
;	Raw cost for generated ic 26 : (8, 12.000000) count=1.000000
;	genMinus
	lda	0x129,x
	sec
	sbc	0x125,x
	pha
	lda	0x12a,x
	sbc	0x126,x
	tax
	pla
;	Raw cost for generated ic 28 : (16, 27.000000) count=1.000000
;	../_fsdiv.c: 293: exp += EXCESS;
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x7e
	tsx
	sta	0x125,x
	lda	*(REGTEMP+0)
	adc	#0x00
	sta	0x126,x
;	Raw cost for generated ic 31 : (16, 24.000000) count=1.000000
;	../_fsdiv.c: 296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	genAddrOf
	txa
	clc
	adc	#0x19
	ldx	#0x01
;	Raw cost for generated ic 33 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x129,x
	iny
	lda	[DPTR],y
	sta	0x12a,x
	iny
	lda	[DPTR],y
	sta	0x12b,x
	iny
	lda	[DPTR],y
	sta	0x12c,x
;	Raw cost for generated ic 35 : (28, 53.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x12c,x
	asl	a
	lda	#0x00
	sta	0x12c,x
	sta	0x12b,x
	sta	0x12a,x
	rol	a
	sta	0x129,x
;	Raw cost for generated ic 37 : (19, 30.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 149 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
	sta	0x129,x
;	Raw cost for generated ic 38 : (5, 7.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x15
	ldx	#0x01
;	Raw cost for generated ic 39 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 41 : (28, 53.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x124,x
	asl	a
	lda	#0x00
	sta	0x124,x
	sta	0x123,x
	sta	0x122,x
	rol	a
	sta	0x121,x
;	Raw cost for generated ic 43 : (19, 30.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 150 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
;	Raw cost for generated ic 44 : (2, 2.000000) count=1.000000
;	genXor
	eor	0x129,x
	sta	0x12d,x
;	Raw cost for generated ic 45 : (6, 9.000000) count=1.000000
;	../_fsdiv.c: 299: mant1 = MANT (fl1.l);
;	genAddrOf
	txa
	clc
	adc	#0x19
	ldx	#0x01
;	Raw cost for generated ic 48 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 50 : (28, 53.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x124,x
;	Raw cost for generated ic 51 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x121,x
	sta	0x109,x
	lda	0x122,x
	sta	0x10a,x
	lda	0x123,x
	ora	#0x80
	sta	0x10b,x
	lda	0x124,x
	sta	0x10c,x
;	Raw cost for generated ic 52 : (26, 38.000000) count=1.000000
;	../_fsdiv.c: 300: mant2 = MANT (fl2.l);
;	genAddrOf
	txa
	clc
	adc	#0x15
	ldx	#0x01
;	Raw cost for generated ic 54 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 56 : (28, 53.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x124,x
;	Raw cost for generated ic 57 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x123,x
	ora	#0x80
	sta	0x123,x
;	Raw cost for generated ic 58 : (8, 11.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x124,x
	sta	0x108,x
	lda	0x123,x
	sta	0x107,x
	lda	0x122,x
	sta	0x106,x
	lda	0x121,x
	sta	0x105,x
;	Raw cost for generated ic 59 : (24, 36.000000) count=1.000000
;	../_fsdiv.c: 303: if (mant1 < mant2)
;	genCmp
	lda	0x109,x
	sec
	sbc	0x105,x
	lda	0x10a,x
	sbc	0x106,x
	lda	0x10b,x
	sbc	0x107,x
	lda	0x10c,x
	sbc	0x108,x
	bcs	00104$
;	Raw cost for generated ic 60 : (30, 39.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 61 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 305: mask = 0x1000000;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	lda	#0x01
	sta	0x110,x
;	Raw cost for generated ic 64 : (16, 24.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 65 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.250000
;	../_fsdiv.c: 309: mask = 0x0800000;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10d,x
	sta	0x10e,x
	sta	0x110,x
	lda	#0x80
	sta	0x10f,x
;	Raw cost for generated ic 67 : (17, 26.000000) count=0.250000
;	../_fsdiv.c: 310: exp++;
;	genPlus
;	  genPlusInc
	lda	0x125,x
	clc
	adc	#0x01
	sta	0x125,x
	lda	0x126,x
	adc	#0x00
	sta	0x126,x
;	Raw cost for generated ic 69 : (17, 24.000000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 313: if (exp < 1) /* denormal */
;	genCmp
	tsx
	lda	0x125,x
	sec
	sbc	#0x01
	lda	0x126,x
	sbc	#0x00
	bvc	00198$
	bpl	00197$
	bmi	00107$
00198$:
	bpl	00107$
00197$:
;	Raw cost for generated ic 72 : (23, 29.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 314: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
;	Raw cost for generated ic 76 : (10, 13.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 316: if (exp >= 255)
;	genCmp
	tsx
	lda	0x125,x
	sec
	sbc	#0xff
	lda	0x126,x
	sbc	#0x00
	bvs	00201$
	bpl	00200$
	bmi	00116$
00201$:
	bpl	00116$
00200$:
;	Raw cost for generated ic 78 : (23, 29.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
;	genAddrOf
	txa
	clc
	adc	#0x19
	sta	0x129,x
	lda	#0x01
	sta	0x12a,x
;	Raw cost for generated ic 82 : (12, 18.000000) count=0.750000
;	genIfx
	lda	0x12d,x
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 84 : (8, 9.600000) count=0.750000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x11d,x
	sta	0x11e,x
	lda	#0x80
	sta	0x11f,x
	lda	#0xff
	sta	0x120,x
;	Raw cost for generated ic 85 : (18, 26.000000) count=0.562500
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 86 : (3, 3.000000) count=0.562500
;	genLabel
00120$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.187500
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x11d,x
	sta	0x11e,x
	lda	#0x80
	sta	0x11f,x
	lda	#0x7f
	sta	0x120,x
;	Raw cost for generated ic 88 : (19, 28.000000) count=0.187500
;	genLabel
00121$:
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x129,x
	sta	*(DPTR+0)
	lda	0x12a,x
	sta	*(DPTR+1)
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
;	Raw cost for generated ic 90 : (36, 64.000000) count=0.750000
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 91 : (3, 3.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.250000
;	../_fsdiv.c: 323: result = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
;	Raw cost for generated ic 93 : (15, 24.000000) count=0.250000
;	../_fsdiv.c: 324: do
;	genLabel
00110$:
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.999944
;	../_fsdiv.c: 326: long diff = mant1 - mant2;
;	genMinus
	tsx
	lda	0x109,x
	sec
	sbc	0x121,x
	sta	0x11d,x
	lda	0x10a,x
	sbc	0x122,x
	sta	0x11e,x
	lda	0x10b,x
	sbc	0x123,x
	sta	0x11f,x
	lda	0x10c,x
	sbc	0x124,x
	sta	0x120,x
;	Raw cost for generated ic 95 : (38, 56.000000) count=0.999944
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x11f,x
	sta	0x103,x
	lda	0x11e,x
	sta	0x102,x
	lda	0x11d,x
	sta	0x101,x
;	Raw cost for generated ic 96 : (21, 32.000000) count=0.999944
;	../_fsdiv.c: 327: if (diff >= 0)
;	genCmp
	lda	0x104,x
	sec
	sbc	#0x00
	bvs	00206$
	bpl	00205$
	bmi	00109$
00206$:
	bpl	00109$
00205$:
;	Raw cost for generated ic 97 : (17, 21.400002) count=0.999944
;	skipping generated iCode
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999944
;	../_fsdiv.c: 329: mant1 = diff;
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x10c,x
	lda	0x11f,x
	sta	0x10b,x
	lda	0x11e,x
	sta	0x10a,x
	lda	0x11d,x
	sta	0x109,x
;	Raw cost for generated ic 101 : (24, 36.000000) count=0.749943
;	../_fsdiv.c: 330: result |= mask;
;	genOr
	lda	0x111,x
	ora	0x10d,x
	sta	0x111,x
	lda	0x112,x
	ora	0x10e,x
	sta	0x112,x
	lda	0x113,x
	ora	0x10f,x
	sta	0x113,x
	lda	0x114,x
	ora	0x110,x
	sta	0x114,x
;	Raw cost for generated ic 102 : (36, 52.000000) count=0.749943
;	genLabel
00109$:
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.999925
;	../_fsdiv.c: 332: mant1 <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	tsx
	asl	0x109,x
	rol	0x10a,x
	rol	0x10b,x
	rol	0x10c,x
;	Raw cost for generated ic 105 : (13, 26.000000) count=0.999925
;	../_fsdiv.c: 333: mask >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	0x110,x
	lsr	a
	ror	0x10f,x
	ror	0x10e,x
	ror	0x10d,x
	sta	0x110,x
;	Raw cost for generated ic 107 : (16, 29.000000) count=0.999925
;	../_fsdiv.c: 335: while (mask);
;	genIfx
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	beq	00209$
	jmp	00110$
00209$:
;	Raw cost for generated ic 110 : (14, 17.600000) count=0.999925
;	../_fsdiv.c: 338: if (mant1 >= mant2)
;	genCmp
	lda	0x109,x
	sec
	sbc	0x105,x
	lda	0x10a,x
	sbc	0x106,x
	lda	0x10b,x
	sbc	0x107,x
	lda	0x10c,x
	sbc	0x108,x
	bcc	00114$
;	Raw cost for generated ic 113 : (30, 39.599998) count=0.249967
;	skipping generated iCode
;	Raw cost for generated ic 114 : (0, 0.000000) count=0.249967
;	../_fsdiv.c: 339: result += 1;
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
	lda	0x113,x
	adc	#0x00
	sta	0x113,x
	lda	0x114,x
	adc	#0x00
	sta	0x114,x
;	Raw cost for generated ic 117 : (33, 46.000000) count=0.187475
;	genLabel
00114$:
;	Raw cost for generated ic 119 : (0, 0.000000) count=0.249967
;	../_fsdiv.c: 341: result &= ~HIDDEN;
;	genAnd
	tsx
	lda	0x113,x
	and	#0x7f
	sta	0x113,x
;	Raw cost for generated ic 120 : (9, 13.000000) count=0.249967
;	../_fsdiv.c: 344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
	txa
	clc
	adc	#0x19
	sta	0x11d,x
	lda	#0x01
	sta	0x11e,x
;	Raw cost for generated ic 122 : (12, 18.000000) count=0.249967
;	genIfx
	lda	0x12d,x
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 124 : (8, 9.600000) count=0.249967
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x121,x
	sta	0x122,x
	sta	0x123,x
	lda	#0x80
	sta	0x124,x
;	Raw cost for generated ic 125 : (16, 24.000000) count=0.187475
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 126 : (3, 3.000000) count=0.187475
;	genLabel
00122$:
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.062492
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x121,x
	sta	0x122,x
	sta	0x123,x
	sta	0x124,x
;	Raw cost for generated ic 128 : (15, 24.000000) count=0.062492
;	genLabel
00123$:
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.249967
;	genCast
	tsx
	lda	0x125,x
	sta	0x125,x
	lda	0x126,x
	sta	0x126,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x127,x
	sta	0x128,x
;	Raw cost for generated ic 130 : (26, 38.000000) count=0.249967
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x126,x
	lsr	a
	lda	0x125,x
	ror	a
	sta	0x128,x
	lda	#0x00
	sta	0x126,x
	sta	0x125,x
	ror	a
	sta	0x127,x
;	Raw cost for generated ic 131 : (23, 36.000000) count=0.249967
;	genOr
	lda	0x121,x
	ora	0x125,x
	sta	0x121,x
	lda	0x122,x
	ora	0x126,x
	sta	0x122,x
	lda	0x123,x
	ora	0x127,x
	sta	0x123,x
	lda	0x124,x
	ora	0x128,x
	sta	0x124,x
;	Raw cost for generated ic 132 : (36, 52.000000) count=0.249967
;	genOr
	lda	0x121,x
	ora	0x111,x
	sta	0x121,x
	lda	0x122,x
	ora	0x112,x
	sta	0x122,x
	lda	0x123,x
	ora	0x113,x
	sta	0x123,x
	lda	0x124,x
	ora	0x114,x
	sta	0x124,x
;	Raw cost for generated ic 133 : (36, 52.000000) count=0.249967
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	lda	0x121,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x122,x
	iny
	sta	[DPTR],y
	lda	0x123,x
	iny
	sta	[DPTR],y
	lda	0x124,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 134 : (35, 62.000000) count=0.249967
;	genLabel
00117$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.999967
;	../_fsdiv.c: 346: return (fl1.f);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x19
	ldx	#0x01
;	Raw cost for generated ic 136 : (7, 10.000000) count=0.999967
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 138 : (30, 56.000000) count=0.999967
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x11f,x
	sta	*___SDCC_m6502_ret2
	lda	0x11e,x
	sta	*(REGTEMP+0)
	lda	0x11d,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 139 : (17, 24.000000) count=0.999967
;	genLabel
00118$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.999967
;	../_fsdiv.c: 347: }
;	genEndFunction
;	  adjustStack : cycles stk:186  incdec:100  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x2d
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 141 : (16, 30.000000) count=0.999967
;------------------------------------------------------------
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;a1            Allocated to stack - sp +13 +4 
;a2            Allocated to stack - sp +17 +4 
;p2            Allocated to registers a x 
;f             Allocated to stack - sp +1 +4 
;p             Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../_fsdiv.c: 349: float __fsdiv (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
___fsdiv:
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fsdiv.c: 351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
;	genAddrOf
	txa
	clc
	adc	#0x11
	ldx	#0x01
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 7 : (30, 56.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x107,x
	rol	a
	lda	0x108,x
	rol	a
	sta	0x105,x
	lda	#0x00
	sta	0x107,x
	sta	0x108,x
	rol	a
	sta	0x106,x
;	Raw cost for generated ic 8 : (23, 36.000000) count=1.000000
;	genAnd
	lda	0x105,x
;	genIfxJump : z
	beq	00130$
	jmp	00108$
00130$:
;	Raw cost for generated ic 9 : (10, 12.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
;	Raw cost for generated ic 13 : (10, 16.000000) count=0.750000
;	genCast
;	genCopy
	sta	0x105,x
	sta	0x109,x
	lda	0x104,x
	sta	0x108,x
;	Raw cost for generated ic 15 : (12, 18.000000) count=0.750000
;	../_fsdiv.c: 357: if (a1 > 0.0f)
;	genIpush
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 45 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 46 : (6, 14.000000) count=0.750000
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
;	Raw cost for generated ic 47 : (11, 20.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 18 : (7, 7.600000) count=0.750000
;	../_fsdiv.c: 358: *p = __INFINITY;           // +inf
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	lda	#0x80
	iny
	sta	[DPTR],y
	lda	#0x7f
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (28, 52.000000) count=0.562500
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.562500
;	genLabel
00105$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.187500
;	../_fsdiv.c: 359: else if (a1 < 0.0f)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 48 : (6, 14.000000) count=0.187500
;	genIpush
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 49 : (17, 30.000000) count=0.187500
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
;	Raw cost for generated ic 50 : (11, 20.000000) count=0.187500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 26 : (7, 7.600000) count=0.187500
;	../_fsdiv.c: 360: *p = SIGNBIT | __INFINITY; // -inf
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	lda	#0x80
	iny
	sta	[DPTR],y
	lda	#0xff
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 30 : (28, 52.000000) count=0.140625
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 31 : (3, 3.000000) count=0.140625
;	genLabel
00102$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.046875
;	../_fsdiv.c: 362: *p = __NAN;                // nan
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	lda	#0xc0
	iny
	sta	[DPTR],y
	lda	#0xff
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 34 : (29, 54.000000) count=0.046875
;	genLabel
00106$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.750000
;	../_fsdiv.c: 363: return f;
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
	jmp	00109$
;	Raw cost for generated ic 37 : (24, 33.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 365: return __fsdiv_org (a1, a2);
;	genIpush
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 39 : (17, 30.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 40 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv_org
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 41 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x108,x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 42 : (20, 28.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 366: }
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 44 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
