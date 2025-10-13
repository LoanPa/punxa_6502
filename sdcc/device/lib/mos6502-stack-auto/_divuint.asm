;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divuint
	
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
	.globl __divuint
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
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y             Allocated to stack - sp +7 +2 
;x             Allocated to stack - sp +3 +2 
;reste         Allocated to stack - sp +1 +2 
;count         Allocated to registers y 
;c             Allocated to registers a 
;------------------------------------------------------------
;	../_divuint.c: 157: _divuint (unsigned int x, unsigned int y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
__divuint:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:6  incdec:8  adc:12
	pha
	pha
;	Raw cost for generated ic 1 : (9, 20.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_divuint.c: 159: unsigned int reste = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x101,x
	sta	0x102,x
;	Raw cost for generated ic 3 : (9, 14.000000) count=1.000000
;	../_divuint.c: 163: do
;	genAssign
;	genCopy
	ldy	#0x10
;	Raw cost for generated ic 39 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	../_divuint.c: 166: c = MSB_SET(x);
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=15
	tsx
	lda	0x104,x
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
;	Raw cost for generated ic 6 : (10, 14.000000) count=3.999997
;	genAnd
	and	#0x01
;	Raw cost for generated ic 7 : (2, 2.000000) count=3.999997
;	../_divuint.c: 167: x <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	sta	*(REGTEMP+0)
	tsx
	lda	0x103,x
	sta	*(REGTEMP+1)
	lda	0x104,x
	tax
	lda	*(REGTEMP+1)
	stx	*(REGTEMP+1)
	asl	a
	rol	*(REGTEMP+1)
	ldx	*(REGTEMP+1)
	sta	*(REGTEMP+2)
	txa
	tsx
	sta	0x104,x
	lda	*(REGTEMP+2)
	sta	0x103,x
;	Raw cost for generated ic 10 : (39, 63.000000) count=3.999997
;	../_divuint.c: 168: reste <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	tsx
	lda	0x101,x
	sta	*(REGTEMP+1)
	lda	0x102,x
	tax
	lda	*(REGTEMP+1)
	stx	*(REGTEMP+1)
	asl	a
	rol	*(REGTEMP+1)
	ldx	*(REGTEMP+1)
	sta	*(REGTEMP+2)
	txa
	tsx
	sta	0x102,x
	lda	*(REGTEMP+2)
	sta	0x101,x
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (39, 63.000000) count=3.999997
;	../_divuint.c: 169: if (c)
;	genIfx
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 14 : (5, 5.600000) count=3.999997
;	../_divuint.c: 170: reste |= 1;
;	genOr
	tsx
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
;	Raw cost for generated ic 17 : (9, 13.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999996
;	../_divuint.c: 172: if (reste >= y)
;	genCmp
	tsx
	lda	0x101,x
	sec
	sbc	0x107,x
	lda	0x102,x
	sbc	0x108,x
	bcc	00106$
;	Raw cost for generated ic 20 : (19, 25.600000) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=3.999996
;	../_divuint.c: 174: reste -= y;
;	genMinus
	lda	0x101,x
	sec
	sbc	0x107,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x108,x
	sta	0x102,x
;	Raw cost for generated ic 24 : (19, 28.000000) count=2.999997
;	../_divuint.c: 176: x |= 1;
;	genOr
	lda	0x103,x
	ora	#0x01
	sta	0x103,x
;	Raw cost for generated ic 26 : (8, 11.000000) count=2.999997
;	genLabel
00106$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=3.999996
;	../_divuint.c: 179: while (--count);
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 30 : (1, 2.000000) count=3.999996
;	genIfx
;	genIfxJump : z
	beq	00139$
	jmp	00105$
00139$:
;	Raw cost for generated ic 32 : (5, 5.600000) count=3.999996
;	../_divuint.c: 180: return x;
;	genRet
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
;	Raw cost for generated ic 35 : (11, 16.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999998
;	../_divuint.c: 181: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 37 : (11, 24.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
