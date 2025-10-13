;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module powf
	
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
	.globl _logf
	.globl _expf
	.globl _powf_PARM_2
	.globl _powf_PARM_1
	.globl _powf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_powf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_powf_PARM_1:
	.ds 4
_powf_PARM_2:
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
;Allocation info for local variables in function 'powf'
;------------------------------------------------------------
;sloc0         Allocated with name '_powf_sloc0_1_0'
;x             Allocated with name '_powf_PARM_1'
;y             Allocated with name '_powf_PARM_2'
;------------------------------------------------------------
;	../powf.c: 35: float powf(float x, float y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_powf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../powf.c: 37: if(y == 0.0) return 1.0;
;	genIfx
	lda	(_powf_PARM_2 + 3)
	and	#0x7F
	ora	(_powf_PARM_2 + 2)
	ora	(_powf_PARM_2 + 1)
	ora	_powf_PARM_2
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 5 : (14, 17.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../powf.c: 38: if(y == 1.0) return x;
;	genAssign
;	genCopy
	lda	(_powf_PARM_2 + 3)
	sta	(___fseq_PARM_1 + 3)
	lda	(_powf_PARM_2 + 2)
	sta	(___fseq_PARM_1 + 2)
	lda	(_powf_PARM_2 + 1)
	sta	(___fseq_PARM_1 + 1)
	lda	_powf_PARM_2
	sta	___fseq_PARM_1
;	Raw cost for generated ic 27 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fseq_PARM_2
	stz	(___fseq_PARM_2 + 1)
	ldx	#0x80
	stx	(___fseq_PARM_2 + 2)
	ldx	#0x3f
	stx	(___fseq_PARM_2 + 3)
;	Raw cost for generated ic 28 : (16, 20.000000) count=1.000000
;	genCall
	jsr	___fseq
;	assignResultValue
;	Raw cost for generated ic 29 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	genRet
	lda	(_powf_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_powf_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_powf_PARM_1 + 1)
	lda	_powf_PARM_1
	rts
;	Raw cost for generated ic 11 : (19, 25.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../powf.c: 39: if(x <= 0.0) return 0.0;
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_1
	stz	(___fslt_PARM_1 + 1)
	stz	(___fslt_PARM_1 + 2)
	stz	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 30 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_powf_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(_powf_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(_powf_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	_powf_PARM_1
	sta	___fslt_PARM_2
;	Raw cost for generated ic 31 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 32 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 14 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 17 : (10, 13.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../powf.c: 40: return expf(logf(x) * y);
;	genAssign
;	genCopy
	lda	(_powf_PARM_1 + 3)
	sta	(_logf_PARM_1 + 3)
	lda	(_powf_PARM_1 + 2)
	sta	(_logf_PARM_1 + 2)
	lda	(_powf_PARM_1 + 1)
	sta	(_logf_PARM_1 + 1)
	lda	_powf_PARM_1
	sta	_logf_PARM_1
;	Raw cost for generated ic 19 : (24, 32.000000) count=1.000000
;	genCall
	jsr	_logf
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 20 : (19, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_powf_PARM_2 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_powf_PARM_2 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_powf_PARM_2 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_powf_PARM_2
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 34 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_expf_PARM_1
	stx	(_expf_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_expf_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_expf_PARM_1 + 3)
;	Raw cost for generated ic 35 : (19, 28.000000) count=1.000000
;	genCall
	jsr	_expf
;	assignResultValue
	sta	*_powf_sloc0_1_0
	stx	*(_powf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_powf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_powf_sloc0_1_0 + 3)
;	Raw cost for generated ic 23 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_powf_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_powf_sloc0_1_0
;	Raw cost for generated ic 24 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../powf.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
