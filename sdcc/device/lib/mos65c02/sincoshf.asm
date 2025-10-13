;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sincoshf
	
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
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
	.globl _sincoshf_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_sincoshf_PARM_1:
	.ds 4
_sincoshf_PARM_2:
	.ds 1
_sincoshf_y_10000_26:
	.ds 4
_sincoshf_w_10000_26:
	.ds 4
_sincoshf_z_10000_26:
	.ds 4
_sincoshf_sign_10000_26:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0         Allocated with name '_sincoshf_sloc0_1_0'
;sloc1         Allocated with name '_sincoshf_sloc1_1_0'
;x             Allocated with name '_sincoshf_PARM_1'
;iscosh        Allocated with name '_sincoshf_PARM_2'
;y             Allocated with name '_sincoshf_y_10000_26'
;w             Allocated with name '_sincoshf_w_10000_26'
;z             Allocated with name '_sincoshf_z_10000_26'
;sign          Allocated with name '_sincoshf_sign_10000_26'
;------------------------------------------------------------
;	../sincoshf.c: 56: float sincoshf(float x, bool iscosh)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincoshf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 61: if (x<0.0) { y=-x; sign=1; }
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_sincoshf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 91 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 92 : (12, 16.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 93 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	_sincoshf_PARM_1
	sta	_sincoshf_y_10000_26
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_10000_26 + 1)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_10000_26 + 2)
	lda	(_sincoshf_PARM_1 + 3)
	eor	#0x80
	sta	(_sincoshf_y_10000_26 + 3)
;	Raw cost for generated ic 6 : (26, 34.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_sincoshf_sign_10000_26
;	Raw cost for generated ic 8 : (5, 6.000000) count=0.750000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	../sincoshf.c: 62: else { y=x;  sign=0; }
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_y_10000_26 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_10000_26 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_10000_26 + 1)
	lda	_sincoshf_PARM_1
	sta	_sincoshf_y_10000_26
;	Raw cost for generated ic 11 : (24, 32.000000) count=0.250000
;	genAssign
;	genAssignLit
	stz	_sincoshf_sign_10000_26
