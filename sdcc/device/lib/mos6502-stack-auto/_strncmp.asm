;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncmp
	
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
	.globl _strncmp
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last          Allocated to stack - sp +11 +2 
;count         Allocated to stack - sp +13 +2 
;first         Allocated to stack - sp +7 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strncmp.c: 31: int strncmp ( const char * first, const char * last, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_strncmp:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncmp.c: 33: if (!count)
;	genIfx
	lda	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../_strncmp.c: 34: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00108$
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	../_strncmp.c: 36: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 46 : (13, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
;	Raw cost for generated ic 49 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x102,x
	lda	0x10d,x
	sta	0x101,x
;	Raw cost for generated ic 51 : (12, 18.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.729728
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 9 : (18, 26.000000) count=1.729728
;	genIfx
	ora	0x101,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 11 : (8, 9.600000) count=1.729728
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 15 : (15, 23.000000) count=1.297296
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 16 : (5, 5.600000) count=1.297296
;	genPointerGet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 22 : (18, 29.000000) count=0.972971
;	genCmpEQorNE
	ldx	*(REGTEMP+0)
	tya
	cmp	*(REGTEMP+0)
	bne	00107$
;	Raw cost for generated ic 23 : (10, 13.600000) count=0.972971
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.972971
;	../_strncmp.c: 37: first++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 28 : (18, 26.000000) count=0.729728
;	../_strncmp.c: 38: last++;
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 31 : (17, 24.000000) count=0.729728
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 33 : (3, 3.000000) count=0.729728
;	genLabel
00107$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../_strncmp.c: 41: return( *first - *last );
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 36 : (15, 23.000000) count=0.999998
;	genCast
	sta	0x101,x
	tya
	sta	0x102,x
;	Raw cost for generated ic 37 : (7, 12.000000) count=0.999998
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	[DPTR],y
;	Raw cost for generated ic 39 : (12, 19.000000) count=0.999998
;	genCast
	sta	0x103,x
	tya
	sta	0x104,x
;	Raw cost for generated ic 40 : (7, 12.000000) count=0.999998
;	genMinus
	lda	0x101,x
	sec
	sbc	0x103,x
	pha
	lda	0x102,x
	sbc	0x104,x
	tax
	pla
;	Raw cost for generated ic 41 : (16, 27.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999998
;	genLabel
00108$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999998
;	../_strncmp.c: 42: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 44 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
