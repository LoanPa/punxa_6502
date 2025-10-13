;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ldexpf
	
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
	.globl _ldexpf_PARM_2
	.globl _ldexpf_PARM_1
	.globl _ldexpf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_ldexpf_sloc0_1_0:
	.ds 4
_ldexpf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_ldexpf_PARM_1:
	.ds 4
_ldexpf_PARM_2:
	.ds 2
_ldexpf_fl_10000_26:
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;x             Allocated with name '_ldexpf_PARM_1'
;pw2           Allocated with name '_ldexpf_PARM_2'
;fl            Allocated with name '_ldexpf_fl_10000_26'
;e             Allocated with name '_ldexpf_e_10000_26'
;sloc0         Allocated with name '_ldexpf_sloc0_1_0'
;sloc1         Allocated with name '_ldexpf_sloc1_1_0'
;------------------------------------------------------------
;	../ldexpf.c: 34: float ldexpf(float x, int pw2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ldexpf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../ldexpf.c: 39: fl.f = x;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(_ldexpf_PARM_1 + 3)
	sta	(_ldexpf_fl_10000_26 + 3)
	lda	(_ldexpf_PARM_1 + 2)
	sta	(_ldexpf_fl_10000_26 + 2)
	lda	(_ldexpf_PARM_1 + 1)
	sta	(_ldexpf_fl_10000_26 + 1)
	lda	_ldexpf_PARM_1
	sta	_ldexpf_fl_10000_26
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../ldexpf.c: 41: e=(fl.l >> 23) & 0x000000ff;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_ldexpf_fl_10000_26 + 3)
	sta	*(_ldexpf_sloc0_1_0 + 3)
	lda	(_ldexpf_fl_10000_26 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	(_ldexpf_fl_10000_26 + 1)
	sta	*(_ldexpf_sloc0_1_0 + 1)
	lda	_ldexpf_fl_10000_26
	sta	*_ldexpf_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(_ldexpf_sloc0_1_0 + 2)
	rol	a
	lda	*(_ldexpf_sloc0_1_0 + 3)
	rol	a
	sta	*_ldexpf_sloc0_1_0
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_ldexpf_sloc0_1_0 + 1)
	sta	*(_ldexpf_sloc0_1_0 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 8 : (20, 28.000000) count=1.000000
;	genAnd
	ldy	#0x00
	sty	*(_ldexpf_sloc0_1_0 + 1)
	sty	*(_ldexpf_sloc0_1_0 + 2)
	sty	*(_ldexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 9 : (8, 11.000000) count=1.000000
;	../ldexpf.c: 42: e+=pw2;
;	genCast
	lda	_ldexpf_PARM_2
	sta	*_ldexpf_sloc1_1_0
	lda	(_ldexpf_PARM_2 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_ldexpf_sloc1_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 3)
;	Raw cost for generated ic 11 : (20, 28.000000) count=1.000000
;	genPlus
	lda	*_ldexpf_sloc0_1_0
	clc
	adc	*_ldexpf_sloc1_1_0
	sta	*_ldexpf_sloc1_1_0
	lda	*(_ldexpf_sloc0_1_0 + 1)
	adc	*(_ldexpf_sloc1_1_0 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	*(_ldexpf_sloc0_1_0 + 2)
	adc	*(_ldexpf_sloc1_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	*(_ldexpf_sloc0_1_0 + 3)
	adc	*(_ldexpf_sloc1_1_0 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
;	Raw cost for generated ic 12 : (25, 38.000000) count=1.000000
;	../ldexpf.c: 43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
;	genAnd
	sty	*(_ldexpf_sloc1_1_0 + 1)
	sty	*(_ldexpf_sloc1_1_0 + 2)
	sty	*(_ldexpf_sloc1_1_0 + 3)
;	Raw cost for generated ic 16 : (6, 9.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(_ldexpf_sloc1_1_0 + 1)
	lsr	a
	lda	*_ldexpf_sloc1_1_0
	ror	a
	sta	*(_ldexpf_sloc1_1_0 + 3)
	tya
	sta	*(_ldexpf_sloc1_1_0 + 1)
	sta	*_ldexpf_sloc1_1_0
	ror	a
	sta	*(_ldexpf_sloc1_1_0 + 2)
;	Raw cost for generated ic 17 : (16, 26.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_ldexpf_fl_10000_26 + 3)
	sta	*(_ldexpf_sloc0_1_0 + 3)
	lda	(_ldexpf_fl_10000_26 + 2)
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	(_ldexpf_fl_10000_26 + 1)
	sta	*(_ldexpf_sloc0_1_0 + 1)
	lda	_ldexpf_fl_10000_26
	sta	*_ldexpf_sloc0_1_0
;	Raw cost for generated ic 20 : (20, 28.000000) count=1.000000
;	genAnd
	lda	*(_ldexpf_sloc0_1_0 + 2)
	and	#0x7f
	sta	*(_ldexpf_sloc0_1_0 + 2)
	lda	*(_ldexpf_sloc0_1_0 + 3)
	and	#0x80
	sta	*(_ldexpf_sloc0_1_0 + 3)
;	Raw cost for generated ic 21 : (12, 16.000000) count=1.000000
;	genOr
	lda	*_ldexpf_sloc1_1_0
	ora	*_ldexpf_sloc0_1_0
	sta	*_ldexpf_sloc1_1_0
	lda	*(_ldexpf_sloc1_1_0 + 1)
	ora	*(_ldexpf_sloc0_1_0 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	*(_ldexpf_sloc1_1_0 + 2)
	ora	*(_ldexpf_sloc0_1_0 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	*(_ldexpf_sloc1_1_0 + 3)
	ora	*(_ldexpf_sloc0_1_0 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
;	Raw cost for generated ic 22 : (24, 36.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_ldexpf_fl_10000_26 + 3)
	lda	*(_ldexpf_sloc1_1_0 + 2)
	sta	(_ldexpf_fl_10000_26 + 2)
	lda	*(_ldexpf_sloc1_1_0 + 1)
	sta	(_ldexpf_fl_10000_26 + 1)
	lda	*_ldexpf_sloc1_1_0
	sta	_ldexpf_fl_10000_26
;	Raw cost for generated ic 23 : (18, 25.000000) count=1.000000
;	../ldexpf.c: 45: return(fl.f);
;	genPointerGet
;	genDataPointerGet
	lda	(_ldexpf_fl_10000_26 + 3)
	sta	*(_ldexpf_sloc1_1_0 + 3)
	lda	(_ldexpf_fl_10000_26 + 2)
	sta	*(_ldexpf_sloc1_1_0 + 2)
	lda	(_ldexpf_fl_10000_26 + 1)
	sta	*(_ldexpf_sloc1_1_0 + 1)
	lda	_ldexpf_fl_10000_26
	sta	*_ldexpf_sloc1_1_0
;	Raw cost for generated ic 26 : (20, 28.000000) count=1.000000
;	genRet
	lda	*(_ldexpf_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_ldexpf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_ldexpf_sloc1_1_0 + 1)
	lda	*_ldexpf_sloc1_1_0
;	Raw cost for generated ic 27 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	../ldexpf.c: 46: }
;	genEndFunction
	rts
;	Raw cost for generated ic 29 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
