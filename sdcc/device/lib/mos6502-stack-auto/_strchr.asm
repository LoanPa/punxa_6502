;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strchr
	
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
	.globl _strchr
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch            Allocated to stack - sp +5 +1 
;string        Allocated to registers 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strchr.c: 34: char * strchr ( const char * string, char ch )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_strchr:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	Raw cost for generated ic 1 : (7, 14.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strchr.c: 39: while (*string && *string != (char)ch)
;	genLabel
00102$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
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
;	Raw cost for generated ic 5 : (16, 25.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 6 : (5, 5.600000) count=2.285713
;	genCmpEQorNE
	tya
	cmp	0x105,x
	beq	00104$
;	Raw cost for generated ic 11 : (9, 11.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.714284
;	../_strchr.c: 40: string++;
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 16 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 18 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	../_strchr.c: 42: if (*string == (char)ch)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 21 : (16, 25.000000) count=0.999999
;	genCmpEQorNE
	tay
	cmp	0x105,x
	bne	00106$
;	Raw cost for generated ic 22 : (9, 11.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999999
;	../_strchr.c: 43: return((char *)string);
;	genRet
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00107$
;	Raw cost for generated ic 26 : (13, 17.000000) count=0.749999
;	genLabel
00106$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999998
;	../_strchr.c: 44: return ( NULL );
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 28 : (3, 4.000000) count=0.999998
;	genLabel
00107$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999998
;	../_strchr.c: 45: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 30 : (7, 20.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
