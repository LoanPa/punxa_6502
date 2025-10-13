;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module tanhf
	
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
	.globl _fabsf
	.globl _expf
	.globl _tanhf_PARM_1
	.globl _tanhf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_tanhf_sloc0_1_0:
	.ds 4
_tanhf_sloc1_1_0:
	.ds 4
_tanhf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_tanhf_PARM_1:
	.ds 4
_tanhf_r_10000_26:
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
;Allocation info for local variables in function 'tanhf'
;------------------------------------------------------------
;sloc0         Allocated with name '_tanhf_sloc0_1_0'
;sloc1         Allocated with name '_tanhf_sloc1_1_0'
;sloc2         Allocated with name '_tanhf_sloc2_1_0'
;x             Allocated with name '_tanhf_PARM_1'
;f             Allocated with name '_tanhf_f_10000_26'
;g             Allocated with name '_tanhf_g_10000_26'
;r             Allocated with name '_tanhf_r_10000_26'
;------------------------------------------------------------
;	../tanhf.c: 50: float tanhf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tanhf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../tanhf.c: 54: f=fabsf(x);
;	genAssign
;	genCopy
	lda	(_tanhf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_tanhf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_tanhf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_tanhf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	*_tanhf_sloc0_1_0
	stx	*(_tanhf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tanhf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tanhf_sloc0_1_0 + 3)
;	Raw cost for generated ic 3 : (15, 24.000000) count=1.000000
;	../tanhf.c: 55: if(f>SBIG) r=1.0;
;	genAssign
;	genAssignLit
	ldx	#0xb0
	stx	___fslt_PARM_1
	ldx	#0x2c
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x10
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x41
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 58 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fslt_PARM_2 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 59 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 60 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_tanhf_r_10000_26
	sty	(_tanhf_r_10000_26 + 1)
	ldx	#0x80
	stx	(_tanhf_r_10000_26 + 2)
	ldx	#0x3f
	stx	(_tanhf_r_10000_26 + 3)
;	Raw cost for generated ic 9 : (18, 22.000000) count=0.750000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 10 : (3, 3.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.250000
;	../tanhf.c: 56: else if(f>K1)
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	___fslt_PARM_1
	ldx	#0x9f
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x0c
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 61 : (20, 24.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 62 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 63 : (3, 6.000000) count=0.250000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00141$
	jmp	00105$
00141$:
;	Raw cost for generated ic 13 : (7, 7.600000) count=0.250000
;	../tanhf.c: 58: r=0.5-1.0/(expf(f+f)+1.0);
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 64 : (20, 28.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 65 : (20, 28.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_expf_PARM_1
	stx	(_expf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_expf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_expf_PARM_1 + 3)
;	Raw cost for generated ic 66 : (19, 28.000000) count=0.187500
;	genCall
	jsr	_expf
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 18 : (19, 28.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsadd_PARM_2
	sty	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 68 : (18, 22.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 69 : (19, 28.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsdiv_PARM_1
	sty	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 70 : (18, 22.000000) count=0.187500
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 72 : (19, 28.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fssub_PARM_1
	sty	(___fssub_PARM_1 + 1)
	sty	(___fssub_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_1 + 3)
;	Raw cost for generated ic 73 : (16, 20.000000) count=0.187500
;	../tanhf.c: 59: r+=r;
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_tanhf_sloc1_1_0
	stx	*(_tanhf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tanhf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tanhf_sloc1_1_0 + 3)
;	Raw cost for generated ic 75 : (15, 24.000000) count=0.187500
;	genAssign
;	genCopy
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_tanhf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	txa
	sta	(___fsadd_PARM_1 + 1)
	lda	*_tanhf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 76 : (17, 24.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_tanhf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	txa
	sta	(___fsadd_PARM_2 + 1)
	lda	*_tanhf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 77 : (19, 27.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_tanhf_r_10000_26
	stx	(_tanhf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tanhf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tanhf_r_10000_26 + 3)
;	Raw cost for generated ic 78 : (19, 28.000000) count=0.187500
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 25 : (3, 3.000000) count=0.187500
;	genLabel
00105$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.062500
;	../tanhf.c: 61: else if(f<EPS) r=f;
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fslt_PARM_1
;	Raw cost for generated ic 79 : (20, 28.000000) count=0.062500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 80 : (18, 22.000000) count=0.062500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 81 : (3, 6.000000) count=0.062500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 28 : (7, 7.600000) count=0.062500
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(_tanhf_r_10000_26 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(_tanhf_r_10000_26 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(_tanhf_r_10000_26 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	_tanhf_r_10000_26
;	Raw cost for generated ic 31 : (20, 28.000000) count=0.046875
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 32 : (3, 3.000000) count=0.046875
;	genLabel
00102$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.015625
;	../tanhf.c: 64: g=f*f;
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 82 : (20, 28.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 83 : (20, 28.000000) count=0.015625
;	../tanhf.c: 65: r=f+f*(P(g)/Q(g));
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_tanhf_sloc1_1_0
	stx	*(_tanhf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tanhf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tanhf_sloc1_1_0 + 3)
;	Raw cost for generated ic 84 : (15, 24.000000) count=0.015625
;	genAssign
;	genAssignLit
	ldx	#0xb2
	stx	___fsmul_PARM_1
	ldx	#0x11
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x7b
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbb
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 85 : (20, 24.000000) count=0.015625
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tanhf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tanhf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tanhf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 86 : (18, 25.000000) count=0.015625
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 87 : (19, 28.000000) count=0.015625
;	genAssign
;	genAssignLit
	ldx	#0xc6
	stx	___fsadd_PARM_2
	ldx	#0xe2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x52
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbf
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 89 : (20, 24.000000) count=0.015625
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 90 : (19, 28.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tanhf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tanhf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tanhf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 92 : (20, 28.000000) count=0.015625
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_tanhf_sloc2_1_0
	stx	*(_tanhf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tanhf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tanhf_sloc2_1_0 + 3)
;	Raw cost for generated ic 93 : (15, 24.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_tanhf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_tanhf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_tanhf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 94 : (20, 28.000000) count=0.015625
;	genAssign
;	genAssignLit
	ldx	#0x1a
	stx	___fsadd_PARM_2
	ldx	#0x2a
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x1e
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x40
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 95 : (20, 24.000000) count=0.015625
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 96 : (19, 28.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_tanhf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_tanhf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_tanhf_sloc2_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 97 : (20, 28.000000) count=0.015625
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 99 : (19, 28.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 100 : (20, 28.000000) count=0.015625
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 102 : (19, 28.000000) count=0.015625
;	genAssign
;	genCopy
	lda	*(_tanhf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_tanhf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_tanhf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_tanhf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 103 : (20, 28.000000) count=0.015625
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_tanhf_r_10000_26
	stx	(_tanhf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tanhf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tanhf_r_10000_26 + 3)
;	Raw cost for generated ic 105 : (19, 28.000000) count=0.015625
;	genLabel
00109$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	../tanhf.c: 67: if(x<0.0) r=-r;
;	genAssign
;	genCopy
	lda	(_tanhf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_tanhf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_tanhf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_tanhf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 106 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 107 : (14, 18.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 108 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 49 : (7, 7.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	(_tanhf_r_10000_26 + 3)
	eor	#0x80
	sta	(_tanhf_r_10000_26 + 3)
;	Raw cost for generated ic 52 : (8, 10.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../tanhf.c: 68: return r;
;	genRet
	lda	(_tanhf_r_10000_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_tanhf_r_10000_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_tanhf_r_10000_26 + 1)
	lda	_tanhf_r_10000_26
;	Raw cost for generated ic 55 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	../tanhf.c: 69: }
;	genEndFunction
	rts
;	Raw cost for generated ic 57 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
