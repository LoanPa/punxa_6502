;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divuint
	
	.r65c02
	.optsdcc -mmos65c02

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
	.globl __divuint_PARM_2
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
__divuint_PARM_2:
	.ds 2
__divuint_x_10000_1:
	.ds 2
__divuint_reste_10000_2:
	.ds 2
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
;y             Allocated with name '__divuint_PARM_2'
;x             Allocated with name '__divuint_x_10000_1'
;reste         Allocated with name '__divuint_reste_10000_2'
;count         Allocated to registers 
;c             Allocated to registers a 
;------------------------------------------------------------
;	../_divuint.c: 157: _divuint (unsigned int x, unsigned int y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	__divuint_x_10000_1
	stx	(__divuint_x_10000_1 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_divuint.c: 159: unsigned int reste = 0;
;	genAssign
;	genAssignLit
	stz	__divuint_reste_10000_2
	stz	(__divuint_reste_10000_2 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
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
	lda	(__divuint_x_10000_1 + 1)
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
;	Raw cost for generated ic 6 : (9, 12.000000) count=3.999997
;	genAnd
	and	#0x01
;	Raw cost for generated ic 7 : (2, 2.000000) count=3.999997
;	../_divuint.c: 167: x <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	asl	__divuint_x_10000_1
	rol	(__divuint_x_10000_1 + 1)
;	Raw cost for generated ic 10 : (6, 12.000000) count=3.999997
;	../_divuint.c: 168: reste <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	asl	__divuint_reste_10000_2
	rol	(__divuint_reste_10000_2 + 1)
;	Raw cost for generated ic 12 : (6, 12.000000) count=3.999997
;	../_divuint.c: 169: if (c)
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 14 : (7, 7.600000) count=3.999997
;	../_divuint.c: 170: reste |= 1;
;	genOr
	lda	__divuint_reste_10000_2
	ora	#0x01
	sta	__divuint_reste_10000_2
;	Raw cost for generated ic 17 : (8, 10.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999996
;	../_divuint.c: 172: if (reste >= y)
;	genCmp
	lda	__divuint_reste_10000_2
	sec
	sbc	__divuint_PARM_2
	lda	(__divuint_reste_10000_2 + 1)
	sbc	(__divuint_PARM_2 + 1)
	bcc	00106$
;	Raw cost for generated ic 20 : (18, 23.600000) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=3.999996
;	../_divuint.c: 174: reste -= y;
;	genMinus
	lda	__divuint_reste_10000_2
	sec
	sbc	__divuint_PARM_2
	sta	__divuint_reste_10000_2
	lda	(__divuint_reste_10000_2 + 1)
	sbc	(__divuint_PARM_2 + 1)
	sta	(__divuint_reste_10000_2 + 1)
;	Raw cost for generated ic 24 : (19, 26.000000) count=2.999997
;	../_divuint.c: 176: x |= 1;
;	genOr
	lda	__divuint_x_10000_1
	ora	#0x01
	sta	__divuint_x_10000_1
;	Raw cost for generated ic 26 : (8, 10.000000) count=2.999997
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
	bne	00105$
;	Raw cost for generated ic 32 : (5, 5.600000) count=3.999996
;	../_divuint.c: 180: return x;
;	genRet
	ldx	(__divuint_x_10000_1 + 1)
	lda	__divuint_x_10000_1
;	Raw cost for generated ic 35 : (6, 8.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999998
;	../_divuint.c: 181: }
;	genEndFunction
	rts
;	Raw cost for generated ic 37 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
