;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divulong
	
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
	.globl __divulong_PARM_2
	.globl __divulong_PARM_1
	.globl __divulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__divulong_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divulong_PARM_1:
	.ds 4
__divulong_PARM_2:
	.ds 4
__divulong_reste_10000_2:
	.ds 4
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;x             Allocated with name '__divulong_PARM_1'
;y             Allocated with name '__divulong_PARM_2'
;reste         Allocated with name '__divulong_reste_10000_2'
;count         Allocated to registers 
;c             Allocated to registers y 
;sloc0         Allocated with name '__divulong_sloc0_1_0'
;------------------------------------------------------------
;	../_divulong.c: 333: _divulong (unsigned long x, unsigned long y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_divulong.c: 335: unsigned long reste = 0L;
;	genAssign
;	genAssignLit
	stz	__divulong_reste_10000_2
	stz	(__divulong_reste_10000_2 + 1)
	stz	(__divulong_reste_10000_2 + 2)
	stz	(__divulong_reste_10000_2 + 3)
;	Raw cost for generated ic 2 : (12, 16.000000) count=1.000000
;	../_divulong.c: 339: do
;	genAssign
;	genCopy
	ldx	#0x20
;	Raw cost for generated ic 38 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	../_divulong.c: 342: c = MSB_SET(x);
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	(__divulong_PARM_1 + 3)
	asl	a
	lda	#0x00
	sta	*(__divulong_sloc0_1_0 + 3)
	sta	*(__divulong_sloc0_1_0 + 2)
	sta	*(__divulong_sloc0_1_0 + 1)
	rol	a
	sta	*__divulong_sloc0_1_0
;	Raw cost for generated ic 5 : (15, 22.000000) count=3.999997
;	genAnd
	and	#0x01
	tay
;	Raw cost for generated ic 6 : (3, 4.000000) count=3.999997
;	../_divulong.c: 343: x <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	__divulong_PARM_1
	rol	(__divulong_PARM_1 + 1)
	rol	(__divulong_PARM_1 + 2)
	rol	(__divulong_PARM_1 + 3)
;	Raw cost for generated ic 9 : (12, 24.000000) count=3.999997
;	../_divulong.c: 344: reste <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	__divulong_reste_10000_2
	rol	(__divulong_reste_10000_2 + 1)
	rol	(__divulong_reste_10000_2 + 2)
	rol	(__divulong_reste_10000_2 + 3)
;	Raw cost for generated ic 11 : (12, 24.000000) count=3.999997
;	../_divulong.c: 345: if (c)
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (7, 7.600000) count=3.999997
;	../_divulong.c: 346: reste |= 1L;
;	genOr
	lda	__divulong_reste_10000_2
	ora	#0x01
	sta	__divulong_reste_10000_2
;	Raw cost for generated ic 16 : (8, 10.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999996
;	../_divulong.c: 348: if (reste >= y)
;	genCmp
	lda	__divulong_reste_10000_2
	sec
	sbc	__divulong_PARM_2
	lda	(__divulong_reste_10000_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	lda	(__divulong_reste_10000_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	lda	(__divulong_reste_10000_2 + 3)
	sbc	(__divulong_PARM_2 + 3)
	bcc	00106$
;	Raw cost for generated ic 19 : (30, 39.599998) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999996
;	../_divulong.c: 350: reste -= y;
;	genMinus
	lda	__divulong_reste_10000_2
	sec
	sbc	__divulong_PARM_2
	sta	__divulong_reste_10000_2
	lda	(__divulong_reste_10000_2 + 1)
	sbc	(__divulong_PARM_2 + 1)
	sta	(__divulong_reste_10000_2 + 1)
	lda	(__divulong_reste_10000_2 + 2)
	sbc	(__divulong_PARM_2 + 2)
	sta	(__divulong_reste_10000_2 + 2)
	lda	(__divulong_reste_10000_2 + 3)
	sbc	(__divulong_PARM_2 + 3)
	sta	(__divulong_reste_10000_2 + 3)
;	Raw cost for generated ic 23 : (37, 50.000000) count=2.999997
;	../_divulong.c: 352: x |= 1L;
;	genOr
	lda	__divulong_PARM_1
	ora	#0x01
	sta	__divulong_PARM_1
;	Raw cost for generated ic 25 : (8, 10.000000) count=2.999997
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999996
;	../_divulong.c: 355: while (--count);
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 29 : (1, 2.000000) count=3.999996
;	genIfx
;	genIfxJump : z
	beq	00139$
	jmp	00105$
00139$:
;	Raw cost for generated ic 31 : (5, 5.600000) count=3.999996
;	../_divulong.c: 356: return x;
;	genRet
	lda	(__divulong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__divulong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__divulong_PARM_1 + 1)
	lda	__divulong_PARM_1
;	Raw cost for generated ic 34 : (16, 22.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.999998
;	../_divulong.c: 357: }
;	genEndFunction
	rts
;	Raw cost for generated ic 36 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
