;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsmul
	
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
	.globl ___fsmul
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;a1            Allocated to stack - sp +30 +4 
;a2            Allocated to stack - sp +34 +4 
;fl1           Allocated to stack - sp +9 +4 
;fl2           Allocated to stack - sp +5 +4 
;result        Allocated to stack - sp +1 +4 
;exp           Allocated to stack - sp +26 +2 
;sign          Allocated to stack - sp +25 +1 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;------------------------------------------------------------
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 27 bytes.
___fsmul:
;	  adjustStack : cycles stk:81  incdec:58  adc:12
	tsx
	txa
	clc
	adc	#0xe5
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fsmul.c: 248: fl1.f = a1;
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
	lda	0x11e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11f,x
	iny
	sta	[DPTR],y
	lda	0x120,x
	iny
	sta	[DPTR],y
	lda	0x121,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../_fsmul.c: 249: fl2.f = a2;
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	tsx
	lda	0x122,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x123,x
	iny
	sta	[DPTR],y
	lda	0x124,x
	iny
	sta	[DPTR],y
	lda	0x125,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (28, 53.000000) count=1.000000
;	../_fsmul.c: 251: if (!fl1.l || !fl2.l)
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (28, 53.000000) count=1.000000
;	genIfx
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 11 : (14, 17.600000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 14 : (6, 8.000000) count=0.750000
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
;	Raw cost for generated ic 16 : (28, 53.000000) count=0.750000
;	genIfx
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 17 : (14, 17.600000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.812500
;	../_fsmul.c: 252: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00113$
;	Raw cost for generated ic 20 : (10, 13.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 255: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
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
;	Raw cost for generated ic 25 : (19, 30.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 187 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
	sta	0x115,x
;	Raw cost for generated ic 26 : (5, 7.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 27 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
	iny
	lda	[DPTR],y
	sta	0x113,x
	iny
	lda	[DPTR],y
	sta	0x114,x
;	Raw cost for generated ic 29 : (28, 53.000000) count=1.000000
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
;	Raw cost for generated ic 30 : (19, 30.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 188 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
;	Raw cost for generated ic 31 : (2, 2.000000) count=1.000000
;	genXor
	eor	0x115,x
	sta	0x119,x
;	Raw cost for generated ic 32 : (6, 9.000000) count=1.000000
;	../_fsmul.c: 256: exp = EXP (fl1.l) - EXCESS;
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 35 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
	iny
	lda	[DPTR],y
	sta	0x113,x
	iny
	lda	[DPTR],y
	sta	0x114,x
;	Raw cost for generated ic 37 : (28, 53.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x113,x
	rol	a
	lda	0x114,x
	rol	a
	sta	0x111,x
	lda	#0x00
	sta	0x113,x
	sta	0x114,x
	rol	a
	sta	0x112,x
;	Raw cost for generated ic 38 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
;	Raw cost for generated ic 189 : (9, 14.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 39 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=126
	sec
	sbc	#0x7e
	tsx
	sta	0x111,x
	lda	#0x00
	sbc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 40 : (14, 20.000000) count=1.000000
;	../_fsmul.c: 257: exp += EXP (fl2.l);
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 43 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 45 : (28, 53.000000) count=1.000000
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
;	Raw cost for generated ic 46 : (23, 36.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x115,x
	tay
	lda	0x116,x
	tax
	tya
;	Raw cost for generated ic 190 : (9, 14.000000) count=1.000000
;	genAnd
;	Raw cost for generated ic 47 : (2, 2.000000) count=1.000000
;	genPlus
	clc
	tsx
	adc	0x111,x
	sta	0x11a,x
	lda	#0x00
	adc	0x112,x
	sta	0x11b,x
;	Raw cost for generated ic 49 : (16, 24.000000) count=1.000000
;	../_fsmul.c: 259: fl1.l = MANT (fl1.l);
;	genAddrOf
	txa
	clc
	adc	#0x09
	sta	0x111,x
	lda	#0x01
	sta	0x112,x
;	Raw cost for generated ic 52 : (12, 18.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 54 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 56 : (28, 53.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x118,x
;	Raw cost for generated ic 57 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x117,x
	ora	#0x80
	sta	0x117,x
;	Raw cost for generated ic 58 : (8, 11.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	0x115,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
	lda	0x118,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 59 : (35, 62.000000) count=1.000000
;	../_fsmul.c: 260: fl2.l = MANT (fl2.l);
;	genAddrOf
	txa
	clc
	adc	#0x05
	sta	0x111,x
	lda	#0x01
	sta	0x112,x
;	Raw cost for generated ic 60 : (12, 18.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 62 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 64 : (30, 56.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x118,x
;	Raw cost for generated ic 65 : (5, 7.000000) count=1.000000
;	genOr
	lda	0x117,x
	ora	#0x80
	sta	0x117,x
;	Raw cost for generated ic 66 : (8, 11.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	0x115,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
	lda	0x118,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 67 : (35, 62.000000) count=1.000000
;	../_fsmul.c: 263: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 68 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
	iny
	lda	[DPTR],y
	sta	0x113,x
	iny
	lda	[DPTR],y
	sta	0x114,x
;	Raw cost for generated ic 70 : (30, 56.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x112,x
	sta	0x111,x
	lda	0x113,x
	sta	0x112,x
	lda	0x114,x
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
;	Raw cost for generated ic 71 : (23, 34.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x112,x
	lda	0x111,x
	sta	0x111,x
;	Raw cost for generated ic 72 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x114,x
	sta	0x113,x
	lda	0x112,x
	sta	0x112,x
	lda	0x111,x
	sta	0x111,x
;	Raw cost for generated ic 73 : (20, 30.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 74 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 76 : (28, 53.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x116,x
	sta	0x115,x
	lda	0x117,x
	sta	0x116,x
	lda	0x118,x
	sta	0x117,x
	lda	#0x00
	sta	0x118,x
;	Raw cost for generated ic 77 : (23, 34.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 78 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x118,x
	sta	0x117,x
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 79 : (20, 30.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 191 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 192 : (16, 28.000000) count=1.000000
;	../_fsmul.c: 264: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 193 : (30, 50.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 82 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 84 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 185 : (12, 18.000000) count=1.000000
;	genAnd
	sta	0x115,x
	lda	#0x00
	sta	0x116,x
;	Raw cost for generated ic 85 : (8, 12.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x118,x
	sta	0x117,x
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 87 : (18, 28.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 88 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	ldy	#0x00
	lda	[DPTR],y
	tsx
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
;	Raw cost for generated ic 90 : (28, 53.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x10e,x
	sta	0x10d,x
	lda	0x10f,x
	sta	0x10e,x
	lda	0x110,x
	sta	0x10f,x
	lda	#0x00
	sta	0x110,x
;	Raw cost for generated ic 91 : (23, 34.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10d,x
	sta	0x10d,x
;	Raw cost for generated ic 92 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x110,x
	sta	0x10f,x
	lda	0x10e,x
	sta	0x10e,x
	lda	0x10d,x
	sta	0x10d,x
;	Raw cost for generated ic 93 : (20, 30.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 194 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 195 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 196 : (30, 50.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x10e,x
	sta	0x10d,x
	lda	0x10f,x
	sta	0x10e,x
	lda	0x110,x
	sta	0x10f,x
	lda	#0x00
	sta	0x110,x
;	Raw cost for generated ic 95 : (23, 34.000000) count=1.000000
;	genPlus
	lda	0x111,x
	clc
	adc	0x10d,x
	sta	0x10d,x
	lda	0x112,x
	adc	0x10e,x
	sta	0x10e,x
	lda	0x113,x
	adc	0x10f,x
	sta	0x10f,x
	lda	0x114,x
	adc	0x110,x
	sta	0x110,x
;	Raw cost for generated ic 96 : (37, 54.000000) count=1.000000
;	../_fsmul.c: 265: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 98 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
	iny
	lda	[DPTR],y
	sta	0x113,x
	iny
	lda	[DPTR],y
	sta	0x114,x
;	Raw cost for generated ic 100 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x112,x
	lda	0x111,x
	sta	0x111,x
;	Raw cost for generated ic 186 : (12, 18.000000) count=1.000000
;	genAnd
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
;	Raw cost for generated ic 101 : (8, 12.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x114,x
	sta	0x113,x
	lda	0x112,x
	sta	0x112,x
	lda	0x111,x
	sta	0x111,x
;	Raw cost for generated ic 103 : (18, 28.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 104 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 106 : (28, 53.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x116,x
	sta	0x115,x
	lda	0x117,x
	sta	0x116,x
	lda	0x118,x
	sta	0x117,x
	lda	#0x00
	sta	0x118,x
;	Raw cost for generated ic 107 : (23, 34.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 108 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x118,x
	sta	0x117,x
	lda	0x116,x
	sta	0x116,x
	lda	0x115,x
	sta	0x115,x
;	Raw cost for generated ic 109 : (20, 30.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 197 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 198 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 199 : (30, 50.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x112,x
	sta	0x111,x
	lda	0x113,x
	sta	0x112,x
	lda	0x114,x
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
;	Raw cost for generated ic 111 : (23, 34.000000) count=1.000000
;	genPlus
	lda	0x10d,x
	clc
	adc	0x111,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x112,x
	sta	0x10e,x
	lda	0x10f,x
	adc	0x113,x
	sta	0x10f,x
	lda	0x110,x
	adc	0x114,x
	sta	0x110,x
;	Raw cost for generated ic 112 : (37, 54.000000) count=1.000000
;	../_fsmul.c: 268: result += 0x40;
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x40
	sta	0x111,x
	lda	0x10e,x
	adc	#0x00
	sta	0x112,x
	lda	0x10f,x
	adc	#0x00
	sta	0x113,x
	lda	0x110,x
	adc	#0x00
	sta	0x114,x
;	Raw cost for generated ic 114 : (33, 46.000000) count=1.000000
;	../_fsmul.c: 270: if (result & SIGNBIT)
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 116 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 273: result += 0x40;
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x80
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
;	Raw cost for generated ic 120 : (33, 46.000000) count=0.750000
;	../_fsmul.c: 274: result >>= 8;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	0x10e,x
	sta	0x101,x
	lda	0x10f,x
	sta	0x102,x
	lda	0x110,x
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
;	Raw cost for generated ic 122 : (23, 34.000000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 124 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 125 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 278: result >>= 7;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=7
	tsx
	lda	0x111,x
	rol	a
	lda	0x112,x
	rol	a
	sta	0x101,x
	lda	0x113,x
	rol	a
	sta	0x102,x
	lda	0x114,x
	rol	a
	sta	0x103,x
	lda	#0x00
	rol	a
	sta	0x104,x
;	Raw cost for generated ic 126 : (32, 50.000000) count=0.250000
;	../_fsmul.c: 279: exp--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x11a,x
	sec
	sbc	#0x01
	sta	0x11a,x
	lda	0x11b,x
	sbc	#0x00
	sta	0x11b,x
;	Raw cost for generated ic 129 : (17, 24.000000) count=0.250000
;	genLabel
00106$:
;	Raw cost for generated ic 131 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 282: result &= ~HIDDEN;
;	genAnd
	tsx
	lda	0x103,x
	and	#0x7f
	sta	0x103,x
;	Raw cost for generated ic 132 : (9, 13.000000) count=1.000000
;	../_fsmul.c: 285: if (exp >= 0x100)
;	genCmp
	lda	0x11b,x
	sec
	sbc	#0x01
	bvs	00168$
	bpl	00167$
	bmi	00111$
00168$:
	bpl	00111$
00167$:
;	Raw cost for generated ic 134 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 135 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 286: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
;	genAddrOf
	txa
	clc
	adc	#0x09
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
;	Raw cost for generated ic 138 : (12, 18.000000) count=0.750000
;	genIfx
	lda	0x119,x
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 140 : (8, 9.600000) count=0.750000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0x80
	sta	0x114,x
;	Raw cost for generated ic 141 : (16, 24.000000) count=0.562500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 142 : (3, 3.000000) count=0.562500
;	genLabel
00115$:
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.187500
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
;	Raw cost for generated ic 144 : (15, 24.000000) count=0.187500
;	genLabel
00116$:
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.750000
;	genOr
	tsx
	lda	0x113,x
	ora	#0x80
	sta	0x113,x
	lda	0x114,x
	ora	#0x7f
	sta	0x114,x
;	Raw cost for generated ic 146 : (17, 24.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
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
;	Raw cost for generated ic 147 : (35, 62.000000) count=0.750000
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 148 : (3, 3.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 287: else if (exp < 0)
;	genCmp
	tsx
	lda	0x11b,x
	sec
	sbc	#0x00
	bvc	00173$
	bpl	00172$
	bmi	00108$
00173$:
	bpl	00108$
00172$:
;	Raw cost for generated ic 150 : (18, 23.400002) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 151 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 288: fl1.l = 0;
;	genAddrOf
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 154 : (6, 8.000000) count=0.187500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	iny
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 156 : (18, 40.000000) count=0.187500
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.187500
;	genLabel
00108$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.062500
;	../_fsmul.c: 290: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x09
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
;	Raw cost for generated ic 159 : (13, 20.000000) count=0.062500
;	genIfx
	lda	0x119,x
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 161 : (8, 9.600000) count=0.062500
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0x80
	sta	0x114,x
;	Raw cost for generated ic 162 : (16, 24.000000) count=0.046875
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 163 : (3, 3.000000) count=0.046875
;	genLabel
00117$:
;	Raw cost for generated ic 164 : (0, 0.000000) count=0.015625
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
;	Raw cost for generated ic 165 : (15, 24.000000) count=0.015625
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.062500
;	genCast
	tsx
	lda	0x11a,x
	sta	0x115,x
	lda	0x11b,x
	sta	0x116,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x117,x
	sta	0x118,x
;	Raw cost for generated ic 167 : (26, 38.000000) count=0.062500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x116,x
	lsr	a
	lda	0x115,x
	ror	a
	sta	0x118,x
	lda	#0x00
	sta	0x116,x
	sta	0x115,x
	ror	a
	sta	0x117,x
;	Raw cost for generated ic 168 : (23, 36.000000) count=0.062500
;	genOr
	lda	0x111,x
	ora	0x115,x
	sta	0x111,x
	lda	0x112,x
	ora	0x116,x
	sta	0x112,x
	lda	0x113,x
	ora	0x117,x
	sta	0x113,x
	lda	0x114,x
	ora	0x118,x
	sta	0x114,x
;	Raw cost for generated ic 169 : (36, 52.000000) count=0.062500
;	genOr
	lda	0x111,x
	ora	0x101,x
	sta	0x111,x
	lda	0x112,x
	ora	0x102,x
	sta	0x112,x
	lda	0x113,x
	ora	0x103,x
	sta	0x113,x
	lda	0x114,x
	ora	0x104,x
	sta	0x114,x
;	Raw cost for generated ic 170 : (36, 52.000000) count=0.062500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
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
;	Raw cost for generated ic 171 : (35, 62.000000) count=0.062500
;	genLabel
00112$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 291: return (fl1.f);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x09
	ldx	#0x01
;	Raw cost for generated ic 174 : (7, 10.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
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
;	Raw cost for generated ic 176 : (30, 56.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 177 : (17, 24.000000) count=1.000000
;	genLabel
00113$:
;	Raw cost for generated ic 178 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 292: }
;	genEndFunction
;	  adjustStack : cycles stk:114  incdec:64  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x1b
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 179 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