;	Raw cost for generated ic 12 : (3, 4.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 64: if ((y>1.0) || iscosh)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 94 : (16, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_sincoshf_y_10000_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_sincoshf_y_10000_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincoshf_y_10000_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_sincoshf_y_10000_26
	sta	___fslt_PARM_2
;	Raw cost for generated ic 95 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 96 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00117$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	genIfx
	lda	_sincoshf_PARM_2
;	genIfxJump : z
	bne	00170$
	jmp	00118$
00170$:
;	Raw cost for generated ic 18 : (8, 9.600000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.812500
;	../sincoshf.c: 66: if(y>YBAR)
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	ldx	#0x10
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x41
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 97 : (16, 20.000000) count=0.812500
;	genAssign
;	genCopy
	lda	(_sincoshf_y_10000_26 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_sincoshf_y_10000_26 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_sincoshf_y_10000_26 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_sincoshf_y_10000_26
	sta	___fslt_PARM_2
;	Raw cost for generated ic 98 : (24, 32.000000) count=0.812500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 99 : (3, 6.000000) count=0.812500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00172$
	jmp	00110$
00172$:
;	Raw cost for generated ic 22 : (7, 7.600000) count=0.812500
;	../sincoshf.c: 68: w=y-K1;
;	genAssign
;	genCopy
	lda	(_sincoshf_y_10000_26 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	(_sincoshf_y_10000_26 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_sincoshf_y_10000_26 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	_sincoshf_y_10000_26
	sta	___fssub_PARM_1
;	Raw cost for generated ic 100 : (24, 32.000000) count=0.609375
;	genAssign
;	genAssignLit
	stz	___fssub_PARM_2
	ldx	#0x73
	stx	(___fssub_PARM_2 + 1)
	ldx	#0x31
	stx	(___fssub_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fssub_PARM_2 + 3)
;	Raw cost for generated ic 101 : (18, 22.000000) count=0.609375
;	../sincoshf.c: 69: if (w>WMAX)
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 102 : (15, 24.000000) count=0.609375
;	genAssign
;	genAssignLit
	ldx	#0xcf
	stx	___fslt_PARM_1
	ldx	#0xbd
	stx	(___fslt_PARM_1 + 1)
	ldx	#0x33
	stx	(___fslt_PARM_1 + 2)
	ldx	#0x42
	stx	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 103 : (20, 24.000000) count=0.609375
;	genAssign
;	genCopy
	sta	(___fslt_PARM_2 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fslt_PARM_2
;	Raw cost for generated ic 104 : (18, 25.000000) count=0.609375
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 105 : (3, 6.000000) count=0.609375
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 28 : (7, 7.600000) count=0.609375
;	../sincoshf.c: 71: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 32 : (8, 10.000000) count=0.457031
;	../sincoshf.c: 72: z=HUGE_VALF;
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_sincoshf_z_10000_26
	stx	(_sincoshf_z_10000_26 + 1)
	ldx	#0x7f
	stx	(_sincoshf_z_10000_26 + 2)
	stx	(_sincoshf_z_10000_26 + 3)
;	Raw cost for generated ic 33 : (16, 20.000000) count=0.457031
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 34 : (3, 3.000000) count=0.457031
;	genLabel
00105$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.152344
;	../sincoshf.c: 76: z=expf(w);
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(_expf_PARM_1 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(_expf_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(_expf_PARM_1 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	_expf_PARM_1
;	Raw cost for generated ic 36 : (20, 28.000000) count=0.152344
;	genCall
	jsr	_expf
;	assignResultValue
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 37 : (15, 24.000000) count=0.152344
;	../sincoshf.c: 77: z+=K3*z;
;	genAssign
;	genAssignLit
	ldx	#0x97
	stx	___fsmul_PARM_1
	ldx	#0x08
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x68
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x37
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 106 : (20, 24.000000) count=0.152344
;	genAssign
;	genCopy
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 107 : (18, 25.000000) count=0.152344
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 108 : (19, 28.000000) count=0.152344
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 109 : (20, 28.000000) count=0.152344
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_sincoshf_z_10000_26
	stx	(_sincoshf_z_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_10000_26 + 3)
;	Raw cost for generated ic 111 : (19, 28.000000) count=0.152344
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 43 : (3, 3.000000) count=0.152344
;	genLabel
00110$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.203125
;	../sincoshf.c: 82: z=expf(y);
;	genAssign
;	genCopy
	lda	(_sincoshf_y_10000_26 + 3)
	sta	(_expf_PARM_1 + 3)
	lda	(_sincoshf_y_10000_26 + 2)
	sta	(_expf_PARM_1 + 2)
	lda	(_sincoshf_y_10000_26 + 1)
	sta	(_expf_PARM_1 + 1)
	lda	_sincoshf_y_10000_26
	sta	_expf_PARM_1
;	Raw cost for generated ic 45 : (24, 32.000000) count=0.203125
;	genCall
	jsr	_expf
;	assignResultValue
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 46 : (15, 24.000000) count=0.203125
;	../sincoshf.c: 83: w=1.0/z;
;	genAssign
;	genAssignLit
	stz	___fsdiv_PARM_1
	stz	(___fsdiv_PARM_1 + 1)
	ldx	#0x80
	stx	(___fsdiv_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsdiv_PARM_1 + 3)
;	Raw cost for generated ic 112 : (16, 20.000000) count=0.203125
;	genAssign
;	genCopy
	sta	(___fsdiv_PARM_2 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 113 : (18, 25.000000) count=0.203125
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	*_sincoshf_sloc1_1_0
	stx	*(_sincoshf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc1_1_0 + 3)
;	Raw cost for generated ic 114 : (15, 24.000000) count=0.203125
;	genAssign
;	genCopy
	sta	(_sincoshf_w_10000_26 + 3)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(_sincoshf_w_10000_26 + 2)
	txa
	sta	(_sincoshf_w_10000_26 + 1)
	lda	*_sincoshf_sloc1_1_0
	sta	_sincoshf_w_10000_26
;	Raw cost for generated ic 49 : (17, 24.000000) count=0.203125
;	../sincoshf.c: 84: if(!iscosh) w=-w;
;	genIfx
	lda	_sincoshf_PARM_2
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 50 : (8, 9.600000) count=0.203125
;	genUminus
;	genUminusFloat
	lda	*_sincoshf_sloc1_1_0
	sta	_sincoshf_w_10000_26
	txa
	sta	(_sincoshf_w_10000_26 + 1)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(_sincoshf_w_10000_26 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 3)
	eor	#0x80
	sta	(_sincoshf_w_10000_26 + 3)
;	Raw cost for generated ic 53 : (21, 29.000000) count=0.152344
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.203125
;	../sincoshf.c: 85: z=(z+w)*0.5;
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 115 : (20, 28.000000) count=0.203125
;	genAssign
;	genCopy
	lda	(_sincoshf_w_10000_26 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	(_sincoshf_w_10000_26 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(_sincoshf_w_10000_26 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	_sincoshf_w_10000_26
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 116 : (24, 32.000000) count=0.203125
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 117 : (19, 28.000000) count=0.203125
;	genAssign
;	genAssignLit
	stz	___fsmul_PARM_1
	stz	(___fsmul_PARM_1 + 1)
	stz	(___fsmul_PARM_1 + 2)
	ldx	#0x3f
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 118 : (14, 18.000000) count=0.203125
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_sincoshf_z_10000_26
	stx	(_sincoshf_z_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_10000_26 + 3)
;	Raw cost for generated ic 120 : (19, 28.000000) count=0.203125
;	genLabel
00111$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.812500
;	../sincoshf.c: 87: if(sign) z=-z;
;	genIfx
	lda	_sincoshf_sign_10000_26
;	genIfxJump : z
	bne	00178$
	jmp	00119$
00178$:
;	Raw cost for generated ic 60 : (8, 9.600000) count=0.812500
;	genUminus
;	genUminusFloat
	lda	(_sincoshf_z_10000_26 + 3)
	eor	#0x80
	sta	(_sincoshf_z_10000_26 + 3)
;	Raw cost for generated ic 63 : (8, 10.000000) count=0.609375
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 66 : (3, 3.000000) count=0.609375
;	genLabel
00118$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.187500
;	../sincoshf.c: 91: if (y<EPS)
;	genAssign
;	genCopy
	lda	(_sincoshf_y_10000_26 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_sincoshf_y_10000_26 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_sincoshf_y_10000_26 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_sincoshf_y_10000_26
	sta	___fslt_PARM_1
;	Raw cost for generated ic 121 : (24, 32.000000) count=0.187500
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	ldx	#0x80
	stx	(___fslt_PARM_2 + 2)
	ldx	#0x39
	stx	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 122 : (16, 20.000000) count=0.187500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 123 : (3, 6.000000) count=0.187500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 69 : (7, 7.600000) count=0.187500
;	../sincoshf.c: 92: z=x;
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_z_10000_26 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_z_10000_26 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_z_10000_26 + 1)
	lda	_sincoshf_PARM_1
	sta	_sincoshf_z_10000_26
;	Raw cost for generated ic 72 : (24, 32.000000) count=0.140625
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.140625
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.046875
;	../sincoshf.c: 95: z=x*x;
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 124 : (24, 32.000000) count=0.046875
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 125 : (24, 32.000000) count=0.046875
;	../sincoshf.c: 96: z=x+x*z*P(z)/Q(z);
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_sincoshf_sloc1_1_0
	stx	*(_sincoshf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc1_1_0 + 3)
;	Raw cost for generated ic 126 : (15, 24.000000) count=0.046875
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	_sincoshf_PARM_1
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 127 : (24, 32.000000) count=0.046875
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	txa
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 128 : (19, 27.000000) count=0.046875
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 129 : (15, 24.000000) count=0.046875
;	genAssign
;	genAssignLit
	ldx	#0xea
	stx	___fsmul_PARM_1
	ldx	#0xe6
	stx	(___fsmul_PARM_1 + 1)
	ldx	#0x42
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0xbe
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 130 : (20, 24.000000) count=0.046875
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 131 : (20, 28.000000) count=0.046875
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_1
	stx	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 132 : (19, 28.000000) count=0.046875
;	genAssign
;	genAssignLit
	ldx	#0xf0
	stx	___fsadd_PARM_2
	ldx	#0x69
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0xe4
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc0
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 134 : (20, 24.000000) count=0.046875
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsmul_PARM_2
	stx	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_2 + 3)
;	Raw cost for generated ic 135 : (19, 28.000000) count=0.046875
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsmul_PARM_1
;	Raw cost for generated ic 136 : (20, 28.000000) count=0.046875
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_sincoshf_sloc0_1_0
	stx	*(_sincoshf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_sincoshf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_sincoshf_sloc0_1_0 + 3)
;	Raw cost for generated ic 138 : (15, 24.000000) count=0.046875
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_sincoshf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_sincoshf_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 139 : (20, 28.000000) count=0.046875
;	genAssign
;	genAssignLit
	ldx	#0x93
	stx	___fsadd_PARM_2
	ldx	#0x4f
	stx	(___fsadd_PARM_2 + 1)
	ldx	#0x2b
	stx	(___fsadd_PARM_2 + 2)
	ldx	#0xc2
	stx	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 140 : (20, 24.000000) count=0.046875
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	___fsdiv_PARM_2
	stx	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsdiv_PARM_2 + 3)
;	Raw cost for generated ic 141 : (19, 28.000000) count=0.046875
;	genAssign
;	genCopy
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*_sincoshf_sloc0_1_0
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 142 : (20, 28.000000) count=0.046875
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 144 : (19, 28.000000) count=0.046875
;	genAssign
;	genCopy
	lda	(_sincoshf_PARM_1 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_sincoshf_PARM_1
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 145 : (24, 32.000000) count=0.046875
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_sincoshf_z_10000_26
	stx	(_sincoshf_z_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_sincoshf_z_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_sincoshf_z_10000_26 + 3)
;	Raw cost for generated ic 147 : (19, 28.000000) count=0.046875
;	genLabel
00119$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 99: return z;
;	genRet
	lda	(_sincoshf_z_10000_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_sincoshf_z_10000_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_sincoshf_z_10000_26 + 1)
	lda	_sincoshf_z_10000_26
;	Raw cost for generated ic 88 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 89 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 100: }
;	genEndFunction
	rts
;	Raw cost for generated ic 90 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
