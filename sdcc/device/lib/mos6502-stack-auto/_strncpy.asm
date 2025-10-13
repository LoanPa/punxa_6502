;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncpy
	
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
	.globl _strncpy
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s             Allocated to stack - sp +13 +2 
;n             Allocated to stack - sp +15 +2 
;d             Allocated to stack - sp +9 +2 
;d1            Allocated to stack - sp +7 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strncpy.c: 33: char *strncpy ( char * d, const char * s, size_t n )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strncpy:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncpy.c: 35: register char * d1 =  d;
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../_strncpy.c: 37: while ( n && *s )
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 44 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x104,x
	lda	0x10d,x
	sta	0x103,x
;	Raw cost for generated ic 47 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 49 : (12, 18.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genIfx
	tsx
	lda	0x106,x
	ora	0x105,x
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 5 : (12, 15.600000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 9 : (15, 23.000000) count=1.714284
;	genIfx
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 10 : (5, 5.600000) count=1.714284
;	../_strncpy.c: 39: n-- ;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 14 : (17, 24.000000) count=1.285713
;	../_strncpy.c: 40: *d++ = *s++ ;
;	genAssign
;	genCopy
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 20 : (17, 24.000000) count=1.285713
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (21, 33.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 17 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 24 : (3, 3.000000) count=1.285713
;	../_strncpy.c: 42: while ( n-- )
;	genLabel
00114$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	tsx
	lda	0x102,x
	sta	0x10a,x
	lda	0x101,x
	sta	0x109,x
;	Raw cost for generated ic 51 : (13, 20.000000) count=0.999999
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 54 : (12, 18.000000) count=0.999999
;	genLabel
00105$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999990
;	genAssign
;	genCopy
	tsx
	lda	0x102,x
	sta	0x104,x
;	Raw cost for generated ic 27 : (13, 20.000000) count=3.999990
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x101,x
	sta	0x103,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 28 : (17, 24.000000) count=3.999990
;	genIfx
	lda	0x104,x
	ora	0x103,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 30 : (11, 13.600000) count=3.999990
;	../_strncpy.c: 44: *d++ = '\0' ;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 36 : (15, 24.000000) count=2.999990
;	genPlus
;	  genPlusInc
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 34 : (17, 24.000000) count=2.999990
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 37 : (3, 3.000000) count=2.999990
;	genLabel
00107$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	../_strncpy.c: 46: return d1;
;	genRet
	tsx
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
;	Raw cost for generated ic 39 : (11, 16.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999997
;	../_strncpy.c: 47: }
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 41 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
