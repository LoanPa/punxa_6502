;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fslt
	
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
	.globl ___fslt_PARM_2
	.globl ___fslt_PARM_1
	.globl ___fslt
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fslt_sloc0_1_0:
	.ds 4
___fslt_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fslt_PARM_1:
	.ds 4
___fslt_PARM_2:
	.ds 4
___fslt_fl1_10000_21:
	.ds 4
___fslt_fl2_10000_21:
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
;Allocation info for local variables in function '__fslt'
;------------------------------------------------------------
;a1            Allocated with name '___fslt_PARM_1'
;a2            Allocated with name '___fslt_PARM_2'
;fl1           Allocated with name '___fslt_fl1_10000_21'
;fl2           Allocated with name '___fslt_fl2_10000_21'
;sloc0         Allocated with name '___fslt_sloc0_1_0'
;sloc1         Allocated with name '___fslt_sloc1_1_0'
;------------------------------------------------------------
;	../_fslt.c: 108: _Bool __fslt (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fslt:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fslt.c: 112: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fslt_PARM_1 + 3)
	sta	(___fslt_fl1_10000_21 + 3)
	lda	(___fslt_PARM_1 + 2)
	sta	(___fslt_fl1_10000_21 + 2)
	lda	(___fslt_PARM_1 + 1)
	sta	(___fslt_fl1_10000_21 + 1)
	lda	___fslt_PARM_1
	sta	___fslt_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fslt.c: 113: fl2.f = a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fslt_PARM_2 + 3)
	sta	(___fslt_fl2_10000_21 + 3)
	lda	(___fslt_PARM_2 + 2)
	sta	(___fslt_fl2_10000_21 + 2)
	lda	(___fslt_PARM_2 + 1)
	sta	(___fslt_fl2_10000_21 + 1)
	lda	___fslt_PARM_2
	sta	___fslt_fl2_10000_21
;	Raw cost for generated ic 7 : (24, 32.000000) count=1.000000
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl1_10000_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl1_10000_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl1_10000_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl1_10000_21
	sta	*___fslt_sloc0_1_0
;	Raw cost for generated ic 10 : (20, 28.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl2_10000_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_10000_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_10000_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_10000_21
	sta	*___fslt_sloc1_1_0
;	Raw cost for generated ic 13 : (20, 28.000000) count=1.000000
;	genOr
	lda	*___fslt_sloc0_1_0
	ora	*___fslt_sloc1_1_0
	sta	*___fslt_sloc1_1_0
	lda	*(___fslt_sloc0_1_0 + 1)
	ora	*(___fslt_sloc1_1_0 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	*(___fslt_sloc0_1_0 + 2)
	ora	*(___fslt_sloc1_1_0 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	*(___fslt_sloc0_1_0 + 3)
	ora	*(___fslt_sloc1_1_0 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
;	Raw cost for generated ic 14 : (24, 36.000000) count=1.000000
;	genAnd
	lda	*___fslt_sloc1_1_0
	bne	00142$
	lda	*(___fslt_sloc1_1_0 + 1)
	bne	00142$
	lda	*(___fslt_sloc1_1_0 + 2)
	bne	00142$
	lda	*(___fslt_sloc1_1_0 + 3)
	and	#0x7f
00142$:
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 15 : (21, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../_fslt.c: 116: return (0);
;	genRet
	lda	#0x00
	rts
;	Raw cost for generated ic 19 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl1_10000_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl1_10000_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl1_10000_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl1_10000_21
	sta	*___fslt_sloc1_1_0
;	Raw cost for generated ic 23 : (20, 28.000000) count=1.000000
;	genCmp
	bit	*(___fslt_sloc1_1_0 + 3)
	bpl	00106$
;	Raw cost for generated ic 24 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.750000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl2_10000_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_10000_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_10000_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_10000_21
	sta	*___fslt_sloc1_1_0
;	Raw cost for generated ic 30 : (20, 28.000000) count=0.750000
;	genCmp
	bit	*(___fslt_sloc1_1_0 + 3)
	bpl	00106$
;	Raw cost for generated ic 31 : (7, 8.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.750000
;	../_fslt.c: 119: if (fl2.l < fl1.l)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.562500
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl2_10000_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl2_10000_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl2_10000_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl2_10000_21
	sta	*___fslt_sloc1_1_0
;	Raw cost for generated ic 37 : (20, 28.000000) count=0.562500
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.562500
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl1_10000_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl1_10000_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl1_10000_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl1_10000_21
	sta	*___fslt_sloc0_1_0
;	Raw cost for generated ic 40 : (20, 28.000000) count=0.562500
;	genCmp
	lda	*___fslt_sloc1_1_0
	sec
	sbc	*___fslt_sloc0_1_0
	lda	*(___fslt_sloc1_1_0 + 1)
	sbc	*(___fslt_sloc0_1_0 + 1)
	lda	*(___fslt_sloc1_1_0 + 2)
	sbc	*(___fslt_sloc0_1_0 + 2)
	lda	*(___fslt_sloc1_1_0 + 3)
	sbc	*(___fslt_sloc0_1_0 + 3)
	bvc	00147$
	bpl	00146$
	bmi	00104$
00147$:
	bpl	00104$
00146$:
;	Raw cost for generated ic 41 : (28, 39.399998) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.562500
;	../_fslt.c: 120: return (1);
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 45 : (5, 5.000000) count=0.421875
;	genLabel
00104$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.562500
;	../_fslt.c: 121: return (0);
;	genRet
	lda	#0x00
	rts
;	Raw cost for generated ic 47 : (5, 5.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../_fslt.c: 124: if (fl1.l < fl2.l)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl1_10000_21 + 3)
	sta	*(___fslt_sloc1_1_0 + 3)
	lda	(___fslt_fl1_10000_21 + 2)
	sta	*(___fslt_sloc1_1_0 + 2)
	lda	(___fslt_fl1_10000_21 + 1)
	sta	*(___fslt_sloc1_1_0 + 1)
	lda	___fslt_fl1_10000_21
	sta	*___fslt_sloc1_1_0
;	Raw cost for generated ic 51 : (20, 28.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fslt_fl2_10000_21 + 3)
	sta	*(___fslt_sloc0_1_0 + 3)
	lda	(___fslt_fl2_10000_21 + 2)
	sta	*(___fslt_sloc0_1_0 + 2)
	lda	(___fslt_fl2_10000_21 + 1)
	sta	*(___fslt_sloc0_1_0 + 1)
	lda	___fslt_fl2_10000_21
	sta	*___fslt_sloc0_1_0
;	Raw cost for generated ic 54 : (20, 28.000000) count=1.000000
;	genCmp
	lda	*___fslt_sloc1_1_0
	sec
	sbc	*___fslt_sloc0_1_0
	lda	*(___fslt_sloc1_1_0 + 1)
	sbc	*(___fslt_sloc0_1_0 + 1)
	lda	*(___fslt_sloc1_1_0 + 2)
	sbc	*(___fslt_sloc0_1_0 + 2)
	lda	*(___fslt_sloc1_1_0 + 3)
	sbc	*(___fslt_sloc0_1_0 + 3)
	bvc	00150$
	bpl	00149$
	bmi	00109$
00150$:
	bpl	00109$
00149$:
;	Raw cost for generated ic 55 : (28, 39.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	../_fslt.c: 125: return (1);
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 59 : (5, 5.000000) count=0.750000
;	genLabel
00109$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	../_fslt.c: 126: return (0);
;	genRet
	lda	#0x00
;	Raw cost for generated ic 61 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	../_fslt.c: 127: }
;	genEndFunction
	rts
;	Raw cost for generated ic 63 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
