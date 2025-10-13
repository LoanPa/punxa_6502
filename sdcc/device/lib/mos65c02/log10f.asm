;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module log10f
	
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
	.globl _logf
	.globl _log10f_PARM_1
	.globl _log10f
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_log10f_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_log10f_PARM_1:
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
;Allocation info for local variables in function 'log10f'
;------------------------------------------------------------
;sloc0         Allocated with name '_log10f_sloc0_1_0'
;x             Allocated with name '_log10f_PARM_1'
;------------------------------------------------------------
;	../log10f.c: 34: float log10f(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function log10f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_log10f:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../log10f.c: 36: return logf(x)*0.4342944819;
;	genAssign
;	genCopy
	lda	(_log10f_PARM_1 + 3)
	sta	(_logf_PARM_1 + 3)
	lda	(_log10f_PARM_1 + 2)
	sta	(_logf_PARM_1 + 2)
	lda	(_log10f_PARM_1 + 1)
	sta	(_logf_PARM_1 + 1)
	lda	_log10f_PARM_1
	sta	_logf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_logf
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 3 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0xd9
	stx	___fsmul_PARM_1
	ldx	#0x5b
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xde
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3e
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 8 : (20, 24.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_log10f_sloc0_1_0
	stx	*(_log10f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_log10f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_log10f_sloc0_1_0 + 3)
;	Raw cost for generated ic 10 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_log10f_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_log10f_sloc0_1_0
;	Raw cost for generated ic 5 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../log10f.c: 37: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
