;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_first_leading_one
	
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
	.globl ___stdc_first_leading_one_PARM_2
	.globl ___stdc_first_leading_one_PARM_1
	.globl ___stdc_first_leading_one
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_first_leading_one_sloc0_1_0:
	.ds 1
___stdc_first_leading_one_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_first_leading_one_PARM_1:
	.ds 8
___stdc_first_leading_one_PARM_2:
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
;Allocation info for local variables in function '__stdc_first_leading_one'
;------------------------------------------------------------
;sloc0         Allocated with name '___stdc_first_leading_one_sloc0_1_0'
;sloc1         Allocated with name '___stdc_first_leading_one_sloc1_1_0'
;value         Allocated with name '___stdc_first_leading_one_PARM_1'
;width         Allocated with name '___stdc_first_leading_one_PARM_2'
;i             Allocated to registers x 
;------------------------------------------------------------
;	../__stdc_first_leading_one.c: 36: unsigned _BitInt(8) __stdc_first_leading_one(unsigned long long value, uint_fast8_t width)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_first_leading_one
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_first_leading_one:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__stdc_first_leading_one.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
;	genCast
;	genCopy
	ldx	___stdc_first_leading_one_PARM_2
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 3 : (1, 2.000000) count=1.000000
;	genAssign
;	genCopy
	stx	*___stdc_first_leading_one_sloc0_1_0
;	Raw cost for generated ic 33 : (2, 3.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999596
;	genCmp
	bit	*___stdc_first_leading_one_sloc0_1_0
	bpl	00127$
	jmp	00103$
00127$:
;	Raw cost for generated ic 6 : (7, 8.600000) count=3.999596
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999596
;	../__stdc_first_leading_one.c: 39: if(value & (1ull << i))
;	genCast
;	genCopy
	lda	*___stdc_first_leading_one_sloc0_1_0
	sta	__slulonglong_PARM_2
;	Raw cost for generated ic 37 : (5, 7.000000) count=2.999697
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
;	Raw cost for generated ic 38 : (26, 34.000000) count=2.999697
;	genCall
	phx
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_first_leading_one_sloc1_1_0
	stx	*(___stdc_first_leading_one_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_first_leading_one_sloc1_1_0 + 7)
	plx
;	Raw cost for generated ic 40 : (33, 55.000000) count=2.999697
;	genAnd
	lda	___stdc_first_leading_one_PARM_1
	and	*___stdc_first_leading_one_sloc1_1_0
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 1)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 1)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 2)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 2)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 3)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 3)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 4)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 4)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 5)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 5)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 6)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 6)
	bne	00128$
	lda	(___stdc_first_leading_one_PARM_1 + 7)
	and	*(___stdc_first_leading_one_sloc1_1_0 + 7)
00128$:
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 11 : (59, 79.799995) count=2.999697
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999697
;	../__stdc_first_leading_one.c: 40: return (width - i);
;	genCast
;	genCopy
	lda	___stdc_first_leading_one_PARM_2
;	Raw cost for generated ic 31 : (3, 4.000000) count=2.249697
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=2.249697
;	genMinus
	sec
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
;	Raw cost for generated ic 17 : (5, 8.000000) count=2.249697
;	genRet
	rts
;	Raw cost for generated ic 19 : (3, 3.000000) count=2.249697
;	genLabel
00106$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=2.999596
;	../__stdc_first_leading_one.c: 38: for(int_fast8_t i = width - 1; i >= 0; i--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*___stdc_first_leading_one_sloc0_1_0
;	Raw cost for generated ic 23 : (2, 5.000000) count=2.999596
;	genAssign
;	genCopy
	ldx	*___stdc_first_leading_one_sloc0_1_0
;	Raw cost for generated ic 24 : (2, 3.000000) count=2.999596
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 25 : (3, 3.000000) count=2.999596
;	genLabel
00103$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999821
;	../__stdc_first_leading_one.c: 41: return 0;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=0.999821
;	genLabel
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999821
;	../__stdc_first_leading_one.c: 42: }
;	genEndFunction
	rts
;	Raw cost for generated ic 29 : (1, 6.000000) count=0.999821
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
