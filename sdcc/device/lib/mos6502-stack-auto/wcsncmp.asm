;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcsncmp
	
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
	.globl _wcsncmp
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
;Allocation info for local variables in function 'wcsncmp'
;------------------------------------------------------------
;last          Allocated to stack - sp +19 +2 
;count         Allocated to stack - sp +21 +2 
;first         Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;sloc3         Allocated to stack - sp +5 +4 
;sloc4         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../wcsncmp.c: 32: int wcsncmp ( const wchar_t * first, const wchar_t * last, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcsncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_wcsncmp:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcsncmp.c: 34: if (!count)
;	genIfx
	lda	0x116,x
	ora	0x115,x
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../wcsncmp.c: 35: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00108$
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	../wcsncmp.c: 37: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 47 : (13, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x10c,x
	lda	0x113,x
	sta	0x10b,x
;	Raw cost for generated ic 50 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x10a,x
	lda	0x115,x
	sta	0x109,x
;	Raw cost for generated ic 52 : (12, 18.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.729728
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109,x
	lda	0x10a,x
	sbc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 9 : (18, 26.000000) count=1.729728
;	genIfx
	ora	0x109,x
;	genIfxJump : z
	bne	00144$
	jmp	00107$
00144$:
;	Raw cost for generated ic 11 : (8, 9.600000) count=1.729728
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
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
;	Raw cost for generated ic 15 : (35, 62.000000) count=1.297296
;	genIfx
	ora	0x107,x
	ora	0x106,x
	ora	0x105,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 16 : (14, 17.600000) count=1.297296
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
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
;	Raw cost for generated ic 22 : (35, 62.000000) count=0.972971
;	genCmpEQorNE
	lda	0x105,x
	cmp	0x101,x
	bne	00107$
	lda	0x106,x
	cmp	0x102,x
	bne	00107$
	lda	0x107,x
	cmp	0x103,x
	bne	00107$
	lda	0x108,x
	cmp	0x104,x
	bne	00107$
;	Raw cost for generated ic 23 : (44, 54.399998) count=0.972971
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.972971
;	../wcsncmp.c: 38: first++;
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x04
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 28 : (17, 24.000000) count=0.729728
;	../wcsncmp.c: 39: last++;
;	genPlus
;	  genPlusInc
	lda	0x10b,x
	clc
	adc	#0x04
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 31 : (17, 24.000000) count=0.729728
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 33 : (3, 3.000000) count=0.729728
;	genLabel
00107$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../wcsncmp.c: 42: return( *first - *last );
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
;	Raw cost for generated ic 36 : (24, 40.000000) count=0.999998
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
;	Raw cost for generated ic 38 : (22, 38.000000) count=0.999998
;	genMinus
	lda	0x101,x
	sec
	sbc	0x105,x
	pha
	lda	0x102,x
	sbc	0x106,x
	tax
	pla
;	Raw cost for generated ic 39 : (16, 27.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999998
;	genLabel
00108$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999998
;	../wcsncmp.c: 43: }
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
;	Raw cost for generated ic 43 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
