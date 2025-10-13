;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module div
	
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
	.globl _div_PARM_2
	.globl _div
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_div_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_div_PARM_2:
	.ds 2
_div_ret_10000_43:
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
;Allocation info for local variables in function 'div'
;------------------------------------------------------------
;sloc0         Allocated with name '_div_sloc0_1_0'
;denom         Allocated with name '_div_PARM_2'
;numer         Allocated to registers a x 
;ret           Allocated with name '_div_ret_10000_43'
;------------------------------------------------------------
;	../div.c: 32: div_t div(int numer, int denom)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function div
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_div:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../div.c: 35: ret.quot = numer / denom;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_div_PARM_2 + 1)
	sty	(__divsint_PARM_2 + 1)
	ldy	_div_PARM_2
	sty	__divsint_PARM_2
;	Raw cost for generated ic 15 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
	pha
	phx
;	genSend
	jsr	__divsint
;	assignResultValue
	sta	*_div_sloc0_1_0
	stx	*(_div_sloc0_1_0 + 1)
	plx
	pla
;	Raw cost for generated ic 16 : (11, 26.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	ldy	*(_div_sloc0_1_0 + 1)
	sty	(_div_ret_10000_43 + 1)
	ldy	*_div_sloc0_1_0
	sty	_div_ret_10000_43
;	Raw cost for generated ic 6 : (10, 14.000000) count=1.000000
;	../div.c: 36: ret.rem = numer % denom;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_div_PARM_2 + 1)
	sty	(__modsint_PARM_2 + 1)
	ldy	_div_PARM_2
	sty	__modsint_PARM_2
;	Raw cost for generated ic 18 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__modsint
;	assignResultValue
;	Raw cost for generated ic 19 : (3, 6.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	((_div_ret_10000_43 + 0x0002) + 1)
	sta	(_div_ret_10000_43 + 0x0002)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	../div.c: 37: return(ret);
;	genRet
	lda	(_div_ret_10000_43 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_div_ret_10000_43 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_div_ret_10000_43 + 1)
	lda	_div_ret_10000_43
;	Raw cost for generated ic 11 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../div.c: 38: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
