;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsneq
	
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
	.globl ___fsneq
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
;Allocation info for local variables in function '__fsneq'
;------------------------------------------------------------
;a1            Allocated to stack - sp +19 +4 
;a2            Allocated to stack - sp +23 +4 
;fl1           Allocated to stack - sp +5 +4 
;fl2           Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +13 +4 
;sloc1         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_fsneq.c: 80: _Bool __fsneq (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsneq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
___fsneq:
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fsneq.c: 84: fl1.f = a1;
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
;	../_fsneq.c: 85: fl2.f = a2;
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
;	../_fsneq.c: 87: if (fl1.l == fl2.l)
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
;	genCmpEQorNE
	lda	0x10d,x
	cmp	0x109,x
	bne	00102$
	lda	0x10e,x
	cmp	0x10a,x
	bne	00102$
	lda	0x10f,x
	cmp	0x10b,x
	bne	00102$
	lda	0x110,x
	cmp	0x10c,x
	bne	00102$
;	Raw cost for generated ic 14 : (44, 54.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 88: return (0);
;	genRet
	lda	#0x00
	jmp	00105$
;	Raw cost for generated ic 18 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 89: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 20 : (7, 10.000000) count=1.000000
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
;	Raw cost for generated ic 22 : (30, 56.000000) count=1.000000
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 23 : (4, 6.000000) count=1.000000
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
;	Raw cost for generated ic 25 : (28, 53.000000) count=1.000000
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
;	Raw cost for generated ic 26 : (36, 52.000000) count=1.000000
;	genAnd
	lda	0x109,x
	bne	00124$
	lda	0x10a,x
	bne	00124$
	lda	0x10b,x
	bne	00124$
	lda	0x10c,x
	and	#0x7f
00124$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 27 : (25, 31.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 90: return (0);
;	genRet
	lda	#0x00
	jmp	00105$
;	Raw cost for generated ic 31 : (5, 5.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 91: return (1);
;	genRet
	lda	#0x01
;	Raw cost for generated ic 33 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 92: }
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
;	Raw cost for generated ic 35 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
