;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ceilf
	
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
	.globl _ceilf_PARM_1
	.globl _ceilf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_ceilf_sloc0_1_0:
	.ds 4
_ceilf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_ceilf_PARM_1:
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
;Allocation info for local variables in function 'ceilf'
;------------------------------------------------------------
;sloc0         Allocated with name '_ceilf_sloc0_1_0'
;sloc1         Allocated with name '_ceilf_sloc1_1_0'
;x             Allocated with name '_ceilf_PARM_1'
;r             Allocated with name '_ceilf_r_10000_26'
;------------------------------------------------------------
;	../ceilf.c: 33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ceilf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../ceilf.c: 36: r=x;
;	genAssign
;	genCopy
	lda	(_ceilf_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	lda	(_ceilf_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(_ceilf_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	_ceilf_PARM_1
	sta	___fs2slong_PARM_1
;	Raw cost for generated ic 27 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2slong
;	assignResultValue
	sta	*_ceilf_sloc0_1_0
	stx	*(_ceilf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_ceilf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_ceilf_sloc0_1_0 + 3)
;	Raw cost for generated ic 28 : (15, 24.000000) count=1.000000
;	../ceilf.c: 37: if (r<0)
;	genCmp
	bit	*(_ceilf_sloc0_1_0 + 3)
	bpl	00102$
;	Raw cost for generated ic 4 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	../ceilf.c: 38: return r;
;	genAssign
;	genCopy
	sta	(___slong2fs_PARM_1 + 3)
	lda	*(_ceilf_sloc0_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	txa
	sta	(___slong2fs_PARM_1 + 1)
	lda	*_ceilf_sloc0_1_0
	sta	___slong2fs_PARM_1
;	Raw cost for generated ic 29 : (17, 24.000000) count=0.750000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*_ceilf_sloc1_1_0
	stx	*(_ceilf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_ceilf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_ceilf_sloc1_1_0 + 3)
;	Raw cost for generated ic 30 : (15, 24.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_ceilf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_ceilf_sloc1_1_0
	rts
;	Raw cost for generated ic 9 : (11, 15.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../ceilf.c: 40: return (r+((r<x)?1:0));
;	genAssign
;	genCopy
	lda	*(_ceilf_sloc0_1_0 + 3)
	sta	(___slong2fs_PARM_1 + 3)
	lda	*(_ceilf_sloc0_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	lda	*(_ceilf_sloc0_1_0 + 1)
	sta	(___slong2fs_PARM_1 + 1)
	lda	*_ceilf_sloc0_1_0
	sta	___slong2fs_PARM_1
;	Raw cost for generated ic 31 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 32 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_ceilf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_ceilf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_ceilf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_ceilf_PARM_1
	sta	___fslt_PARM_2
;	Raw cost for generated ic 34 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 35 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 14 : (7, 7.600000) count=1.000000
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 15 : (2, 2.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 18 : (2, 2.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
	sta	*_ceilf_sloc1_1_0
	ldy	#0x00
	sty	*(_ceilf_sloc1_1_0 + 1)
	sty	*(_ceilf_sloc1_1_0 + 2)
	sty	*(_ceilf_sloc1_1_0 + 3)
;	Raw cost for generated ic 20 : (10, 14.000000) count=1.000000
;	genPlus
	lda	*_ceilf_sloc0_1_0
	clc
	adc	*_ceilf_sloc1_1_0
	sta	___slong2fs_PARM_1
	lda	*(_ceilf_sloc0_1_0 + 1)
	adc	*(_ceilf_sloc1_1_0 + 1)
	sta	(___slong2fs_PARM_1 + 1)
	lda	*(_ceilf_sloc0_1_0 + 2)
	adc	*(_ceilf_sloc1_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	lda	*(_ceilf_sloc0_1_0 + 3)
	adc	*(_ceilf_sloc1_1_0 + 3)
	sta	(___slong2fs_PARM_1 + 3)
;	Raw cost for generated ic 21 : (29, 42.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*_ceilf_sloc1_1_0
	stx	*(_ceilf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_ceilf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_ceilf_sloc1_1_0 + 3)
;	Raw cost for generated ic 37 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_ceilf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_ceilf_sloc1_1_0
;	Raw cost for generated ic 23 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../ceilf.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
