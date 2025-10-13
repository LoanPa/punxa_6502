;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	
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
	.globl ___ulong2fs
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a             Allocated to stack - sp +13 +4 
;exp           Allocated to registers y 
;fl            Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../_ulong2fs.c: 84: float __ulong2fs (unsigned long a ) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
___ulong2fs:
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_ulong2fs.c: 89: if (!a)
;	genIfx
	lda	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (17, 21.600000) count=1.000000
;	../_ulong2fs.c: 91: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00113$
;	Raw cost for generated ic 6 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_ulong2fs.c: 94: if (a == 0xfffffffful)
;	genCmpEQorNE
	tsx
	lda	0x10d,x
	cmp	#0xff
	bne	00118$
	lda	0x10e,x
	cmp	#0xff
	bne	00118$
	lda	0x10f,x
	cmp	#0xff
	bne	00118$
	lda	0x110,x
	cmp	#0xff
	bne	00118$
;	Raw cost for generated ic 8 : (41, 48.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_ulong2fs.c: 96: return 4294967296.0f;
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x4f
	sty	*___SDCC_m6502_ret3
	jmp	00113$
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	../_ulong2fs.c: 99: while (a < HIDDEN)
;	genLabel
00118$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	#0x96
;	Raw cost for generated ic 62 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=3.999997
;	genCmp
	tsx
	lda	0x10f,x
	sec
	sbc	#0x80
	lda	0x110,x
	sbc	#0x00
	bcs	00121$
;	Raw cost for generated ic 15 : (17, 21.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999997
;	../_ulong2fs.c: 101: a <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
	rol	0x110,x
;	Raw cost for generated ic 19 : (12, 24.000000) count=2.999997
;	../_ulong2fs.c: 102: exp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 22 : (1, 2.000000) count=2.999997
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 24 : (3, 3.000000) count=2.999997
;	../_ulong2fs.c: 105: while (a & NORM)
;	genLabel
00121$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.999999
;	genLabel
00110$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999991
;	genAnd
	tsx
	lda	0x110,x
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 27 : (9, 11.600000) count=3.999991
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999991
;	../_ulong2fs.c: 108: if (a & 1)
;	genAnd
	lda	0x10d,x
	and	#0x01
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 31 : (12, 14.200001) count=2.999994
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999994
;	../_ulong2fs.c: 109: a += 2;
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x02
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
	lda	0x10f,x
	adc	#0x00
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 35 : (33, 46.000000) count=2.249994
;	genLabel
00109$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=2.999992
;	../_ulong2fs.c: 110: a >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	tsx
	lda	0x110,x
	lsr	a
	ror	0x10f,x
	ror	0x10e,x
	ror	0x10d,x
	sta	0x110,x
;	Raw cost for generated ic 38 : (17, 31.000000) count=2.999992
;	../_ulong2fs.c: 111: exp++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 41 : (1, 2.000000) count=2.999992
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999992
;	genLabel
00112$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999997
;	../_ulong2fs.c: 114: a &= ~HIDDEN ;
;	genAnd
	tsx
	lda	0x10f,x
	and	#0x7f
	sta	0x10f,x
;	Raw cost for generated ic 45 : (9, 13.000000) count=0.999997
;	../_ulong2fs.c: 116: fl.l = PACK(0,(unsigned long)exp, a);
;	genAddrOf
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 47 : (10, 16.000000) count=0.999997
;	genCast
;	genCopy
	lda	#0x00
	sta	0x107,x
	sta	0x106,x
	sta	0x105,x
	tya
	sta	0x104,x
;	Raw cost for generated ic 49 : (15, 24.000000) count=0.999997
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x105,x
	lsr	a
	lda	0x104,x
	ror	a
	sta	0x107,x
	lda	#0x00
	sta	0x105,x
	sta	0x104,x
	ror	a
	sta	0x106,x
;	Raw cost for generated ic 50 : (23, 36.000000) count=0.999997
;	genOr
	lda	0x104,x
	ora	0x10c,x
	sta	0x104,x
	lda	0x105,x
	ora	0x10d,x
	sta	0x105,x
	lda	0x106,x
	ora	0x10e,x
	sta	0x106,x
	lda	0x107,x
	ora	0x10f,x
	sta	0x107,x
;	Raw cost for generated ic 52 : (36, 52.000000) count=0.999997
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x108,x
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	lda	0x104,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x105,x
	iny
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 53 : (35, 62.000000) count=0.999997
;	../_ulong2fs.c: 118: return (fl.f);
;	genAddrOf
	txa
	ldx	#0x01
;	Raw cost for generated ic 54 : (3, 4.000000) count=0.999997
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
;	Raw cost for generated ic 56 : (30, 56.000000) count=0.999997
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 57 : (17, 24.000000) count=0.999997
;	genLabel
00113$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.999997
;	../_ulong2fs.c: 119: }
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
;	Raw cost for generated ic 59 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
