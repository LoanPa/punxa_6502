;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsmul
	
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
	.globl ___fsmul_PARM_2
	.globl ___fsmul_PARM_1
	.globl ___fsmul
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fsmul_sloc0_1_0:
	.ds 4
___fsmul_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsmul_PARM_1:
	.ds 4
___fsmul_PARM_2:
	.ds 4
___fsmul_fl1_10000_21:
	.ds 4
___fsmul_fl2_10000_21:
	.ds 4
___fsmul_result_10000_21:
	.ds 4
___fsmul_exp_10000_21:
	.ds 2
___fsmul_sign_10000_21:
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
;Allocation info for local variables in function '__fsmul'
;------------------------------------------------------------
;sloc0         Allocated with name '___fsmul_sloc0_1_0'
;sloc1         Allocated with name '___fsmul_sloc1_1_0'
;a1            Allocated with name '___fsmul_PARM_1'
;a2            Allocated with name '___fsmul_PARM_2'
;fl1           Allocated with name '___fsmul_fl1_10000_21'
;fl2           Allocated with name '___fsmul_fl2_10000_21'
;result        Allocated with name '___fsmul_result_10000_21'
;exp           Allocated with name '___fsmul_exp_10000_21'
;sign          Allocated with name '___fsmul_sign_10000_21'
;------------------------------------------------------------
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsmul:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 248: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsmul_PARM_1 + 3)
	sta	(___fsmul_fl1_10000_21 + 3)
	lda	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_fl1_10000_21 + 2)
	lda	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_fl1_10000_21 + 1)
	lda	___fsmul_PARM_1
	sta	___fsmul_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fsmul.c: 249: fl2.f = a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsmul_PARM_2 + 3)
	sta	(___fsmul_fl2_10000_21 + 3)
	lda	(___fsmul_PARM_2 + 2)
	sta	(___fsmul_fl2_10000_21 + 2)
	lda	(___fsmul_PARM_2 + 1)
	sta	(___fsmul_fl2_10000_21 + 1)
	lda	___fsmul_PARM_2
	sta	___fsmul_fl2_10000_21
;	Raw cost for generated ic 7 : (24, 32.000000) count=1.000000
;	../_fsmul.c: 251: if (!fl1.l || !fl2.l)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 10 : (20, 28.000000) count=1.000000
;	genIfx
	lda	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 11 : (13, 17.600000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 16 : (20, 28.000000) count=0.750000
;	genIfx
	lda	*(___fsmul_sloc0_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 1)
	ora	*___fsmul_sloc0_1_0
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 17 : (13, 17.600000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.812500
;	../_fsmul.c: 252: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 20 : (10, 13.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 255: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 24 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsmul_sloc0_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	rol	a
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 25 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 187 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 26 : (4, 5.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 29 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsmul_sloc1_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 1)
	rol	a
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 30 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 188 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
;	Raw cost for generated ic 31 : (2, 2.000000) count=1.000000
;	genXor
	eor	*___fsmul_sloc0_1_0
	sta	___fsmul_sign_10000_21
;	Raw cost for generated ic 32 : (5, 7.000000) count=1.000000
;	../_fsmul.c: 256: exp = EXP (fl1.l) - EXCESS;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 37 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsmul_sloc1_1_0 + 2)
	rol	a
	lda	*(___fsmul_sloc1_1_0 + 3)
	rol	a
	sta	*___fsmul_sloc1_1_0
	lda	#0x00
	sta	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 3)
	rol	a
	sta	*(___fsmul_sloc1_1_0 + 1)
;	Raw cost for generated ic 38 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 189 : (3, 5.000000) count=1.000000
;	genAnd
	lda *___fsmul_sloc1_1_0
	ldx #0x00
;	Raw cost for generated ic 39 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=126
	sec
	sbc	#0x7e
	sta	*___fsmul_sloc1_1_0
	txa
	sbc	#0x00
	sta	*(___fsmul_sloc1_1_0 + 1)
;	Raw cost for generated ic 40 : (10, 14.000000) count=1.000000
;	../_fsmul.c: 257: exp += EXP (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 45 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsmul_sloc0_1_0 + 2)
	rol	a
	lda	*(___fsmul_sloc0_1_0 + 3)
	rol	a
	sta	*___fsmul_sloc0_1_0
	txa
	sta	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 3)
	rol	a
	sta	*(___fsmul_sloc0_1_0 + 1)
