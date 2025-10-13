;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module fabsf
	
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
	.globl _fabsf_PARM_1
	.globl _fabsf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_fabsf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_fabsf_PARM_1:
	.ds 4
_fabsf_fl_10000_26:
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
;Allocation info for local variables in function 'fabsf'
;------------------------------------------------------------
;x             Allocated with name '_fabsf_PARM_1'
;fl            Allocated with name '_fabsf_fl_10000_26'
;sloc0         Allocated with name '_fabsf_sloc0_1_0'
;------------------------------------------------------------
;	../fabsf.c: 34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_fabsf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../fabsf.c: 38: fl.f = x;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(_fabsf_PARM_1 + 3)
	sta	(_fabsf_fl_10000_26 + 3)
	lda	(_fabsf_PARM_1 + 2)
	sta	(_fabsf_fl_10000_26 + 2)
	lda	(_fabsf_PARM_1 + 1)
	sta	(_fabsf_fl_10000_26 + 1)
	lda	_fabsf_PARM_1
	sta	_fabsf_fl_10000_26
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../fabsf.c: 39: fl.l &= 0x7fffffff;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_fabsf_fl_10000_26 + 3)
	sta	*(_fabsf_sloc0_1_0 + 3)
	lda	(_fabsf_fl_10000_26 + 2)
	sta	*(_fabsf_sloc0_1_0 + 2)
	lda	(_fabsf_fl_10000_26 + 1)
	sta	*(_fabsf_sloc0_1_0 + 1)
	lda	_fabsf_fl_10000_26
	sta	*_fabsf_sloc0_1_0
;	Raw cost for generated ic 9 : (20, 28.000000) count=1.000000
;	genAnd
	lda	*(_fabsf_sloc0_1_0 + 3)
	and	#0x7f
	sta	*(_fabsf_sloc0_1_0 + 3)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_fabsf_fl_10000_26 + 3)
	lda	*(_fabsf_sloc0_1_0 + 2)
	sta	(_fabsf_fl_10000_26 + 2)
	lda	*(_fabsf_sloc0_1_0 + 1)
	sta	(_fabsf_fl_10000_26 + 1)
	lda	*_fabsf_sloc0_1_0
	sta	_fabsf_fl_10000_26
;	Raw cost for generated ic 11 : (18, 25.000000) count=1.000000
;	../fabsf.c: 40: return fl.f;
;	genPointerGet
;	genDataPointerGet
	lda	(_fabsf_fl_10000_26 + 3)
	sta	*(_fabsf_sloc0_1_0 + 3)
	lda	(_fabsf_fl_10000_26 + 2)
	sta	*(_fabsf_sloc0_1_0 + 2)
	lda	(_fabsf_fl_10000_26 + 1)
	sta	*(_fabsf_sloc0_1_0 + 1)
	lda	_fabsf_fl_10000_26
	sta	*_fabsf_sloc0_1_0
;	Raw cost for generated ic 14 : (20, 28.000000) count=1.000000
;	genRet
	lda	*(_fabsf_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_fabsf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_fabsf_sloc0_1_0 + 1)
	lda	*_fabsf_sloc0_1_0
;	Raw cost for generated ic 15 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../fabsf.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
