;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module tancotf
	
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
	.globl _tancotf_PARM_2
	.globl _tancotf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_tancotf_sloc0_1_0:
	.ds 4
_tancotf_sloc1_1_0:
	.ds 4
_tancotf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_tancotf_PARM_1:
	.ds 4
_tancotf_PARM_2:
	.ds 1
_tancotf_xnum_10000_26:
	.ds 4
_tancotf_xden_10000_26:
	.ds 4
_tancotf_n_10000_26:
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;sloc0         Allocated with name '_tancotf_sloc0_1_0'
;sloc1         Allocated with name '_tancotf_sloc1_1_0'
;sloc2         Allocated with name '_tancotf_sloc2_1_0'
;x             Allocated with name '_tancotf_PARM_1'
;iscotan       Allocated with name '_tancotf_PARM_2'
;f             Allocated with name '_tancotf_f_10000_26'
;g             Allocated with name '_tancotf_g_10000_26'
;xn            Allocated with name '_tancotf_xn_10000_26'
;xnum          Allocated with name '_tancotf_xnum_10000_26'
;xden          Allocated with name '_tancotf_xden_10000_26'
;n             Allocated with name '_tancotf_n_10000_26'
;------------------------------------------------------------
;	../tancotf.c: 53: float tancotf(float x, bool iscotan)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tancotf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
;	genAssign
;	genCopy
	lda	(_tancotf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_tancotf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_tancotf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_tancotf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 3 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	ldx	#0x08
	stx	(___fslt_PARM_1 + 1)
	ldx	#0xc9
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x45
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 89 : (18, 22.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 91 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 5 : (7, 7.600000) count=1.000000
;	../tancotf.c: 60: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 9 : (8, 10.000000) count=0.750000
;	../tancotf.c: 61: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 10 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
;	genAssign
;	genAssignLit
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0xf9
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x22
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 92 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_tancotf_PARM_1
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 93 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_tancotf_sloc0_1_0
	stx	*(_tancotf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc0_1_0 + 3)
;	Raw cost for generated ic 94 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	stz	(___fslt_PARM_1 + 2)
	stz	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 95 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_tancotf_PARM_1
	sta	___fslt_PARM_2
;	Raw cost for generated ic 96 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 97 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 14 : (7, 7.600000) count=1.000000
;	genAssign
;	genAssignLit
	stz	*_tancotf_sloc1_1_0
	stz	*(_tancotf_sloc1_1_0 + 1)
	stz	*(_tancotf_sloc1_1_0 + 2)
	ldx	#0x3f
	stx	*(_tancotf_sloc1_1_0 + 3)
;	Raw cost for generated ic 15 : (13, 17.000000) count=0.750000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genAssignLit
	stz	*_tancotf_sloc1_1_0
	stz	*(_tancotf_sloc1_1_0 + 1)
	stz	*(_tancotf_sloc1_1_0 + 2)
	ldx	#0xbf
	stx	*(_tancotf_sloc1_1_0 + 3)
;	Raw cost for generated ic 18 : (13, 17.000000) count=0.250000
;	genLabel
00118$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_tancotf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_tancotf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 98 : (20, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 99 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fs2sint_PARM_1
	stx	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2sint_PARM_1 + 3)
;	Raw cost for generated ic 100 : (19, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
	sta	_tancotf_n_10000_26
	stx	(_tancotf_n_10000_26 + 1)
;	Raw cost for generated ic 102 : (9, 14.000000) count=1.000000
;	../tancotf.c: 66: xn=n;
;	Raw cost for generated ic 103 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc1_1_0 + 3)
;	Raw cost for generated ic 104 : (15, 24.000000) count=1.000000
;	../tancotf.c: 68: xnum=(int)x;
;	genAssign
;	genCopy
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fs2sint_PARM_1 + 3)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fs2sint_PARM_1 + 1)
	lda	_tancotf_PARM_1
	sta	___fs2sint_PARM_1
;	Raw cost for generated ic 105 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
;	Raw cost for generated ic 106 : (3, 6.000000) count=1.000000
;	Raw cost for generated ic 107 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	*_tancotf_sloc0_1_0
	stx	*(_tancotf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc0_1_0 + 3)
