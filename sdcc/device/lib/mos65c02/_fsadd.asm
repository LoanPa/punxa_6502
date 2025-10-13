;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsadd
	
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
	.globl ___fsadd_PARM_2
	.globl ___fsadd_PARM_1
	.globl ___fsadd
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsadd_sloc0_1_0:
	.ds 4
___fsadd_sloc1_1_0:
	.ds 4
___fsadd_sloc2_1_0:
	.ds 4
___fsadd_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsadd_PARM_1:
	.ds 4
___fsadd_PARM_2:
	.ds 4
___fsadd_mant1_10000_21:
	.ds 4
___fsadd_mant2_10000_21:
	.ds 4
___fsadd_exp1_10000_21:
	.ds 2
___fsadd_exp2_10000_21:
	.ds 2
___fsadd_expd_10000_21:
	.ds 2
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
;Allocation info for local variables in function '__fsadd'
;------------------------------------------------------------
;a1            Allocated with name '___fsadd_PARM_1'
;a2            Allocated with name '___fsadd_PARM_2'
;mant1         Allocated with name '___fsadd_mant1_10000_21'
;mant2         Allocated with name '___fsadd_mant2_10000_21'
;pfl1          Allocated to registers 
;pfl2          Allocated to registers 
;exp1          Allocated with name '___fsadd_exp1_10000_21'
;exp2          Allocated with name '___fsadd_exp2_10000_21'
;expd          Allocated with name '___fsadd_expd_10000_21'
;sign          Allocated to registers x 
;sloc0         Allocated with name '___fsadd_sloc0_1_0'
;sloc1         Allocated with name '___fsadd_sloc1_1_0'
;sloc2         Allocated with name '___fsadd_sloc2_1_0'
;sloc3         Allocated with name '___fsadd_sloc3_1_0'
;------------------------------------------------------------
;	../_fsadd.c: 170: float __fsadd (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsadd:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
;	genPointerGet
;	genDataPointerGet
	lda	(___fsadd_PARM_2 + 3)
	sta	*(___fsadd_sloc0_1_0 + 3)
	lda	(___fsadd_PARM_2 + 2)
	sta	*(___fsadd_sloc0_1_0 + 2)
	lda	(___fsadd_PARM_2 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
	lda	___fsadd_PARM_2
	sta	*___fsadd_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___fsadd_sloc0_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc1_1_0
;	Raw cost for generated ic 8 : (16, 24.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsadd_sloc1_1_0 + 2)
	rol	a
	lda	*(___fsadd_sloc1_1_0 + 3)
	rol	a
	sta	*___fsadd_sloc2_1_0
	lda	#0x00
	sta	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 3)
	rol	a
	sta	*(___fsadd_sloc2_1_0 + 1)
;	Raw cost for generated ic 9 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
	tax
	lda	*___fsadd_sloc2_1_0
;	Raw cost for generated ic 194 : (3, 5.000000) count=1.000000
;	genAnd
	sta	___fsadd_exp2_10000_21
	stz	(___fsadd_exp2_10000_21 + 1)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
;	genAnd
	lda	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	stz	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 15 : (15, 22.000000) count=1.000000
;	genOr
	lda	*(___fsadd_sloc2_1_0 + 2)
	ora	#0x80
	sta	*(___fsadd_sloc2_1_0 + 2)
;	Raw cost for generated ic 16 : (6, 8.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=4
	lda	*(___fsadd_sloc2_1_0 + 3)
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc2_1_0
	rol	*(___fsadd_sloc2_1_0 + 1)
	rol	*(___fsadd_sloc2_1_0 + 2)
	rol	a
	sta	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 17 : (32, 74.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsadd_mant2_10000_21 + 3)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_mant2_10000_21 + 2)
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_mant2_10000_21 + 1)
	lda	*___fsadd_sloc2_1_0
	sta	___fsadd_mant2_10000_21
;	Raw cost for generated ic 18 : (18, 25.000000) count=1.000000
;	../_fsadd.c: 181: if (SIGN (*pfl2))
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsadd_sloc1_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsadd_sloc1_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 1)
	rol	a
	sta	*___fsadd_sloc1_1_0
;	Raw cost for generated ic 22 : (14, 21.000000) count=1.000000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 23 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 182: mant2 = -mant2;
;	genUminus
	lda	#0x00
	sec
	sbc	*___fsadd_sloc2_1_0
	sta	___fsadd_mant2_10000_21
	lda	#0x00
	sbc	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_mant2_10000_21 + 1)
	lda	#0x00
	sbc	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_mant2_10000_21 + 2)
	lda	#0x00
	sbc	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_mant2_10000_21 + 3)
