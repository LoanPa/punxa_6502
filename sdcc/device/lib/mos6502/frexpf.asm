;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module frexpf
	
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
	.globl _frexpf_PARM_2
	.globl _frexpf_PARM_1
	.globl _frexpf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_frexpf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_frexpf_PARM_1:
	.ds 4
_frexpf_PARM_2:
	.ds 2
_frexpf_fl_10000_26:
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;x             Allocated with name '_frexpf_PARM_1'
;pw2           Allocated with name '_frexpf_PARM_2'
;fl            Allocated with name '_frexpf_fl_10000_26'
;i             Allocated with name '_frexpf_i_10000_26'
;sloc0         Allocated with name '_frexpf_sloc0_1_0'
;------------------------------------------------------------
;	../frexpf.c: 34: float frexpf(float x, int *pw2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_frexpf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../frexpf.c: 39: fl.f=x;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(_frexpf_PARM_1 + 3)
	sta	(_frexpf_fl_10000_26 + 3)
	lda	(_frexpf_PARM_1 + 2)
	sta	(_frexpf_fl_10000_26 + 2)
	lda	(_frexpf_PARM_1 + 1)
	sta	(_frexpf_fl_10000_26 + 1)
	lda	_frexpf_PARM_1
	sta	_frexpf_fl_10000_26
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_frexpf_fl_10000_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_10000_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_10000_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_10000_26
	sta	*_frexpf_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(_frexpf_sloc0_1_0 + 2)
	rol	a
	lda	*(_frexpf_sloc0_1_0 + 3)
	rol	a
	sta	*_frexpf_sloc0_1_0
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_frexpf_sloc0_1_0 + 1)
	sta	*(_frexpf_sloc0_1_0 + 2)
	sta	*(_frexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 8 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 37 : (4, 6.000000) count=1.000000
;	genAnd
	lda	*_frexpf_sloc0_1_0
	ldx	#0x00
;	Raw cost for generated ic 9 : (2, 2.000000) count=1.000000
;	../frexpf.c: 42: i -= 0x7e;
;	genMinus
;	  genMinusDec - size=2  icount=126
	sec
	sbc	#0x7e
	bcs	00103$
	dex
00103$:
;	Raw cost for generated ic 11 : (6, 8.600000) count=1.000000
;	../frexpf.c: 43: *pw2 = i;
;	genAssign
;	genCopy
	ldy	(_frexpf_PARM_2 + 1)
	sty	*(_frexpf_sloc0_1_0 + 1)
	ldy	_frexpf_PARM_2
	sty	*_frexpf_sloc0_1_0
;	Raw cost for generated ic 13 : (10, 14.000000) count=1.000000
;	genPointerSet
	ldy	#0x00
	sta	[*_frexpf_sloc0_1_0],y
	txa
	iny
	sta	[*_frexpf_sloc0_1_0],y
;	Raw cost for generated ic 15 : (8, 18.000000) count=1.000000
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
;	genPointerGet
;	genDataPointerGet
	lda	(_frexpf_fl_10000_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_10000_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_10000_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_10000_26
	sta	*_frexpf_sloc0_1_0
;	Raw cost for generated ic 20 : (20, 28.000000) count=1.000000
;	genAnd
	lda	*(_frexpf_sloc0_1_0 + 2)
	and	#0x7f
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	*(_frexpf_sloc0_1_0 + 3)
	and	#0x80
	sta	*(_frexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 21 : (12, 16.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_frexpf_fl_10000_26 + 3)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_10000_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_10000_26 + 1)
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_10000_26
;	Raw cost for generated ic 22 : (18, 25.000000) count=1.000000
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
;	genOr
	lda	*(_frexpf_sloc0_1_0 + 3)
	ora	#0x3f
	sta	*(_frexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 28 : (6, 8.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_frexpf_fl_10000_26 + 3)
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	(_frexpf_fl_10000_26 + 2)
	lda	*(_frexpf_sloc0_1_0 + 1)
	sta	(_frexpf_fl_10000_26 + 1)
	lda	*_frexpf_sloc0_1_0
	sta	_frexpf_fl_10000_26
;	Raw cost for generated ic 29 : (18, 25.000000) count=1.000000
;	../frexpf.c: 46: return(fl.f);
;	genPointerGet
;	genDataPointerGet
	lda	(_frexpf_fl_10000_26 + 3)
	sta	*(_frexpf_sloc0_1_0 + 3)
	lda	(_frexpf_fl_10000_26 + 2)
	sta	*(_frexpf_sloc0_1_0 + 2)
	lda	(_frexpf_fl_10000_26 + 1)
	sta	*(_frexpf_sloc0_1_0 + 1)
	lda	_frexpf_fl_10000_26
	sta	*_frexpf_sloc0_1_0
;	Raw cost for generated ic 32 : (20, 28.000000) count=1.000000
;	genRet
	lda	*(_frexpf_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_frexpf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_frexpf_sloc0_1_0 + 1)
	lda	*_frexpf_sloc0_1_0
;	Raw cost for generated ic 33 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../frexpf.c: 47: }
;	genEndFunction
	rts
;	Raw cost for generated ic 35 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
