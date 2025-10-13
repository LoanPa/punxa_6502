;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module expf
	
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
	.globl _ldexpf
	.globl _expf_PARM_1
	.globl _expf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_expf_sloc0_1_0:
	.ds 4
_expf_sloc1_1_0:
	.ds 2
_expf_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_expf_PARM_1:
	.ds 4
_expf_r_10000_26:
	.ds 4
_expf_y_10000_26:
	.ds 4
_expf_sign_10000_26:
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;sloc0         Allocated with name '_expf_sloc0_1_0'
;sloc1         Allocated with name '_expf_sloc1_1_0'
;sloc2         Allocated with name '_expf_sloc2_1_0'
;x             Allocated with name '_expf_PARM_1'
;n             Allocated to registers 
;xn            Allocated with name '_expf_xn_10000_26'
;g             Allocated with name '_expf_g_10000_26'
;r             Allocated with name '_expf_r_10000_26'
;z             Allocated with name '_expf_z_10000_26'
;y             Allocated with name '_expf_y_10000_26'
;sign          Allocated with name '_expf_sign_10000_26'
;------------------------------------------------------------
;	../expf.c: 331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_expf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../expf.c: 337: if(x>=0.0)
;	genAssign
;	genCopy
	lda	(_expf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_expf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_expf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_expf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 92 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 93 : (14, 18.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 94 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	../expf.c: 338: { y=x;  sign=0; }
;	genAssign
;	genCopy
	lda	(_expf_PARM_1 + 3)
	sta	(_expf_y_10000_26 + 3)
	lda	(_expf_PARM_1 + 2)
	sta	(_expf_y_10000_26 + 2)
	lda	(_expf_PARM_1 + 1)
	sta	(_expf_y_10000_26 + 1)
	lda	_expf_PARM_1
	sta	_expf_y_10000_26
;	Raw cost for generated ic 6 : (24, 32.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_expf_sign_10000_26
;	Raw cost for generated ic 7 : (5, 6.000000) count=0.750000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 8 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.250000
;	../expf.c: 340: { y=-x; sign=1; }
;	genUminus
;	genUminusFloat
	lda	_expf_PARM_1
	sta	_expf_y_10000_26
	lda	(_expf_PARM_1 + 1)
	sta	(_expf_y_10000_26 + 1)
	lda	(_expf_PARM_1 + 2)
	sta	(_expf_y_10000_26 + 2)
	lda	(_expf_PARM_1 + 3)
	eor	#0x80
	sta	(_expf_y_10000_26 + 3)
;	Raw cost for generated ic 10 : (26, 34.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_expf_sign_10000_26
;	Raw cost for generated ic 12 : (5, 6.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
;	genAssign
;	genCopy
	lda	(_expf_y_10000_26 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_expf_y_10000_26 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_expf_y_10000_26 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_expf_y_10000_26
	sta	___fslt_PARM_1
;	Raw cost for generated ic 95 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x95
	stx	___fslt_PARM_2
	ldx	#0xbf
	stx	(___fslt_PARM_2 + 1)
	ldx	#0xd6
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x33
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 96 : (20, 24.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 97 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 18 : (14, 17.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../expf.c: 344: if(y>BIGX)
;	genAssign
;	genAssignLit
	ldx	#0x18
	stx	___fslt_PARM_1
	ldx	#0x72
	stx	(___fslt_PARM_1 + 1)
	ldx	#0xb1
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x42
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 98 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_expf_y_10000_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_expf_y_10000_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_expf_y_10000_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_expf_y_10000_26
	sta	___fslt_PARM_2
;	Raw cost for generated ic 99 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 100 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 21 : (7, 7.600000) count=1.000000
;	../expf.c: 346: if(sign)
;	genIfx
	lda	_expf_sign_10000_26
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 24 : (8, 9.600000) count=0.750000
;	../expf.c: 348: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 28 : (10, 12.000000) count=0.562500
;	../expf.c: 350: ;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 29 : (12, 15.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.750000
;	../expf.c: 354: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 32 : (10, 13.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../expf.c: 358: z=y*K1;
;	genAssign
;	genAssignLit
	ldx	#0x3b
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xb8
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 101 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_expf_y_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_expf_y_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_expf_y_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_expf_y_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 102 : (24, 32.000000) count=1.000000
;	../expf.c: 359: n=z;
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_expf_sloc0_1_0
	stx	*(_expf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc0_1_0 + 3)
;	Raw cost for generated ic 103 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fs2sint_PARM_1 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	txa
	sta	(___fs2sint_PARM_1 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fs2sint_PARM_1
;	Raw cost for generated ic 104 : (17, 24.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
	sta	*_expf_sloc1_1_0
	stx	*(_expf_sloc1_1_0 + 1)
;	Raw cost for generated ic 105 : (7, 12.000000) count=1.000000
;	../expf.c: 361: if(n<0) --n;
;	genCmp
	bit	*(_expf_sloc1_1_0 + 1)
	bpl	00112$
;	Raw cost for generated ic 39 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	bne	00178$
	dec	*(_expf_sloc1_1_0 + 1)
00178$:
	dec	*_expf_sloc1_1_0
;	Raw cost for generated ic 43 : (6, 12.600000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	../expf.c: 362: if(z-n>=0.5) ++n;
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	*(_expf_sloc1_1_0 + 1)
	lda	*_expf_sloc1_1_0
	jsr	___sint2fs
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 107 : (23, 34.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_expf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 108 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fslt_PARM_1
	stx	(___fslt_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 110 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 112 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 113 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 49 : (7, 7.600000) count=1.000000
;	genPlus
;	  genPlusInc
	inc	*_expf_sloc1_1_0
	bne	00181$
	inc	*(_expf_sloc1_1_0 + 1)
00181$:
;	Raw cost for generated ic 52 : (6, 12.600000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../expf.c: 363: xn=n;
;	Raw cost for generated ic 114 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	*(_expf_sloc1_1_0 + 1)
	lda	*_expf_sloc1_1_0
	jsr	___sint2fs
;	assignResultValue
	sta	*_expf_sloc0_1_0
	stx	*(_expf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc0_1_0 + 3)
;	Raw cost for generated ic 115 : (19, 30.000000) count=1.000000
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsmul_PARM_1
	ldx	#0x80
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x31
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 116 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_expf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 117 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 118 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_expf_y_10000_26 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	(_expf_y_10000_26 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_expf_y_10000_26 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	_expf_y_10000_26
	sta	___fssub_PARM_1
;	Raw cost for generated ic 119 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_expf_sloc2_1_0
	stx	*(_expf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc2_1_0 + 3)
;	Raw cost for generated ic 121 : (15, 24.000000) count=1.000000
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
;	Raw cost for generated ic 122 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_expf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 123 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 124 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_expf_sloc2_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 125 : (20, 28.000000) count=1.000000
;	../expf.c: 365: z=g*g;
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_expf_sloc2_1_0
	stx	*(_expf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc2_1_0 + 3)
;	Raw cost for generated ic 127 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	txa
	sta	(___fsmul_PARM_1 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 128 : (17, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	txa
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 129 : (19, 27.000000) count=1.000000
;	../expf.c: 366: r=P(z)*g;
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_expf_sloc0_1_0
	stx	*(_expf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc0_1_0 + 3)
;	Raw cost for generated ic 130 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	___fsmul_PARM_1
	ldx	#0x53
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x88
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3b
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 131 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_expf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 132 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 133 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsadd_PARM_2
	sty	(___fsadd_PARM_2 + 1)
	ldx	#0x80
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3e
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 135 : (18, 22.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 136 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_expf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 138 : (20, 28.000000) count=1.000000
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_expf_sloc2_1_0
	stx	*(_expf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc2_1_0 + 3)
;	Raw cost for generated ic 139 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x5b
	stx	___fsmul_PARM_1
	ldx	#0xbf
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x4c
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 140 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_expf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_expf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_expf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 141 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 142 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsadd_PARM_2
	sty	(___fsadd_PARM_2 + 1)
	sty	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 144 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fssub_PARM_1
	stx	(___fssub_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_1 + 3)
;	Raw cost for generated ic 145 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_expf_sloc2_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fssub_PARM_2
;	Raw cost for generated ic 147 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 148 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_expf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 149 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 151 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsadd_PARM_2
	sty	(___fsadd_PARM_2 + 1)
	sty	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 153 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_expf_r_10000_26
	stx	(_expf_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_expf_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_expf_r_10000_26 + 3)
;	Raw cost for generated ic 154 : (19, 28.000000) count=1.000000
;	../expf.c: 369: n++;
;	genPlus
;	  genPlusInc
	lda	*_expf_sloc1_1_0
	clc
	adc	#0x01
	sta	_ldexpf_PARM_2
	lda	*(_expf_sloc1_1_0 + 1)
	adc	#0x00
	sta	(_ldexpf_PARM_2 + 1)
;	Raw cost for generated ic 75 : (15, 20.000000) count=1.000000
;	../expf.c: 370: z=ldexpf(r, n);
;	genAssign
;	genCopy
	lda	(_expf_r_10000_26 + 3)
	sta	(_ldexpf_PARM_1 + 3)
	lda	(_expf_r_10000_26 + 2)
	sta	(_ldexpf_PARM_1 + 2)
	txa
	sta	(_ldexpf_PARM_1 + 1)
	lda	_expf_r_10000_26
	sta	_ldexpf_PARM_1
;	Raw cost for generated ic 77 : (22, 30.000000) count=1.000000
;	genCall
	jsr	_ldexpf
;	assignResultValue
	sta	*_expf_sloc2_1_0
	stx	*(_expf_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc2_1_0 + 3)
;	Raw cost for generated ic 79 : (15, 24.000000) count=1.000000
;	../expf.c: 371: if(sign)
;	genIfx
	lda	_expf_sign_10000_26
;	genIfxJump : z
	beq	00116$
;	Raw cost for generated ic 81 : (8, 9.600000) count=1.000000
;	../expf.c: 372: return 1.0/z;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsdiv_PARM_1
	sty	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 155 : (18, 22.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_expf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	*(_expf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_expf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*_expf_sloc2_1_0
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 156 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_expf_sloc0_1_0
	stx	*(_expf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_expf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_expf_sloc0_1_0 + 3)
;	Raw cost for generated ic 157 : (15, 24.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_expf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_expf_sloc0_1_0
	rts
;	Raw cost for generated ic 85 : (11, 15.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../expf.c: 374: return z;
;	genRet
	lda	*(_expf_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_expf_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_expf_sloc2_1_0 + 1)
	lda	*_expf_sloc2_1_0
;	Raw cost for generated ic 88 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	../expf.c: 375: }
;	genEndFunction
	rts
;	Raw cost for generated ic 91 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
