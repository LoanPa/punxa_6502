;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	
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
	.globl ___ulong2fs_PARM_1
	.globl ___ulong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ulong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ulong2fs_PARM_1:
	.ds 4
___ulong2fs_fl_10000_21:
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a             Allocated with name '___ulong2fs_PARM_1'
;exp           Allocated to registers 
;fl            Allocated with name '___ulong2fs_fl_10000_21'
;sloc0         Allocated with name '___ulong2fs_sloc0_1_0'
;------------------------------------------------------------
;	../_ulong2fs.c: 84: float __ulong2fs (unsigned long a ) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulong2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_ulong2fs.c: 89: if (!a)
;	genIfx
	lda	(___ulong2fs_PARM_1 + 3)
	ora	(___ulong2fs_PARM_1 + 2)
	ora	(___ulong2fs_PARM_1 + 1)
	ora	___ulong2fs_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (17, 21.600000) count=1.000000
;	../_ulong2fs.c: 91: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 6 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_ulong2fs.c: 94: if (a == 0xfffffffful)
;	genCmpEQorNE
	lda	___ulong2fs_PARM_1
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00118$
	lda	(___ulong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00118$
;	Raw cost for generated ic 8 : (40, 46.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_ulong2fs.c: 96: return 4294967296.0f;
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x4f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	../_ulong2fs.c: 99: while (a < HIDDEN)
;	genLabel
00118$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	#0x96
;	Raw cost for generated ic 62 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=3.999997
;	genCmp
	lda	(___ulong2fs_PARM_1 + 2)
	sec
	sbc	#0x80
	lda	(___ulong2fs_PARM_1 + 3)
	sbc	#0x00
	bcs	00121$
;	Raw cost for generated ic 15 : (16, 19.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999997
;	../_ulong2fs.c: 101: a <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	___ulong2fs_PARM_1
	rol	(___ulong2fs_PARM_1 + 1)
	rol	(___ulong2fs_PARM_1 + 2)
	rol	(___ulong2fs_PARM_1 + 3)
;	Raw cost for generated ic 19 : (12, 24.000000) count=2.999997
;	../_ulong2fs.c: 102: exp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 22 : (1, 2.000000) count=2.999997
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 24 : (3, 3.000000) count=2.999997
;	../_ulong2fs.c: 105: while (a & NORM)
;	genLabel
00121$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.999999
;	genLabel
00110$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999991
;	genAnd
	lda	(___ulong2fs_PARM_1 + 3)
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 27 : (8, 9.600000) count=3.999991
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999991
;	../_ulong2fs.c: 108: if (a & 1)
;	genAnd
	lda	___ulong2fs_PARM_1
	and	#0x01
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 31 : (12, 14.200001) count=2.999994
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999994
;	../_ulong2fs.c: 109: a += 2;
;	genPlus
;	  genPlusInc
	lda	___ulong2fs_PARM_1
	clc
	adc	#0x02
	sta	___ulong2fs_PARM_1
	bcc	00171$
	inc	(___ulong2fs_PARM_1 + 1)
	bne	00171$
	inc	(___ulong2fs_PARM_1 + 2)
	bne	00171$
	inc	(___ulong2fs_PARM_1 + 3)
00171$:
;	Raw cost for generated ic 35 : (24, 37.800003) count=2.249994
;	genLabel
00109$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=2.999992
;	../_ulong2fs.c: 110: a >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	(___ulong2fs_PARM_1 + 3)
	lsr	a
	ror	(___ulong2fs_PARM_1 + 2)
	ror	(___ulong2fs_PARM_1 + 1)
	ror	___ulong2fs_PARM_1
	sta	(___ulong2fs_PARM_1 + 3)
;	Raw cost for generated ic 38 : (16, 28.000000) count=2.999992
;	../_ulong2fs.c: 111: exp++;
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 41 : (1, 2.000000) count=2.999992
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999992
;	genLabel
00112$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999997
;	../_ulong2fs.c: 114: a &= ~HIDDEN ;
;	genAnd
	lda	(___ulong2fs_PARM_1 + 2)
	and	#0x7f
	sta	(___ulong2fs_PARM_1 + 2)
;	Raw cost for generated ic 45 : (8, 10.000000) count=0.999997
;	../_ulong2fs.c: 116: fl.l = PACK(0,(unsigned long)exp, a);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999997
;	genCast
;	genCopy
	stz	*(___ulong2fs_sloc0_1_0 + 3)
	stz	*(___ulong2fs_sloc0_1_0 + 2)
	stz	*(___ulong2fs_sloc0_1_0 + 1)
	stx	*___ulong2fs_sloc0_1_0
;	Raw cost for generated ic 49 : (11, 15.000000) count=0.999997
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(___ulong2fs_sloc0_1_0 + 1)
	lsr	a
	lda	*___ulong2fs_sloc0_1_0
	ror	a
	sta	*(___ulong2fs_sloc0_1_0 + 3)
	lda	#0x00
	sta	*(___ulong2fs_sloc0_1_0 + 1)
	sta	*___ulong2fs_sloc0_1_0
	ror	a
	sta	*(___ulong2fs_sloc0_1_0 + 2)
;	Raw cost for generated ic 50 : (17, 26.000000) count=0.999997
;	genOr
	lda	*___ulong2fs_sloc0_1_0
	ora	___ulong2fs_PARM_1
	sta	*___ulong2fs_sloc0_1_0
	lda	*(___ulong2fs_sloc0_1_0 + 1)
	ora	(___ulong2fs_PARM_1 + 1)
	sta	*(___ulong2fs_sloc0_1_0 + 1)
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	ora	(___ulong2fs_PARM_1 + 2)
	sta	*(___ulong2fs_sloc0_1_0 + 2)
	lda	*(___ulong2fs_sloc0_1_0 + 3)
	ora	(___ulong2fs_PARM_1 + 3)
	sta	*(___ulong2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 52 : (28, 40.000000) count=0.999997
;	genPointerSet
;	genDataPointerSet
	sta	(___ulong2fs_fl_10000_21 + 3)
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	sta	(___ulong2fs_fl_10000_21 + 2)
	lda	*(___ulong2fs_sloc0_1_0 + 1)
	sta	(___ulong2fs_fl_10000_21 + 1)
	lda	*___ulong2fs_sloc0_1_0
	sta	___ulong2fs_fl_10000_21
;	Raw cost for generated ic 53 : (18, 25.000000) count=0.999997
;	../_ulong2fs.c: 118: return (fl.f);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.999997
;	genPointerGet
;	genDataPointerGet
	lda	(___ulong2fs_fl_10000_21 + 3)
	sta	*(___ulong2fs_sloc0_1_0 + 3)
	lda	(___ulong2fs_fl_10000_21 + 2)
	sta	*(___ulong2fs_sloc0_1_0 + 2)
	lda	(___ulong2fs_fl_10000_21 + 1)
	sta	*(___ulong2fs_sloc0_1_0 + 1)
	lda	___ulong2fs_fl_10000_21
	sta	*___ulong2fs_sloc0_1_0
;	Raw cost for generated ic 56 : (20, 28.000000) count=0.999997
;	genRet
	lda	*(___ulong2fs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___ulong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___ulong2fs_sloc0_1_0 + 1)
	lda	*___ulong2fs_sloc0_1_0
;	Raw cost for generated ic 57 : (12, 18.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.999997
;	../_ulong2fs.c: 119: }
;	genEndFunction
	rts
;	Raw cost for generated ic 59 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
