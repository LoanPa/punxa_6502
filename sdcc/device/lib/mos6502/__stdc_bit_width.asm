;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_width
	
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
	.globl ___stdc_bit_width_PARM_1
	.globl ___stdc_bit_width
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_bit_width_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_bit_width_PARM_1:
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
;Allocation info for local variables in function '__stdc_bit_width'
;------------------------------------------------------------
;sloc0         Allocated with name '___stdc_bit_width_sloc0_1_0'
;value         Allocated with name '___stdc_bit_width_PARM_1'
;width         Allocated to registers x 
;i             Allocated to registers 
;------------------------------------------------------------
;	../__stdc_bit_width.c: 37: unsigned _BitInt(8) __stdc_bit_width(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_bit_width
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_width:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__stdc_bit_width.c: 39: int_fast8_t width = 0;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 2 : (2, 2.000000) count=1.000000
;	../__stdc_bit_width.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 29 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999993
;	genCmp
	cpy	#0x40
	bcc	00128$
	jmp	00103$
00128$:
;	Raw cost for generated ic 5 : (7, 7.600000) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=3.999993
;	../__stdc_bit_width.c: 41: if(value & (1ull << i))
;	genCast
;	genCopy
	sty	__slulonglong_PARM_2
;	Raw cost for generated ic 35 : (3, 4.000000) count=2.999995
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	__slulonglong_PARM_1
	lda	#0x00
	sta	(__slulonglong_PARM_1 + 1)
	sta	(__slulonglong_PARM_1 + 2)
	sta	(__slulonglong_PARM_1 + 3)
	sta	(__slulonglong_PARM_1 + 4)
	sta	(__slulonglong_PARM_1 + 5)
	sta	(__slulonglong_PARM_1 + 6)
	sta	(__slulonglong_PARM_1 + 7)
;	Raw cost for generated ic 36 : (28, 36.000000) count=2.999995
;	genCall
	txa
	pha
	tya
	pha
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_bit_width_sloc0_1_0
	stx	*(___stdc_bit_width_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_width_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_width_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_width_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_width_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_width_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_width_sloc0_1_0 + 7)
	pla
	tay
	pla
	tax
;	Raw cost for generated ic 38 : (42, 74.000000) count=2.999995
;	genAnd
	lda	___stdc_bit_width_PARM_1
	and	*___stdc_bit_width_sloc0_1_0
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 1)
	and	*(___stdc_bit_width_sloc0_1_0 + 1)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 2)
	and	*(___stdc_bit_width_sloc0_1_0 + 2)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 3)
	and	*(___stdc_bit_width_sloc0_1_0 + 3)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 4)
	and	*(___stdc_bit_width_sloc0_1_0 + 4)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 5)
	and	*(___stdc_bit_width_sloc0_1_0 + 5)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 6)
	and	*(___stdc_bit_width_sloc0_1_0 + 6)
	bne	00129$
	lda	(___stdc_bit_width_PARM_1 + 7)
	and	*(___stdc_bit_width_sloc0_1_0 + 7)
00129$:
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 10 : (59, 79.799995) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=2.999995
;	../__stdc_bit_width.c: 42: width = (i + 1);
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 14 : (1, 2.000000) count=2.249995
;	genPlus
;	  genPlusInc
	tax
	inx
;	Raw cost for generated ic 15 : (2, 4.000000) count=2.249995
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999993
;	../__stdc_bit_width.c: 40: for(uint_fast8_t i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 20 : (1, 2.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 22 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999997
;	../__stdc_bit_width.c: 43: return width;
;	genCast
;	genCopy
	txa
;	Raw cost for generated ic 24 : (1, 2.000000) count=0.999997
;	genRet
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999997
;	../__stdc_bit_width.c: 44: }
;	genEndFunction
	rts
;	Raw cost for generated ic 27 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
