;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module asincosf
	
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
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
	.globl _asincosf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_asincosf_PARM_1:
	.ds 4
_asincosf_PARM_2:
	.ds 1
_asincosf_y_10000_26:
	.ds 4
_asincosf_g_10000_26:
	.ds 4
_asincosf_r_10000_26:
	.ds 4
_asincosf_quartPI_10000_26:
	.ds 1
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;sloc0         Allocated with name '_asincosf_sloc0_1_0'
;sloc1         Allocated with name '_asincosf_sloc1_1_0'
;x             Allocated with name '_asincosf_PARM_1'
;isacos        Allocated with name '_asincosf_PARM_2'
;y             Allocated with name '_asincosf_y_10000_26'
;g             Allocated with name '_asincosf_g_10000_26'
;r             Allocated with name '_asincosf_r_10000_26'
;i             Allocated to registers a 
;quartPI       Allocated with name '_asincosf_quartPI_10000_26'
;------------------------------------------------------------
;	../asincosf.c: 47: float asincosf(float x, bool isacos)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_asincosf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../asincosf.c: 51: bool quartPI = isacos;
;	genAssign
;	genCopy
	lda	_asincosf_PARM_2
	sta	_asincosf_quartPI_10000_26
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../asincosf.c: 56: y = fabsf(x);
;	genAssign
;	genCopy
	lda	(_asincosf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_asincosf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_asincosf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_asincosf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 3 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	*_asincosf_sloc0_1_0
	stx	*(_asincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_asincosf_y_10000_26 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(_asincosf_y_10000_26 + 2)
	txa
	sta	(_asincosf_y_10000_26 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	_asincosf_y_10000_26
;	Raw cost for generated ic 5 : (17, 24.000000) count=1.000000
;	../asincosf.c: 57: if (y < EPS)
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_1 + 2)
	txa
	sta	(___fslt_PARM_1 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_1
;	Raw cost for generated ic 120 : (19, 27.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 121 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 122 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 7 : (7, 7.600000) count=1.000000
;	../asincosf.c: 59: r = y;
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(_asincosf_r_10000_26 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(_asincosf_r_10000_26 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(_asincosf_r_10000_26 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	_asincosf_r_10000_26
;	Raw cost for generated ic 10 : (20, 28.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 11 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.250000
;	../asincosf.c: 63: if (y > 0.5)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	stz	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 123 : (14, 18.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 124 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 125 : (3, 6.000000) count=0.250000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00158$
	jmp	00104$
00158$:
;	Raw cost for generated ic 14 : (7, 7.600000) count=0.250000
;	../asincosf.c: 65: quartPI = !isacos;
;	genNot
	lda	_asincosf_quartPI_10000_26
	eor	#0x01
	sta	_asincosf_quartPI_10000_26
;	Raw cost for generated ic 17 : (8, 10.000000) count=0.187500
;	../asincosf.c: 66: if (y > 1.0)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 126 : (16, 20.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 127 : (20, 28.000000) count=0.187500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 128 : (3, 6.000000) count=0.187500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 20 : (7, 7.600000) count=0.187500
;	../asincosf.c: 68: errno = EDOM;
;	genAssign
;	genAssignLit
	ldx	#0x21
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 24 : (8, 10.000000) count=0.140625
;	../asincosf.c: 69: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 25 : (10, 13.000000) count=0.140625
;	genLabel
00102$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.187500
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
;	genAssign
;	genAssignLit
	stz	___fssub_PARM_1
	stz	(___fssub_PARM_1 + 1)
	ldx	#0x80
	stx	(___fssub_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_1 + 3)
;	Raw cost for generated ic 129 : (16, 20.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fssub_PARM_2
;	Raw cost for generated ic 130 : (20, 28.000000) count=0.187500
;	../asincosf.c: 72: g = ldexpf(g, -1);
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	_ldexpf_PARM_1
	stx	(_ldexpf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_ldexpf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_ldexpf_PARM_1 + 3)
;	Raw cost for generated ic 131 : (19, 28.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_ldexpf_PARM_2
	stx	(_ldexpf_PARM_2 + 1)
;	Raw cost for generated ic 30 : (8, 10.000000) count=0.187500
;	genCall
	jsr	_ldexpf
;	assignResultValue
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 31 : (15, 24.000000) count=0.187500
;	genAssign
;	genCopy
	sta	(_asincosf_g_10000_26 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_asincosf_g_10000_26 + 2)
	txa
	sta	(_asincosf_g_10000_26 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	_asincosf_g_10000_26
;	Raw cost for generated ic 32 : (17, 24.000000) count=0.187500
;	../asincosf.c: 73: y = sqrtf(g);
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(_sqrtf_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_sqrtf_PARM_1 + 2)
	txa
	sta	(_sqrtf_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	_sqrtf_PARM_1
;	Raw cost for generated ic 33 : (19, 27.000000) count=0.187500
;	genCall
	jsr	_sqrtf
;	assignResultValue
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 34 : (15, 24.000000) count=0.187500
;	../asincosf.c: 74: y = -(y + y);
;	genAssign
;	genCopy
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	txa
	sta	(___fsadd_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 132 : (17, 24.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	txa
	sta	(___fsadd_PARM_2 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 133 : (19, 27.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 134 : (15, 24.000000) count=0.187500
;	genUminus
;	genUminusFloat
	lda	*_asincosf_sloc1_1_0
	sta	_asincosf_y_10000_26
	txa
	sta	(_asincosf_y_10000_26 + 1)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_asincosf_y_10000_26 + 2)
	lda	*(_asincosf_sloc1_1_0 + 3)
	eor	#0x80
	sta	(_asincosf_y_10000_26 + 3)
;	Raw cost for generated ic 37 : (21, 29.000000) count=0.187500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 39 : (3, 3.000000) count=0.187500
;	genLabel
00104$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.062500
;	../asincosf.c: 78: g = y * y;
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 135 : (20, 28.000000) count=0.062500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 136 : (20, 28.000000) count=0.062500
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_asincosf_g_10000_26
	stx	(_asincosf_g_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_g_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_g_10000_26 + 3)
;	Raw cost for generated ic 137 : (19, 28.000000) count=0.062500
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.250000
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
;	genAssign
;	genAssignLit
	ldx	#0x65
	stx	___fsmul_PARM_1
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x01
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 138 : (20, 24.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_g_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_asincosf_g_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_asincosf_g_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_asincosf_g_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 139 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 140 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0x6b
	stx	___fsadd_PARM_2
	ldx	#0x16
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x6f
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 142 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 143 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_g_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_asincosf_g_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_asincosf_g_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_asincosf_g_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 145 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_asincosf_sloc1_1_0
	stx	*(_asincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_asincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 146 : (15, 24.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_g_10000_26 + 3)
	sta	*(_asincosf_sloc0_1_0 + 3)
	lda	(_asincosf_g_10000_26 + 2)
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	(_asincosf_g_10000_26 + 1)
	sta	*(_asincosf_sloc0_1_0 + 1)
	lda	_asincosf_g_10000_26
	sta	*_asincosf_sloc0_1_0
;	Raw cost for generated ic 47 : (20, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 147 : (20, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0x0b
	stx	___fsadd_PARM_2
	ldx	#0x8d
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb1
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 148 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 149 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_asincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_asincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_asincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 151 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 152 : (19, 28.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xf0
	stx	___fsadd_PARM_2
	ldx	#0x50
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xb3
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x40
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 154 : (20, 24.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 155 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 156 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 158 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_y_10000_26 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	(_asincosf_y_10000_26 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_asincosf_y_10000_26 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	_asincosf_y_10000_26
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 159 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 161 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_y_10000_26 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_asincosf_y_10000_26 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_asincosf_y_10000_26 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_asincosf_y_10000_26
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 162 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_asincosf_r_10000_26
	stx	(_asincosf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_10000_26 + 3)
;	Raw cost for generated ic 164 : (19, 28.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../asincosf.c: 82: i = quartPI;
;	genCast
;	genCopy
	lda	_asincosf_quartPI_10000_26
;	Raw cost for generated ic 56 : (3, 4.000000) count=1.000000
;	../asincosf.c: 83: if (isacos)
;	genIfx
	ldy	_asincosf_PARM_2
;	genIfxJump : z
	bne	00163$
	jmp	00115$
00163$:
;	Raw cost for generated ic 58 : (8, 9.600000) count=1.000000
;	../asincosf.c: 85: if (x < 0.0)
;	genAssign
;	genCopy
	ldx	(_asincosf_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 3)
	ldx	(_asincosf_PARM_1 + 2)
	stx	(___fslt_PARM_1 + 2)
	ldx	(_asincosf_PARM_1 + 1)
	stx	(___fslt_PARM_1 + 1)
	ldx	_asincosf_PARM_1
	stx	___fslt_PARM_1
;	Raw cost for generated ic 165 : (24, 32.000000) count=0.750000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 166 : (12, 16.000000) count=0.750000
;	genCall
	pha
	jsr	___fslt
;	assignResultValue
	tax
	pla
;	Raw cost for generated ic 167 : (6, 15.000000) count=0.750000
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00165$
	jmp	00110$
00165$:
;	Raw cost for generated ic 62 : (7, 7.600000) count=0.750000
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 66 : (2, 2.000000) count=0.562500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 67 : (10, 20.000000) count=0.562500
;	genAssign
;	genCopy
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_b_10000_26 savea=0
	clc
	adc	#<(_asincosf_b_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_b_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 69 : (31, 54.000000) count=0.562500
;	genAssign
;	genCopy
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 168 : (18, 25.000000) count=0.562500
;	genAssign
;	genCopy
	lda	(_asincosf_r_10000_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	(_asincosf_r_10000_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_asincosf_r_10000_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	_asincosf_r_10000_26
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 169 : (24, 32.000000) count=0.562500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 170 : (19, 28.000000) count=0.562500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 172 : (20, 28.000000) count=0.562500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_asincosf_r_10000_26
	stx	(_asincosf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_10000_26 + 3)
;	Raw cost for generated ic 173 : (19, 28.000000) count=0.562500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 78 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.187500
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.187500
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 81 : (2, 2.000000) count=0.187500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 82 : (10, 20.000000) count=0.187500
;	genAssign
;	genCopy
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.187500
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_a_10000_26 savea=0
	clc
	adc	#<(_asincosf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 84 : (31, 54.000000) count=0.187500
;	genAssign
;	genCopy
	sta	(___fssub_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 174 : (18, 25.000000) count=0.187500
;	genAssign
;	genCopy
	lda	(_asincosf_r_10000_26 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	(_asincosf_r_10000_26 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	(_asincosf_r_10000_26 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	_asincosf_r_10000_26
	sta	___fssub_PARM_2
;	Raw cost for generated ic 175 : (24, 32.000000) count=0.187500
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 176 : (19, 28.000000) count=0.187500
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 178 : (20, 28.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_asincosf_r_10000_26
	stx	(_asincosf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_10000_26 + 3)
;	Raw cost for generated ic 179 : (19, 28.000000) count=0.187500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 94 : (3, 3.000000) count=0.187500
;	genLabel
00115$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.250000
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.250000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 97 : (2, 2.000000) count=0.250000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 98 : (10, 20.000000) count=0.250000
;	genAssign
;	genCopy
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.250000
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_a_10000_26 savea=0
	clc
	adc	#<(_asincosf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_asincosf_sloc1_1_0
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_asincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 100 : (31, 54.000000) count=0.250000
;	genAssign
;	genCopy
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 180 : (18, 25.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_asincosf_r_10000_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	(_asincosf_r_10000_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_asincosf_r_10000_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	_asincosf_r_10000_26
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 181 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 182 : (19, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_asincosf_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 184 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_asincosf_r_10000_26
	stx	(_asincosf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_asincosf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_asincosf_r_10000_26 + 3)
;	Raw cost for generated ic 185 : (19, 28.000000) count=0.250000
;	../asincosf.c: 93: if (x < 0.0)
;	genAssign
;	genCopy
	lda	(_asincosf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_asincosf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_asincosf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_asincosf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 186 : (24, 32.000000) count=0.250000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 187 : (12, 16.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 188 : (3, 6.000000) count=0.250000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00116$
;	Raw cost for generated ic 110 : (7, 7.600000) count=0.250000
;	../asincosf.c: 94: r = -r;
;	genUminus
;	genUminusFloat
	lda	(_asincosf_r_10000_26 + 3)
	eor	#0x80
	sta	(_asincosf_r_10000_26 + 3)
;	Raw cost for generated ic 113 : (8, 10.000000) count=0.187500
;	genLabel
00116$:
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	../asincosf.c: 96: return r;
;	genRet
	lda	(_asincosf_r_10000_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_asincosf_r_10000_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_asincosf_r_10000_26 + 1)
	lda	_asincosf_r_10000_26
;	Raw cost for generated ic 117 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	../asincosf.c: 97: }
;	genEndFunction
	rts
;	Raw cost for generated ic 119 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
_asincosf_a_10000_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area CODE
	.area RODATA
_asincosf_b_10000_26:
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area CODE
	.area XINIT
	.area CABS    (ABS)