;	Raw cost for generated ic 27 : (29, 38.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 184: if (!*pfl2)
;	genIfx
	lda	*(___fsadd_sloc0_1_0 + 3)
	ora	*(___fsadd_sloc0_1_0 + 2)
	ora	*(___fsadd_sloc0_1_0 + 1)
	ora	*___fsadd_sloc0_1_0
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 32 : (13, 17.600000) count=1.000000
;	../_fsadd.c: 185: return (a1);
;	genRet
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
	rts
;	Raw cost for generated ic 35 : (19, 25.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
;	genPointerGet
;	genDataPointerGet
	lda	(___fsadd_PARM_1 + 3)
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	(___fsadd_PARM_1 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_PARM_1 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	___fsadd_PARM_1
	sta	*___fsadd_sloc2_1_0
;	Raw cost for generated ic 41 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 3)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 2)
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc1_1_0 + 1)
	lda	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc1_1_0
;	Raw cost for generated ic 42 : (16, 24.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsadd_sloc1_1_0 + 2)
	rol	a
	lda	*(___fsadd_sloc1_1_0 + 3)
	rol	a
	sta	*___fsadd_sloc0_1_0
	lda	#0x00
	sta	*(___fsadd_sloc0_1_0 + 2)
	sta	*(___fsadd_sloc0_1_0 + 3)
	rol	a
	sta	*(___fsadd_sloc0_1_0 + 1)
;	Raw cost for generated ic 43 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 195 : (3, 5.000000) count=1.000000
;	genAnd
;	Raw cost for generated ic 44 : (5, 7.000000) count=1.000000
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
;	genAnd
	stz	*(___fsadd_sloc0_1_0 + 1)
	lda	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	stz	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 49 : (15, 22.000000) count=1.000000
;	genOr
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	#0x80
	sta	*(___fsadd_sloc3_1_0 + 2)
;	Raw cost for generated ic 50 : (6, 8.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=4
	lda	*(___fsadd_sloc3_1_0 + 3)
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	a
	asl	*___fsadd_sloc3_1_0
	rol	*(___fsadd_sloc3_1_0 + 1)
	rol	*(___fsadd_sloc3_1_0 + 2)
	rol	a
	sta	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 51 : (32, 74.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(___fsadd_mant1_10000_21 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_mant1_10000_21 + 2)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_mant1_10000_21 + 1)
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_mant1_10000_21
;	Raw cost for generated ic 52 : (18, 25.000000) count=1.000000
;	../_fsadd.c: 190: if (SIGN(*pfl1))
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsadd_sloc1_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsadd_sloc1_1_0 + 3)
	sta	*(___fsadd_sloc1_1_0 + 2)
	sta	*(___fsadd_sloc1_1_0 + 1)
	rol	a
	sta	*___fsadd_sloc1_1_0
