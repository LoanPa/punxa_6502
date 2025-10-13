;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strnlen
	
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
	.globl _strnlen
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
;Allocation info for local variables in function 'strnlen'
;------------------------------------------------------------
;n             Allocated to stack - sp +11 +2 
;s             Allocated to registers 
;i             Allocated to stack - sp +7 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../strnlen.c: 32: size_t strnlen (const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strnlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_strnlen:
;	  adjustStack : cycles stk:24  incdec:26  adc:24
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (8, 24.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../strnlen.c: 36: while (n-- && *s++)
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 30 : (8, 12.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
;	Raw cost for generated ic 32 : (12, 18.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (13, 20.000000) count=2.285713
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
;	Raw cost for generated ic 6 : (17, 24.000000) count=2.285713
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 8 : (11, 13.600000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 14 : (15, 23.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 12 : (17, 24.000000) count=1.714284
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.714284
;	../strnlen.c: 37: i++ ;
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 19 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 21 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.999999
;	../strnlen.c: 39: return i;
;	genRet
	tsx
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
;	Raw cost for generated ic 23 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	../strnlen.c: 40: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 25 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
