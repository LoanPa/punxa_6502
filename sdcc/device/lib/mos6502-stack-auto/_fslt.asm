;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fslt
	
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
	.globl ___fslt
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
;Allocation info for local variables in function '__fslt'
;------------------------------------------------------------
;a1            Allocated to stack - sp +19 +4 
;a2            Allocated to stack - sp +23 +4 
;fl1           Allocated to stack - sp +5 +4 
;fl2           Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +13 +4 
;sloc1         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_fslt.c: 108: _Bool __fslt (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
___fslt:
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fslt.c: 112: fl1.f = a1;
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
	lda	0x113,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x114,x
	iny
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../_fslt.c: 113: fl2.f = a2;
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
;	 storeRegToDPTR: DPTR[1] has same literal 01
	tsx
	lda	0x117,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x118,x
	iny
	sta	[DPTR],y
	lda	0x119,x
	iny
	sta	[DPTR],y
	lda	0x11a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (28, 53.000000) count=1.000000
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (28, 53.000000) count=1.000000
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
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
;	Raw cost for generated ic 13 : (28, 53.000000) count=1.000000
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
;	Raw cost for generated ic 14 : (36, 52.000000) count=1.000000
;	genAnd
	lda	0x109,x
	bne	00142$
	lda	0x10a,x
	bne	00142$
	lda	0x10b,x
	bne	00142$
	lda	0x10c,x
	and	#0x7f
00142$:
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 15 : (25, 31.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../_fslt.c: 116: return (0);
;	genRet
	lda	#0x00
	jmp	00110$
;	Raw cost for generated ic 19 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 21 : (7, 10.000000) count=1.000000
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
;	Raw cost for generated ic 23 : (30, 56.000000) count=1.000000
;	genCmp
	sec
	sbc	#0x00
	bvc	00145$
	bpl	00144$
	bmi	00146$
00145$:
	bmi	00144$
00146$:
	jmp	00106$
00144$:
;	Raw cost for generated ic 24 : (14, 17.400000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 28 : (4, 6.000000) count=0.750000
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
;	Raw cost for generated ic 30 : (28, 53.000000) count=0.750000
;	genCmp
	sec
	sbc	#0x00
	bvc	00148$
	bpl	00147$
	bmi	00106$
00148$:
	bpl	00106$
00147$:
;	Raw cost for generated ic 31 : (14, 17.400000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.750000
;	../_fslt.c: 119: if (fl2.l < fl1.l)
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 35 : (4, 6.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
;	 storeRegToDPTR: DPTR already has result
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
;	Raw cost for generated ic 37 : (26, 50.000000) count=0.562500
;	genAddrOf
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 38 : (6, 8.000000) count=0.562500
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
;	Raw cost for generated ic 40 : (28, 53.000000) count=0.562500
;	genCmp
	lda	0x109,x
	sec
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	lda	0x10c,x
	sbc	0x110,x
	bvc	00151$
	bpl	00150$
	bmi	00104$
00151$:
	bpl	00104$
00150$:
;	Raw cost for generated ic 41 : (36, 47.399994) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.562500
;	../_fslt.c: 120: return (1);
;	genRet
	lda	#0x01
	jmp	00110$
;	Raw cost for generated ic 45 : (5, 5.000000) count=0.421875
;	genLabel
00104$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.562500
;	../_fslt.c: 121: return (0);
;	genRet
	lda	#0x00
	jmp	00110$
;	Raw cost for generated ic 47 : (5, 5.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../_fslt.c: 124: if (fl1.l < fl2.l)
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 49 : (7, 10.000000) count=1.000000
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
;	Raw cost for generated ic 51 : (30, 56.000000) count=1.000000
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 52 : (4, 6.000000) count=1.000000
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
;	Raw cost for generated ic 54 : (28, 53.000000) count=1.000000
;	genCmp
	lda	0x109,x
	sec
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	lda	0x10c,x
	sbc	0x110,x
	bvc	00154$
	bpl	00153$
	bmi	00109$
00154$:
	bpl	00109$
00153$:
;	Raw cost for generated ic 55 : (36, 47.399994) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	../_fslt.c: 125: return (1);
;	genRet
	lda	#0x01
	jmp	00110$
;	Raw cost for generated ic 59 : (5, 5.000000) count=0.750000
;	genLabel
00109$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	../_fslt.c: 126: return (0);
;	genRet
	lda	#0x00
;	Raw cost for generated ic 61 : (2, 2.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	../_fslt.c: 127: }
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 63 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
