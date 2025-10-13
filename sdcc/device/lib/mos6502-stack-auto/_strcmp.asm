;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcmp
	
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
	.globl _strcmp
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst          Allocated to stack - sp +13 +2 
;asrc          Allocated to registers 
;ret           Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strcmp.c: 34: int strcmp ( const char * asrc, const char * adst )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strcmp:
;	  adjustStack : cycles stk:30  incdec:30  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x107,x
	lda	*(REGTEMP+0)
	sta	0x108,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../_strcmp.c: 38: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 34 : (12, 18.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 6 : (16, 25.000000) count=2.285713
;	genCast
;	genCopy
	lda	#0x00
	sta	0x104,x
	tya
	sta	0x103,x
;	Raw cost for generated ic 7 : (9, 14.000000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 9 : (15, 23.000000) count=2.285713
;	genCast
;	genCopy
	lda	#0x00
	sta	0x102,x
	tya
	sta	0x101,x
;	Raw cost for generated ic 10 : (9, 14.000000) count=2.285713
;	genMinus
	lda	0x103,x
	sec
	sbc	0x101,x
	sta	0x109,x
	lda	0x104,x
	sbc	0x102,x
	sta	0x10a,x
;	Raw cost for generated ic 11 : (19, 28.000000) count=2.285713
;	genAssign
;	genCopy
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 12 : (9, 14.000000) count=2.285713
;	genIfx
	lda	0x10a,x
	ora	0x109,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 13 : (11, 13.600000) count=2.285713
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 18 : (7, 7.600000) count=1.714284
;	../_strcmp.c: 39: ++asrc, ++adst;
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 21 : (17, 24.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 23 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 25 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999999
;	../_strcmp.c: 41: return( ret );
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 27 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	../_strcmp.c: 42: }
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
;	Raw cost for generated ic 29 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
