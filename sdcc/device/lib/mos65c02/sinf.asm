;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sinf
	
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
	.globl _sincosf
	.globl _sinf_PARM_1
	.globl _sinf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sinf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sinf_PARM_1:
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
;Allocation info for local variables in function 'sinf'
;------------------------------------------------------------
;sloc0         Allocated with name '_sinf_sloc0_1_0'
;x             Allocated with name '_sinf_PARM_1'
;------------------------------------------------------------
;	../sinf.c: 36: float sinf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sinf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../sinf.c: 38: if (x==0.0) return 0.0;
;	genIfx
	lda	(_sinf_PARM_1 + 3)
	and	#0x7F
	ora	(_sinf_PARM_1 + 2)
	ora	(_sinf_PARM_1 + 1)
	ora	_sinf_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 5 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../sinf.c: 39: return sincosf(x, 0);
;	genAssign
;	genCopy
	lda	(_sinf_PARM_1 + 3)
	sta	(_sincosf_PARM_1 + 3)
	lda	(_sinf_PARM_1 + 2)
	sta	(_sincosf_PARM_1 + 2)
	lda	(_sinf_PARM_1 + 1)
	sta	(_sincosf_PARM_1 + 1)
	lda	_sinf_PARM_1
	sta	_sincosf_PARM_1
;	Raw cost for generated ic 7 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	_sincosf_PARM_2
;	Raw cost for generated ic 8 : (3, 4.000000) count=1.000000
;	genCall
	jsr	_sincosf
;	assignResultValue
	sta	*_sinf_sloc0_1_0
	stx	*(_sinf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sinf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sinf_sloc0_1_0 + 3)
;	Raw cost for generated ic 9 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_sinf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_sinf_sloc0_1_0
;	Raw cost for generated ic 10 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../sinf.c: 40: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