;	Raw cost for generated ic 108 : (15, 24.000000) count=1.000000
;	../tancotf.c: 69: xden=x-xnum;
;	genAssign
;	genCopy
	lda	(_tancotf_PARM_1 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	(_tancotf_PARM_1 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_tancotf_PARM_1 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	_tancotf_PARM_1
	sta	___fssub_PARM_1
;	Raw cost for generated ic 109 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	txa
	sta	(___fssub_PARM_2 + 1)
	lda	*_tancotf_sloc0_1_0
	sta	___fssub_PARM_2
;	Raw cost for generated ic 110 : (19, 27.000000) count=1.000000
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 111 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fsmul_PARM_1
	stz	(___fsmul_PARM_1 + 1)
	ldx	#0xc9
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 112 : (16, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 113 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 114 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_tancotf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_tancotf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_tancotf_sloc0_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 115 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 117 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 119 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 120 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xfd
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x39
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 121 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 122 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 123 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 124 : (20, 28.000000) count=1.000000
;	../tancotf.c: 72: if (fabsf(f) < EPS)
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 126 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_fabsf_PARM_1 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(_fabsf_PARM_1 + 2)
	txa
	sta	(_fabsf_PARM_1 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 36 : (17, 24.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 37 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 128 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 129 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 39 : (7, 7.600000) count=1.000000
;	../tancotf.c: 74: xnum = f;
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(_tancotf_xnum_10000_26 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(_tancotf_xnum_10000_26 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(_tancotf_xnum_10000_26 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	_tancotf_xnum_10000_26
;	Raw cost for generated ic 42 : (20, 28.000000) count=0.750000
;	../tancotf.c: 75: xden = 1.0;
;	genAssign
;	genAssignLit
	stz	_tancotf_xden_10000_26
	stz	(_tancotf_xden_10000_26 + 1)
	ldx	#0x80
	stx	(_tancotf_xden_10000_26 + 2)
	ldx	#0x3f
	stx	(_tancotf_xden_10000_26 + 3)
;	Raw cost for generated ic 43 : (16, 20.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 44 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.250000
;	../tancotf.c: 79: g = f*f;
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 130 : (20, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 131 : (20, 28.000000) count=0.250000
;	../tancotf.c: 80: xnum = P(f,g);
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_tancotf_sloc1_1_0
	stx	*(_tancotf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc1_1_0 + 3)
;	Raw cost for generated ic 132 : (15, 24.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xb8
	stx	___fsmul_PARM_1
	ldx	#0x33
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xc4
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbd
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 133 : (20, 24.000000) count=0.250000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 134 : (18, 25.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 135 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 137 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 138 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_tancotf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_tancotf_sloc2_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 140 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_tancotf_xnum_10000_26
	stx	(_tancotf_xnum_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tancotf_xnum_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tancotf_xnum_10000_26 + 3)
;	Raw cost for generated ic 141 : (19, 28.000000) count=0.250000
;	../tancotf.c: 81: xden = Q(g);
;	genAssign
;	genAssignLit
	ldx	#0x75
	stx	___fsmul_PARM_1
	ldx	#0x33
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x1f
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3c
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 142 : (20, 24.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 143 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 144 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xaf
	stx	___fsadd_PARM_2
	ldx	#0xb7
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xdb
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbe
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 146 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 147 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_tancotf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_tancotf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_tancotf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_tancotf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 149 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 150 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	stz	___fsadd_PARM_2
	stz	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 152 : (16, 20.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_tancotf_xden_10000_26
	stx	(_tancotf_xden_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_tancotf_xden_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_tancotf_xden_10000_26 + 3)
;	Raw cost for generated ic 153 : (19, 28.000000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../tancotf.c: 84: if(n&1)
;	genAnd
	lda	_tancotf_n_10000_26
	and	#0x01
;	genIfxJump : z
	bne	00162$
	jmp	00113$
00162$:
;	Raw cost for generated ic 58 : (12, 14.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
;	genIfx
	lda	_tancotf_PARM_2
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 62 : (8, 9.600000) count=0.750000
;	genUminus
;	genUminusFloat
	lda	_tancotf_xnum_10000_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xnum_10000_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xnum_10000_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xnum_10000_26 + 3)
	eor	#0x80
	sta	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 65 : (26, 34.000000) count=0.562500
;	genAssign
;	genCopy
	lda	(_tancotf_xden_10000_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_tancotf_xden_10000_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xden_10000_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_tancotf_xden_10000_26
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 155 : (24, 32.000000) count=0.562500
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 156 : (15, 24.000000) count=0.562500
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_tancotf_sloc2_1_0
	rts
;	Raw cost for generated ic 67 : (11, 15.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.750000
;	../tancotf.c: 88: else return (-xden/xnum);
;	genUminus
;	genUminusFloat
	lda	_tancotf_xden_10000_26
	sta	___fsdiv_PARM_1
	lda	(_tancotf_xden_10000_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	(_tancotf_xden_10000_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xden_10000_26 + 3)
	eor	#0x80
	sta	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 70 : (26, 34.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_tancotf_xnum_10000_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_tancotf_xnum_10000_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xnum_10000_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_tancotf_xnum_10000_26
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 158 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 159 : (15, 24.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_tancotf_sloc2_1_0
	rts
;	Raw cost for generated ic 72 : (11, 15.000000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
;	genIfx
	lda	_tancotf_PARM_2
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 76 : (8, 9.600000) count=1.000000
;	genAssign
;	genCopy
	lda	(_tancotf_xden_10000_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_tancotf_xden_10000_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xden_10000_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_tancotf_xden_10000_26
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 160 : (24, 32.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_tancotf_xnum_10000_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_tancotf_xnum_10000_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xnum_10000_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_tancotf_xnum_10000_26
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 161 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 162 : (15, 24.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_tancotf_sloc2_1_0
	rts
;	Raw cost for generated ic 80 : (11, 15.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	../tancotf.c: 93: else return (xnum/xden);
;	genAssign
;	genCopy
	lda	(_tancotf_xnum_10000_26 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_tancotf_xnum_10000_26 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_tancotf_xnum_10000_26 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_tancotf_xnum_10000_26
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 163 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_tancotf_xden_10000_26 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_tancotf_xden_10000_26 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_tancotf_xden_10000_26 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_tancotf_xden_10000_26
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 164 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_tancotf_sloc2_1_0
	stx	*(_tancotf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_tancotf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_tancotf_sloc2_1_0 + 3)
;	Raw cost for generated ic 165 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_tancotf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_tancotf_sloc2_1_0
;	Raw cost for generated ic 84 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../tancotf.c: 95: }
;	genEndFunction
	rts
;	Raw cost for generated ic 88 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
