;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ldiv
	
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
	.globl _ldiv_PARM_2
	.globl _ldiv_PARM_1
	.globl _ldiv
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_ldiv_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_ldiv_PARM_1:
	.ds 4
_ldiv_PARM_2:
	.ds 4
_ldiv_ret_10000_43:
	.ds 8
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
;Allocation info for local variables in function 'ldiv'
;------------------------------------------------------------
;sloc0         Allocated with name '_ldiv_sloc0_1_0'
;numer         Allocated with name '_ldiv_PARM_1'
;denom         Allocated with name '_ldiv_PARM_2'
;ret           Allocated with name '_ldiv_ret_10000_43'
;------------------------------------------------------------
;	../ldiv.c: 32: ldiv_t ldiv(long int numer, long int denom)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ldiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ldiv:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../ldiv.c: 35: ret.quot = numer / denom;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_ldiv_PARM_1 + 3)
	sta	(__divslong_PARM_1 + 3)
	lda	(_ldiv_PARM_1 + 2)
	sta	(__divslong_PARM_1 + 2)
	lda	(_ldiv_PARM_1 + 1)
	sta	(__divslong_PARM_1 + 1)
	lda	_ldiv_PARM_1
	sta	__divslong_PARM_1
;	Raw cost for generated ic 13 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_ldiv_PARM_2 + 3)
	sta	(__divslong_PARM_2 + 3)
	lda	(_ldiv_PARM_2 + 2)
	sta	(__divslong_PARM_2 + 2)
	lda	(_ldiv_PARM_2 + 1)
	sta	(__divslong_PARM_2 + 1)
	lda	_ldiv_PARM_2
	sta	__divslong_PARM_2
;	Raw cost for generated ic 14 : (24, 32.000000) count=1.000000
;	genCall
	jsr	__divslong
;	assignResultValue
	sta	*_ldiv_sloc0_1_0
	stx	*(_ldiv_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_ldiv_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_ldiv_sloc0_1_0 + 3)
;	Raw cost for generated ic 15 : (15, 24.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_ldiv_ret_10000_43 + 3)
	lda	*(_ldiv_sloc0_1_0 + 2)
	sta	(_ldiv_ret_10000_43 + 2)
	txa
	sta	(_ldiv_ret_10000_43 + 1)
	lda	*_ldiv_sloc0_1_0
	sta	_ldiv_ret_10000_43
;	Raw cost for generated ic 5 : (17, 24.000000) count=1.000000
;	../ldiv.c: 36: ret.rem = numer % denom;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_ldiv_PARM_1 + 3)
	sta	(__modslong_PARM_1 + 3)
	lda	(_ldiv_PARM_1 + 2)
	sta	(__modslong_PARM_1 + 2)
	lda	(_ldiv_PARM_1 + 1)
	sta	(__modslong_PARM_1 + 1)
	lda	_ldiv_PARM_1
	sta	__modslong_PARM_1
;	Raw cost for generated ic 16 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_ldiv_PARM_2 + 3)
	sta	(__modslong_PARM_2 + 3)
	lda	(_ldiv_PARM_2 + 2)
	sta	(__modslong_PARM_2 + 2)
	lda	(_ldiv_PARM_2 + 1)
	sta	(__modslong_PARM_2 + 1)
	lda	_ldiv_PARM_2
	sta	__modslong_PARM_2
;	Raw cost for generated ic 17 : (24, 32.000000) count=1.000000
;	genCall
	jsr	__modslong
;	assignResultValue
	sta	*_ldiv_sloc0_1_0
	stx	*(_ldiv_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_ldiv_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_ldiv_sloc0_1_0 + 3)
;	Raw cost for generated ic 18 : (15, 24.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	((_ldiv_ret_10000_43 + 0x0004) + 3)
	lda	*(_ldiv_sloc0_1_0 + 2)
	sta	((_ldiv_ret_10000_43 + 0x0004) + 2)
	txa
	sta	((_ldiv_ret_10000_43 + 0x0004) + 1)
	lda	*_ldiv_sloc0_1_0
	sta	(_ldiv_ret_10000_43 + 0x0004)
;	Raw cost for generated ic 9 : (17, 24.000000) count=1.000000
;	../ldiv.c: 37: return(ret);
;	genRet
	lda	(_ldiv_ret_10000_43 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_ldiv_ret_10000_43 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_ldiv_ret_10000_43 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_ldiv_ret_10000_43 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_ldiv_ret_10000_43 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_ldiv_ret_10000_43 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_ldiv_ret_10000_43 + 1)
	lda	_ldiv_ret_10000_43
;	Raw cost for generated ic 10 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../ldiv.c: 38: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
