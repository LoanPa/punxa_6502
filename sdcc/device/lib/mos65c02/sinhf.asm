;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sinhf
	
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
	.globl _sinhf_PARM_1
	.globl _sinhf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sinhf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sinhf_PARM_1:
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
;Allocation info for local variables in function 'sinhf'
;------------------------------------------------------------
;sloc0         Allocated with name '_sinhf_sloc0_1_0'
;x             Allocated with name '_sinhf_PARM_1'
;------------------------------------------------------------
;	../sinhf.c: 36: float sinhf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sinhf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sinhf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../sinhf.c: 38: return sincoshf(x, 0);
;	genAssign
;	genCopy
	lda	(_sinhf_PARM_1 + 3)
	sta	(_sincoshf_PARM_1 + 3)
	lda	(_sinhf_PARM_1 + 2)
	sta	(_sincoshf_PARM_1 + 2)
	lda	(_sinhf_PARM_1 + 1)
	sta	(_sincoshf_PARM_1 + 1)
	lda	_sinhf_PARM_1
	sta	_sincoshf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	_sincoshf_PARM_2
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	genCall
	jsr	_sincoshf
;	assignResultValue
	sta	*_sinhf_sloc0_1_0
	stx	*(_sinhf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sinhf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sinhf_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_sinhf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_sinhf_sloc0_1_0
;	Raw cost for generated ic 5 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../sinhf.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
