;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _muluchar
	
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
	.globl __muluchar
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
;Allocation info for local variables in function '_muluchar'
;------------------------------------------------------------
;y             Allocated to stack - sp +5 +1 
;x             Allocated to stack - sp +4 +1 
;result        Allocated to registers a x 
;i             Allocated to registers y 
;sloc0         Allocated to stack - sp +3 +1 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_muluchar.c: 30: _muluchar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _muluchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
__muluchar:
;	genReceive: size=1
;	pushreg: ofs=0
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:9  incdec:10  adc:12
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (10, 23.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_muluchar.c: 32: unsigned int result = 0;
;	genAssign
;	genCopy
	ldx	#0x00
	txa
;	Raw cost for generated ic 4 : (3, 4.000000) count=1.000000
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 35 : (1, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=3.999993
;	genCmp
	cpy	#0x08
	bcs	00103$
;	Raw cost for generated ic 7 : (7, 7.600000) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=3.999993
;	../_muluchar.c: 36: result <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (7, 13.000000) count=2.999995
;	../_muluchar.c: 37: if (x & 0x80)
;	genAnd
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x104,x
	php
	ldx	*(REGTEMP+1)
	plp
	and	#0x80
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 14 : (23, 39.599998) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=2.999995
;	../_muluchar.c: 38: result += y;
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 18 : (15, 23.000000) count=2.249995
;	genCast
;	genCopy
	ldx *(REGTEMP+1)
	lda	#0x00
	tsx
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 19 : (20, 30.000000) count=2.249995
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x101,x
	pha
	lda	*(REGTEMP+0)
	adc	0x102,x
	tax
	pla
;	Raw cost for generated ic 20 : (15, 27.000000) count=2.249995
;	genLabel
00102$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=2.999993
;	../_muluchar.c: 39: x <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
	stx	*(REGTEMP+0)
;	  genlsh8 - shift=1
	pha
	tsx
	lda	0x105,x
	asl	a
	sta	0x105,x
	pla
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (14, 26.000000) count=2.999993
;	../_muluchar.c: 34: for (unsigned char i = 0; i < 8; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 27 : (1, 2.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 29 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999997
;	../_muluchar.c: 42: return result;
;	genRet
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999997
;	../_muluchar.c: 43: }
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 33 : (12, 26.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
