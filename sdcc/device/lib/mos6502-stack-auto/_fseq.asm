;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fseq
	
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
	.globl ___fseq
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
;Allocation info for local variables in function '__fseq'
;------------------------------------------------------------
;a1            Allocated to stack - sp +19 +4 
;a2            Allocated to stack - sp +23 +4 
;fl1           Allocated to stack - sp +5 +4 
;fl2           Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +13 +4 
;sloc1         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_fseq.c: 82: _Bool __fseq (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
___fseq:
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_fseq.c: 86: fl1.f = a1;
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
;	../_fseq.c: 87: fl2.f = a2;
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
;	../_fseq.c: 89: if (fl1.l == fl2.l)
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
;	../_fseq.c: 90: return (1);
;	genRet
	lda	#0x01
	jmp	00106$
;	Raw cost for generated ic 18 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fseq.c: 92: if ((fl1.l & 0x7fffffff) == 0 && (fl2.l & 0x7fffffff) == 0)
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
;	genAnd
	lda	0x109,x
	bne	00131$
	lda	0x10a,x
	bne	00131$
	lda	0x10b,x
	bne	00131$
	lda	0x10c,x
	and	#0x7f
00131$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 23 : (25, 31.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genAddrOf
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 27 : (4, 6.000000) count=0.750000
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
;	Raw cost for generated ic 29 : (28, 53.000000) count=0.750000
;	genAnd
	lda	0x109,x
	bne	00133$
	lda	0x10a,x
	bne	00133$
	lda	0x10b,x
	bne	00133$
	lda	0x10c,x
	and	#0x7f
00133$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 30 : (25, 31.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.750000
;	../_fseq.c: 93: return (1);
;	genRet
	lda	#0x01
	jmp	00106$
;	Raw cost for generated ic 34 : (5, 5.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../_fseq.c: 94: return (0);
;	genRet
	lda	#0x00
;	Raw cost for generated ic 36 : (2, 2.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	../_fseq.c: 95: }
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
;	Raw cost for generated ic 38 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
