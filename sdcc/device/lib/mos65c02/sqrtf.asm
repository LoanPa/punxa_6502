;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sqrtf
	
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
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf_PARM_1
	.globl _sqrtf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sqrtf_sloc0_1_0:
	.ds 4
_sqrtf_sloc1_1_0:
	.ds 4
_sqrtf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sqrtf_PARM_1:
	.ds 4
_sqrtf_y_10000_26:
	.ds 4
_sqrtf_n_10000_26:
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
;Allocation info for local variables in function 'sqrtf'
;------------------------------------------------------------
;sloc0         Allocated with name '_sqrtf_sloc0_1_0'
;sloc1         Allocated with name '_sqrtf_sloc1_1_0'
;sloc2         Allocated with name '_sqrtf_sloc2_1_0'
;x             Allocated with name '_sqrtf_PARM_1'
;f             Allocated with name '_sqrtf_f_10000_26'
;y             Allocated with name '_sqrtf_y_10000_26'
;n             Allocated with name '_sqrtf_n_10000_26'
;------------------------------------------------------------
;	../sqrtf.c: 37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sqrtf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 42: if (x==0.0) return x;
;	genIfx
	lda	(_sqrtf_PARM_1 + 3)
	and	#0x7F
	ora	(_sqrtf_PARM_1 + 2)
	ora	(_sqrtf_PARM_1 + 1)
	ora	_sqrtf_PARM_1
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genRet
	lda	(_sqrtf_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_sqrtf_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_sqrtf_PARM_1 + 1)
	lda	_sqrtf_PARM_1
	rts
;	Raw cost for generated ic 5 : (19, 25.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 43: else if (x==1.0) return 1.0;
;	genAssign
;	genCopy
	lda	(_sqrtf_PARM_1 + 3)
	sta	(___fseq_PARM_1 + 3)
	lda	(_sqrtf_PARM_1 + 2)
	sta	(___fseq_PARM_1 + 2)
	lda	(_sqrtf_PARM_1 + 1)
	sta	(___fseq_PARM_1 + 1)
	lda	_sqrtf_PARM_1
	sta	___fseq_PARM_1
;	Raw cost for generated ic 65 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fseq_PARM_2
	stz	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fseq_PARM_2 + 3)
