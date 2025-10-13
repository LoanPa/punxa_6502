;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcpy
	
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
	.globl _strcpy
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
;Allocation info for local variables in function 'strcpy'
;------------------------------------------------------------
;s             Allocated to stack - sp +9 +2 
;d             Allocated to stack - sp +5 +2 
;d1            Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strcpy.c: 36: char * strcpy ( char * d, const char * s )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_strcpy:
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
;	../_strcpy.c: 40: while (*d1++ = *s++) ;
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 22 : (13, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 25 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999999
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
;	Raw cost for generated ic 11 : (16, 25.000000) count=3.999999
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 9 : (17, 24.000000) count=3.999999
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
;	Raw cost for generated ic 12 : (21, 33.000000) count=3.999999
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 6 : (17, 24.000000) count=3.999999
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 13 : (7, 7.600000) count=3.999999
;	../_strcpy.c: 42: return d;
;	genRet
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 18 : (10, 14.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_strcpy.c: 43: }
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
;	Raw cost for generated ic 20 : (13, 28.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
