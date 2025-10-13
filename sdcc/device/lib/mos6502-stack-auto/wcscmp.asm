;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcscmp
	
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
	.globl _wcscmp
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2            Allocated to stack - sp +15 +2 
;s1            Allocated to registers 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +5 +4 
;sloc3         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../wcscmp.c: 31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_wcscmp:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcscmp.c: 33: while(*s1 == *s2 && *s1)
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x109,x
;	Raw cost for generated ic 52 : (12, 18.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
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
;	Raw cost for generated ic 5 : (36, 64.000000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 7 : (35, 62.000000) count=2.285713
;	genCmpEQorNE
	lda	0x105,x
	cmp	0x101,x
	bne	00104$
	lda	0x106,x
	cmp	0x102,x
	bne	00104$
	lda	0x107,x
	cmp	0x103,x
	bne	00104$
	lda	0x108,x
	cmp	0x104,x
	bne	00104$
;	Raw cost for generated ic 8 : (44, 54.399998) count=2.285713
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=2.285713
;	genIfx
	lda	0x108,x
	ora	0x107,x
	ora	0x106,x
	ora	0x105,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 14 : (17, 21.600000) count=1.714284
;	../wcscmp.c: 34: s1++, s2++;
;	genPlus
;	  genPlusInc
	lda	0x10b,x
	clc
	adc	#0x04
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 18 : (17, 24.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x109,x
	clc
	adc	#0x04
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 21 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 23 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	../wcscmp.c: 36: if(*s1 < *s2)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 26 : (36, 64.000000) count=0.999999
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
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
;	Raw cost for generated ic 28 : (35, 62.000000) count=0.999999
;	genCmp
	lda	0x101,x
	sec
	sbc	0x105,x
	lda	0x102,x
	sbc	0x106,x
	lda	0x103,x
	sbc	0x107,x
	lda	0x104,x
	sbc	0x108,x
	bcs	00106$
;	Raw cost for generated ic 29 : (30, 39.599998) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999999
;	../wcscmp.c: 37: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00109$
;	Raw cost for generated ic 33 : (6, 7.000000) count=0.749999
;	genLabel
00106$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 38: if(*s1 > *s2)
;	genCmp
	tsx
	lda	0x105,x
	sec
	sbc	0x101,x
	lda	0x106,x
	sbc	0x102,x
	lda	0x107,x
	sbc	0x103,x
	lda	0x108,x
	sbc	0x104,x
	bcs	00108$
;	Raw cost for generated ic 39 : (31, 41.599998) count=0.999998
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 39: return(1);
;	genRet
	lda	#0x01
	ldx	#0x00
	jmp	00109$
;	Raw cost for generated ic 43 : (7, 7.000000) count=0.749999
;	genLabel
00108$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 40: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 45 : (3, 4.000000) count=0.999998
;	genLabel
00109$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 47 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
