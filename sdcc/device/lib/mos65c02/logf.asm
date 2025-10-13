;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module logf
	
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
	.globl _frexpf
	.globl _logf_PARM_1
	.globl _logf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_logf_sloc0_1_0:
	.ds 4
_logf_sloc1_1_0:
	.ds 4
_logf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_logf_PARM_1:
	.ds 4
_logf_znum_10000_26:
	.ds 4
_logf_zden_10000_26:
	.ds 4
_logf_n_10000_26:
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;sloc0         Allocated with name '_logf_sloc0_1_0'
;sloc1         Allocated with name '_logf_sloc1_1_0'
;sloc2         Allocated with name '_logf_sloc2_1_0'
;x             Allocated with name '_logf_PARM_1'
;Rz            Allocated with name '_logf_Rz_10000_26'
;f             Allocated with name '_logf_f_10000_26'
;z             Allocated with name '_logf_z_10000_26'
;w             Allocated with name '_logf_w_10000_26'
;znum          Allocated with name '_logf_znum_10000_26'
;zden          Allocated with name '_logf_zden_10000_26'
;xn            Allocated with name '_logf_xn_10000_26'
;n             Allocated with name '_logf_n_10000_26'
;------------------------------------------------------------
;	../logf.c: 216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_logf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../logf.c: 226: if (x<=0.0)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	stz	(___fslt_PARM_1 + 2)
	stz	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 55 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_logf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_logf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_logf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_logf_PARM_1
	sta	___fslt_PARM_2
;	Raw cost for generated ic 56 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 57 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	../logf.c: 228: errno=EDOM;
;	genAssign
;	genAssignLit
	ldx	#0x21
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=0.750000
;	../logf.c: 229: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 8 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../logf.c: 231: f=frexpf(x, &n);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_logf_n_10000_26
	sta	(_frexpf_PARM_2 + 1)
	lda	#_logf_n_10000_26
	sta	_frexpf_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_logf_PARM_1 + 3)
	sta	(_frexpf_PARM_1 + 3)
	lda	(_logf_PARM_1 + 2)
	sta	(_frexpf_PARM_1 + 2)
	lda	(_logf_PARM_1 + 1)
	sta	(_frexpf_PARM_1 + 1)
	lda	_logf_PARM_1
	sta	_frexpf_PARM_1
;	Raw cost for generated ic 12 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_frexpf
;	assignResultValue
	sta	*_logf_sloc0_1_0
	stx	*(_logf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc0_1_0 + 3)
