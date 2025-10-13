;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fseq
	
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
	.globl ___fseq_PARM_2
	.globl ___fseq_PARM_1
	.globl ___fseq
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fseq_sloc0_1_0:
	.ds 4
___fseq_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fseq_PARM_1:
	.ds 4
___fseq_PARM_2:
	.ds 4
___fseq_fl1_10000_21:
	.ds 4
___fseq_fl2_10000_21:
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
;Allocation info for local variables in function '__fseq'
;------------------------------------------------------------
;a1            Allocated with name '___fseq_PARM_1'
;a2            Allocated with name '___fseq_PARM_2'
;fl1           Allocated with name '___fseq_fl1_10000_21'
;fl2           Allocated with name '___fseq_fl2_10000_21'
;sloc0         Allocated with name '___fseq_sloc0_1_0'
;sloc1         Allocated with name '___fseq_sloc1_1_0'
;------------------------------------------------------------
;	../_fseq.c: 82: _Bool __fseq (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fseq:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fseq.c: 86: fl1.f = a1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fseq_PARM_1 + 3)
	sta	(___fseq_fl1_10000_21 + 3)
	lda	(___fseq_PARM_1 + 2)
	sta	(___fseq_fl1_10000_21 + 2)
	lda	(___fseq_PARM_1 + 1)
	sta	(___fseq_fl1_10000_21 + 1)
	lda	___fseq_PARM_1
	sta	___fseq_fl1_10000_21
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	../_fseq.c: 87: fl2.f = a2;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	lda	(___fseq_PARM_2 + 3)
	sta	(___fseq_fl2_10000_21 + 3)
	lda	(___fseq_PARM_2 + 2)
	sta	(___fseq_fl2_10000_21 + 2)
	lda	(___fseq_PARM_2 + 1)
	sta	(___fseq_fl2_10000_21 + 1)
	lda	___fseq_PARM_2
	sta	___fseq_fl2_10000_21
;	Raw cost for generated ic 7 : (24, 32.000000) count=1.000000
;	../_fseq.c: 89: if (fl1.l == fl2.l)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fseq_fl1_10000_21 + 3)
	sta	*(___fseq_sloc0_1_0 + 3)
	lda	(___fseq_fl1_10000_21 + 2)
	sta	*(___fseq_sloc0_1_0 + 2)
	lda	(___fseq_fl1_10000_21 + 1)
	sta	*(___fseq_sloc0_1_0 + 1)
	lda	___fseq_fl1_10000_21
	sta	*___fseq_sloc0_1_0
;	Raw cost for generated ic 10 : (20, 28.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fseq_fl2_10000_21 + 3)
	sta	*(___fseq_sloc1_1_0 + 3)
	lda	(___fseq_fl2_10000_21 + 2)
	sta	*(___fseq_sloc1_1_0 + 2)
	lda	(___fseq_fl2_10000_21 + 1)
	sta	*(___fseq_sloc1_1_0 + 1)
	lda	___fseq_fl2_10000_21
	sta	*___fseq_sloc1_1_0
;	Raw cost for generated ic 13 : (20, 28.000000) count=1.000000
;	genCmpEQorNE
	lda	*___fseq_sloc0_1_0
	cmp	*___fseq_sloc1_1_0
	bne	00102$
	lda	*(___fseq_sloc0_1_0 + 1)
	cmp	*(___fseq_sloc1_1_0 + 1)
	bne	00102$
	lda	*(___fseq_sloc0_1_0 + 2)
	cmp	*(___fseq_sloc1_1_0 + 2)
	bne	00102$
	lda	*(___fseq_sloc0_1_0 + 3)
	cmp	*(___fseq_sloc1_1_0 + 3)
	bne	00102$
;	Raw cost for generated ic 14 : (36, 46.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../_fseq.c: 90: return (1);
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 18 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fseq.c: 92: if ((fl1.l & 0x7fffffff) == 0 && (fl2.l & 0x7fffffff) == 0)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(___fseq_fl1_10000_21 + 3)
	sta	*(___fseq_sloc1_1_0 + 3)
	lda	(___fseq_fl1_10000_21 + 2)
	sta	*(___fseq_sloc1_1_0 + 2)
	lda	(___fseq_fl1_10000_21 + 1)
	sta	*(___fseq_sloc1_1_0 + 1)
	lda	___fseq_fl1_10000_21
	sta	*___fseq_sloc1_1_0
;	Raw cost for generated ic 22 : (20, 28.000000) count=1.000000
;	genAnd
	bne	00131$
	lda	*(___fseq_sloc1_1_0 + 1)
	bne	00131$
	lda	*(___fseq_sloc1_1_0 + 2)
	bne	00131$
	lda	*(___fseq_sloc1_1_0 + 3)
	and	#0x7f
00131$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 23 : (19, 24.400000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.750000
;	genPointerGet
;	genDataPointerGet
	lda	(___fseq_fl2_10000_21 + 3)
	sta	*(___fseq_sloc1_1_0 + 3)
	lda	(___fseq_fl2_10000_21 + 2)
	sta	*(___fseq_sloc1_1_0 + 2)
	lda	(___fseq_fl2_10000_21 + 1)
	sta	*(___fseq_sloc1_1_0 + 1)
	lda	___fseq_fl2_10000_21
	sta	*___fseq_sloc1_1_0
;	Raw cost for generated ic 29 : (20, 28.000000) count=0.750000
;	genAnd
	bne	00133$
	lda	*(___fseq_sloc1_1_0 + 1)
	bne	00133$
	lda	*(___fseq_sloc1_1_0 + 2)
	bne	00133$
	lda	*(___fseq_sloc1_1_0 + 3)
	and	#0x7f
00133$:
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 30 : (19, 24.400000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.750000
;	../_fseq.c: 93: return (1);
;	genRet
	lda	#0x01
	rts
;	Raw cost for generated ic 34 : (5, 5.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../_fseq.c: 94: return (0);
;	genRet
	lda	#0x00
;	Raw cost for generated ic 36 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	../_fseq.c: 95: }
;	genEndFunction
	rts
;	Raw cost for generated ic 38 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
