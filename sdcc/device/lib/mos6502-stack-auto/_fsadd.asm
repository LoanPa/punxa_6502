;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsadd
	
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
	.globl ___fsadd
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a1            Allocated to stack - sp +35 +4 
;a2            Allocated to stack - sp +39 +4 
;mant1         Allocated to stack - sp +5 +4 
;mant2         Allocated to stack - sp +1 +4 
;pfl1          Allocated to stack - sp +31 +2 
;pfl2          Allocated to registers a x 
;exp1          Allocated to stack - sp +29 +2 
;exp2          Allocated to stack - sp +27 +2 
;expd          Allocated to stack - sp +25 +2 
;sign          Allocated to registers y 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_fsadd.c: 170: float __fsadd (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 32 bytes.
___fsadd:
;	  adjustStack : cycles stk:96  incdec:68  adc:12
	tsx
	txa
	clc
	adc	#0xe0
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
;	genAddrOf
	txa
	clc
	adc	#0x27
	ldx	#0x01
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
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
;	Raw cost for generated ic 7 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x114,x
	lda	0x117,x
	sta	0x113,x
	lda	0x116,x
	sta	0x112,x
	lda	0x115,x
	sta	0x111,x
;	Raw cost for generated ic 8 : (21, 32.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x113,x
	rol	a
	lda	0x114,x
	rol	a
	sta	0x10d,x
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
	rol	a
;	Raw cost for generated ic 9 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10e,x
	lda	0x10d,x
;	Raw cost for generated ic 194 : (9, 14.000000) count=1.000000
;	genAnd
	sta	0x11b,x
	lda	#0x00
	sta	0x11c,x
;	Raw cost for generated ic 10 : (8, 12.000000) count=1.000000
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
;	genAnd
	lda	0x115,x
	sta	0x10d,x
	lda	0x116,x
	sta	0x10e,x
	lda	0x117,x
	sta	0x10f,x
	lda	#0x00
	sta	0x110,x
;	Raw cost for generated ic 15 : (23, 34.000000) count=1.000000
;	genOr
	lda	0x10f,x
	ora	#0x80
	sta	0x10f,x
;	Raw cost for generated ic 16 : (8, 11.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=4
	lda	0x110,x
	asl	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
	rol	a
	asl	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
	rol	a
	asl	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
	rol	a
	asl	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
	rol	a
	sta	0x110,x
;	Raw cost for generated ic 17 : (46, 89.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x10e,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x101,x
;	Raw cost for generated ic 18 : (21, 32.000000) count=1.000000
;	../_fsadd.c: 181: if (SIGN (*pfl2))
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x114,x
	asl	a
	lda	#0x00
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	rol	a
	sta	0x111,x
;	Raw cost for generated ic 22 : (19, 30.000000) count=1.000000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 23 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 182: mant2 = -mant2;
;	genUminus
	lda	#0x00
	sec
	sbc	0x10d,x
	sta	0x101,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x102,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x103,x
	lda	#0x00
	sbc	0x110,x
	sta	0x104,x
;	Raw cost for generated ic 27 : (33, 46.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 184: if (!*pfl2)
;	genIfx
	tsx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 32 : (18, 23.600000) count=1.000000
;	../_fsadd.c: 185: return (a1);
;	genRet
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	sta	*(REGTEMP+0)
	lda	0x123,x
	ldx	*(REGTEMP+0)
	jmp	00135$
;	Raw cost for generated ic 35 : (23, 31.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x23
	sta	0x10d,x
	lda	#0x01
;	Raw cost for generated ic 37 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10e,x
	sta	0x120,x
	lda	0x10d,x
	sta	0x11f,x
;	Raw cost for generated ic 38 : (12, 18.000000) count=1.000000
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x10d,x
	iny
	lda	[DPTR],y
	sta	0x10e,x
	iny
	lda	[DPTR],y
	sta	0x10f,x
	iny
	lda	[DPTR],y
	sta	0x110,x
;	Raw cost for generated ic 41 : (32, 58.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x114,x
	lda	0x10f,x
	sta	0x113,x
	lda	0x10e,x
	sta	0x112,x
	lda	0x10d,x
	sta	0x111,x
;	Raw cost for generated ic 42 : (21, 32.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x113,x
	rol	a
	lda	0x114,x
	rol	a
	sta	0x115,x
	lda	#0x00
	sta	0x117,x
	sta	0x118,x
	rol	a
;	Raw cost for generated ic 43 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x116,x
;	Raw cost for generated ic 195 : (9, 14.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x116,x
;	Raw cost for generated ic 44 : (8, 12.000000) count=1.000000
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
;	genAnd
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 49 : (23, 34.000000) count=1.000000
;	genOr
	lda	0x10b,x
	ora	#0x80
	sta	0x10b,x
;	Raw cost for generated ic 50 : (8, 11.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=4
	lda	0x10c,x
	asl	0x109,x
	rol	0x10a,x
	rol	0x10b,x
	rol	a
	asl	0x109,x
	rol	0x10a,x
	rol	0x10b,x
	rol	a
	asl	0x109,x
	rol	0x10a,x
	rol	0x10b,x
	rol	a
	asl	0x109,x
	rol	0x10a,x
	rol	0x10b,x
	rol	a
	sta	0x10c,x
;	Raw cost for generated ic 51 : (46, 89.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10a,x
	sta	0x106,x
	lda	0x109,x
	sta	0x105,x
;	Raw cost for generated ic 52 : (21, 32.000000) count=1.000000
;	../_fsadd.c: 190: if (SIGN(*pfl1))
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x114,x
	asl	a
	lda	#0x00
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	rol	a
	sta	0x111,x
;	Raw cost for generated ic 56 : (19, 30.000000) count=1.000000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 57 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 191: mant1 = -mant1;
;	genUminus
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x105,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x106,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x107,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x108,x
;	Raw cost for generated ic 61 : (33, 46.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 193: if (!*pfl1)
;	genIfx
	tsx
	lda	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 66 : (18, 23.600000) count=1.000000
;	../_fsadd.c: 194: return (a2);
;	genRet
	lda	0x12a,x
	sta	*___SDCC_m6502_ret3
	lda	0x129,x
	sta	*___SDCC_m6502_ret2
	lda	0x128,x
	sta	*(REGTEMP+0)
	lda	0x127,x
	ldx	*(REGTEMP+0)
	jmp	00135$
;	Raw cost for generated ic 69 : (23, 31.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 196: expd = exp1 - exp2;
;	genMinus
	tsx
	lda	0x115,x
	sec
	sbc	0x11b,x
	sta	0x119,x
	lda	0x116,x
	sbc	0x11c,x
	sta	0x11a,x
;	Raw cost for generated ic 71 : (20, 30.000000) count=1.000000
;	../_fsadd.c: 197: if (expd > 25)
;	genCmp
	lda	#0x19
	sec
	sbc	0x119,x
	lda	#0x00
	sbc	0x11a,x
	bvc	00278$
	bpl	00277$
	bmi	00110$
00278$:
	bpl	00110$
00277$:
;	Raw cost for generated ic 73 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 198: return (a1);
;	genRet
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	sta	*(REGTEMP+0)
	lda	0x123,x
	ldx	*(REGTEMP+0)
	jmp	00135$
;	Raw cost for generated ic 77 : (23, 31.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 199: if (expd < -25)
;	genCmp
	tsx
	lda	0x119,x
	sec
	sbc	#0xe7
	lda	0x11a,x
	sbc	#0xff
	bvc	00281$
	bpl	00280$
	bmi	00112$
00281$:
	bpl	00112$
00280$:
;	Raw cost for generated ic 79 : (23, 29.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 200: return (a2);
;	genRet
	lda	0x12a,x
	sta	*___SDCC_m6502_ret3
	lda	0x129,x
	sta	*___SDCC_m6502_ret2
	lda	0x128,x
	sta	*(REGTEMP+0)
	lda	0x127,x
	ldx	*(REGTEMP+0)
	jmp	00135$
;	Raw cost for generated ic 83 : (23, 31.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 202: if (expd < 0)
;	genCmp
	tsx
	lda	0x11a,x
	sec
	sbc	#0x00
	bvc	00284$
	bpl	00283$
	bmi	00114$
00284$:
	bpl	00114$
00283$:
;	Raw cost for generated ic 85 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 204: expd = -expd;
;	genUminus
	lda	#0x00
	sec
	sbc	0x119,x
	sta	0x119,x
	lda	#0x00
	sbc	0x11a,x
	sta	0x11a,x
;	Raw cost for generated ic 89 : (17, 24.000000) count=0.750000
;	../_fsadd.c: 205: exp1 += expd;
;	genPlus
	lda	0x115,x
	clc
	adc	0x119,x
	sta	0x115,x
	lda	0x116,x
	adc	0x11a,x
	sta	0x116,x
;	Raw cost for generated ic 91 : (19, 28.000000) count=0.750000
;	../_fsadd.c: 206: mant1 >>= expd;
;	genRightShift
	lda	0x119,x
	tay
	beq	00115$
	lda	0x108,x
00286$:
	cmp	#0x80
	ror	a
	ror	0x107,x
	ror	0x106,x
	ror	0x105,x
	dey
	bne	00286$
	sta	0x108,x
;	Raw cost for generated ic 93 : (27, 44.199997) count=0.750000
;	genGoto
	jmp	00115$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.250000
;	../_fsadd.c: 210: mant2 >>= expd;
;	genRightShift
	tsx
	lda	0x119,x
	tay
	beq	00289$
	lda	0x104,x
00288$:
	cmp	#0x80
	ror	a
	ror	0x103,x
	ror	0x102,x
	ror	0x101,x
	dey
	bne	00288$
	sta	0x104,x
00289$:
;	Raw cost for generated ic 97 : (28, 46.199997) count=0.250000
;	genLabel
00115$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 212: mant1 += mant2;
;	genPlus
	tsx
	lda	0x105,x
	clc
	adc	0x101,x
	sta	0x105,x
	lda	0x106,x
	adc	0x102,x
	sta	0x106,x
	lda	0x107,x
	adc	0x103,x
	sta	0x107,x
	lda	0x108,x
	adc	0x104,x
	sta	0x108,x
;	Raw cost for generated ic 100 : (38, 56.000000) count=1.000000
;	../_fsadd.c: 214: sign = false;
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 102 : (2, 2.000000) count=1.000000
;	../_fsadd.c: 216: if (mant1 < 0)
;	genCmp
	sec
	sbc	#0x00
	bvc	00291$
	bpl	00290$
	bmi	00119$
00291$:
	bpl	00119$
00290$:
;	Raw cost for generated ic 103 : (14, 17.400000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 218: mant1 = -mant1;
;	genUminus
	tya
	sec
	sbc	0x105,x
	sta	0x105,x
	tya
	sbc	0x106,x
	sta	0x106,x
	tya
	sbc	0x107,x
	sta	0x107,x
	tya
	sbc	0x108,x
	sta	0x108,x
;	Raw cost for generated ic 107 : (29, 46.000000) count=0.750000
;	../_fsadd.c: 219: sign = true;
;	genAssign
;	genCopy
	iny
;	Raw cost for generated ic 109 : (1, 2.000000) count=0.750000
;	genGoto
	jmp	00151$
;	Raw cost for generated ic 110 : (3, 3.000000) count=0.750000
;	genLabel
00119$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.250000
;	../_fsadd.c: 221: else if (!mant1)
;	genIfx
	tsx
	lda	0x108,x
	ora	0x107,x
	ora	0x106,x
	ora	0x105,x
;	genIfxJump : z
	bne	00151$
;	Raw cost for generated ic 112 : (18, 23.600000) count=0.250000
;	../_fsadd.c: 222: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00135$
;	Raw cost for generated ic 115 : (10, 13.000000) count=0.187500
;	../_fsadd.c: 225: while (mant1 < (HIDDEN<<4)) {
;	genLabel
00151$:
;	Raw cost for generated ic 192 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x116,x
	sta	0x10a,x
	lda	0x115,x
	sta	0x109,x
;	Raw cost for generated ic 196 : (13, 20.000000) count=1.000000
;	genLabel
00121$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=3.999997
;	genCast
;	genCopy
	tsx
	lda	0x108,x
	sta	0x110,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x105,x
	sta	0x10d,x
;	Raw cost for generated ic 119 : (25, 38.000000) count=3.999997
;	genCmp
	lda	0x110,x
	sec
	sbc	#0x08
	bcs	00154$
;	Raw cost for generated ic 120 : (11, 13.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 121 : (0, 0.000000) count=3.999997
;	../_fsadd.c: 226: mant1 <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	0x105,x
	rol	0x106,x
	rol	0x107,x
	rol	0x108,x
;	Raw cost for generated ic 124 : (12, 24.000000) count=2.999997
;	../_fsadd.c: 227: exp1--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109,x
	lda	0x10a,x
	sbc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 127 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 129 : (3, 3.000000) count=2.999997
;	../_fsadd.c: 231: while (mant1 & 0xf0000000) {
;	genLabel
00154$:
;	Raw cost for generated ic 193 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x11e,x
	lda	0x109,x
	sta	0x11d,x
;	Raw cost for generated ic 199 : (13, 20.000000) count=0.999999
;	genLabel
00126$:
;	Raw cost for generated ic 131 : (0, 0.000000) count=3.999991
;	genAnd
	tsx
	lda	0x108,x
	and	#0xf0
;	genIfxJump : z
	beq	00160$
;	Raw cost for generated ic 132 : (11, 13.600000) count=3.999991
;	skipping generated iCode
;	Raw cost for generated ic 133 : (0, 0.000000) count=3.999991
;	../_fsadd.c: 232: if (mant1&1)
;	genAnd
	lda	0x105,x
	and	#0x01
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 136 : (12, 14.200001) count=2.999994
;	skipping generated iCode
;	Raw cost for generated ic 137 : (0, 0.000000) count=2.999994
;	../_fsadd.c: 233: mant1 += 2;
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x02
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	lda	0x107,x
	adc	#0x00
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 140 : (33, 46.000000) count=2.249994
;	genLabel
00125$:
;	Raw cost for generated ic 142 : (0, 0.000000) count=2.999992
;	../_fsadd.c: 234: mant1 >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	tsx
	lda	0x108,x
	cmp	#0x80
	ror	a
	ror	0x107,x
	ror	0x106,x
	ror	0x105,x
	sta	0x108,x
;	Raw cost for generated ic 143 : (19, 33.000000) count=2.999992
;	../_fsadd.c: 235: exp1++;
;	genPlus
;	  genPlusInc
	lda	0x11d,x
	clc
	adc	#0x01
	sta	0x11d,x
	lda	0x11e,x
	adc	#0x00
	sta	0x11e,x
;	Raw cost for generated ic 146 : (17, 24.000000) count=2.999992
;	genGoto
	jmp	00126$
;	Raw cost for generated ic 148 : (3, 3.000000) count=2.999992
;	genLabel
00160$:
;	Raw cost for generated ic 200 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x11e,x
	sta	0x10a,x
	lda	0x11d,x
	sta	0x109,x
;	Raw cost for generated ic 201 : (13, 20.000000) count=0.999997
;	../_fsadd.c: 239: mant1 &= ~(HIDDEN<<4);
;	genAnd
	lda	0x108,x
	and	#0xf7
	sta	0x108,x
;	Raw cost for generated ic 150 : (8, 11.000000) count=0.999997
;	../_fsadd.c: 242: if (exp1 >= 0x100)
;	genCmp
	lda	0x11e,x
	sec
	sbc	#0x01
	bvs	00301$
	bpl	00300$
	bmi	00133$
00301$:
	bpl	00133$
00300$:
;	Raw cost for generated ic 152 : (17, 21.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.999997
;	../_fsadd.c: 243: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 157 : (7, 7.600000) count=0.749997
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x10d,x
	sta	0x10e,x
	lda	#0x80
	sta	0x10f,x
	lda	#0xff
	sta	0x110,x
;	Raw cost for generated ic 158 : (18, 26.000000) count=0.562497
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 159 : (3, 3.000000) count=0.562497
;	genLabel
00137$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.187499
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10d,x
	sta	0x10e,x
	lda	#0x80
	sta	0x10f,x
	lda	#0x7f
	sta	0x110,x
;	Raw cost for generated ic 161 : (19, 28.000000) count=0.187499
;	genLabel
00138$:
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.749996
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	lda	0x10d,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10e,x
	iny
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 163 : (36, 64.000000) count=0.749996
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 164 : (3, 3.000000) count=0.749996
;	genLabel
00133$:
;	Raw cost for generated ic 165 : (0, 0.000000) count=0.249999
;	../_fsadd.c: 244: else if (exp1 < 0)
;	genCmp
	tsx
	lda	0x11e,x
	sec
	sbc	#0x00
	bvc	00306$
	bpl	00305$
	bmi	00130$
00306$:
	bpl	00130$
00305$:
;	Raw cost for generated ic 166 : (18, 23.400002) count=0.249999
;	skipping generated iCode
;	Raw cost for generated ic 167 : (0, 0.000000) count=0.249999
;	../_fsadd.c: 245: *pfl1 = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 171 : (24, 48.000000) count=0.187499
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 172 : (3, 3.000000) count=0.187499
;	genLabel
00130$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=0.062499
;	../_fsadd.c: 247: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00139$
;	Raw cost for generated ic 175 : (7, 7.600000) count=0.062499
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	lda	#0x80
	sta	0x110,x
;	Raw cost for generated ic 176 : (17, 26.000000) count=0.046873
;	genGoto
	jmp	00140$
;	Raw cost for generated ic 177 : (3, 3.000000) count=0.046873
;	genLabel
00139$:
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.012632
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	sta	0x110,x
;	Raw cost for generated ic 179 : (15, 24.000000) count=0.012632
;	genLabel
00140$:
;	Raw cost for generated ic 180 : (0, 0.000000) count=0.059505
;	genCast
	tsx
	lda	0x10a,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 181 : (26, 38.000000) count=0.059505
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x10a,x
	lsr	a
	lda	0x109,x
	ror	a
	sta	0x10c,x
	lda	#0x00
	sta	0x10a,x
	sta	0x109,x
	ror	a
	sta	0x10b,x
;	Raw cost for generated ic 182 : (23, 36.000000) count=0.059505
;	genOr
	lda	0x10d,x
	ora	0x109,x
	sta	0x109,x
	lda	0x10e,x
	ora	0x10a,x
	sta	0x10a,x
	lda	0x10f,x
	ora	0x10b,x
	sta	0x10b,x
	lda	0x110,x
	ora	0x10c,x
	sta	0x10c,x
;	Raw cost for generated ic 183 : (36, 52.000000) count=0.059505
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=4
	lda	0x108,x
	cmp	#0x80
	ror	a
	sta	0x110,x
	lda	0x107,x
	ror	a
	sta	0x10f,x
	lda	0x106,x
	ror	a
	sta	0x10e,x
	lda	0x105,x
	ror	a
	sta	0x10d,x
	lda	0x110,x
	cmp	#0x80
	ror	a
	ror	0x10f,x
	ror	0x10e,x
	ror	0x10d,x
	cmp	#0x80
	ror	a
	ror	0x10f,x
	ror	0x10e,x
	ror	0x10d,x
	cmp	#0x80
	ror	a
	ror	0x10f,x
	ror	0x10e,x
	ror	0x10d,x
	sta	0x110,x
;	Raw cost for generated ic 184 : (72, 121.000000) count=0.059505
;	genOr
	lda	0x109,x
	ora	0x10d,x
	sta	0x109,x
	lda	0x10a,x
	ora	0x10e,x
	sta	0x10a,x
	lda	0x10b,x
	ora	0x10f,x
	sta	0x10b,x
	lda	0x10c,x
	ora	0x110,x
	sta	0x10c,x
;	Raw cost for generated ic 185 : (36, 52.000000) count=0.059505
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 186 : (35, 62.000000) count=0.059505
;	genLabel
00134$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.997000
;	../_fsadd.c: 248: return (a1);
;	genRet
	tsx
	lda	0x126,x
	sta	*___SDCC_m6502_ret3
	lda	0x125,x
	sta	*___SDCC_m6502_ret2
	lda	0x124,x
	sta	*(REGTEMP+0)
	lda	0x123,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 189 : (21, 30.000000) count=0.997000
;	genLabel
00135$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=0.997000
;	../_fsadd.c: 249: }
;	genEndFunction
;	  adjustStack : cycles stk:134  incdec:74  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x20
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 191 : (16, 30.000000) count=0.997000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