;	Raw cost for generated ic 46 : (16, 26.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 190 : (3, 5.000000) count=1.000000
;	genAnd
	lda *___fsmul_sloc0_1_0
	ldx #0x00
;	Raw cost for generated ic 47 : (2, 2.000000) count=1.000000
;	genPlus
	clc
	adc	*___fsmul_sloc1_1_0
	sta	___fsmul_exp_10000_21
	txa
	adc	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_exp_10000_21 + 1)
;	Raw cost for generated ic 49 : (12, 18.000000) count=1.000000
;	../_fsmul.c: 259: fl1.l = MANT (fl1.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 56 : (20, 28.000000) count=1.000000
;	genAnd
	stx	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 57 : (2, 3.000000) count=1.000000
;	genOr
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
;	Raw cost for generated ic 58 : (6, 8.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl1_10000_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_10000_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_10000_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_10000_21
;	Raw cost for generated ic 59 : (20, 28.000000) count=1.000000
;	../_fsmul.c: 260: fl2.l = MANT (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 64 : (20, 28.000000) count=1.000000
;	genAnd
	stx	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 65 : (2, 3.000000) count=1.000000
;	genOr
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
;	Raw cost for generated ic 66 : (6, 8.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_fl2_10000_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl2_10000_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl2_10000_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl2_10000_21
;	Raw cost for generated ic 67 : (20, 28.000000) count=1.000000
;	../_fsmul.c: 263: result = (unsigned long)((unsigned short)(fl1.l >> 8)) * (unsigned short)(fl2.l >> 8);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 70 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 2)
	stx	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 71 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 72 : (4, 6.000000) count=1.000000
;	genCast
;	genCopy
	stz	(__mullong_PARM_1 + 3)
	stz	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
;	Raw cost for generated ic 73 : (12, 16.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 76 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 2)
	stz	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 77 : (15, 22.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 78 : (4, 6.000000) count=1.000000
;	genCast
;	genCopy
	stz	(__mullong_PARM_2 + 3)
	stz	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
;	Raw cost for generated ic 79 : (12, 16.000000) count=1.000000
;	../_fsmul.c: 264: result += ((unsigned long)((unsigned short)(fl1.l & 0xff)) * (unsigned short)(fl2.l >> 8)) >> 8;
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*___fsmul_sloc1_1_0
	stx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 193 : (15, 24.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 84 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 185 : (2, 3.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 85 : (2, 2.000000) count=1.000000
;	genCast
;	genCopy
	stx	(__mullong_PARM_1 + 3)
	stx	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
;	Raw cost for generated ic 87 : (12, 16.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 90 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 91 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 92 : (4, 6.000000) count=1.000000
;	genCast
;	genCopy
	stz	(__mullong_PARM_2 + 3)
	stz	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
;	Raw cost for generated ic 93 : (12, 16.000000) count=1.000000
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 196 : (15, 24.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stz	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 95 : (15, 22.000000) count=1.000000
;	genPlus
	lda	*___fsmul_sloc1_1_0
	clc
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 96 : (25, 38.000000) count=1.000000
;	../_fsmul.c: 265: result += ((unsigned long)((unsigned short)(fl2.l & 0xff)) * (unsigned short)(fl1.l >> 8)) >> 8;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 98 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl2_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl2_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl2_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl2_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 100 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 186 : (2, 3.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 101 : (2, 2.000000) count=1.000000
;	genCast
;	genCopy
	stx	(__mullong_PARM_1 + 3)
	stx	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
;	Raw cost for generated ic 103 : (12, 16.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 106 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stx	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 107 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___fsmul_sloc0_1_0
;	Raw cost for generated ic 108 : (4, 6.000000) count=1.000000
;	genCast
;	genCopy
	stz	(__mullong_PARM_2 + 3)
	stz	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 1)
	sta	__mullong_PARM_2
;	Raw cost for generated ic 109 : (12, 16.000000) count=1.000000
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*___fsmul_sloc0_1_0
	stx	*(___fsmul_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 199 : (15, 24.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc0_1_0 + 2)
	stz	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 111 : (15, 22.000000) count=1.000000
;	genPlus
	lda	*___fsmul_sloc1_1_0
	clc
	adc	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 112 : (25, 38.000000) count=1.000000
;	../_fsmul.c: 268: result += 0x40;
;	genPlus
;	  genPlusInc
	lda	*___fsmul_sloc1_1_0
	clc
	adc	#0x40
	sta	*___fsmul_sloc0_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	adc	#0x00
	sta	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 114 : (25, 34.000000) count=1.000000
;	../_fsmul.c: 270: if (result & SIGNBIT)
;	genAnd
	bit	*(___fsmul_sloc0_1_0 + 3)
;	genIfxJump : n
	bpl	00105$
;	Raw cost for generated ic 116 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 273: result += 0x40;
;	genPlus
;	  genPlusInc
	lda	*___fsmul_sloc1_1_0
	clc
	adc	#0x80
	sta	*___fsmul_sloc1_1_0
	bcc	00166$
	inc	*(___fsmul_sloc1_1_0 + 1)
	bne	00166$
	inc	*(___fsmul_sloc1_1_0 + 2)
	bne	00166$
	inc	*(___fsmul_sloc1_1_0 + 3)
00166$:
;	Raw cost for generated ic 120 : (19, 32.800003) count=0.750000
;	../_fsmul.c: 274: result >>= 8;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=8
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	___fsmul_result_10000_21
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_result_10000_21 + 1)
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	(___fsmul_result_10000_21 + 2)
	stz	(___fsmul_result_10000_21 + 3)
;	Raw cost for generated ic 122 : (18, 25.000000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 124 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 125 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 278: result >>= 7;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=7
	lda	*___fsmul_sloc0_1_0
	rol	a
	lda	*(___fsmul_sloc0_1_0 + 1)
	rol	a
	sta	___fsmul_result_10000_21
	lda	*(___fsmul_sloc0_1_0 + 2)
	rol	a
	sta	(___fsmul_result_10000_21 + 1)
	lda	*(___fsmul_sloc0_1_0 + 3)
	rol	a
	sta	(___fsmul_result_10000_21 + 2)
	lda	#0x00
	rol	a
	sta	(___fsmul_result_10000_21 + 3)
;	Raw cost for generated ic 126 : (27, 40.000000) count=0.250000
;	../_fsmul.c: 279: exp--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	___fsmul_exp_10000_21
	bne	00167$
	dec	(___fsmul_exp_10000_21 + 1)
00167$:
	dec	___fsmul_exp_10000_21
;	Raw cost for generated ic 129 : (11, 18.600000) count=0.250000
;	genLabel
00106$:
;	Raw cost for generated ic 131 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 282: result &= ~HIDDEN;
;	genAnd
	lda	(___fsmul_result_10000_21 + 2)
	and	#0x7f
	sta	(___fsmul_result_10000_21 + 2)
;	Raw cost for generated ic 132 : (8, 10.000000) count=1.000000
;	../_fsmul.c: 285: if (exp >= 0x100)
;	genCmp
	lda	(___fsmul_exp_10000_21 + 1)
	sec
	sbc	#0x01
	bvs	00169$
	bpl	00168$
	bmi	00111$
00169$:
	bpl	00111$
00168$:
;	Raw cost for generated ic 134 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 135 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 286: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 138 : (0, 0.000000) count=0.750000
;	genIfx
	lda	___fsmul_sign_10000_21
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 140 : (8, 9.600000) count=0.750000
;	genAssign
;	genAssignLit
	stz	*___fsmul_sloc1_1_0
	stz	*(___fsmul_sloc1_1_0 + 1)
	stz	*(___fsmul_sloc1_1_0 + 2)
	ldx	#0x80
	stx	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 141 : (13, 17.000000) count=0.562500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 142 : (3, 3.000000) count=0.562500
;	genLabel
00115$:
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.187500
;	genAssign
;	genAssignLit
	stz	*___fsmul_sloc1_1_0
	stz	*(___fsmul_sloc1_1_0 + 1)
	stz	*(___fsmul_sloc1_1_0 + 2)
	stz	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 144 : (12, 16.000000) count=0.187500
;	genLabel
00116$:
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.750000
;	genOr
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	#0x80
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	#0x7f
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 146 : (12, 16.000000) count=0.750000
;	genPointerSet
;	genDataPointerSet
	sta	(___fsmul_fl1_10000_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_10000_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_10000_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_10000_21
;	Raw cost for generated ic 147 : (18, 25.000000) count=0.750000
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 148 : (3, 3.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 287: else if (exp < 0)
;	genCmp
	bit	(___fsmul_exp_10000_21 + 1)
	bpl	00108$
;	Raw cost for generated ic 150 : (8, 9.600000) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 151 : (0, 0.000000) count=0.250000
;	../_fsmul.c: 288: fl1.l = 0;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 154 : (0, 0.000000) count=0.187500
;	genPointerSet
;	genDataPointerSet
	stz	(___fsmul_fl1_10000_21 + 3)
	stz	(___fsmul_fl1_10000_21 + 2)
	stz	(___fsmul_fl1_10000_21 + 1)
	stz	___fsmul_fl1_10000_21
;	Raw cost for generated ic 156 : (12, 16.000000) count=0.187500
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.187500
;	genLabel
00108$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.062500
;	../_fsmul.c: 290: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.062500
;	genIfx
	lda	___fsmul_sign_10000_21
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 161 : (8, 9.600000) count=0.062500
;	genAssign
;	genAssignLit
	stz	*___fsmul_sloc1_1_0
	stz	*(___fsmul_sloc1_1_0 + 1)
	stz	*(___fsmul_sloc1_1_0 + 2)
	ldx	#0x80
	stx	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 162 : (13, 17.000000) count=0.046875
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 163 : (3, 3.000000) count=0.046875
;	genLabel
00117$:
;	Raw cost for generated ic 164 : (0, 0.000000) count=0.015625
;	genAssign
;	genAssignLit
	stz	*___fsmul_sloc1_1_0
	stz	*(___fsmul_sloc1_1_0 + 1)
	stz	*(___fsmul_sloc1_1_0 + 2)
	stz	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 165 : (12, 16.000000) count=0.015625
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.062500
;	genCast
	lda	___fsmul_exp_10000_21
	sta	*___fsmul_sloc0_1_0
	lda	(___fsmul_exp_10000_21 + 1)
	sta	*(___fsmul_sloc0_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc0_1_0 + 3)
;	Raw cost for generated ic 167 : (21, 28.000000) count=0.062500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(___fsmul_sloc0_1_0 + 1)
	lsr	a
	lda	*___fsmul_sloc0_1_0
	ror	a
	sta	*(___fsmul_sloc0_1_0 + 3)
	lda	#0x00
	sta	*(___fsmul_sloc0_1_0 + 1)
	sta	*___fsmul_sloc0_1_0
	ror	a
	sta	*(___fsmul_sloc0_1_0 + 2)
;	Raw cost for generated ic 168 : (17, 26.000000) count=0.062500
;	genOr
	lda	*___fsmul_sloc1_1_0
	ora	*___fsmul_sloc0_1_0
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	*(___fsmul_sloc0_1_0 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	*(___fsmul_sloc0_1_0 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	*(___fsmul_sloc0_1_0 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 169 : (24, 36.000000) count=0.062500
;	genOr
	lda	*___fsmul_sloc1_1_0
	ora	___fsmul_result_10000_21
	sta	*___fsmul_sloc1_1_0
	lda	*(___fsmul_sloc1_1_0 + 1)
	ora	(___fsmul_result_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	*(___fsmul_sloc1_1_0 + 2)
	ora	(___fsmul_result_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	*(___fsmul_sloc1_1_0 + 3)
	ora	(___fsmul_result_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
;	Raw cost for generated ic 170 : (28, 40.000000) count=0.062500
;	genPointerSet
;	genDataPointerSet
	sta	(___fsmul_fl1_10000_21 + 3)
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	(___fsmul_fl1_10000_21 + 2)
	lda	*(___fsmul_sloc1_1_0 + 1)
	sta	(___fsmul_fl1_10000_21 + 1)
	lda	*___fsmul_sloc1_1_0
	sta	___fsmul_fl1_10000_21
;	Raw cost for generated ic 171 : (18, 25.000000) count=0.062500
;	genLabel
00112$:
;	Raw cost for generated ic 173 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 291: return (fl1.f);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 174 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsmul_fl1_10000_21 + 3)
	sta	*(___fsmul_sloc1_1_0 + 3)
	lda	(___fsmul_fl1_10000_21 + 2)
	sta	*(___fsmul_sloc1_1_0 + 2)
	lda	(___fsmul_fl1_10000_21 + 1)
	sta	*(___fsmul_sloc1_1_0 + 1)
	lda	___fsmul_fl1_10000_21
	sta	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 176 : (20, 28.000000) count=1.000000
;	genRet
	lda	*(___fsmul_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fsmul_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fsmul_sloc1_1_0 + 1)
	lda	*___fsmul_sloc1_1_0
;	Raw cost for generated ic 177 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 178 : (0, 0.000000) count=1.000000
;	../_fsmul.c: 292: }
;	genEndFunction
	rts
;	Raw cost for generated ic 179 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
