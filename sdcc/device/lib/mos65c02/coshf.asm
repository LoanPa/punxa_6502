;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module coshf
	
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
	.globl _sincoshf
	.globl _coshf_PARM_1
	.globl _coshf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_coshf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_coshf_PARM_1:
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
;Allocation info for local variables in function 'coshf'
;------------------------------------------------------------
;sloc0         Allocated with name '_coshf_sloc0_1_0'
;x             Allocated with name '_coshf_PARM_1'
;------------------------------------------------------------
;	../coshf.c: 36: float coshf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function coshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_coshf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../coshf.c: 38: return sincoshf(x, 1);
;	genAssign
;	genCopy
	lda	(_coshf_PARM_1 + 3)
	sta	(_sincoshf_PARM_1 + 3)
	lda	(_coshf_PARM_1 + 2)
	sta	(_sincoshf_PARM_1 + 2)
	lda	(_coshf_PARM_1 + 1)
	sta	(_sincoshf_PARM_1 + 1)
	lda	_coshf_PARM_1
	sta	_sincoshf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_sincoshf_PARM_2
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	genCall
	jsr	_sincoshf
;	assignResultValue
	sta	*_coshf_sloc0_1_0
	stx	*(_coshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_coshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_coshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_coshf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_coshf_sloc0_1_0
;	Raw cost for generated ic 5 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../coshf.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
