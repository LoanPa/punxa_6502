;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncat
	
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
	.globl _strncat
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back          Allocated to stack - sp +15 +2 
;count         Allocated to stack - sp +17 +2 
;front         Allocated to stack - sp +11 +2 
;start         Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_strncat:
;	  adjustStack : cycles stk:36  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncat.c: 33: char *start = front;
;	genAssign
;	genCopy
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x10a,x
	lda	*(REGTEMP+1)
	sta	0x109,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (16, 26.000000) count=1.000000
;	../_strncat.c: 35: while (*front++);
;	genAssign
;	genCopy
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999999
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 8 : (11, 18.000000) count=3.999999
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00147$
	inx
00147$:
;	Raw cost for generated ic 6 : (6, 8.600000) count=3.999999
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999999
;	../_strncat.c: 37: front--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	stx	*(REGTEMP+0)
	sec
	sbc	#0x01
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sbc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 15 : (16, 24.000000) count=1.000000
;	../_strncat.c: 39: while (count--)
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x108,x
	lda	0x10f,x
	sta	0x107,x
;	Raw cost for generated ic 49 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 50 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
;	Raw cost for generated ic 51 : (12, 18.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.285712
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 18 : (13, 20.000000) count=2.285712
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x103,x
	sta	0x101,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 19 : (17, 24.000000) count=2.285712
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 21 : (11, 13.600000) count=2.285712
;	../_strncat.c: 40: if (!(*front++ = *back++))
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 30 : (15, 23.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 28 : (17, 24.000000) count=1.714284
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 31 : (21, 33.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 25 : (17, 24.000000) count=1.714284
;	genAssign
;	genCopy
	sta	0x10c,x
	lda	0x105,x
	sta	0x10b,x
;	Raw cost for generated ic 26 : (9, 14.000000) count=1.714284
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 32 : (7, 7.600000) count=1.714284
;	../_strncat.c: 41: return(start);
;	genRet
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
	jmp	00109$
;	Raw cost for generated ic 35 : (13, 17.000000) count=0.428571
;	genLabel
00108$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../_strncat.c: 43: *front = '\0';
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 40 : (16, 26.000000) count=0.999999
;	../_strncat.c: 44: return(start);
;	genRet
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 41 : (10, 14.000000) count=0.999999
;	genLabel
00109$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999999
;	../_strncat.c: 45: }
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
;	Raw cost for generated ic 43 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
