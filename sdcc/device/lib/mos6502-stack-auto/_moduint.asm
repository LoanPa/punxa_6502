;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _moduint
	
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
	.globl __moduint
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b             Allocated to stack - sp +6 +2 
;a             Allocated to stack - sp +2 +2 
;count         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +1 +1 
;------------------------------------------------------------
;	../_moduint.c: 175: _moduint (unsigned int a, unsigned int b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 3 bytes.
__moduint:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:3  incdec:6  adc:12
	pha
;	Raw cost for generated ic 1 : (8, 17.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_moduint.c: 177: unsigned char count = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x101,x
;	Raw cost for generated ic 3 : (6, 9.000000) count=1.000000
;	../_moduint.c: 179: while (!MSB_SET(b))
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 47 : (1, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230759
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=15
	tsx
	lda	0x107,x
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
;	Raw cost for generated ic 5 : (10, 14.000000) count=1.230759
;	genAnd
	and	#0x01
;	genIfxJump : z
	bne	00117$
;	Raw cost for generated ic 6 : (9, 10.200000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.230759
;	../_moduint.c: 181: b <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x107,x
	tax
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x107,x
	lda	*(REGTEMP+1)
	sta	0x106,x
;	Raw cost for generated ic 10 : (35, 57.000000) count=0.923069
;	../_moduint.c: 182: if (b > a)
;	genCmp
	tsx
	lda	0x102,x
	sec
	sbc	0x106,x
	lda	0x103,x
	sbc	0x107,x
	bcs	00102$
;	Raw cost for generated ic 12 : (19, 25.600000) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.923069
;	../_moduint.c: 184: b >>=1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	lda	0x106,x
	tay
	lda	0x107,x
	tax
	tya
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x107,x
	lda	*(REGTEMP+1)
	sta	0x106,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 16 : (32, 53.000000) count=0.692302
;	../_moduint.c: 185: break;
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 18 : (3, 3.000000) count=0.692302
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.230759
;	../_moduint.c: 187: count++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 21 : (1, 2.000000) count=0.230759
;	genAssign
;	genCopy
	tya
	tsx
	sta	0x101,x
;	Raw cost for generated ic 22 : (5, 9.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.230759
;	../_moduint.c: 189: do
;	genLabel
00117$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
	tsx
	lda	0x101,x
	tay
;	Raw cost for generated ic 48 : (5, 8.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=3.999952
;	../_moduint.c: 191: if (a >= b)
;	genCmp
	tsx
	lda	0x102,x
	sec
	sbc	0x106,x
	lda	0x103,x
	sbc	0x107,x
	bcc	00107$
;	Raw cost for generated ic 26 : (19, 25.600000) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 27 : (0, 0.000000) count=3.999952
;	../_moduint.c: 192: a -= b;
;	genMinus
	lda	0x102,x
	sec
	sbc	0x106,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x107,x
	sta	0x103,x
;	Raw cost for generated ic 30 : (19, 28.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=3.999947
;	../_moduint.c: 193: b >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x107,x
	tax
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x107,x
	lda	*(REGTEMP+1)
	sta	0x106,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 33 : (35, 57.000000) count=3.999947
;	../_moduint.c: 195: while (count--);
;	genAssign
;	genCopy
	tya
;	Raw cost for generated ic 36 : (1, 2.000000) count=3.999947
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 37 : (1, 2.000000) count=3.999947
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 39 : (7, 7.600000) count=3.999947
;	../_moduint.c: 196: return a;
;	genRet
	tsx
	lda	0x103,x
	sta	*(REGTEMP+0)
	lda	0x102,x
;	Raw cost for generated ic 42 : (11, 16.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999983
;	../_moduint.c: 197: }
;	genEndFunction
;	  adjustStack : cycles stk:18  incdec:16  adc:24
	tsx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 44 : (10, 22.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
