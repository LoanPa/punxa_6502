;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	
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
	.globl ___ulonglong2fs
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;a             Allocated to stack - sp +17 +8 
;exp           Allocated to registers y 
;fl            Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +9 +4 
;sloc2         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../_ulonglong2fs.c: 61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
___ulonglong2fs:
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_ulonglong2fs.c: 66: if (!a)
;	genIfx
	lda	0x118,x
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
	ora	0x114,x
	ora	0x113,x
	ora	0x112,x
	ora	0x111,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (29, 37.599998) count=1.000000
;	../_ulonglong2fs.c: 68: return 0.0;
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
;	../_ulonglong2fs.c: 71: if (a == 0xffffffffffffffffull)
;	genCmpEQorNE
	tsx
	lda	0x111,x
	cmp	#0xff
	bne	00118$
	lda	0x112,x
	cmp	#0xff
	bne	00118$
	lda	0x113,x
	cmp	#0xff
	bne	00118$
	lda	0x114,x
	cmp	#0xff
	bne	00118$
	lda	0x115,x
	cmp	#0xff
	bne	00118$
	lda	0x116,x
	cmp	#0xff
	bne	00118$
	lda	0x117,x
	cmp	#0xff
	bne	00118$
	lda	0x118,x
	cmp	#0xff
	bne	00118$
;	Raw cost for generated ic 8 : (81, 94.799995) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_ulonglong2fs.c: 73: return 18446744073709551616.0f;
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x5f
	sty	*___SDCC_m6502_ret3
	jmp	00113$
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	../_ulonglong2fs.c: 76: while (a < HIDDEN)
;	genLabel
00118$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	#0x96
;	Raw cost for generated ic 66 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=3.999698
;	genCmp
	tsx
	lda	0x113,x
	sec
	sbc	#0x80
	lda	0x114,x
	sbc	#0x00
	lda	0x115,x
	sbc	#0x00
	lda	0x116,x
	sbc	#0x00
	lda	0x117,x
	sbc	#0x00
	lda	0x118,x
	sbc	#0x00
	bcs	00121$
;	Raw cost for generated ic 15 : (37, 45.599998) count=3.999698
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999698
;	../_ulonglong2fs.c: 78: a <<= 1;
;	genIpush
	tya
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 78 : (5, 10.000000) count=2.999698
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 79 : (32, 56.000000) count=2.999698
;	genCall
	jsr	__slulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 80 : (56, 94.000000) count=2.999698
;	../_ulonglong2fs.c: 79: exp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 22 : (1, 2.000000) count=2.999698
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 24 : (3, 3.000000) count=2.999698
;	../_ulonglong2fs.c: 82: while (a & NORM)
;	genLabel
00121$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.999925
;	genAssign
;	genCopy
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999925
;	genLabel
00110$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999283
;	genAnd
	tsx
	lda	0x114,x
;	genIfxJump : z
	bne	00172$
	jmp	00112$
00172$:
;	Raw cost for generated ic 27 : (11, 14.200001) count=3.999283
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999283
;	../_ulonglong2fs.c: 85: if (a & 1)
;	genAnd
	lda	0x111,x
	and	#0x01
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 31 : (12, 14.200001) count=2.999462
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999462
;	../_ulonglong2fs.c: 86: a += 2;
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x02
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
	lda	0x115,x
	adc	#0x00
	sta	0x115,x
	lda	0x116,x
	adc	#0x00
	sta	0x116,x
	lda	0x117,x
	adc	#0x00
	sta	0x117,x
	lda	0x118,x
	adc	#0x00
	sta	0x118,x
;	Raw cost for generated ic 35 : (65, 90.000000) count=2.249518
;	genLabel
00109$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=2.999358
;	../_ulonglong2fs.c: 87: a >>= 1;
;	genIpush
	tya
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 81 : (5, 10.000000) count=2.999358
;	genIpush
	tsx
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 82 : (33, 58.000000) count=2.999358
;	genCall
	jsr	__srulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 83 : (56, 94.000000) count=2.999358
;	../_ulonglong2fs.c: 88: exp++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 41 : (1, 2.000000) count=2.999358
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999358
;	genLabel
00112$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999740
;	../_ulonglong2fs.c: 91: a &= ~HIDDEN ;
;	genAnd
	tsx
	lda	0x113,x
	and	#0x7f
	sta	0x113,x
	lda	#0x00
	sta	0x115,x
	sta	0x116,x
	sta	0x117,x
	sta	0x118,x
;	Raw cost for generated ic 45 : (23, 35.000000) count=0.999740
;	../_ulonglong2fs.c: 93: fl.l = PACK(0,(unsigned long)exp, a);
;	genAddrOf
	inx
	txa
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
;	Raw cost for generated ic 47 : (10, 16.000000) count=0.999740
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10b,x
	sta	0x10a,x
	sta	0x109,x
	tya
	sta	0x108,x
;	Raw cost for generated ic 49 : (15, 24.000000) count=0.999740
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x109,x
	lsr	a
	lda	0x108,x
	ror	a
	sta	0x10b,x
	lda	#0x00
	sta	0x109,x
	sta	0x108,x
	ror	a
	sta	0x10a,x
;	Raw cost for generated ic 50 : (23, 36.000000) count=0.999740
;	genCast
;	genCopy
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.999740
;	genCast
;	genCopy
	lda	0x113,x
	sta	0x107,x
	lda	0x112,x
	sta	0x106,x
	lda	0x111,x
	sta	0x105,x
	lda	0x110,x
	sta	0x104,x
;	Raw cost for generated ic 65 : (24, 36.000000) count=0.999740
;	genOr
	lda	0x108,x
	ora	0x104,x
	sta	0x104,x
	lda	0x109,x
	ora	0x105,x
	sta	0x105,x
	lda	0x10a,x
	ora	0x106,x
	sta	0x106,x
	lda	0x10b,x
	ora	0x107,x
	sta	0x107,x
;	Raw cost for generated ic 53 : (36, 52.000000) count=0.999740
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10c,x
	sta	*(DPTR+0)
	lda	0x10d,x
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
;	Raw cost for generated ic 55 : (35, 62.000000) count=0.999740
;	../_ulonglong2fs.c: 95: return (fl.f);
;	genAddrOf
	txa
	ldx	#0x01
;	Raw cost for generated ic 56 : (3, 4.000000) count=0.999740
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
;	Raw cost for generated ic 58 : (30, 56.000000) count=0.999740
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 59 : (17, 24.000000) count=0.999740
;	genLabel
00113$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.999740
;	../_ulonglong2fs.c: 96: }
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
;	Raw cost for generated ic 61 : (16, 30.000000) count=0.999740
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