;	Raw cost for generated ic 56 : (14, 21.000000) count=1.000000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 57 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 191: mant1 = -mant1;
;	genUminus
	lda	#0x00
	sec
	sbc	*___fsadd_sloc3_1_0
	sta	___fsadd_mant1_10000_21
	lda	#0x00
	sbc	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_mant1_10000_21 + 1)
	lda	#0x00
	sbc	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_mant1_10000_21 + 2)
	lda	#0x00
	sbc	*(___fsadd_sloc3_1_0 + 3)
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 61 : (29, 38.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 193: if (!*pfl1)
;	genIfx
	lda	*(___fsadd_sloc2_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 1)
	ora	*___fsadd_sloc2_1_0
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 66 : (13, 17.600000) count=1.000000
;	../_fsadd.c: 194: return (a2);
;	genRet
	lda	(___fsadd_PARM_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_2 + 1)
	lda	___fsadd_PARM_2
	rts
;	Raw cost for generated ic 69 : (19, 25.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 196: expd = exp1 - exp2;
;	genMinus
	lda	*___fsadd_sloc0_1_0
	sec
	sbc	___fsadd_exp2_10000_21
	sta	___fsadd_expd_10000_21
	lda	*(___fsadd_sloc0_1_0 + 1)
	sbc	(___fsadd_exp2_10000_21 + 1)
	sta	(___fsadd_expd_10000_21 + 1)
;	Raw cost for generated ic 71 : (17, 24.000000) count=1.000000
;	../_fsadd.c: 197: if (expd > 25)
;	genCmp
	lda	#0x19
	sec
	sbc	___fsadd_expd_10000_21
	lda	#0x00
	sbc	(___fsadd_expd_10000_21 + 1)
	bvc	00278$
	bpl	00277$
	bmi	00110$
00278$:
	bpl	00110$
00277$:
;	Raw cost for generated ic 73 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 198: return (a1);
;	genRet
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
	rts
;	Raw cost for generated ic 77 : (19, 25.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 199: if (expd < -25)
;	genCmp
	lda	___fsadd_expd_10000_21
	sec
	sbc	#0xe7
	lda	(___fsadd_expd_10000_21 + 1)
	sbc	#0xff
	bvc	00281$
	bpl	00280$
	bmi	00112$
00281$:
	bpl	00112$
00280$:
;	Raw cost for generated ic 79 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 200: return (a2);
;	genRet
	lda	(___fsadd_PARM_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_2 + 1)
	lda	___fsadd_PARM_2
	rts
;	Raw cost for generated ic 83 : (19, 25.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 202: if (expd < 0)
;	genCmp
	bit	(___fsadd_expd_10000_21 + 1)
	bpl	00114$
;	Raw cost for generated ic 85 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 204: expd = -expd;
;	genUminus
	lda	#0x00
	sec
	sbc	___fsadd_expd_10000_21
	sta	___fsadd_expd_10000_21
	lda	#0x00
	sbc	(___fsadd_expd_10000_21 + 1)
	sta	(___fsadd_expd_10000_21 + 1)
;	Raw cost for generated ic 89 : (17, 22.000000) count=0.750000
;	../_fsadd.c: 205: exp1 += expd;
;	genPlus
	lda	*___fsadd_sloc0_1_0
	clc
	adc	___fsadd_expd_10000_21
	sta	*___fsadd_sloc0_1_0
	lda	*(___fsadd_sloc0_1_0 + 1)
	adc	(___fsadd_expd_10000_21 + 1)
	sta	*(___fsadd_sloc0_1_0 + 1)
;	Raw cost for generated ic 91 : (15, 22.000000) count=0.750000
;	../_fsadd.c: 206: mant1 >>= expd;
;	genRightShift
	ldy	___fsadd_expd_10000_21
	beq	00115$
	lda	(___fsadd_mant1_10000_21 + 3)
00284$:
	cmp	#0x80
	ror	a
	ror	(___fsadd_mant1_10000_21 + 2)
	ror	(___fsadd_mant1_10000_21 + 1)
	ror	___fsadd_mant1_10000_21
	dey
	bne	00284$
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 93 : (26, 41.199997) count=0.750000
;	genGoto
	jmp	00115$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.250000
;	../_fsadd.c: 210: mant2 >>= expd;
;	genRightShift
	ldy	___fsadd_expd_10000_21
	beq	00287$
	lda	(___fsadd_mant2_10000_21 + 3)
00286$:
	cmp	#0x80
	ror	a
	ror	(___fsadd_mant2_10000_21 + 2)
	ror	(___fsadd_mant2_10000_21 + 1)
	ror	___fsadd_mant2_10000_21
	dey
	bne	00286$
	sta	(___fsadd_mant2_10000_21 + 3)
00287$:
;	Raw cost for generated ic 97 : (26, 41.199997) count=0.250000
;	genLabel
00115$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 212: mant1 += mant2;
;	genPlus
	lda	___fsadd_mant1_10000_21
	clc
	adc	___fsadd_mant2_10000_21
	sta	___fsadd_mant1_10000_21
	lda	(___fsadd_mant1_10000_21 + 1)
	adc	(___fsadd_mant2_10000_21 + 1)
	sta	(___fsadd_mant1_10000_21 + 1)
	lda	(___fsadd_mant1_10000_21 + 2)
	adc	(___fsadd_mant2_10000_21 + 2)
	sta	(___fsadd_mant1_10000_21 + 2)
	lda	(___fsadd_mant1_10000_21 + 3)
	adc	(___fsadd_mant2_10000_21 + 3)
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 100 : (37, 50.000000) count=1.000000
;	../_fsadd.c: 214: sign = false;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 102 : (2, 2.000000) count=1.000000
;	../_fsadd.c: 216: if (mant1 < 0)
;	genCmp
	bit	(___fsadd_mant1_10000_21 + 3)
	bpl	00119$
;	Raw cost for generated ic 103 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	../_fsadd.c: 218: mant1 = -mant1;
;	genUminus
	txa
	sec
	sbc	___fsadd_mant1_10000_21
	sta	___fsadd_mant1_10000_21
	txa
	sbc	(___fsadd_mant1_10000_21 + 1)
	sta	(___fsadd_mant1_10000_21 + 1)
	txa
	sbc	(___fsadd_mant1_10000_21 + 2)
	sta	(___fsadd_mant1_10000_21 + 2)
	txa
	sbc	(___fsadd_mant1_10000_21 + 3)
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 107 : (29, 42.000000) count=0.750000
;	../_fsadd.c: 219: sign = true;
;	genAssign
;	genCopy
	inx
;	Raw cost for generated ic 109 : (1, 2.000000) count=0.750000
;	genGoto
	jmp	00151$
;	Raw cost for generated ic 110 : (3, 3.000000) count=0.750000
;	genLabel
00119$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.250000
;	../_fsadd.c: 221: else if (!mant1)
;	genIfx
	lda	(___fsadd_mant1_10000_21 + 3)
	ora	(___fsadd_mant1_10000_21 + 2)
	ora	(___fsadd_mant1_10000_21 + 1)
	ora	___fsadd_mant1_10000_21
;	genIfxJump : z
	bne	00151$
;	Raw cost for generated ic 112 : (17, 21.600000) count=0.250000
;	../_fsadd.c: 222: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 115 : (10, 13.000000) count=0.187500
;	../_fsadd.c: 225: while (mant1 < (HIDDEN<<4)) {
;	genLabel
00151$:
;	Raw cost for generated ic 192 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(___fsadd_sloc0_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*___fsadd_sloc0_1_0
	sta	*___fsadd_sloc3_1_0
;	Raw cost for generated ic 196 : (8, 12.000000) count=1.000000
;	genLabel
00121$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=3.999997
;	genCast
;	genCopy
	lda	(___fsadd_mant1_10000_21 + 3)
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	(___fsadd_mant1_10000_21 + 2)
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_mant1_10000_21 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	___fsadd_mant1_10000_21
	sta	*___fsadd_sloc2_1_0
;	Raw cost for generated ic 119 : (20, 28.000000) count=3.999997
;	genCmp
	lda	*(___fsadd_sloc2_1_0 + 3)
	sec
	sbc	#0x08
	bcs	00154$
;	Raw cost for generated ic 120 : (10, 12.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 121 : (0, 0.000000) count=3.999997
;	../_fsadd.c: 226: mant1 <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	___fsadd_mant1_10000_21
	rol	(___fsadd_mant1_10000_21 + 1)
	rol	(___fsadd_mant1_10000_21 + 2)
	rol	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 124 : (12, 24.000000) count=2.999997
;	../_fsadd.c: 227: exp1--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*___fsadd_sloc3_1_0
	bne	00292$
	dec	*(___fsadd_sloc3_1_0 + 1)
00292$:
	dec	*___fsadd_sloc3_1_0
;	Raw cost for generated ic 127 : (8, 15.600000) count=2.999997
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 129 : (3, 3.000000) count=2.999997
;	../_fsadd.c: 231: while (mant1 & 0xf0000000) {
;	genLabel
00154$:
;	Raw cost for generated ic 193 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 199 : (0, 0.000000) count=0.999999
;	genLabel
00126$:
;	Raw cost for generated ic 131 : (0, 0.000000) count=3.999991
;	genAnd
	lda	(___fsadd_mant1_10000_21 + 3)
	and	#0xf0
;	genIfxJump : z
	beq	00160$
;	Raw cost for generated ic 132 : (10, 11.600000) count=3.999991
;	skipping generated iCode
;	Raw cost for generated ic 133 : (0, 0.000000) count=3.999991
;	../_fsadd.c: 232: if (mant1&1)
;	genAnd
	lda	___fsadd_mant1_10000_21
	and	#0x01
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 136 : (12, 14.200001) count=2.999994
;	skipping generated iCode
;	Raw cost for generated ic 137 : (0, 0.000000) count=2.999994
;	../_fsadd.c: 233: mant1 += 2;
;	genPlus
;	  genPlusInc
	lda	___fsadd_mant1_10000_21
	clc
	adc	#0x02
	sta	___fsadd_mant1_10000_21
	bcc	00297$
	inc	(___fsadd_mant1_10000_21 + 1)
	bne	00297$
	inc	(___fsadd_mant1_10000_21 + 2)
	bne	00297$
	inc	(___fsadd_mant1_10000_21 + 3)
00297$:
;	Raw cost for generated ic 140 : (24, 37.800003) count=2.249994
;	genLabel
00125$:
;	Raw cost for generated ic 142 : (0, 0.000000) count=2.999992
;	../_fsadd.c: 234: mant1 >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	(___fsadd_mant1_10000_21 + 3)
	cmp	#0x80
	ror	a
	ror	(___fsadd_mant1_10000_21 + 2)
	ror	(___fsadd_mant1_10000_21 + 1)
	ror	___fsadd_mant1_10000_21
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 143 : (18, 30.000000) count=2.999992
;	../_fsadd.c: 235: exp1++;
;	genPlus
;	  genPlusInc
	inc	*___fsadd_sloc3_1_0
	bne	00126$
	inc	*(___fsadd_sloc3_1_0 + 1)
;	Raw cost for generated ic 146 : (6, 12.600000) count=2.999992
;	genGoto
	jmp	00126$
;	Raw cost for generated ic 148 : (3, 3.000000) count=2.999992
;	genLabel
00160$:
;	Raw cost for generated ic 200 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_exp1_10000_21 + 1)
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_exp1_10000_21
;	Raw cost for generated ic 201 : (10, 14.000000) count=0.999997
;	../_fsadd.c: 239: mant1 &= ~(HIDDEN<<4);
;	genAnd
	lda	(___fsadd_mant1_10000_21 + 3)
	and	#0xf7
	sta	(___fsadd_mant1_10000_21 + 3)
;	Raw cost for generated ic 150 : (8, 10.000000) count=0.999997
;	../_fsadd.c: 242: if (exp1 >= 0x100)
;	genCmp
	lda	*(___fsadd_sloc3_1_0 + 1)
	sec
	sbc	#0x01
	bvs	00300$
	bpl	00299$
	bmi	00133$
00300$:
	bpl	00133$
00299$:
;	Raw cost for generated ic 152 : (16, 20.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.999997
;	../_fsadd.c: 243: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 157 : (7, 7.600000) count=0.749997
;	genAssign
;	genAssignLit
	stz	*___fsadd_sloc2_1_0
	stz	*(___fsadd_sloc2_1_0 + 1)
	ldx	#0x80
	stx	*(___fsadd_sloc2_1_0 + 2)
	ldx	#0xff
	stx	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 158 : (14, 18.000000) count=0.562497
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 159 : (3, 3.000000) count=0.562497
;	genLabel
00137$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.187499
;	genAssign
;	genAssignLit
	stz	*___fsadd_sloc2_1_0
	stz	*(___fsadd_sloc2_1_0 + 1)
	ldx	#0x80
	stx	*(___fsadd_sloc2_1_0 + 2)
	dex
	stx	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 161 : (13, 18.000000) count=0.187499
;	genLabel
00138$:
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.749996
;	genPointerSet
;	genDataPointerSet
	lda	*(___fsadd_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(___fsadd_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*___fsadd_sloc2_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 163 : (20, 28.000000) count=0.749996
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 164 : (3, 3.000000) count=0.749996
;	genLabel
00133$:
;	Raw cost for generated ic 165 : (0, 0.000000) count=0.249999
;	../_fsadd.c: 244: else if (exp1 < 0)
;	genCmp
	bit	*(___fsadd_sloc3_1_0 + 1)
	bpl	00130$
;	Raw cost for generated ic 166 : (7, 8.600000) count=0.249999
;	skipping generated iCode
;	Raw cost for generated ic 167 : (0, 0.000000) count=0.249999
;	../_fsadd.c: 245: *pfl1 = 0;
;	genPointerSet
;	genDataPointerSet
	stz	(___fsadd_PARM_1 + 3)
	stz	(___fsadd_PARM_1 + 2)
	stz	(___fsadd_PARM_1 + 1)
	stz	___fsadd_PARM_1
;	Raw cost for generated ic 171 : (12, 16.000000) count=0.187499
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 172 : (3, 3.000000) count=0.187499
;	genLabel
00130$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=0.062499
;	../_fsadd.c: 247: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00139$
;	Raw cost for generated ic 175 : (7, 7.600000) count=0.062499
;	genAssign
;	genAssignLit
	stz	*___fsadd_sloc3_1_0
	stz	*(___fsadd_sloc3_1_0 + 1)
	stz	*(___fsadd_sloc3_1_0 + 2)
	ldx	#0x80
	stx	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 176 : (13, 17.000000) count=0.046873
;	genGoto
	jmp	00140$
;	Raw cost for generated ic 177 : (3, 3.000000) count=0.046873
;	genLabel
00139$:
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.012632
;	genAssign
;	genAssignLit
	stz	*___fsadd_sloc3_1_0
	stz	*(___fsadd_sloc3_1_0 + 1)
	stz	*(___fsadd_sloc3_1_0 + 2)
	stz	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 179 : (12, 16.000000) count=0.012632
;	genLabel
00140$:
;	Raw cost for generated ic 180 : (0, 0.000000) count=0.059505
;	genCast
	lda	___fsadd_exp1_10000_21
	sta	*___fsadd_sloc2_1_0
	lda	(___fsadd_exp1_10000_21 + 1)
	sta	*(___fsadd_sloc2_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 181 : (21, 28.000000) count=0.059505
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(___fsadd_sloc2_1_0 + 1)
	lsr	a
	lda	*___fsadd_sloc2_1_0
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	#0x00
	sta	*(___fsadd_sloc2_1_0 + 1)
	sta	*___fsadd_sloc2_1_0
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 2)
;	Raw cost for generated ic 182 : (17, 26.000000) count=0.059505
;	genOr
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 183 : (24, 36.000000) count=0.059505
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=4
	lda	(___fsadd_mant1_10000_21 + 3)
	cmp	#0x80
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 3)
	lda	(___fsadd_mant1_10000_21 + 2)
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 2)
	lda	(___fsadd_mant1_10000_21 + 1)
	ror	a
	sta	*(___fsadd_sloc2_1_0 + 1)
	lda	___fsadd_mant1_10000_21
	ror	a
	sta	*___fsadd_sloc2_1_0
	lda	*(___fsadd_sloc2_1_0 + 3)
	cmp	#0x80
	ror	a
	ror	*(___fsadd_sloc2_1_0 + 2)
	ror	*(___fsadd_sloc2_1_0 + 1)
	ror	*___fsadd_sloc2_1_0
	cmp	#0x80
	ror	a
	ror	*(___fsadd_sloc2_1_0 + 2)
	ror	*(___fsadd_sloc2_1_0 + 1)
	ror	*___fsadd_sloc2_1_0
	cmp	#0x80
	ror	a
	ror	*(___fsadd_sloc2_1_0 + 2)
	ror	*(___fsadd_sloc2_1_0 + 1)
	ror	*___fsadd_sloc2_1_0
	sta	*(___fsadd_sloc2_1_0 + 3)
;	Raw cost for generated ic 184 : (57, 101.000000) count=0.059505
;	genOr
	lda	*___fsadd_sloc3_1_0
	ora	*___fsadd_sloc2_1_0
	sta	*___fsadd_sloc3_1_0
	lda	*(___fsadd_sloc3_1_0 + 1)
	ora	*(___fsadd_sloc2_1_0 + 1)
	sta	*(___fsadd_sloc3_1_0 + 1)
	lda	*(___fsadd_sloc3_1_0 + 2)
	ora	*(___fsadd_sloc2_1_0 + 2)
	sta	*(___fsadd_sloc3_1_0 + 2)
	lda	*(___fsadd_sloc3_1_0 + 3)
	ora	*(___fsadd_sloc2_1_0 + 3)
	sta	*(___fsadd_sloc3_1_0 + 3)
;	Raw cost for generated ic 185 : (24, 36.000000) count=0.059505
;	genPointerSet
;	genDataPointerSet
	sta	(___fsadd_PARM_1 + 3)
	lda	*(___fsadd_sloc3_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(___fsadd_sloc3_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*___fsadd_sloc3_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 186 : (18, 25.000000) count=0.059505
;	genLabel
00134$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.997000
;	../_fsadd.c: 248: return (a1);
;	genRet
	lda	(___fsadd_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsadd_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsadd_PARM_1 + 1)
	lda	___fsadd_PARM_1
;	Raw cost for generated ic 189 : (16, 22.000000) count=0.997000
;	genLabel
;	Raw cost for generated ic 190 : (0, 0.000000) count=0.997000
;	../_fsadd.c: 249: }
;	genEndFunction
	rts
;	Raw cost for generated ic 191 : (1, 6.000000) count=0.997000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
