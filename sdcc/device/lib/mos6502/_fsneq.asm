;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fsneq
	
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
	.globl ___fsneq_PARM_2
	.globl ___fsneq_PARM_1
	.globl ___fsneq
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsneq_sloc0_1_0:
	.ds 4
___fsneq_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fsneq_PARM_1:
	.ds 4
___fsneq_PARM_2:
	.ds 4
___fsneq_fl1_10000_21:
	.ds 4
___fsneq_fl2_10000_21:
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
;Allocation info for local variables in function '__fsneq'
;------------------------------------------------------------
;a1            Allocated with name '___fsneq_PARM_1'
;a2            Allocated with name '___fsneq_PARM_2'
;fl1           Allocated with name '___fsneq_fl1_10000_21'
;fl2           Allocated with name '___fsneq_fl2_10000_21'
;sloc0         Allocated with name '___fsneq_sloc0_1_0'
;sloc1         Allocated with name '___fsneq_sloc1_1_0'
;------------------------------------------------------------
;	../_fsneq.c: 80: _Bool __fsneq (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fsneq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsneq:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 84: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsneq_PARM_1 + 3)
	sta	(___fsneq_fl1_10000_21 + 3)
	lda	(___fsneq_PARM_1 + 2)
	sta	(___fsneq_fl1_10000_21 + 2)
	lda	(___fsneq_PARM_1 + 1)
	sta	(___fsneq_fl1_10000_21 + 1)
	lda	___fsneq_PARM_1
	sta	___fsneq_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fsneq.c: 85: fl2.f = a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fsneq_PARM_2 + 3)
	sta	(___fsneq_fl2_10000_21 + 3)
	lda	(___fsneq_PARM_2 + 2)
	sta	(___fsneq_fl2_10000_21 + 2)
	lda	(___fsneq_PARM_2 + 1)
	sta	(___fsneq_fl2_10000_21 + 1)
	lda	___fsneq_PARM_2
	sta	___fsneq_fl2_10000_21
;	Raw cost for generated ic 7 : (24, 32.000000) count=1.000000
;	../_fsneq.c: 87: if (fl1.l == fl2.l)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsneq_fl1_10000_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	(___fsneq_fl1_10000_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl1_10000_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	___fsneq_fl1_10000_21
	sta	*___fsneq_sloc0_1_0
;	Raw cost for generated ic 10 : (20, 28.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsneq_fl2_10000_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	(___fsneq_fl2_10000_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl2_10000_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	___fsneq_fl2_10000_21
	sta	*___fsneq_sloc1_1_0
;	Raw cost for generated ic 13 : (20, 28.000000) count=1.000000
;	genCmpEQorNE
	lda	*___fsneq_sloc0_1_0
	cmp	*___fsneq_sloc1_1_0
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 1)
	cmp	*(___fsneq_sloc1_1_0 + 1)
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 2)
	cmp	*(___fsneq_sloc1_1_0 + 2)
	bne	00102$
	lda	*(___fsneq_sloc0_1_0 + 3)
	cmp	*(___fsneq_sloc1_1_0 + 3)
	bne	00102$
;	Raw cost for generated ic 14 : (36, 46.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 88: return (0);
;	genRet
	lda	#0x00
	rts
;	Raw cost for generated ic 18 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 89: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsneq_fl1_10000_21 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
	lda	(___fsneq_fl1_10000_21 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	(___fsneq_fl1_10000_21 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	___fsneq_fl1_10000_21
	sta	*___fsneq_sloc1_1_0
;	Raw cost for generated ic 22 : (20, 28.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fsneq_fl2_10000_21 + 3)
	sta	*(___fsneq_sloc0_1_0 + 3)
	lda	(___fsneq_fl2_10000_21 + 2)
	sta	*(___fsneq_sloc0_1_0 + 2)
	lda	(___fsneq_fl2_10000_21 + 1)
	sta	*(___fsneq_sloc0_1_0 + 1)
	lda	___fsneq_fl2_10000_21
	sta	*___fsneq_sloc0_1_0
;	Raw cost for generated ic 25 : (20, 28.000000) count=1.000000
;	genOr
	lda	*___fsneq_sloc1_1_0
	ora	*___fsneq_sloc0_1_0
	sta	*___fsneq_sloc1_1_0
	lda	*(___fsneq_sloc1_1_0 + 1)
	ora	*(___fsneq_sloc0_1_0 + 1)
	sta	*(___fsneq_sloc1_1_0 + 1)
	lda	*(___fsneq_sloc1_1_0 + 2)
	ora	*(___fsneq_sloc0_1_0 + 2)
	sta	*(___fsneq_sloc1_1_0 + 2)
	lda	*(___fsneq_sloc1_1_0 + 3)
	ora	*(___fsneq_sloc0_1_0 + 3)
	sta	*(___fsneq_sloc1_1_0 + 3)
;	Raw cost for generated ic 26 : (24, 36.000000) count=1.000000
;	genAnd
	lda	*___fsneq_sloc1_1_0
	bne	00124$
	lda	*(___fsneq_sloc1_1_0 + 1)
	bne	00124$
	lda	*(___fsneq_sloc1_1_0 + 2)
	bne	00124$
	lda	*(___fsneq_sloc1_1_0 + 3)
	and	#0x7f
00124$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 27 : (21, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 90: return (0);
;	genRet
	lda	#0x00
	rts
;	Raw cost for generated ic 31 : (5, 5.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 91: return (1);
;	genRet
	lda	#0x01
;	Raw cost for generated ic 33 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../_fsneq.c: 92: }
;	genEndFunction
	rts
;	Raw cost for generated ic 35 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
