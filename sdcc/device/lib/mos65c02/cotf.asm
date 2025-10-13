;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module cotf
	
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
	.globl _tancotf
	.globl _fabsf
	.globl _cotf_PARM_1
	.globl _cotf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_cotf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_cotf_PARM_1:
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
;Allocation info for local variables in function 'cotf'
;------------------------------------------------------------
;sloc0         Allocated with name '_cotf_sloc0_1_0'
;x             Allocated with name '_cotf_PARM_1'
;y             Allocated with name '_cotf_y_10000_27'
;------------------------------------------------------------
;	../cotf.c: 37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_cotf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../cotf.c: 41: y=fabsf(x);
;	genAssign
;	genCopy
	lda	(_cotf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_cotf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_cotf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_cotf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 3 : (19, 28.000000) count=1.000000
;	../cotf.c: 42: if (y<1.0E-30) //This one requires more thinking...
;	genAssign
;	genAssignLit
	ldx	#0x60
	stx	___fslt_PARM_2
	ldx	#0x42
	stx	(___fslt_PARM_2 + 1)
	ldx	#0xa2
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x0d
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 28 : (20, 24.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 29 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	../cotf.c: 44: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 10 : (8, 10.000000) count=0.750000
;	../cotf.c: 45: if (x<0.0)
;	genAssign
;	genCopy
	lda	(_cotf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_cotf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_cotf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_cotf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 30 : (24, 32.000000) count=0.750000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 31 : (12, 16.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 32 : (3, 6.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 12 : (7, 7.600000) count=0.750000
;	../cotf.c: 46: return -HUGE_VALF;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 15 : (12, 15.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	../cotf.c: 48: return +HUGE_VALF;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 18 : (12, 15.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	../cotf.c: 50: return tancotf(x, 1);
;	genAssign
;	genCopy
	lda	(_cotf_PARM_1 + 3)
	sta	(_tancotf_PARM_1 + 3)
	lda	(_cotf_PARM_1 + 2)
	sta	(_tancotf_PARM_1 + 2)
	lda	(_cotf_PARM_1 + 1)
	sta	(_tancotf_PARM_1 + 1)
	lda	_cotf_PARM_1
	sta	_tancotf_PARM_1
;	Raw cost for generated ic 21 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_tancotf_PARM_2
;	Raw cost for generated ic 22 : (5, 6.000000) count=1.000000
;	genCall
	jsr	_tancotf
;	assignResultValue
	sta	*_cotf_sloc0_1_0
	stx	*(_cotf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_cotf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_cotf_sloc0_1_0 + 3)
;	Raw cost for generated ic 23 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_cotf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_cotf_sloc0_1_0
;	Raw cost for generated ic 24 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../cotf.c: 51: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
