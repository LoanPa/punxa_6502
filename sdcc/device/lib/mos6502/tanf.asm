;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module tanf
	
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
	.globl _tancotf
	.globl _tanf_PARM_1
	.globl _tanf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_tanf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_tanf_PARM_1:
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
;Allocation info for local variables in function 'tanf'
;------------------------------------------------------------
;sloc0         Allocated with name '_tanf_sloc0_1_0'
;x             Allocated with name '_tanf_PARM_1'
;------------------------------------------------------------
;	../tanf.c: 36: float tanf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tanf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../tanf.c: 38: return tancotf(x, 0);
;	genAssign
;	genCopy
	lda	(_tanf_PARM_1 + 3)
	sta	(_tancotf_PARM_1 + 3)
	lda	(_tanf_PARM_1 + 2)
	sta	(_tancotf_PARM_1 + 2)
	lda	(_tanf_PARM_1 + 1)
	sta	(_tancotf_PARM_1 + 1)
	lda	_tanf_PARM_1
	sta	_tancotf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_tancotf_PARM_2
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	genCall
	jsr	_tancotf
;	assignResultValue
	sta	*_tanf_sloc0_1_0
	stx	*(_tanf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tanf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tanf_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_tanf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_tanf_sloc0_1_0
;	Raw cost for generated ic 5 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../tanf.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
