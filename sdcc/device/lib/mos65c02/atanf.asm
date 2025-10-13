;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atanf
	
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
	.globl _fabsf
	.globl _atanf_PARM_1
	.globl _atanf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atanf_sloc0_1_0:
	.ds 4
_atanf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atanf_PARM_1:
	.ds 4
_atanf_f_10000_26:
	.ds 4
_atanf_r_10000_26:
	.ds 4
_atanf_n_10000_26:
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;sloc0         Allocated with name '_atanf_sloc0_1_0'
;sloc1         Allocated with name '_atanf_sloc1_1_0'
;x             Allocated with name '_atanf_PARM_1'
;f             Allocated with name '_atanf_f_10000_26'
;r             Allocated with name '_atanf_r_10000_26'
;g             Allocated with name '_atanf_g_10000_26'
;n             Allocated with name '_atanf_n_10000_26'
;------------------------------------------------------------
;	../atanf.c: 55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atanf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../atanf.c: 58: int n=0;
;	genAssign
;	genAssignLit
	stz	_atanf_n_10000_26
	stz	(_atanf_n_10000_26 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../atanf.c: 61: f=fabsf(x);
;	genAssign
;	genCopy
	lda	(_atanf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_atanf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_atanf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_atanf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 3 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	*_atanf_sloc0_1_0
	stx	*(_atanf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atanf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atanf_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_atanf_f_10000_26 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(_atanf_f_10000_26 + 2)
	txa
	sta	(_atanf_f_10000_26 + 1)
	lda	*_atanf_sloc0_1_0
	sta	_atanf_f_10000_26
;	Raw cost for generated ic 5 : (17, 24.000000) count=1.000000
;	../atanf.c: 62: if(f>1.0)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 72 : (16, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 73 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 74 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 7 : (7, 7.600000) count=1.000000
;	../atanf.c: 64: f=1.0/f;
;	genAssign
;	genAssignLit
	stz	___fsdiv_PARM_1
	stz	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 75 : (16, 20.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 76 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	_atanf_f_10000_26
	stx	(_atanf_f_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_f_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_f_10000_26 + 3)
;	Raw cost for generated ic 77 : (19, 28.000000) count=0.750000
;	../atanf.c: 65: n=2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_atanf_n_10000_26
	stz	(_atanf_n_10000_26 + 1)
;	Raw cost for generated ic 12 : (8, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../atanf.c: 67: if(f>K1)
;	genAssign
;	genAssignLit
	ldx	#0xa3
	stx	___fslt_PARM_1
	ldx	#0x30
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x89
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3e
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 78 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_atanf_f_10000_26
	sta	___fslt_PARM_2
;	Raw cost for generated ic 79 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 80 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00147$
	jmp	00104$
00147$:
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	../atanf.c: 69: f=((K2*f-1.0)+f)/(K3+f);
;	genAssign
;	genAssignLit
	ldx	#0xaf
	stx	___fsmul_PARM_1
	ldx	#0x67
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x3b
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 81 : (20, 24.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atanf_f_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 82 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_1 + 3)
;	Raw cost for generated ic 83 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	stz	___fssub_PARM_2
	stz	(___fssub_PARM_2 + 1)
	ldx	#0x80
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 85 : (16, 20.000000) count=0.750000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 86 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	_atanf_f_10000_26
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 88 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_atanf_sloc0_1_0
	stx	*(_atanf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atanf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atanf_sloc0_1_0 + 3)
;	Raw cost for generated ic 89 : (15, 24.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_atanf_f_10000_26
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 90 : (24, 32.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0xd7
	stx	___fsadd_PARM_2
	ldx	#0xb3
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xdd
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 91 : (20, 24.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 92 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 93 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	_atanf_f_10000_26
	stx	(_atanf_f_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_f_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_f_10000_26 + 3)
;	Raw cost for generated ic 95 : (19, 28.000000) count=0.750000
;	../atanf.c: 73: n++;
;	genPlus
;	  genPlusInc
	inc	_atanf_n_10000_26
	bne	00148$
	inc	(_atanf_n_10000_26 + 1)
00148$:
;	Raw cost for generated ic 25 : (8, 14.600000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	../atanf.c: 75: if(fabsf(f)<EPS) r=f;
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_atanf_f_10000_26
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 28 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 29 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 97 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 98 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 31 : (7, 7.600000) count=1.000000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(_atanf_r_10000_26 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(_atanf_r_10000_26 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(_atanf_r_10000_26 + 1)
	lda	_atanf_f_10000_26
	sta	_atanf_r_10000_26
;	Raw cost for generated ic 34 : (24, 32.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 35 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.250000
;	../atanf.c: 78: g=f*f;
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	_atanf_f_10000_26
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 99 : (24, 32.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atanf_f_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 100 : (24, 32.000000) count=0.250000
;	../atanf.c: 79: r=f+P(g,f)/Q(g);
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_atanf_sloc0_1_0
	stx	*(_atanf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atanf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atanf_sloc0_1_0 + 3)
;	Raw cost for generated ic 101 : (15, 24.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0x91
	stx	___fsmul_PARM_1
	ldx	#0x86
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x50
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbd
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 102 : (20, 24.000000) count=0.250000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 103 : (18, 25.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 104 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xf6
	stx	___fsadd_PARM_2
	ldx	#0x10
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xf1
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbe
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 106 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 107 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 109 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 110 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atanf_f_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 112 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_atanf_sloc1_1_0
	stx	*(_atanf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atanf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atanf_sloc1_1_0 + 3)
;	Raw cost for generated ic 113 : (15, 24.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_atanf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atanf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_atanf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 114 : (20, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xd3
	stx	___fsadd_PARM_2
	ldx	#0xcc
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb4
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 115 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 116 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_atanf_sloc1_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_atanf_sloc1_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_atanf_sloc1_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_atanf_sloc1_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 117 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 119 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_atanf_f_10000_26 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_atanf_f_10000_26 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atanf_f_10000_26 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_atanf_f_10000_26
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 120 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atanf_r_10000_26
	stx	(_atanf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_r_10000_26 + 3)
;	Raw cost for generated ic 122 : (19, 28.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../atanf.c: 81: if(n>1) r=-r;
;	genCmp
	lda	#0x01
	sec
	sbc	_atanf_n_10000_26
	lda	#0x00
	sbc	(_atanf_n_10000_26 + 1)
	bvc	00152$
	bpl	00151$
	bmi	00109$
00152$:
	bpl	00109$
00151$:
;	Raw cost for generated ic 49 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	(_atanf_r_10000_26 + 3)
	eor	#0x80
	sta	(_atanf_r_10000_26 + 3)
;	Raw cost for generated ic 53 : (8, 10.000000) count=0.750000
;	genLabel
00109$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../atanf.c: 82: r+=a[n];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	ldx	(_atanf_n_10000_26 + 1)
	lda	_atanf_n_10000_26
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 57 : (16, 28.000000) count=1.000000
;	genAssign
;	genCopy
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=_atanf_a_10000_26 savea=0
	clc
	adc	#<(_atanf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_atanf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	___fsadd_PARM_2
	iny
	lda	[DPTR],y
	sta	(___fsadd_PARM_2 + 1)
	iny
	lda	[DPTR],y
	sta	(___fsadd_PARM_2 + 2)
	iny
	lda	[DPTR],y
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 59 : (35, 58.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_atanf_r_10000_26 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_atanf_r_10000_26 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atanf_r_10000_26 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_atanf_r_10000_26
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 123 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atanf_r_10000_26
	stx	(_atanf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_r_10000_26 + 3)
;	Raw cost for generated ic 125 : (19, 28.000000) count=1.000000
;	../atanf.c: 83: if(x<0.0) r=-r;
;	genAssign
;	genCopy
	lda	(_atanf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_atanf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atanf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_atanf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 126 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 127 : (12, 16.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 128 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 63 : (7, 7.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	(_atanf_r_10000_26 + 3)
	eor	#0x80
	sta	(_atanf_r_10000_26 + 3)
;	Raw cost for generated ic 66 : (8, 10.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	../atanf.c: 84: return r;
;	genRet
	lda	(_atanf_r_10000_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_atanf_r_10000_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_atanf_r_10000_26 + 1)
	lda	_atanf_r_10000_26
;	Raw cost for generated ic 69 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../atanf.c: 85: }
;	genEndFunction
	rts
;	Raw cost for generated ic 71 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
_atanf_a_10000_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x92, #0x0a, #0x06, #0x3f	;  5.235988e-01
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0x92, #0x0a, #0x86, #0x3f	;  1.047198e+00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