;	Raw cost for generated ic 66 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fseq
;	assignResultValue
;	Raw cost for generated ic 67 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 9 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 44: else if (x<0.0)
;	genAssign
;	genCopy
	lda	(_sqrtf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_sqrtf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sqrtf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_sqrtf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 68 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 69 : (12, 16.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 70 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 16 : (7, 7.600000) count=1.000000
;	../sqrtf.c: 46: errno=EDOM;
;	genAssign
;	genAssignLit
	ldx	#0x21
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 20 : (8, 10.000000) count=0.750000
;	../sqrtf.c: 47: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 21 : (10, 13.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 49: f=frexpf(x, &n);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_sqrtf_n_10000_26
	sta	(_frexpf_PARM_2 + 1)
	lda	#_sqrtf_n_10000_26
	sta	_frexpf_PARM_2
;	Raw cost for generated ic 26 : (10, 12.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sqrtf_PARM_1 + 3)
	sta	(_frexpf_PARM_1 + 3)
	lda	(_sqrtf_PARM_1 + 2)
	sta	(_frexpf_PARM_1 + 2)
	lda	(_sqrtf_PARM_1 + 1)
	sta	(_frexpf_PARM_1 + 1)
	lda	_sqrtf_PARM_1
	sta	_frexpf_PARM_1
;	Raw cost for generated ic 27 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_frexpf
;	assignResultValue
	sta	*_sqrtf_sloc0_1_0
	stx	*(_sqrtf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc0_1_0 + 3)
;	Raw cost for generated ic 29 : (15, 24.000000) count=1.000000
;	../sqrtf.c: 50: y=0.41731+0.59016*f; /*Educated guess*/
;	genAssign
;	genAssignLit
	ldx	#0xba
	stx	___fsmul_PARM_1
	ldx	#0x14
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x17
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 71 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sqrtf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sqrtf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sqrtf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 72 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 73 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0xa8
	stx	___fsadd_PARM_2
	inx
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xd5
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3e
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 75 : (19, 24.000000) count=1.000000
;	../sqrtf.c: 52: y+=f/y;
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_sqrtf_sloc1_1_0
	stx	*(_sqrtf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc1_1_0 + 3)
;	Raw cost for generated ic 76 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_sqrtf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_sqrtf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_sqrtf_sloc0_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 77 : (20, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc1_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	*(_sqrtf_sloc1_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	txa
	sta	(___fsdiv_PARM_2 + 1)
	lda	*_sqrtf_sloc1_1_0
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 78 : (19, 27.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 79 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sqrtf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sqrtf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sqrtf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 80 : (20, 28.000000) count=1.000000
;	../sqrtf.c: 53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_sqrtf_sloc1_1_0
	stx	*(_sqrtf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc1_1_0 + 3)
;	Raw cost for generated ic 82 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_ldexpf_PARM_1 + 3)
	lda	*(_sqrtf_sloc1_1_0 + 2)
	sta	(_ldexpf_PARM_1 + 2)
	txa
	sta	(_ldexpf_PARM_1 + 1)
	lda	*_sqrtf_sloc1_1_0
	sta	_ldexpf_PARM_1
;	Raw cost for generated ic 37 : (17, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0xfe
	stx	_ldexpf_PARM_2
	inx
	stx	(_ldexpf_PARM_2 + 1)
;	Raw cost for generated ic 38 : (9, 12.000000) count=1.000000
;	genCall
	jsr	_ldexpf
;	assignResultValue
	sta	*_sqrtf_sloc2_1_0
	stx	*(_sqrtf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc2_1_0 + 3)
;	Raw cost for generated ic 39 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_sqrtf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_sqrtf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_sqrtf_sloc0_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 83 : (20, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc1_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	*(_sqrtf_sloc1_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_sqrtf_sloc1_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*_sqrtf_sloc1_1_0
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 84 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 85 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sqrtf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sqrtf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sqrtf_sloc2_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 86 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_sqrtf_sloc2_1_0
	stx	*(_sqrtf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc2_1_0 + 3)
;	Raw cost for generated ic 88 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_sqrtf_y_10000_26 + 3)
	lda	*(_sqrtf_sloc2_1_0 + 2)
	sta	(_sqrtf_y_10000_26 + 2)
	txa
	sta	(_sqrtf_y_10000_26 + 1)
	lda	*_sqrtf_sloc2_1_0
	sta	_sqrtf_y_10000_26
;	Raw cost for generated ic 42 : (17, 24.000000) count=1.000000
;	../sqrtf.c: 55: if (n&1)
;	genAnd
	lda	_sqrtf_n_10000_26
	and	#0x01
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 43 : (12, 14.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 57: y*=0.7071067812;
;	genAssign
;	genAssignLit
	ldx	#0xf3
	stx	___fsmul_PARM_1
	ldx	#0x04
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x35
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 89 : (20, 24.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sqrtf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sqrtf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sqrtf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sqrtf_sloc2_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 90 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_sqrtf_y_10000_26
	stx	(_sqrtf_y_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sqrtf_y_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sqrtf_y_10000_26 + 3)
;	Raw cost for generated ic 91 : (19, 28.000000) count=0.750000
;	../sqrtf.c: 58: ++n;
;	genPlus
;	  genPlusInc
	inc	_sqrtf_n_10000_26
	bne	00152$
	inc	(_sqrtf_n_10000_26 + 1)
00152$:
;	Raw cost for generated ic 49 : (8, 14.600000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 60: return ldexpf(y, n/2);
;	genAssign
;	genCopy
	lda	(_sqrtf_n_10000_26 + 1)
	sta	*(_sqrtf_sloc2_1_0 + 1)
	lda	_sqrtf_n_10000_26
	sta	*_sqrtf_sloc2_1_0
;	Raw cost for generated ic 52 : (10, 14.000000) count=1.000000
;	genCmp
	bit	*(_sqrtf_sloc2_1_0 + 1)
	bpl	00113$
;	Raw cost for generated ic 53 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genPlus
;	  genPlusInc
	inc	*_sqrtf_sloc2_1_0
	bne	00154$
	inc	*(_sqrtf_sloc2_1_0 + 1)
00154$:
;	Raw cost for generated ic 55 : (6, 12.600000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	ldx	*(_sqrtf_sloc2_1_0 + 1)
	lda	*_sqrtf_sloc2_1_0
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_ldexpf_PARM_2
	stx	(_ldexpf_PARM_2 + 1)
;	Raw cost for generated ic 58 : (19, 29.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sqrtf_y_10000_26 + 3)
	sta	(_ldexpf_PARM_1 + 3)
	lda	(_sqrtf_y_10000_26 + 2)
	sta	(_ldexpf_PARM_1 + 2)
	lda	(_sqrtf_y_10000_26 + 1)
	sta	(_ldexpf_PARM_1 + 1)
	lda	_sqrtf_y_10000_26
	sta	_ldexpf_PARM_1
;	Raw cost for generated ic 59 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_ldexpf
;	assignResultValue
	sta	*_sqrtf_sloc2_1_0
	stx	*(_sqrtf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sqrtf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sqrtf_sloc2_1_0 + 3)
;	Raw cost for generated ic 61 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_sqrtf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_sqrtf_sloc2_1_0
;	Raw cost for generated ic 62 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 61: }
;	genEndFunction
	rts
;	Raw cost for generated ic 64 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
