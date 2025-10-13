;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	
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
	.globl ___fs2ulong_PARM_1
	.globl ___fs2ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fs2ulong_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2ulong_PARM_1:
	.ds 4
___fs2ulong_fl1_10000_21:
	.ds 4
___fs2ulong_exp_10000_21:
	.ds 2
___fs2ulong_l_10000_21:
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1            Allocated with name '___fs2ulong_PARM_1'
;fl1           Allocated with name '___fs2ulong_fl1_10000_21'
;exp           Allocated with name '___fs2ulong_exp_10000_21'
;l             Allocated with name '___fs2ulong_l_10000_21'
;sloc0         Allocated with name '___fs2ulong_sloc0_1_0'
;------------------------------------------------------------
;	../_fs2ulong.c: 103: unsigned long __fs2ulong (float a1) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2ulong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 109: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fs2ulong_PARM_1 + 3)
	sta	(___fs2ulong_fl1_10000_21 + 3)
	lda	(___fs2ulong_PARM_1 + 2)
	sta	(___fs2ulong_fl1_10000_21 + 2)
	lda	(___fs2ulong_PARM_1 + 1)
	sta	(___fs2ulong_fl1_10000_21 + 1)
	lda	___fs2ulong_PARM_1
	sta	___fs2ulong_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulong_fl1_10000_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_10000_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_10000_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_10000_21
	sta	*___fs2ulong_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genIfx
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	ora	*(___fs2ulong_sloc0_1_0 + 2)
	ora	*(___fs2ulong_sloc0_1_0 + 1)
	ora	*___fs2ulong_sloc0_1_0
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 8 : (13, 17.600000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulong_fl1_10000_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_10000_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_10000_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_10000_21
	sta	*___fs2ulong_sloc0_1_0
;	Raw cost for generated ic 13 : (20, 28.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	asl	a
	lda	#0x00
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	rol	a
	sta	*___fs2ulong_sloc0_1_0
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
;	../_fs2ulong.c: 112: return (0);
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
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulong_fl1_10000_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_10000_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_10000_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_10000_21
	sta	*___fs2ulong_sloc0_1_0
;	Raw cost for generated ic 24 : (20, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	rol	a
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	rol	a
	sta	*___fs2ulong_sloc0_1_0
	lda	#0x00
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	rol	a
	sta	*(___fs2ulong_sloc0_1_0 + 1)
;	Raw cost for generated ic 26 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (3, 5.000000) count=1.000000
;	genAnd
	lda *___fs2ulong_sloc0_1_0
	ldx #0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=150
	sec
	sbc	#0x96
	sta	___fs2ulong_exp_10000_21
	txa
	sbc	#0x00
	sta	(___fs2ulong_exp_10000_21 + 1)
;	Raw cost for generated ic 28 : (12, 16.000000) count=1.000000
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fs2ulong_fl1_10000_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	(___fs2ulong_fl1_10000_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_10000_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	___fs2ulong_fl1_10000_21
	sta	*___fs2ulong_sloc0_1_0
;	Raw cost for generated ic 33 : (20, 28.000000) count=1.000000
;	genAnd
	stx	*(___fs2ulong_sloc0_1_0 + 3)
;	Raw cost for generated ic 34 : (2, 3.000000) count=1.000000
;	genOr
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	ora	#0x80
	sta	*(___fs2ulong_sloc0_1_0 + 2)
;	Raw cost for generated ic 35 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_10000_21 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_10000_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_10000_21 + 1)
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_10000_21
;	Raw cost for generated ic 36 : (20, 28.000000) count=1.000000
;	../_fs2ulong.c: 117: if (exp > 8)
;	genCmp
	lda	#0x08
	sec
	sbc	___fs2ulong_exp_10000_21
	txa
	sbc	(___fs2ulong_exp_10000_21 + 1)
	bvc	00134$
	bpl	00133$
	bmi	00105$
00134$:
	bpl	00105$
00133$:
;	Raw cost for generated ic 37 : (21, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 118: return 0xfffffffful;
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 41 : (10, 13.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 120: if (exp < 0)
;	genCmp
	bit	(___fs2ulong_exp_10000_21 + 1)
	bpl	00107$
;	Raw cost for generated ic 43 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 121: l >>= -exp;
;	genCast
;	genCopy
	lda	___fs2ulong_exp_10000_21
;	Raw cost for generated ic 59 : (3, 4.000000) count=0.750000
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
;	Raw cost for generated ic 47 : (5, 6.000000) count=0.750000
;	genRightShift
	tay
	beq	00108$
	lda	(___fs2ulong_l_10000_21 + 3)
00137$:
	lsr	a
	ror	(___fs2ulong_l_10000_21 + 2)
	ror	(___fs2ulong_l_10000_21 + 1)
	ror	___fs2ulong_l_10000_21
	dey
	bne	00137$
	sta	(___fs2ulong_l_10000_21 + 3)
;	Raw cost for generated ic 48 : (22, 37.200001) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 50 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.250000
;	../_fs2ulong.c: 123: l <<= exp;
;	genLeftShift
	ldy	___fs2ulong_exp_10000_21
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_10000_21
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sta	(___fs2ulong_l_10000_21 + 1)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_10000_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_10000_21 + 3)
	cpy	#0x00
	beq	00140$
00139$:
	asl	___fs2ulong_l_10000_21
	rol	(___fs2ulong_l_10000_21 + 1)
	rol	(___fs2ulong_l_10000_21 + 2)
	rol	(___fs2ulong_l_10000_21 + 3)
	dey
	bne	00139$
00140$:
;	Raw cost for generated ic 52 : (42, 65.199997) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 125: return l;
;	genRet
	lda	(___fs2ulong_l_10000_21 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(___fs2ulong_l_10000_21 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(___fs2ulong_l_10000_21 + 1)
	lda	___fs2ulong_l_10000_21
;	Raw cost for generated ic 55 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	../_fs2ulong.c: 126: }
;	genEndFunction
	rts
;	Raw cost for generated ic 57 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
