;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcat
	
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
	.globl _strcat
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src           Allocated to stack - sp +9 +2 
;dst           Allocated to stack - sp +5 +2 
;cp            Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strcat.c: 31: char * strcat ( char * dst, const char * src )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_strcat:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strcat.c: 35: while( *cp )
;	genAssign
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 34 : (13, 20.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 6 : (16, 25.000000) count=3.999997
;	genIfx
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 7 : (5, 5.600000) count=3.999997
;	../_strcat.c: 36: cp++;                   /* find end of dst */
;	genPlus
;	  genPlusInc
	tsx
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 11 : (18, 26.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 13 : (3, 3.000000) count=2.999997
;	../_strcat.c: 38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
;	genLabel
00111$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 37 : (13, 20.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999999
;	genLabel
00104$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999994
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 22 : (16, 25.000000) count=3.999994
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 20 : (17, 24.000000) count=3.999994
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (21, 33.000000) count=3.999994
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 17 : (17, 24.000000) count=3.999994
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 24 : (7, 7.600000) count=3.999994
;	../_strcat.c: 40: return( dst );                  /* return dst */
;	genRet
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 29 : (10, 14.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999998
;	../_strcat.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 31 : (13, 28.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
