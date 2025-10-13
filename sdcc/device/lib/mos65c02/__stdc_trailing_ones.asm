;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_trailing_ones
	
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
	.globl ___stdc_count_trailing_ones
	.globl ___stdc_count_trailing_ones_PARM_1
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_count_trailing_ones_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_count_trailing_ones_PARM_1:
	.ds 8
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
;Allocation info for local variables in function '__stdc_count_trailing_ones'
;------------------------------------------------------------
;sloc0         Allocated with name '___stdc_count_trailing_ones_sloc0_1_0'
;value         Allocated with name '___stdc_count_trailing_ones_PARM_1'
;count         Allocated to registers 
;i             Allocated to registers 
;------------------------------------------------------------
;	../__stdc_trailing_ones.c: 37: unsigned _BitInt(8) __stdc_count_trailing_ones(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_count_trailing_ones
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_count_trailing_ones:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__stdc_trailing_ones.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 32 : (2, 2.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 35 : (2, 2.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285585
;	genCmp
	cpy	#0x40
	bcc	00129$
	jmp	00104$
00129$:
;	Raw cost for generated ic 5 : (7, 7.600000) count=2.285585
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.285585
;	../__stdc_trailing_ones.c: 41: if(value & (1ull << i))
;	genCast
;	genCopy
	sty	__slulonglong_PARM_2
;	Raw cost for generated ic 40 : (3, 4.000000) count=1.714114
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	__slulonglong_PARM_1
	stz	(__slulonglong_PARM_1 + 1)
	stz	(__slulonglong_PARM_1 + 2)
	stz	(__slulonglong_PARM_1 + 3)
	stz	(__slulonglong_PARM_1 + 4)
	stz	(__slulonglong_PARM_1 + 5)
	stz	(__slulonglong_PARM_1 + 6)
	stz	(__slulonglong_PARM_1 + 7)
;	Raw cost for generated ic 41 : (26, 34.000000) count=1.714114
;	genCall
	phx
	phy
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_count_trailing_ones_sloc0_1_0
	stx	*(___stdc_count_trailing_ones_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_count_trailing_ones_sloc0_1_0 + 7)
	ply
	plx
;	Raw cost for generated ic 43 : (35, 62.000000) count=1.714114
;	genAnd
	lda	___stdc_count_trailing_ones_PARM_1
	and	*___stdc_count_trailing_ones_sloc0_1_0
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 1)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 1)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 2)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 2)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 3)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 3)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 4)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 4)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 5)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 5)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 6)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 6)
	bne	00130$
	lda	(___stdc_count_trailing_ones_PARM_1 + 7)
	and	*(___stdc_count_trailing_ones_sloc0_1_0 + 7)
00130$:
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 10 : (59, 79.799995) count=1.714114
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.714114
;	../__stdc_trailing_ones.c: 42: count++;
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 15 : (1, 2.000000) count=1.285585
;	../__stdc_trailing_ones.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 23 : (1, 2.000000) count=1.285585
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 25 : (3, 3.000000) count=1.285585
;	genLabel
00104$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999925
;	../__stdc_trailing_ones.c: 45: return count;
;	genCast
;	genCopy
	txa
;	Raw cost for generated ic 27 : (1, 2.000000) count=0.999925
;	genRet
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999925
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999925
;	../__stdc_trailing_ones.c: 46: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=0.999925
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
