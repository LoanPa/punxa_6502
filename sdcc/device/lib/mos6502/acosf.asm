;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module acosf
	
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
	.globl _asincosf
	.globl _acosf_PARM_1
	.globl _acosf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_acosf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_acosf_PARM_1:
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
;Allocation info for local variables in function 'acosf'
;------------------------------------------------------------
;sloc0         Allocated with name '_acosf_sloc0_1_0'
;x             Allocated with name '_acosf_PARM_1'
;------------------------------------------------------------
;	../acosf.c: 36: float acosf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function acosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_acosf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../acosf.c: 38: if (x == 1.0) return 0.0;
;	genAssign
;	genCopy
	lda	(_acosf_PARM_1 + 3)
	sta	(___fseq_PARM_1 + 3)
	lda	(_acosf_PARM_1 + 2)
	sta	(___fseq_PARM_1 + 2)
	lda	(_acosf_PARM_1 + 1)
	sta	(___fseq_PARM_1 + 1)
	lda	_acosf_PARM_1
	sta	___fseq_PARM_1
;	Raw cost for generated ic 31 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fseq_PARM_2
	sty	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fseq_PARM_2 + 3)
;	Raw cost for generated ic 32 : (18, 22.000000) count=1.000000
;	genCall
	jsr	___fseq
;	assignResultValue
;	Raw cost for generated ic 33 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 6 : (10, 13.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../acosf.c: 39: else if (x ==-1.0) return PI;
;	genAssign
;	genCopy
	lda	(_acosf_PARM_1 + 3)
	sta	(___fseq_PARM_1 + 3)
	lda	(_acosf_PARM_1 + 2)
	sta	(___fseq_PARM_1 + 2)
	lda	(_acosf_PARM_1 + 1)
	sta	(___fseq_PARM_1 + 1)
	lda	_acosf_PARM_1
	sta	___fseq_PARM_1
;	Raw cost for generated ic 34 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fseq_PARM_2
	sty	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0xbf
	stx	(___fseq_PARM_2 + 3)
;	Raw cost for generated ic 35 : (18, 22.000000) count=1.000000
;	genCall
	jsr	___fseq
;	assignResultValue
;	Raw cost for generated ic 36 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 10 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0xdb
	ldx	#0x0f
	ldy	#0x49
	sty	*___SDCC_m6502_ret2
	ldy	#0x40
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 13 : (15, 17.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../acosf.c: 40: else if (x == 0.0) return HALF_PI;
;	genIfx
	lda	(_acosf_PARM_1 + 3)
	and	#0x7F
	ora	(_acosf_PARM_1 + 2)
	ora	(_acosf_PARM_1 + 1)
	ora	_acosf_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 16 : (19, 23.600000) count=1.000000
;	genRet
	lda	#0xdb
	ldx	#0x0f
	ldy	#0xc9
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 19 : (15, 17.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../acosf.c: 41: else               return asincosf(x, true);
;	genAssign
;	genCopy
	lda	(_acosf_PARM_1 + 3)
	sta	(_asincosf_PARM_1 + 3)
	lda	(_acosf_PARM_1 + 2)
	sta	(_asincosf_PARM_1 + 2)
	lda	(_acosf_PARM_1 + 1)
	sta	(_asincosf_PARM_1 + 1)
	lda	_acosf_PARM_1
	sta	_asincosf_PARM_1
;	Raw cost for generated ic 22 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_asincosf_PARM_2
;	Raw cost for generated ic 23 : (5, 6.000000) count=1.000000
;	genCall
	jsr	_asincosf
;	assignResultValue
	sta	*_acosf_sloc0_1_0
	stx	*(_acosf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_acosf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_acosf_sloc0_1_0 + 3)
;	Raw cost for generated ic 24 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_acosf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_acosf_sloc0_1_0
;	Raw cost for generated ic 25 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../acosf.c: 42: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
