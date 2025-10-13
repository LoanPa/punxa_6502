;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atan2f
	
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
	.globl _atanf
	.globl _atan2f_PARM_2
	.globl _atan2f_PARM_1
	.globl _atan2f
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atan2f_sloc0_1_0:
	.ds 4
_atan2f_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atan2f_PARM_1:
	.ds 4
_atan2f_PARM_2:
	.ds 4
_atan2f_r_10000_26:
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;sloc0         Allocated with name '_atan2f_sloc0_1_0'
;sloc1         Allocated with name '_atan2f_sloc1_1_0'
;x             Allocated with name '_atan2f_PARM_1'
;y             Allocated with name '_atan2f_PARM_2'
;r             Allocated with name '_atan2f_r_10000_26'
;------------------------------------------------------------
;	../atan2f.c: 34: float atan2f(float x, float y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atan2f:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
;	genIfx
	lda	(_atan2f_PARM_1 + 3)
	and	#0x7F
	ora	(_atan2f_PARM_1 + 2)
	ora	(_atan2f_PARM_1 + 1)
	ora	_atan2f_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genIfx
	lda	(_atan2f_PARM_2 + 3)
	and	#0x7F
	ora	(_atan2f_PARM_2 + 2)
	ora	(_atan2f_PARM_2 + 1)
	ora	_atan2f_PARM_2
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 5 : (19, 23.600000) count=0.750000
;	../atan2f.c: 40: errno=EDOM;
;	genAssign
;	genAssignLit
	ldx	#0x21
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 9 : (10, 12.000000) count=0.562500
;	../atan2f.c: 41: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 10 : (9, 13.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_2 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_atan2f_PARM_2 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_atan2f_PARM_2 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_atan2f_PARM_2
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 12 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	*_atan2f_sloc0_1_0
	stx	*(_atan2f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc0_1_0 + 3)
;	Raw cost for generated ic 13 : (15, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_1 + 3)
	sta	(_fabsf_PARM_1 + 3)
	lda	(_atan2f_PARM_1 + 2)
	sta	(_fabsf_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 1)
	sta	(_fabsf_PARM_1 + 1)
	lda	_atan2f_PARM_1
	sta	_fabsf_PARM_1
;	Raw cost for generated ic 14 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	sta	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 15 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	*_atan2f_sloc0_1_0
	sta	___fslt_PARM_1
;	Raw cost for generated ic 59 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 61 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00156$
	jmp	00107$
00156$:
;	Raw cost for generated ic 17 : (7, 7.600000) count=1.000000
;	../atan2f.c: 46: r=atanf(x/y);
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_atan2f_PARM_1
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 62 : (24, 32.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_atan2f_PARM_2
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 63 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	_atanf_PARM_1
	stx	(_atanf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_PARM_1 + 3)
;	Raw cost for generated ic 64 : (19, 28.000000) count=0.750000
;	genCall
	jsr	_atanf
;	assignResultValue
	sta	*_atan2f_sloc0_1_0
	stx	*(_atan2f_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atan2f_sloc0_1_0 + 3)
;	Raw cost for generated ic 22 : (15, 24.000000) count=0.750000
;	genAssign
;	genCopy
	sta	(_atan2f_r_10000_26 + 3)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(_atan2f_r_10000_26 + 2)
	txa
	sta	(_atan2f_r_10000_26 + 1)
	lda	*_atan2f_sloc0_1_0
	sta	_atan2f_r_10000_26
;	Raw cost for generated ic 23 : (17, 24.000000) count=0.750000
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_atan2f_PARM_2
	sta	___fslt_PARM_1
;	Raw cost for generated ic 65 : (24, 32.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 66 : (14, 18.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 67 : (3, 6.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00158$
	jmp	00108$
00158$:
;	Raw cost for generated ic 25 : (7, 7.600000) count=0.750000
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_atan2f_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 68 : (24, 32.000000) count=0.562500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 69 : (14, 18.000000) count=0.562500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 70 : (3, 6.000000) count=0.562500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.562500
;	genAssign
;	genAssignLit
	ldx	#0xdb
	stx	*_atan2f_sloc1_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc1_1_0 + 1)
	ldx	#0x49
	stx	*(_atan2f_sloc1_1_0 + 2)
	ldx	#0x40
	stx	*(_atan2f_sloc1_1_0 + 3)
;	Raw cost for generated ic 31 : (16, 20.000000) count=0.421875
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 32 : (3, 3.000000) count=0.421875
;	genLabel
00111$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
	ldx	#0xdb
	stx	*_atan2f_sloc1_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc1_1_0 + 1)
	ldx	#0x49
	stx	*(_atan2f_sloc1_1_0 + 2)
	ldx	#0xc0
	stx	*(_atan2f_sloc1_1_0 + 3)
;	Raw cost for generated ic 34 : (16, 20.000000) count=0.140625
;	genLabel
00112$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.562500
;	genAssign
;	genCopy
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_atan2f_sloc0_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 71 : (20, 28.000000) count=0.562500
;	genAssign
;	genCopy
	lda	*(_atan2f_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_atan2f_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_atan2f_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_atan2f_sloc1_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 72 : (20, 28.000000) count=0.562500
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atan2f_r_10000_26
	stx	(_atan2f_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atan2f_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atan2f_r_10000_26 + 3)
;	Raw cost for generated ic 73 : (19, 28.000000) count=0.562500
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 39 : (3, 3.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.250000
;	../atan2f.c: 51: r=-atanf(y/x);
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_2 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	lda	(_atan2f_PARM_2 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	(_atan2f_PARM_2 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	_atan2f_PARM_2
	sta	___fsdiv_PARM_1
;	Raw cost for generated ic 74 : (24, 32.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	_atan2f_PARM_1
	sta	___fsdiv_PARM_2
;	Raw cost for generated ic 75 : (24, 32.000000) count=0.250000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	sta	_atanf_PARM_1
	stx	(_atanf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atanf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atanf_PARM_1 + 3)
;	Raw cost for generated ic 76 : (19, 28.000000) count=0.250000
;	genCall
	jsr	_atanf
;	assignResultValue
	sta	*_atan2f_sloc1_1_0
	stx	*(_atan2f_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atan2f_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
;	Raw cost for generated ic 43 : (15, 24.000000) count=0.250000
;	genUminus
;	genUminusFloat
	sta	*(_atan2f_sloc1_1_0 + 3)
	eor	#0x80
	sta	*(_atan2f_sloc1_1_0 + 3)
;	Raw cost for generated ic 44 : (6, 8.000000) count=0.250000
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
;	genAssign
;	genCopy
	lda	(_atan2f_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_atan2f_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_atan2f_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_atan2f_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 77 : (24, 32.000000) count=0.250000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 78 : (14, 18.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 79 : (3, 6.000000) count=0.250000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 47 : (7, 7.600000) count=0.250000
;	genAssign
;	genAssignLit
	ldx	#0xdb
	stx	*_atan2f_sloc0_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc0_1_0 + 1)
	ldx	#0xc9
	stx	*(_atan2f_sloc0_1_0 + 2)
	ldx	#0xbf
	stx	*(_atan2f_sloc0_1_0 + 3)
;	Raw cost for generated ic 48 : (16, 20.000000) count=0.187500
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 49 : (3, 3.000000) count=0.187500
;	genLabel
00113$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.062500
;	genAssign
;	genAssignLit
	ldx	#0xdb
	stx	*_atan2f_sloc0_1_0
	ldx	#0x0f
	stx	*(_atan2f_sloc0_1_0 + 1)
	ldx	#0xc9
	stx	*(_atan2f_sloc0_1_0 + 2)
	ldx	#0x3f
	stx	*(_atan2f_sloc0_1_0 + 3)
;	Raw cost for generated ic 51 : (16, 20.000000) count=0.062500
;	genLabel
00114$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_atan2f_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_atan2f_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atan2f_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_atan2f_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 80 : (20, 28.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_atan2f_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	*(_atan2f_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_atan2f_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*_atan2f_sloc0_1_0
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 81 : (20, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atan2f_r_10000_26
	stx	(_atan2f_r_10000_26 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atan2f_r_10000_26 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atan2f_r_10000_26 + 3)
;	Raw cost for generated ic 82 : (19, 28.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../atan2f.c: 54: return r;
;	genRet
	lda	(_atan2f_r_10000_26 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_atan2f_r_10000_26 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_atan2f_r_10000_26 + 1)
	lda	_atan2f_r_10000_26
;	Raw cost for generated ic 56 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../atan2f.c: 55: }
;	genEndFunction
	rts
;	Raw cost for generated ic 58 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
