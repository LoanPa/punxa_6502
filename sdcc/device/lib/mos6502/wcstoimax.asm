;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoimax
	
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
	.globl _wcstoimax
	.globl _wcstoll
	.globl _wcstoimax_PARM_3
	.globl _wcstoimax_PARM_2
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstoimax_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcstoimax_PARM_2:
	.ds 2
_wcstoimax_PARM_3:
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
;Allocation info for local variables in function 'wcstoimax'
;------------------------------------------------------------
;sloc0         Allocated with name '_wcstoimax_sloc0_1_0'
;endptr        Allocated with name '_wcstoimax_PARM_2'
;base          Allocated with name '_wcstoimax_PARM_3'
;nptr          Allocated to registers a x 
;------------------------------------------------------------
;	../wcstoimax.c: 32: intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoimax
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcstoimax:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcstoimax.c: 35: return wcstoll(nptr, endptr, base);
;	genAssign
;	genCopy
	ldy	(_wcstoimax_PARM_2 + 1)
	sty	(_wcstoll_PARM_2 + 1)
	ldy	_wcstoimax_PARM_2
	sty	_wcstoll_PARM_2
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_wcstoimax_PARM_3 + 1)
	sty	(_wcstoll_PARM_3 + 1)
	ldy	_wcstoimax_PARM_3
	sty	_wcstoll_PARM_3
;	Raw cost for generated ic 5 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_wcstoll
;	assignResultValue
	sta	*_wcstoimax_sloc0_1_0
	stx	*(_wcstoimax_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_wcstoimax_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_wcstoimax_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_wcstoimax_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_wcstoimax_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_wcstoimax_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_wcstoimax_sloc0_1_0 + 7)
;	Raw cost for generated ic 6 : (31, 48.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(_wcstoimax_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_wcstoimax_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_wcstoimax_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_wcstoimax_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_wcstoimax_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_wcstoimax_sloc0_1_0
;	Raw cost for generated ic 7 : (24, 36.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../wcstoimax.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
