;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_first_trailing_one
	
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
	.globl ___stdc_first_trailing_one_PARM_1
	.globl ___stdc_first_trailing_one
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_first_trailing_one_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_first_trailing_one_PARM_1:
	.ds 8
___stdc_first_trailing_one_i_20000_164:
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
;Allocation info for local variables in function '__stdc_first_trailing_one'
;------------------------------------------------------------
;sloc0         Allocated with name '___stdc_first_trailing_one_sloc0_1_0'
;value         Allocated with name '___stdc_first_trailing_one_PARM_1'
;i             Allocated with name '___stdc_first_trailing_one_i_20000_164'
;------------------------------------------------------------
;	../__stdc_first_trailing_one.c: 36: unsigned _BitInt(8) __stdc_first_trailing_one(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_first_trailing_one
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_first_trailing_one:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__stdc_first_trailing_one.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genAssignLit
	stz	___stdc_first_trailing_one_i_20000_164
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 29 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999993
;	genCmp
	cpx	#0x40
	bcc	00127$
	jmp	00103$
00127$:
;	Raw cost for generated ic 4 : (7, 7.600000) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999993
;	../__stdc_first_trailing_one.c: 39: if(value & (1ull << i))
;	genCast
;	genCopy
	stx	__slulonglong_PARM_2
;	Raw cost for generated ic 33 : (3, 4.000000) count=2.999995
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__slulonglong_PARM_1
	stz	(__slulonglong_PARM_1 + 1)
	stz	(__slulonglong_PARM_1 + 2)
	stz	(__slulonglong_PARM_1 + 3)
	stz	(__slulonglong_PARM_1 + 4)
	stz	(__slulonglong_PARM_1 + 5)
	stz	(__slulonglong_PARM_1 + 6)
	stz	(__slulonglong_PARM_1 + 7)
;	Raw cost for generated ic 34 : (26, 34.000000) count=2.999995
;	genCall
	phx
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_first_trailing_one_sloc0_1_0
	stx	*(___stdc_first_trailing_one_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_first_trailing_one_sloc0_1_0 + 7)
	plx
;	Raw cost for generated ic 36 : (33, 55.000000) count=2.999995
;	genAnd
	lda	___stdc_first_trailing_one_PARM_1
	and	*___stdc_first_trailing_one_sloc0_1_0
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 1)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 1)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 2)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 2)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 3)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 3)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 4)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 4)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 5)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 5)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 6)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 6)
	bne	00128$
	lda	(___stdc_first_trailing_one_PARM_1 + 7)
	and	*(___stdc_first_trailing_one_sloc0_1_0 + 7)
00128$:
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 9 : (59, 79.799995) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=2.999995
;	../__stdc_first_trailing_one.c: 40: return (i + 1);
;	genCast
;	genCopy
	lda	___stdc_first_trailing_one_i_20000_164
;	Raw cost for generated ic 28 : (3, 4.000000) count=2.249995
;	genPlus
;	  genPlusInc
	inc	a
;	Raw cost for generated ic 14 : (1, 2.000000) count=2.249995
;	genRet
	rts
;	Raw cost for generated ic 16 : (3, 3.000000) count=2.249995
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999993
;	../__stdc_first_trailing_one.c: 38: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 20 : (1, 2.000000) count=2.999993
;	genAssign
;	genCopy
	stx	___stdc_first_trailing_one_i_20000_164
;	Raw cost for generated ic 21 : (3, 4.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 22 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999997
;	../__stdc_first_trailing_one.c: 41: return 0;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 24 : (2, 2.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.999997
;	../__stdc_first_trailing_one.c: 42: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
