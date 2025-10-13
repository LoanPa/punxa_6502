;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	
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
	.globl ___fs2ulong
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1            Allocated to stack - sp +17 +4 
;fl1           Allocated to stack - sp +5 +4 
;exp           Allocated to stack - sp +13 +2 
;l             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_fs2ulong.c: 103: unsigned long __fs2ulong (float a1) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
___fs2ulong:
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fs2ulong.c: 109: fl1.f = a1;
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x111,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x112,x
	iny
	sta	[DPTR],y
	lda	0x113,x
	iny
	sta	[DPTR],y
	lda	0x114,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 7 : (28, 53.000000) count=1.000000
;	genIfx
	ora	0x10b,x
	ora	0x10a,x
	ora	0x109,x
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 8 : (14, 17.600000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 11 : (6, 8.000000) count=0.750000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 13 : (28, 53.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x10c,x
	asl	a
	lda	#0x00
	sta	0x10c,x
	sta	0x10b,x
	sta	0x10a,x
	rol	a
	sta	0x109,x
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
;	../_fs2ulong.c: 112: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
;	Raw cost for generated ic 20 : (10, 13.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 22 : (7, 10.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 24 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x10b,x
	rol	a
	lda	0x10c,x
	rol	a
	sta	0x109,x
	lda	#0x00
	sta	0x10b,x
	sta	0x10c,x
	rol	a
	sta	0x10a,x
;	Raw cost for generated ic 26 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
;	Raw cost for generated ic 60 : (9, 14.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=150
	sec
	sbc	#0x96
	tsx
	sta	0x10d,x
	lda	#0x00
	sbc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 28 : (14, 20.000000) count=1.000000
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 31 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 33 : (28, 53.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 34 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x10b,x
	ora	#0x80
	sta	0x10b,x
;	Raw cost for generated ic 35 : (8, 11.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 36 : (24, 36.000000) count=1.000000
;	../_fs2ulong.c: 117: if (exp > 8)
;	genCmp
	lda	#0x08
	sec
	sbc	0x10d,x
	lda	#0x00
	sbc	0x10e,x
	bvc	00134$
	bpl	00133$
	bmi	00105$
00134$:
	bpl	00105$
00133$:
;	Raw cost for generated ic 37 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 118: return 0xfffffffful;
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
;	Raw cost for generated ic 41 : (10, 13.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 120: if (exp < 0)
;	genCmp
	tsx
	lda	0x10e,x
	sec
	sbc	#0x00
	bvc	00137$
	bpl	00136$
	bmi	00107$
00137$:
	bpl	00107$
00136$:
;	Raw cost for generated ic 43 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 121: l >>= -exp;
;	genCast
;	genCopy
	lda	0x10d,x
;	Raw cost for generated ic 59 : (3, 4.000000) count=0.750000
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
;	Raw cost for generated ic 47 : (5, 6.000000) count=0.750000
;	genRightShift
	tay
	beq	00108$
	lda	0x104,x
00139$:
	lsr	a
	ror	0x103,x
	ror	0x102,x
	ror	0x101,x
	dey
	bne	00139$
	sta	0x104,x
;	Raw cost for generated ic 48 : (22, 38.200001) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 50 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.250000
;	../_fs2ulong.c: 123: l <<= exp;
;	genLeftShift
	tsx
	lda	0x10d,x
	tay
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	cpy	#0x00
	beq	00142$
00141$:
	asl	0x101,x
	rol	0x102,x
	rol	0x103,x
	rol	0x104,x
	dey
	bne	00141$
00142$:
;	Raw cost for generated ic 52 : (48, 77.199997) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 125: return l;
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
;	Raw cost for generated ic 55 : (21, 30.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 126: }
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 57 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
