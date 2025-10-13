;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _moduint
	
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
	.globl __moduint_PARM_2
	.globl __moduint
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__moduint_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__moduint_PARM_2:
	.ds 2
__moduint_a_10000_1:
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b             Allocated with name '__moduint_PARM_2'
;a             Allocated with name '__moduint_a_10000_1'
;count         Allocated to registers y 
;sloc0         Allocated with name '__moduint_sloc0_1_0'
;------------------------------------------------------------
;	../_moduint.c: 175: _moduint (unsigned int a, unsigned int b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	__moduint_a_10000_1
	stx	(__moduint_a_10000_1 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_moduint.c: 177: unsigned char count = 0;
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 3 : (2, 2.000000) count=1.000000
;	../_moduint.c: 179: while (!MSB_SET(b))
;	genAssign
;	genAssignLit
	sty	*__moduint_sloc0_1_0
;	Raw cost for generated ic 47 : (2, 3.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230759
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=15
	lda	(__moduint_PARM_2 + 1)
	rol	a
	lda	#0x00
	rol	a
	ldx	#0x00
;	Raw cost for generated ic 5 : (9, 12.000000) count=1.230759
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
	asl	__moduint_PARM_2
	rol	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 10 : (6, 12.000000) count=0.923069
;	../_moduint.c: 182: if (b > a)
;	genCmp
	lda	__moduint_a_10000_1
	sec
	sbc	__moduint_PARM_2
	lda	(__moduint_a_10000_1 + 1)
	sbc	(__moduint_PARM_2 + 1)
	bcs	00102$
;	Raw cost for generated ic 12 : (18, 23.600000) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.923069
;	../_moduint.c: 184: b >>=1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	ldx	(__moduint_PARM_2 + 1)
	lda	__moduint_PARM_2
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	__moduint_PARM_2
	stx	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 16 : (19, 29.000000) count=0.692302
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
	inc	*__moduint_sloc0_1_0
;	Raw cost for generated ic 21 : (2, 5.000000) count=0.230759
;	genAssign
;	genCopy
	ldy	*__moduint_sloc0_1_0
;	Raw cost for generated ic 22 : (2, 3.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.230759
;	../_moduint.c: 189: do
;	genLabel
00117$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=3.999952
;	../_moduint.c: 191: if (a >= b)
;	genCmp
	lda	__moduint_a_10000_1
	sec
	sbc	__moduint_PARM_2
	lda	(__moduint_a_10000_1 + 1)
	sbc	(__moduint_PARM_2 + 1)
	bcc	00107$
;	Raw cost for generated ic 26 : (18, 23.600000) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 27 : (0, 0.000000) count=3.999952
;	../_moduint.c: 192: a -= b;
;	genMinus
	lda	__moduint_a_10000_1
	sec
	sbc	__moduint_PARM_2
	sta	__moduint_a_10000_1
	lda	(__moduint_a_10000_1 + 1)
	sbc	(__moduint_PARM_2 + 1)
	sta	(__moduint_a_10000_1 + 1)
;	Raw cost for generated ic 30 : (19, 26.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=3.999947
;	../_moduint.c: 193: b >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	ldx	(__moduint_PARM_2 + 1)
	lda	__moduint_PARM_2
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	__moduint_PARM_2
	stx	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 33 : (19, 29.000000) count=3.999947
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
	ldx	(__moduint_a_10000_1 + 1)
	lda	__moduint_a_10000_1
;	Raw cost for generated ic 42 : (6, 8.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999983
;	../_moduint.c: 197: }
;	genEndFunction
	rts
;	Raw cost for generated ic 44 : (1, 6.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