;	Raw cost for generated ic 14 : (15, 24.000000) count=1.000000
;	../logf.c: 232: znum=f-0.5;
;	genAssign
;	genCopy
	sta	(___fssub_PARM_1 + 3)
	lda	*(_logf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	txa
	sta	(___fssub_PARM_1 + 1)
	lda	*_logf_sloc0_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 58 : (17, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fssub_PARM_2
	stz	(___fssub_PARM_2 + 1)
	stz	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 59 : (14, 18.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_logf_sloc1_1_0
	stx	*(_logf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc1_1_0 + 3)
;	Raw cost for generated ic 60 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_logf_znum_10000_26 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(_logf_znum_10000_26 + 2)
	txa
	sta	(_logf_znum_10000_26 + 1)
	lda	*_logf_sloc1_1_0
	sta	_logf_znum_10000_26
;	Raw cost for generated ic 17 : (17, 24.000000) count=1.000000
;	../logf.c: 233: if (f>C0)
;	genAssign
;	genAssignLit
	ldx	#0xf3
	stx	___fslt_PARM_1
	ldx	#0x04
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x35
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 61 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	*(_logf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_logf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_logf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 62 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 63 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	jmp	00104$
00123$:
;	Raw cost for generated ic 19 : (7, 7.600000) count=1.000000
;	../logf.c: 235: znum-=0.5;
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 64 : (20, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	stz	___fssub_PARM_2
	stz	(___fssub_PARM_2 + 1)
	stz	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 65 : (14, 18.000000) count=0.750000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	_logf_znum_10000_26
	stx	(_logf_znum_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_logf_znum_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_logf_znum_10000_26 + 3)
;	Raw cost for generated ic 66 : (19, 28.000000) count=0.750000
;	../logf.c: 236: zden=(f*0.5)+0.5;
;	genAssign
;	genAssignLit
	stz	___fsmul_PARM_1
	stz	(___fsmul_PARM_1 + 1)
	stz	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 67 : (14, 18.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_logf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_logf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 68 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 69 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	stz	___fsadd_PARM_2
	stz	(___fsadd_PARM_2 + 1)
	stz	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 71 : (14, 18.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_logf_zden_10000_26
	stx	(_logf_zden_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_logf_zden_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_logf_zden_10000_26 + 3)
;	Raw cost for generated ic 72 : (19, 28.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.250000
;	../logf.c: 240: n--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	_logf_n_10000_26
	bne	00124$
	dec	(_logf_n_10000_26 + 1)
00124$:
	dec	_logf_n_10000_26
;	Raw cost for generated ic 30 : (11, 18.600000) count=0.250000
;	../logf.c: 241: zden=znum*0.5+0.5;
;	genAssign
;	genAssignLit
	stz	___fsmul_PARM_1
	stz	(___fsmul_PARM_1 + 1)
	stz	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 73 : (14, 18.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 74 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 75 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	stz	___fsadd_PARM_2
	stz	(___fsadd_PARM_2 + 1)
	stz	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 77 : (14, 18.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_logf_zden_10000_26
	stx	(_logf_zden_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_logf_zden_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_logf_zden_10000_26 + 3)
;	Raw cost for generated ic 78 : (19, 28.000000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../logf.c: 243: z=znum/zden;
;	genAssign
;	genCopy
	lda	(_logf_znum_10000_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_logf_znum_10000_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_logf_znum_10000_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_logf_znum_10000_26
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 79 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_logf_zden_10000_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_logf_zden_10000_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_logf_zden_10000_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_logf_zden_10000_26
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 80 : (24, 32.000000) count=1.000000
;	../logf.c: 244: w=z*z;
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_logf_sloc1_1_0
	stx	*(_logf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc1_1_0 + 3)
;	Raw cost for generated ic 81 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	txa
	sta	(___fsmul_PARM_1 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 82 : (17, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	txa
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 83 : (19, 27.000000) count=1.000000
;	../logf.c: 246: Rz=z+z*(w*A(w)/B(w));
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_logf_sloc0_1_0
	stx	*(_logf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc0_1_0 + 3)
;	Raw cost for generated ic 84 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3d
	stx	___fsmul_PARM_1
	ldx	#0x7e
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x0d
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 85 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_logf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 86 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_logf_sloc2_1_0
	stx	*(_logf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc2_1_0 + 3)
;	Raw cost for generated ic 87 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_logf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_logf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_logf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 88 : (20, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3a
	stx	___fsadd_PARM_2
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xd4
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 89 : (20, 24.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 90 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_logf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_logf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_logf_sloc2_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 91 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 93 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 94 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 96 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 97 : (20, 28.000000) count=1.000000
;	../logf.c: 247: xn=n;
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_logf_sloc2_1_0
	stx	*(_logf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc2_1_0 + 3)
;	Raw cost for generated ic 99 : (15, 24.000000) count=1.000000
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_logf_n_10000_26 + 1)
	lda	_logf_n_10000_26
	jsr	___sint2fs
;	assignResultValue
	sta	*_logf_sloc1_1_0
	stx	*(_logf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc1_1_0 + 3)
;	Raw cost for generated ic 101 : (21, 32.000000) count=1.000000
;	../logf.c: 248: return ((xn*C2+Rz)+xn*C1);
;	genAssign
;	genAssignLit
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0x80
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x5e
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xb9
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 102 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 103 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 104 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_logf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_logf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_logf_sloc2_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 106 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_logf_sloc2_1_0
	stx	*(_logf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc2_1_0 + 3)
;	Raw cost for generated ic 107 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fsmul_PARM_1
	ldx	#0x80
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x31
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 108 : (18, 22.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_logf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_logf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_logf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 109 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 110 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_logf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_logf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_logf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_logf_sloc2_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 111 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_logf_sloc2_1_0
	stx	*(_logf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_logf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_logf_sloc2_1_0 + 3)
;	Raw cost for generated ic 113 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_logf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_logf_sloc2_1_0
;	Raw cost for generated ic 52 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	../logf.c: 249: }
;	genEndFunction
	rts
;	Raw cost for generated ic 54 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
