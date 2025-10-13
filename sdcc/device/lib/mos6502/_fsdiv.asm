;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsdiv
	
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
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv_PARM_1
	.globl ___fsdiv
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fsdiv_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsdiv_org_sloc0_1_0:
	.ds 4
___fsdiv_org_sloc1_1_0:
	.ds 4
___fsdiv_org_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsdiv_org_PARM_1:
	.ds 4
___fsdiv_org_PARM_2:
	.ds 4
___fsdiv_org_fl1_10000_21:
	.ds 4
___fsdiv_org_fl2_10000_21:
	.ds 4
___fsdiv_org_result_10000_21:
	.ds 4
___fsdiv_org_mask_10000_21:
	.ds 4
___fsdiv_org_mant1_10000_21:
	.ds 4
___fsdiv_org_mant2_10000_21:
	.ds 4
___fsdiv_org_diff_40000_30:
	.ds 4
___fsdiv_PARM_1:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_f_30000_37:
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
;Allocation info for local variables in function '__fsdiv_org'
;------------------------------------------------------------
;a1            Allocated with name '___fsdiv_org_PARM_1'
;a2            Allocated with name '___fsdiv_org_PARM_2'
;fl1           Allocated with name '___fsdiv_org_fl1_10000_21'
;fl2           Allocated with name '___fsdiv_org_fl2_10000_21'
;result        Allocated with name '___fsdiv_org_result_10000_21'
;mask          Allocated with name '___fsdiv_org_mask_10000_21'
;mant1         Allocated with name '___fsdiv_org_mant1_10000_21'
;mant2         Allocated with name '___fsdiv_org_mant2_10000_21'
;exp           Allocated to registers a x 
;sign          Allocated to registers x 
;diff          Allocated with name '___fsdiv_org_diff_40000_30'
;sloc0         Allocated with name '___fsdiv_org_sloc0_1_0'
;sloc1         Allocated with name '___fsdiv_org_sloc1_1_0'
;sloc2         Allocated with name '___fsdiv_org_sloc2_1_0'
;------------------------------------------------------------
;	../_fsdiv.c: 274: static float __fsdiv_org (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsdiv_org
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___fsdiv_org:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 283: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsdiv_org_PARM_1 + 3)
	sta	(___fsdiv_org_fl1_10000_21 + 3)
	lda	(___fsdiv_org_PARM_1 + 2)
	sta	(___fsdiv_org_fl1_10000_21 + 2)
	lda	(___fsdiv_org_PARM_1 + 1)
	sta	(___fsdiv_org_fl1_10000_21 + 1)
	lda	___fsdiv_org_PARM_1
	sta	___fsdiv_org_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fsdiv.c: 285: exp = EXP (fl1.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl1_10000_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	(___fsdiv_org_fl1_10000_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_10000_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	___fsdiv_org_fl1_10000_21
	sta	*___fsdiv_org_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	rol	a
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	rol	a
	sta	*___fsdiv_org_sloc0_1_0
	lda	#0x00
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	rol	a
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
;	Raw cost for generated ic 9 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 143 : (3, 5.000000) count=1.000000
;	genAnd
	lda	*___fsdiv_org_sloc0_1_0
	ldy	#0x00
	sty	*(___fsdiv_org_sloc0_1_0 + 1)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	../_fsdiv.c: 287: if (!exp)
;	genIfx
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	ora	*___fsdiv_org_sloc0_1_0
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 13 : (9, 11.600000) count=1.000000
;	../_fsdiv.c: 288: return (0);
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 16 : (9, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 290: fl2.f = a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsdiv_org_PARM_2 + 3)
	sta	(___fsdiv_org_fl2_10000_21 + 3)
	lda	(___fsdiv_org_PARM_2 + 2)
	sta	(___fsdiv_org_fl2_10000_21 + 2)
	lda	(___fsdiv_org_PARM_2 + 1)
	sta	(___fsdiv_org_fl2_10000_21 + 1)
	lda	___fsdiv_org_PARM_2
	sta	___fsdiv_org_fl2_10000_21
;	Raw cost for generated ic 20 : (24, 32.000000) count=1.000000
;	../_fsdiv.c: 292: exp -= EXP (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl2_10000_21 + 3)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	(___fsdiv_org_fl2_10000_21 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	lda	(___fsdiv_org_fl2_10000_21 + 1)
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	lda	___fsdiv_org_fl2_10000_21
	sta	*___fsdiv_org_sloc1_1_0
;	Raw cost for generated ic 23 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsdiv_org_sloc1_1_0 + 2)
	rol	a
	lda	*(___fsdiv_org_sloc1_1_0 + 3)
	rol	a
	sta	*___fsdiv_org_sloc1_1_0
	lda	#0x00
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	rol	a
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
;	Raw cost for generated ic 25 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 148 : (3, 5.000000) count=1.000000
;	genAnd
	lda *___fsdiv_org_sloc1_1_0
	ldx #0x00
;	Raw cost for generated ic 26 : (2, 2.000000) count=1.000000
;	genMinus
	sta	*(REGTEMP+0)
	lda	*___fsdiv_org_sloc0_1_0
	sec
	sbc	*(REGTEMP+0)
	pha
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 28 : (14, 25.000000) count=1.000000
;	../_fsdiv.c: 293: exp += EXCESS;
;	genPlus
;	  genPlusInc
	clc
	adc	#0x7e
	sta	*___fsdiv_org_sloc1_1_0
	txa
	adc	#0x00
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
;	Raw cost for generated ic 31 : (10, 14.000000) count=1.000000
;	../_fsdiv.c: 296: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl1_10000_21 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	lda	(___fsdiv_org_fl1_10000_21 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_fl1_10000_21 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	___fsdiv_org_fl1_10000_21
	sta	*___fsdiv_org_sloc0_1_0
;	Raw cost for generated ic 35 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	rol	a
	sta	*___fsdiv_org_sloc0_1_0
;	Raw cost for generated ic 37 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 149 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
	sta	*___fsdiv_org_sloc0_1_0
;	Raw cost for generated ic 38 : (4, 5.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl2_10000_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl2_10000_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_10000_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl2_10000_21
	sta	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 41 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	rol	a
	sta	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 43 : (14, 21.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 150 : (0, 0.000000) count=1.000000
;	genAnd
	and	#0x01
;	Raw cost for generated ic 44 : (2, 2.000000) count=1.000000
;	genXor
	eor	*___fsdiv_org_sloc0_1_0
	tax
;	Raw cost for generated ic 45 : (3, 5.000000) count=1.000000
;	../_fsdiv.c: 299: mant1 = MANT (fl1.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl1_10000_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl1_10000_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_10000_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl1_10000_21
	sta	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 50 : (20, 28.000000) count=1.000000
;	genAnd
	ldy	#0x00
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 51 : (4, 5.000000) count=1.000000
;	genOr
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant1_10000_21
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_mant1_10000_21 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	#0x80
	sta	(___fsdiv_org_mant1_10000_21 + 2)
	ldy	*(___fsdiv_org_sloc2_1_0 + 3)
	sty	(___fsdiv_org_mant1_10000_21 + 3)
;	Raw cost for generated ic 52 : (22, 30.000000) count=1.000000
;	../_fsdiv.c: 300: mant2 = MANT (fl2.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl2_10000_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl2_10000_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl2_10000_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl2_10000_21
	sta	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 56 : (20, 28.000000) count=1.000000
;	genAnd
	ldy	#0x00
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 57 : (4, 5.000000) count=1.000000
;	genOr
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	#0x80
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
;	Raw cost for generated ic 58 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	(___fsdiv_org_mant2_10000_21 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_mant2_10000_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_mant2_10000_21 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_mant2_10000_21
;	Raw cost for generated ic 59 : (20, 28.000000) count=1.000000
;	../_fsdiv.c: 303: if (mant1 < mant2)
;	genCmp
	lda	___fsdiv_org_mant1_10000_21
	sec
	sbc	___fsdiv_org_mant2_10000_21
	lda	(___fsdiv_org_mant1_10000_21 + 1)
	sbc	(___fsdiv_org_mant2_10000_21 + 1)
	lda	(___fsdiv_org_mant1_10000_21 + 2)
	sbc	(___fsdiv_org_mant2_10000_21 + 2)
	lda	(___fsdiv_org_mant1_10000_21 + 3)
	sbc	(___fsdiv_org_mant2_10000_21 + 3)
	bcs	00104$
;	Raw cost for generated ic 60 : (30, 39.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 61 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 305: mask = 0x1000000;
;	genAssign
;	genAssignLit
	sty	___fsdiv_org_mask_10000_21
	sty	(___fsdiv_org_mask_10000_21 + 1)
	sty	(___fsdiv_org_mask_10000_21 + 2)
	iny
	sty	(___fsdiv_org_mask_10000_21 + 3)
;	Raw cost for generated ic 64 : (13, 18.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 65 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.250000
;	../_fsdiv.c: 309: mask = 0x0800000;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsdiv_org_mask_10000_21
	sty	(___fsdiv_org_mask_10000_21 + 1)
	sty	(___fsdiv_org_mask_10000_21 + 3)
	ldy	#0x80
	sty	(___fsdiv_org_mask_10000_21 + 2)
;	Raw cost for generated ic 67 : (16, 20.000000) count=0.250000
;	../_fsdiv.c: 310: exp++;
;	genPlus
;	  genPlusInc
	inc	*___fsdiv_org_sloc1_1_0
	bne	00197$
	inc	*(___fsdiv_org_sloc1_1_0 + 1)
00197$:
;	Raw cost for generated ic 69 : (6, 12.600000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 313: if (exp < 1) /* denormal */
;	genCmp
	lda	*___fsdiv_org_sloc1_1_0
	sec
	sbc	#0x01
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	sbc	#0x00
	bvc	00199$
	bpl	00198$
	bmi	00107$
00199$:
	bpl	00107$
00198$:
;	Raw cost for generated ic 72 : (20, 25.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 314: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 76 : (10, 13.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 316: if (exp >= 255)
;	genCmp
	lda	*___fsdiv_org_sloc1_1_0
	sec
	sbc	#0xff
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	sbc	#0x00
	bvs	00202$
	bpl	00201$
	bmi	00116$
00202$:
	bpl	00116$
00201$:
;	Raw cost for generated ic 78 : (20, 25.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 79 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 318: fl1.l = sign ? SIGNBIT | __INFINITY : __INFINITY;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.750000
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 84 : (7, 7.600000) count=0.750000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*___fsdiv_org_sloc0_1_0
	sty	*(___fsdiv_org_sloc0_1_0 + 1)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc0_1_0 + 2)
	ldx	#0xff
	stx	*(___fsdiv_org_sloc0_1_0 + 3)
;	Raw cost for generated ic 85 : (14, 18.000000) count=0.562500
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 86 : (3, 3.000000) count=0.562500
;	genLabel
00120$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*___fsdiv_org_sloc0_1_0
	sty	*(___fsdiv_org_sloc0_1_0 + 1)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc0_1_0 + 2)
	dex
	stx	*(___fsdiv_org_sloc0_1_0 + 3)
;	Raw cost for generated ic 88 : (13, 18.000000) count=0.187500
;	genLabel
00121$:
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.750000
;	genPointerSet
;	genDataPointerSet
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_fl1_10000_21 + 3)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_fl1_10000_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_fl1_10000_21 + 1)
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_fl1_10000_21
;	Raw cost for generated ic 90 : (20, 28.000000) count=0.750000
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 91 : (3, 3.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.250000
;	../_fsdiv.c: 323: result = 0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsdiv_org_result_10000_21
	sty	(___fsdiv_org_result_10000_21 + 1)
	sty	(___fsdiv_org_result_10000_21 + 2)
	sty	(___fsdiv_org_result_10000_21 + 3)
;	Raw cost for generated ic 93 : (14, 18.000000) count=0.250000
;	../_fsdiv.c: 324: do
;	genLabel
00110$:
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.999944
;	../_fsdiv.c: 326: long diff = mant1 - mant2;
;	genMinus
	lda	___fsdiv_org_mant1_10000_21
	sec
	sbc	*___fsdiv_org_sloc2_1_0
	sta	*___fsdiv_org_sloc0_1_0
	lda	(___fsdiv_org_mant1_10000_21 + 1)
	sbc	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	*(___fsdiv_org_sloc0_1_0 + 1)
	lda	(___fsdiv_org_mant1_10000_21 + 2)
	sbc	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*(___fsdiv_org_sloc0_1_0 + 2)
	lda	(___fsdiv_org_mant1_10000_21 + 3)
	sbc	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*(___fsdiv_org_sloc0_1_0 + 3)
;	Raw cost for generated ic 95 : (29, 42.000000) count=0.999944
;	genAssign
;	genCopy
	sta	(___fsdiv_org_diff_40000_30 + 3)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_diff_40000_30 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_diff_40000_30 + 1)
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_diff_40000_30
;	Raw cost for generated ic 96 : (18, 25.000000) count=0.999944
;	../_fsdiv.c: 327: if (diff >= 0)
;	genCmp
	bit	(___fsdiv_org_diff_40000_30 + 3)
	bmi	00109$
;	Raw cost for generated ic 97 : (8, 9.600000) count=0.999944
;	skipping generated iCode
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999944
;	../_fsdiv.c: 329: mant1 = diff;
;	genAssign
;	genCopy
	lda	*(___fsdiv_org_sloc0_1_0 + 3)
	sta	(___fsdiv_org_mant1_10000_21 + 3)
	lda	*(___fsdiv_org_sloc0_1_0 + 2)
	sta	(___fsdiv_org_mant1_10000_21 + 2)
	lda	*(___fsdiv_org_sloc0_1_0 + 1)
	sta	(___fsdiv_org_mant1_10000_21 + 1)
	lda	*___fsdiv_org_sloc0_1_0
	sta	___fsdiv_org_mant1_10000_21
;	Raw cost for generated ic 101 : (20, 28.000000) count=0.749943
;	../_fsdiv.c: 330: result |= mask;
;	genOr
	lda	___fsdiv_org_result_10000_21
	ora	___fsdiv_org_mask_10000_21
	sta	___fsdiv_org_result_10000_21
	lda	(___fsdiv_org_result_10000_21 + 1)
	ora	(___fsdiv_org_mask_10000_21 + 1)
	sta	(___fsdiv_org_result_10000_21 + 1)
	lda	(___fsdiv_org_result_10000_21 + 2)
	ora	(___fsdiv_org_mask_10000_21 + 2)
	sta	(___fsdiv_org_result_10000_21 + 2)
	lda	(___fsdiv_org_result_10000_21 + 3)
	ora	(___fsdiv_org_mask_10000_21 + 3)
	sta	(___fsdiv_org_result_10000_21 + 3)
;	Raw cost for generated ic 102 : (36, 48.000000) count=0.749943
;	genLabel
00109$:
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.999925
;	../_fsdiv.c: 332: mant1 <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	___fsdiv_org_mant1_10000_21
	rol	(___fsdiv_org_mant1_10000_21 + 1)
	rol	(___fsdiv_org_mant1_10000_21 + 2)
	rol	(___fsdiv_org_mant1_10000_21 + 3)
;	Raw cost for generated ic 105 : (12, 24.000000) count=0.999925
;	../_fsdiv.c: 333: mask >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	(___fsdiv_org_mask_10000_21 + 3)
	lsr	a
	ror	(___fsdiv_org_mask_10000_21 + 2)
	ror	(___fsdiv_org_mask_10000_21 + 1)
	ror	___fsdiv_org_mask_10000_21
	sta	(___fsdiv_org_mask_10000_21 + 3)
;	Raw cost for generated ic 107 : (16, 28.000000) count=0.999925
;	../_fsdiv.c: 335: while (mask);
;	genIfx
	ora	(___fsdiv_org_mask_10000_21 + 2)
	ora	(___fsdiv_org_mask_10000_21 + 1)
	ora	___fsdiv_org_mask_10000_21
;	genIfxJump : z
	beq	00208$
	jmp	00110$
00208$:
;	Raw cost for generated ic 110 : (14, 17.600000) count=0.999925
;	../_fsdiv.c: 338: if (mant1 >= mant2)
;	genCmp
	lda	___fsdiv_org_mant1_10000_21
	sec
	sbc	___fsdiv_org_mant2_10000_21
	lda	(___fsdiv_org_mant1_10000_21 + 1)
	sbc	(___fsdiv_org_mant2_10000_21 + 1)
	lda	(___fsdiv_org_mant1_10000_21 + 2)
	sbc	(___fsdiv_org_mant2_10000_21 + 2)
	lda	(___fsdiv_org_mant1_10000_21 + 3)
	sbc	(___fsdiv_org_mant2_10000_21 + 3)
	bcc	00114$
;	Raw cost for generated ic 113 : (30, 39.599998) count=0.249967
;	skipping generated iCode
;	Raw cost for generated ic 114 : (0, 0.000000) count=0.249967
;	../_fsdiv.c: 339: result += 1;
;	genPlus
;	  genPlusInc
	inc	___fsdiv_org_result_10000_21
	bne	00210$
	inc	(___fsdiv_org_result_10000_21 + 1)
	bne	00210$
	inc	(___fsdiv_org_result_10000_21 + 2)
	bne	00210$
	inc	(___fsdiv_org_result_10000_21 + 3)
00210$:
;	Raw cost for generated ic 117 : (18, 31.800001) count=0.187475
;	genLabel
00114$:
;	Raw cost for generated ic 119 : (0, 0.000000) count=0.249967
;	../_fsdiv.c: 341: result &= ~HIDDEN;
;	genAnd
	lda	(___fsdiv_org_result_10000_21 + 2)
	and	#0x7f
	sta	(___fsdiv_org_result_10000_21 + 2)
;	Raw cost for generated ic 120 : (8, 10.000000) count=0.249967
;	../_fsdiv.c: 344: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.249967
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 124 : (7, 7.600000) count=0.249967
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*___fsdiv_org_sloc2_1_0
	sty	*(___fsdiv_org_sloc2_1_0 + 1)
	sty	*(___fsdiv_org_sloc2_1_0 + 2)
	ldx	#0x80
	stx	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 125 : (12, 16.000000) count=0.187475
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 126 : (3, 3.000000) count=0.187475
;	genLabel
00122$:
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.062492
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*___fsdiv_org_sloc2_1_0
	sty	*(___fsdiv_org_sloc2_1_0 + 1)
	sty	*(___fsdiv_org_sloc2_1_0 + 2)
	sty	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 128 : (10, 14.000000) count=0.062492
;	genLabel
00123$:
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.249967
;	genCast
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
;	Raw cost for generated ic 130 : (19, 26.000000) count=0.249967
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(___fsdiv_org_sloc1_1_0 + 1)
	lsr	a
	lda	*___fsdiv_org_sloc1_1_0
	ror	a
	sta	*(___fsdiv_org_sloc1_1_0 + 3)
	lda	#0x00
	sta	*(___fsdiv_org_sloc1_1_0 + 1)
	sta	*___fsdiv_org_sloc1_1_0
	ror	a
	sta	*(___fsdiv_org_sloc1_1_0 + 2)
;	Raw cost for generated ic 131 : (17, 26.000000) count=0.249967
;	genOr
	lda	*___fsdiv_org_sloc2_1_0
	ora	*___fsdiv_org_sloc1_1_0
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	*(___fsdiv_org_sloc1_1_0 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	*(___fsdiv_org_sloc1_1_0 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	*(___fsdiv_org_sloc1_1_0 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 132 : (24, 36.000000) count=0.249967
;	genOr
	lda	*___fsdiv_org_sloc2_1_0
	ora	___fsdiv_org_result_10000_21
	sta	*___fsdiv_org_sloc2_1_0
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	ora	(___fsdiv_org_result_10000_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	ora	(___fsdiv_org_result_10000_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	ora	(___fsdiv_org_result_10000_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
;	Raw cost for generated ic 133 : (28, 40.000000) count=0.249967
;	genPointerSet
;	genDataPointerSet
	sta	(___fsdiv_org_fl1_10000_21 + 3)
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	(___fsdiv_org_fl1_10000_21 + 2)
	lda	*(___fsdiv_org_sloc2_1_0 + 1)
	sta	(___fsdiv_org_fl1_10000_21 + 1)
	lda	*___fsdiv_org_sloc2_1_0
	sta	___fsdiv_org_fl1_10000_21
;	Raw cost for generated ic 134 : (18, 25.000000) count=0.249967
;	genLabel
00117$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.999967
;	../_fsdiv.c: 346: return (fl1.f);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.999967
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_org_fl1_10000_21 + 3)
	sta	*(___fsdiv_org_sloc2_1_0 + 3)
	lda	(___fsdiv_org_fl1_10000_21 + 2)
	sta	*(___fsdiv_org_sloc2_1_0 + 2)
	lda	(___fsdiv_org_fl1_10000_21 + 1)
	sta	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	___fsdiv_org_fl1_10000_21
	sta	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 138 : (20, 28.000000) count=0.999967
;	genRet
	lda	*(___fsdiv_org_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fsdiv_org_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fsdiv_org_sloc2_1_0 + 1)
	lda	*___fsdiv_org_sloc2_1_0
;	Raw cost for generated ic 139 : (12, 18.000000) count=0.999967
;	genLabel
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.999967
;	../_fsdiv.c: 347: }
;	genEndFunction
	rts
;	Raw cost for generated ic 141 : (1, 6.000000) count=0.999967
;------------------------------------------------------------
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;sloc0         Allocated with name '___fsdiv_sloc0_1_0'
;a1            Allocated with name '___fsdiv_PARM_1'
;a2            Allocated with name '___fsdiv_PARM_2'
;p2            Allocated to registers 
;f             Allocated with name '___fsdiv_f_30000_37'
;p             Allocated to registers 
;------------------------------------------------------------
;	../_fsdiv.c: 349: float __fsdiv (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsdiv:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 351: unsigned long _AUTOMEM *p2 = (unsigned long *) &a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 353: if (EXP (*p2) == 0) // a2 is denormal or zero, treat as zero
;	genPointerGet
;	genDataPointerGet
	lda	(___fsdiv_PARM_2 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	(___fsdiv_PARM_2 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_PARM_2 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	___fsdiv_PARM_2
	sta	*___fsdiv_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fsdiv_sloc0_1_0 + 2)
	rol	a
	lda	*(___fsdiv_sloc0_1_0 + 3)
	rol	a
	sta	*___fsdiv_sloc0_1_0
	lda	#0x00
	sta	*(___fsdiv_sloc0_1_0 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	rol	a
	sta	*(___fsdiv_sloc0_1_0 + 1)
;	Raw cost for generated ic 8 : (17, 26.000000) count=1.000000
;	genAnd
	lda	*___fsdiv_sloc0_1_0
;	genIfxJump : z
	beq	00130$
	jmp	00108$
00130$:
;	Raw cost for generated ic 9 : (9, 11.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 356: unsigned long _AUTOMEM *p = (unsigned long *) &f;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.750000
;	../_fsdiv.c: 357: if (a1 > 0.0f)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_1
	sty	(___fslt_PARM_1 + 1)
	sty	(___fslt_PARM_1 + 2)
	sty	(___fslt_PARM_1 + 3)
;	Raw cost for generated ic 45 : (14, 18.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fslt_PARM_2 + 3)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fslt_PARM_2 + 2)
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fslt_PARM_2 + 1)
	lda	___fsdiv_PARM_1
	sta	___fslt_PARM_2
;	Raw cost for generated ic 46 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 47 : (3, 6.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 18 : (7, 7.600000) count=0.750000
;	../_fsdiv.c: 358: *p = __INFINITY;           // +inf
;	genPointerSet
;	genDataPointerSet
	ldx	#0x7f
	stx	(___fsdiv_f_30000_37 + 3)
	inx
	stx	(___fsdiv_f_30000_37 + 2)
	ldy	#0x00
	sty	(___fsdiv_f_30000_37 + 1)
	sty	___fsdiv_f_30000_37
;	Raw cost for generated ic 22 : (17, 22.000000) count=0.562500
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.562500
;	genLabel
00105$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.187500
;	../_fsdiv.c: 359: else if (a1 < 0.0f)
;	genAssign
;	genCopy
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	___fsdiv_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 48 : (24, 32.000000) count=0.187500
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fslt_PARM_2
	sty	(___fslt_PARM_2 + 1)
	sty	(___fslt_PARM_2 + 2)
	sty	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 49 : (14, 18.000000) count=0.187500
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 50 : (3, 6.000000) count=0.187500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 26 : (7, 7.600000) count=0.187500
;	../_fsdiv.c: 360: *p = SIGNBIT | __INFINITY; // -inf
;	genPointerSet
;	genDataPointerSet
	ldx	#0xff
	stx	(___fsdiv_f_30000_37 + 3)
	ldx	#0x80
	stx	(___fsdiv_f_30000_37 + 2)
	ldy	#0x00
	sty	(___fsdiv_f_30000_37 + 1)
	sty	___fsdiv_f_30000_37
;	Raw cost for generated ic 30 : (18, 22.000000) count=0.140625
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 31 : (3, 3.000000) count=0.140625
;	genLabel
00102$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.046875
;	../_fsdiv.c: 362: *p = __NAN;                // nan
;	genPointerSet
;	genDataPointerSet
	ldx	#0xff
	stx	(___fsdiv_f_30000_37 + 3)
	ldx	#0xc0
	stx	(___fsdiv_f_30000_37 + 2)
	ldy	#0x00
	sty	(___fsdiv_f_30000_37 + 1)
	sty	___fsdiv_f_30000_37
;	Raw cost for generated ic 34 : (18, 22.000000) count=0.046875
;	genLabel
00106$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.750000
;	../_fsdiv.c: 363: return f;
;	genRet
	lda	(___fsdiv_f_30000_37 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fsdiv_f_30000_37 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fsdiv_f_30000_37 + 1)
	lda	___fsdiv_f_30000_37
	rts
;	Raw cost for generated ic 37 : (19, 25.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 365: return __fsdiv_org (a1, a2);
;	genAssign
;	genCopy
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fsdiv_org_PARM_1 + 3)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fsdiv_org_PARM_1 + 2)
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fsdiv_org_PARM_1 + 1)
	lda	___fsdiv_PARM_1
	sta	___fsdiv_org_PARM_1
;	Raw cost for generated ic 39 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(___fsdiv_PARM_2 + 3)
	sta	(___fsdiv_org_PARM_2 + 3)
	lda	(___fsdiv_PARM_2 + 2)
	sta	(___fsdiv_org_PARM_2 + 2)
	lda	(___fsdiv_PARM_2 + 1)
	sta	(___fsdiv_org_PARM_2 + 1)
	lda	___fsdiv_PARM_2
	sta	___fsdiv_org_PARM_2
;	Raw cost for generated ic 40 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsdiv_org
;	assignResultValue
	sta	*___fsdiv_sloc0_1_0
	stx	*(___fsdiv_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fsdiv_sloc0_1_0 + 3)
;	Raw cost for generated ic 41 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___fsdiv_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___fsdiv_sloc0_1_0
;	Raw cost for generated ic 42 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../_fsdiv.c: 366: }
;	genEndFunction
	rts
;	Raw cost for generated ic 44 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
