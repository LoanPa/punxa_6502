;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sincosf
	
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
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
	.globl _sincosf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sincosf_PARM_1:
	.ds 4
_sincosf_PARM_2:
	.ds 1
_sincosf_y_10000_26:
	.ds 4
_sincosf_f_10000_26:
	.ds 4
_sincosf_XN_10000_26:
	.ds 4
_sincosf_sign_10000_26:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0         Allocated with name '_sincosf_sloc0_1_0'
;sloc1         Allocated with name '_sincosf_sloc1_1_0'
;x             Allocated with name '_sincosf_PARM_1'
;iscos         Allocated with name '_sincosf_PARM_2'
;y             Allocated with name '_sincosf_y_10000_26'
;f             Allocated with name '_sincosf_f_10000_26'
;r             Allocated with name '_sincosf_r_10000_26'
;g             Allocated with name '_sincosf_g_10000_26'
;XN            Allocated with name '_sincosf_XN_10000_26'
;N             Allocated to registers a x 
;sign          Allocated with name '_sincosf_sign_10000_26'
;------------------------------------------------------------
;	../sincosf.c: 50: float sincosf(float x, bool iscos)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincosf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../sincosf.c: 56: if(iscos)
;	genIfx
	lda	_sincosf_PARM_2
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	../sincosf.c: 58: y=fabsf(x)+HALF_PI;
;	genAssign
;	genCopy
	lda	(_sincosf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_sincosf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 5 : (24, 32.000000) count=0.750000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 6 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0xdb
	stx	___fsadd_PARM_2
	ldx	#0x0f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xc9
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 95 : (20, 24.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_sincosf_y_10000_26
	stx	(_sincosf_y_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_y_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_y_10000_26 + 3)
;	Raw cost for generated ic 96 : (19, 28.000000) count=0.750000
;	../sincosf.c: 59: sign=0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_sincosf_sign_10000_26
;	Raw cost for generated ic 9 : (5, 6.000000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 10 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.250000
;	../sincosf.c: 63: if(x<0.0)
;	genAssign
;	genCopy
	lda	(_sincosf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_sincosf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 97 : (24, 32.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 98 : (14, 18.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 99 : (3, 6.000000) count=0.250000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (7, 7.600000) count=0.250000
;	../sincosf.c: 64: { y=-x; sign=1; }
;	genUminus
;	genUminusFloat
	lda	_sincosf_PARM_1
	sta	_sincosf_y_10000_26
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_10000_26 + 1)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_10000_26 + 2)
	lda	(_sincosf_PARM_1 + 3)
	eor	#0x80
	sta	(_sincosf_y_10000_26 + 3)
;	Raw cost for generated ic 16 : (26, 34.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_sincosf_sign_10000_26
;	Raw cost for generated ic 18 : (5, 6.000000) count=0.187500
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 19 : (3, 3.000000) count=0.187500
;	genLabel
00102$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.062500
;	../sincosf.c: 66: { y=x; sign=0; }
;	genAssign
;	genCopy
	lda	(_sincosf_PARM_1 + 3)
	sta	(_sincosf_y_10000_26 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_10000_26 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_10000_26 + 1)
	lda	_sincosf_PARM_1
	sta	_sincosf_y_10000_26
;	Raw cost for generated ic 21 : (24, 32.000000) count=0.062500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_sincosf_sign_10000_26
;	Raw cost for generated ic 22 : (5, 6.000000) count=0.062500
;	genLabel
00106$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../sincosf.c: 69: if(y>YMAX)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_1
	ldx	#0x0c
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x49
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x46
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 100 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sincosf_y_10000_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_sincosf_y_10000_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincosf_y_10000_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_sincosf_y_10000_26
	sta	___fslt_PARM_2
;	Raw cost for generated ic 101 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 102 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 26 : (7, 7.600000) count=1.000000
;	../sincosf.c: 71: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 30 : (10, 12.000000) count=0.750000
;	../sincosf.c: 72: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 31 : (9, 13.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../sincosf.c: 76: N=((y*iPI)+0.5); /*y is positive*/
;	genAssign
;	genAssignLit
	ldx	#0x83
	stx	___fsmul_PARM_1
	ldx	#0xf9
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0xa2
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3e
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 103 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sincosf_y_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_sincosf_y_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_y_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_sincosf_y_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 104 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 105 : (19, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsadd_PARM_2
	sty	(___fsadd_PARM_2 + 1)
	sty	(___fsadd_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 107 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fs2sint_PARM_1
	stx	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2sint_PARM_1 + 3)
;	Raw cost for generated ic 108 : (19, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
;	Raw cost for generated ic 110 : (3, 6.000000) count=1.000000
;	../sincosf.c: 79: if(N&1) sign=!sign;
;	genAnd
	sta	*(REGTEMP+0)
	and	#0x01
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 37 : (15, 23.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genNot
	pha
	lda	_sincosf_sign_10000_26
	eor	#0x01
	sta	_sincosf_sign_10000_26
	pla
;	Raw cost for generated ic 41 : (10, 17.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../sincosf.c: 81: XN=N;
;	Raw cost for generated ic 111 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 112 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_sincosf_XN_10000_26 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(_sincosf_XN_10000_26 + 2)
	txa
	sta	(_sincosf_XN_10000_26 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	_sincosf_XN_10000_26
;	Raw cost for generated ic 45 : (17, 24.000000) count=1.000000
;	../sincosf.c: 83: if(iscos) XN-=0.5;
;	genIfx
	lda	_sincosf_PARM_2
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 46 : (8, 9.600000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	txa
	sta	(___fssub_PARM_1 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 113 : (19, 27.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fssub_PARM_2
	sty	(___fssub_PARM_2 + 1)
	sty	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 114 : (16, 20.000000) count=0.750000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	_sincosf_XN_10000_26
	stx	(_sincosf_XN_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_XN_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_XN_10000_26 + 3)
;	Raw cost for generated ic 115 : (19, 28.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	../sincosf.c: 85: y=fabsf(x);
;	genAssign
;	genCopy
	lda	(_sincosf_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_sincosf_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 52 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 53 : (15, 24.000000) count=1.000000
;	../sincosf.c: 86: r=(int)y;
;	genAssign
;	genCopy
	sta	(___fs2sint_PARM_1 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	txa
	sta	(___fs2sint_PARM_1 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fs2sint_PARM_1
;	Raw cost for generated ic 116 : (17, 24.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
;	Raw cost for generated ic 117 : (3, 6.000000) count=1.000000
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 119 : (15, 24.000000) count=1.000000
;	../sincosf.c: 87: g=y-r;
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 120 : (20, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	txa
	sta	(___fssub_PARM_2 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_2
;	Raw cost for generated ic 121 : (19, 27.000000) count=1.000000
;	../sincosf.c: 88: f=((r-XN*C1)+g)-XN*C2;
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 122 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsmul_PARM_1
	sty	(___fsmul_PARM_1 + 1)
	ldx	#0x49
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x40
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 123 : (18, 22.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sincosf_XN_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_sincosf_XN_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_XN_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_sincosf_XN_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 124 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 125 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 126 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 128 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 130 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 131 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	___fsmul_PARM_1
	ldx	#0xaa
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x7d
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3a
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 132 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sincosf_XN_10000_26 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_sincosf_XN_10000_26 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincosf_XN_10000_26 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_sincosf_XN_10000_26
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 133 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fssub_PARM_2
	stx	(___fssub_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fssub_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 134 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
;	Raw cost for generated ic 135 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_sincosf_sloc1_1_0
	stx	*(_sincosf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 137 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(_sincosf_f_10000_26 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(_sincosf_f_10000_26 + 2)
	txa
	sta	(_sincosf_f_10000_26 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	_sincosf_f_10000_26
;	Raw cost for generated ic 65 : (17, 24.000000) count=1.000000
;	../sincosf.c: 90: g=f*f;
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	txa
	sta	(___fsmul_PARM_1 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 138 : (19, 27.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	txa
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 139 : (19, 27.000000) count=1.000000
;	../sincosf.c: 91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_sincosf_sloc0_1_0
	stx	*(_sincosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 140 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0xf3
	stx	___fslt_PARM_1
	ldx	#0xff
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x7f
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x33
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 141 : (20, 24.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fslt_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 142 : (18, 25.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 143 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00173$
	jmp	00114$
00173$:
;	Raw cost for generated ic 69 : (7, 7.600000) count=1.000000
;	../sincosf.c: 93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
;	genAssign
;	genAssignLit
	ldx	#0x5b
	stx	___fsmul_PARM_1
	ldx	#0x9c
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x2e
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x36
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 144 : (20, 24.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 145 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 146 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	___fsadd_PARM_2
	ldx	#0xb2
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x4f
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xb9
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 148 : (20, 24.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 149 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 151 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 152 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0x3e
	stx	___fsadd_PARM_2
	ldx	#0x87
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x08
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0x3c
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 154 : (20, 24.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 155 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 157 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 158 : (19, 28.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0xa4
	stx	___fsadd_PARM_2
	ldx	#0xaa
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x2a
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xbe
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 160 : (20, 24.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 161 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 163 : (20, 28.000000) count=0.750000
;	../sincosf.c: 94: f+=f*r;
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 164 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 165 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 167 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sincosf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 168 : (20, 28.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_sincosf_f_10000_26
	stx	(_sincosf_f_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincosf_f_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincosf_f_10000_26 + 3)
;	Raw cost for generated ic 170 : (19, 28.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	../sincosf.c: 96: return (sign?-f:f);
;	genIfx
	lda	_sincosf_sign_10000_26
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 84 : (8, 9.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	_sincosf_f_10000_26
	sta	*_sincosf_sloc1_1_0
	lda	(_sincosf_f_10000_26 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	(_sincosf_f_10000_26 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_10000_26 + 3)
	eor	#0x80
	sta	*(_sincosf_sloc1_1_0 + 3)
;	Raw cost for generated ic 85 : (22, 30.000000) count=0.750000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 87 : (3, 3.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_sincosf_f_10000_26 + 3)
	sta	*(_sincosf_sloc1_1_0 + 3)
	lda	(_sincosf_f_10000_26 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_10000_26 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	_sincosf_f_10000_26
	sta	*_sincosf_sloc1_1_0
;	Raw cost for generated ic 89 : (20, 28.000000) count=0.250000
;	genLabel
00118$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	genRet
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_sincosf_sloc1_1_0 + 1)
	lda	*_sincosf_sloc1_1_0
;	Raw cost for generated ic 91 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	../sincosf.c: 97: }
;	genEndFunction
	rts
;	Raw cost for generated ic 93 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
