;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2ulonglong
	
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
	.globl ___fs2ulonglong_PARM_1
	.globl ___fs2ulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2ulonglong_sloc0_1_0:
	.ds 4
___fs2ulonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2ulonglong_PARM_1:
	.ds 4
___fs2ulonglong_fl1_10000_21:
	.ds 4
___fs2ulonglong_exp_10000_21:
	.ds 2
___fs2ulonglong_l_10000_21:
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
;Allocation info for local variables in function '__fs2ulonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '___fs2ulonglong_sloc0_1_0'
;sloc1         Allocated with name '___fs2ulonglong_sloc1_1_0'
;a1            Allocated with name '___fs2ulonglong_PARM_1'
;fl1           Allocated with name '___fs2ulonglong_fl1_10000_21'
;exp           Allocated with name '___fs2ulonglong_exp_10000_21'
;l             Allocated with name '___fs2ulonglong_l_10000_21'
;------------------------------------------------------------
;	../_fs2ulonglong.c: 60: unsigned long long __fs2ulonglong (float a1) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2ulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2ulonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 66: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fs2ulonglong_PARM_1 + 3)
	sta	(___fs2ulonglong_fl1_10000_21 + 3)
	lda	(___fs2ulonglong_PARM_1 + 2)
	sta	(___fs2ulonglong_fl1_10000_21 + 2)
	lda	(___fs2ulonglong_PARM_1 + 1)
	sta	(___fs2ulonglong_fl1_10000_21 + 1)
	lda	___fs2ulonglong_PARM_1
	sta	___fs2ulonglong_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fs2ulonglong.c: 68: if (!fl1.l || SIGN(fl1.l))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulonglong_fl1_10000_21 + 3)
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	lda	(___fs2ulonglong_fl1_10000_21 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	lda	(___fs2ulonglong_fl1_10000_21 + 1)
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
	lda	___fs2ulonglong_fl1_10000_21
	sta	*___fs2ulonglong_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genIfx
	lda	*(___fs2ulonglong_sloc0_1_0 + 3)
	ora	*(___fs2ulonglong_sloc0_1_0 + 2)
	ora	*(___fs2ulonglong_sloc0_1_0 + 1)
	ora	*___fs2ulonglong_sloc0_1_0
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 8 : (13, 17.600000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulonglong_fl1_10000_21 + 3)
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	lda	(___fs2ulonglong_fl1_10000_21 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	lda	(___fs2ulonglong_fl1_10000_21 + 1)
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
	lda	___fs2ulonglong_fl1_10000_21
	sta	*___fs2ulonglong_sloc0_1_0
;	Raw cost for generated ic 13 : (20, 28.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fs2ulonglong_sloc0_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
	rol	a
	sta	*___fs2ulonglong_sloc0_1_0
;	Raw cost for generated ic 15 : (14, 21.000000) count=0.750000
;	genAnd
	and	#0x01
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 16 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.812500
;	../_fs2ulonglong.c: 69: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 20 : (18, 25.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 71: exp = EXP (fl1.l) - EXCESS - 24;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulonglong_fl1_10000_21 + 3)
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	lda	(___fs2ulonglong_fl1_10000_21 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	lda	(___fs2ulonglong_fl1_10000_21 + 1)
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
	lda	___fs2ulonglong_fl1_10000_21
	sta	*___fs2ulonglong_sloc0_1_0
;	Raw cost for generated ic 24 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fs2ulonglong_sloc0_1_0 + 2)
	rol	a
	lda	*(___fs2ulonglong_sloc0_1_0 + 3)
	rol	a
	sta	*___fs2ulonglong_sloc0_1_0
	lda	#0x00
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	rol	a
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
;	Raw cost for generated ic 26 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 61 : (3, 5.000000) count=1.000000
;	genAnd
	lda *___fs2ulonglong_sloc0_1_0
	ldx #0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=150
	sec
	sbc	#0x96
	sta	___fs2ulonglong_exp_10000_21
	txa
	sbc	#0x00
	sta	(___fs2ulonglong_exp_10000_21 + 1)
;	Raw cost for generated ic 28 : (12, 16.000000) count=1.000000
;	../_fs2ulonglong.c: 72: l = MANT (fl1.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulonglong_fl1_10000_21 + 3)
	sta	*(___fs2ulonglong_sloc0_1_0 + 3)
	lda	(___fs2ulonglong_fl1_10000_21 + 2)
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
	lda	(___fs2ulonglong_fl1_10000_21 + 1)
	sta	*(___fs2ulonglong_sloc0_1_0 + 1)
	lda	___fs2ulonglong_fl1_10000_21
	sta	*___fs2ulonglong_sloc0_1_0
;	Raw cost for generated ic 33 : (20, 28.000000) count=1.000000
;	genAnd
	stx	*(___fs2ulonglong_sloc0_1_0 + 3)
;	Raw cost for generated ic 34 : (2, 3.000000) count=1.000000
;	genOr
	lda	*(___fs2ulonglong_sloc0_1_0 + 2)
	ora	#0x80
	sta	*(___fs2ulonglong_sloc0_1_0 + 2)
;	Raw cost for generated ic 35 : (6, 8.000000) count=1.000000
;	genCast
	lda	*___fs2ulonglong_sloc0_1_0
	sta	*___fs2ulonglong_sloc1_1_0
	lda	*(___fs2ulonglong_sloc0_1_0 + 1)
	sta	*(___fs2ulonglong_sloc1_1_0 + 1)
	lda	*(___fs2ulonglong_sloc0_1_0 + 2)
	sta	*(___fs2ulonglong_sloc1_1_0 + 2)
	lda	*(___fs2ulonglong_sloc0_1_0 + 3)
	sta	*(___fs2ulonglong_sloc1_1_0 + 3)
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	*(___fs2ulonglong_sloc1_1_0 + 4)
	sta	*(___fs2ulonglong_sloc1_1_0 + 5)
	sta	*(___fs2ulonglong_sloc1_1_0 + 6)
	sta	*(___fs2ulonglong_sloc1_1_0 + 7)
;	Raw cost for generated ic 36 : (30, 44.000000) count=1.000000
;	../_fs2ulonglong.c: 74: if (exp > 8)
;	genCmp
	lda	#0x08
	sec
	sbc	___fs2ulonglong_exp_10000_21
	txa
	sbc	(___fs2ulonglong_exp_10000_21 + 1)
	bvc	00134$
	bpl	00133$
	bmi	00105$
00134$:
	bpl	00105$
00133$:
;	Raw cost for generated ic 38 : (21, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 75: return 0xfffffffful;
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	ldy	#0x00
	sty	*___SDCC_m6502_ret4
	sty	*___SDCC_m6502_ret5
	sty	*___SDCC_m6502_ret6
	sty	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 42 : (20, 27.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 77: if (exp < 0)
;	genCmp
	bit	(___fs2ulonglong_exp_10000_21 + 1)
	bpl	00107$
;	Raw cost for generated ic 44 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 78: l >>= -exp;
;	genCast
;	genCopy
	lda	___fs2ulonglong_exp_10000_21
;	Raw cost for generated ic 60 : (3, 4.000000) count=0.750000
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
;	Raw cost for generated ic 48 : (5, 6.000000) count=0.750000
;	genCast
;	genCopy
	sta	__srulonglong_PARM_2
;	Raw cost for generated ic 62 : (3, 4.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(___fs2ulonglong_sloc1_1_0 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	*(___fs2ulonglong_sloc1_1_0 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	*(___fs2ulonglong_sloc1_1_0 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	*(___fs2ulonglong_sloc1_1_0 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	*(___fs2ulonglong_sloc1_1_0 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	*(___fs2ulonglong_sloc1_1_0 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	*(___fs2ulonglong_sloc1_1_0 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	*___fs2ulonglong_sloc1_1_0
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 63 : (40, 56.000000) count=0.750000
;	genCall
	jsr	__srulonglong
;	assignResultValue
	sta	___fs2ulonglong_l_10000_21
	stx	(___fs2ulonglong_l_10000_21 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2ulonglong_l_10000_21 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2ulonglong_l_10000_21 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___fs2ulonglong_l_10000_21 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___fs2ulonglong_l_10000_21 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___fs2ulonglong_l_10000_21 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___fs2ulonglong_l_10000_21 + 7)
;	Raw cost for generated ic 65 : (39, 56.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 51 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.250000
;	../_fs2ulonglong.c: 80: l <<= exp;
;	genCast
;	genCopy
	lda	___fs2ulonglong_exp_10000_21
	sta	__slulonglong_PARM_2
;	Raw cost for generated ic 66 : (6, 8.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(___fs2ulonglong_sloc1_1_0 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	*(___fs2ulonglong_sloc1_1_0 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	*(___fs2ulonglong_sloc1_1_0 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	*(___fs2ulonglong_sloc1_1_0 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	*(___fs2ulonglong_sloc1_1_0 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	*(___fs2ulonglong_sloc1_1_0 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	*(___fs2ulonglong_sloc1_1_0 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	*___fs2ulonglong_sloc1_1_0
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 67 : (40, 56.000000) count=0.250000
;	genCall
	jsr	__slulonglong
;	assignResultValue
	sta	___fs2ulonglong_l_10000_21
	stx	(___fs2ulonglong_l_10000_21 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fs2ulonglong_l_10000_21 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fs2ulonglong_l_10000_21 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___fs2ulonglong_l_10000_21 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___fs2ulonglong_l_10000_21 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___fs2ulonglong_l_10000_21 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___fs2ulonglong_l_10000_21 + 7)
;	Raw cost for generated ic 69 : (39, 56.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 82: return l;
;	genRet
	lda	(___fs2ulonglong_l_10000_21 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(___fs2ulonglong_l_10000_21 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(___fs2ulonglong_l_10000_21 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(___fs2ulonglong_l_10000_21 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(___fs2ulonglong_l_10000_21 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fs2ulonglong_l_10000_21 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fs2ulonglong_l_10000_21 + 1)
	lda	___fs2ulonglong_l_10000_21
;	Raw cost for generated ic 56 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../_fs2ulonglong.c: 83: }
;	genEndFunction
	rts
;	Raw cost for generated ic 58 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
