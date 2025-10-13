;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	
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
	.globl ___ulonglong2fs_PARM_1
	.globl ___ulonglong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___ulonglong2fs_sloc0_1_0:
	.ds 4
___ulonglong2fs_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ulonglong2fs_PARM_1:
	.ds 8
___ulonglong2fs_fl_10000_21:
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
;Allocation info for local variables in function '__ulonglong2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___ulonglong2fs_sloc0_1_0'
;sloc1         Allocated with name '___ulonglong2fs_sloc1_1_0'
;a             Allocated with name '___ulonglong2fs_PARM_1'
;exp           Allocated to registers 
;fl            Allocated with name '___ulonglong2fs_fl_10000_21'
;------------------------------------------------------------
;	../_ulonglong2fs.c: 61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulonglong2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_ulonglong2fs.c: 66: if (!a)
;	genIfx
	lda	(___ulonglong2fs_PARM_1 + 7)
	ora	(___ulonglong2fs_PARM_1 + 6)
	ora	(___ulonglong2fs_PARM_1 + 5)
	ora	(___ulonglong2fs_PARM_1 + 4)
	ora	(___ulonglong2fs_PARM_1 + 3)
	ora	(___ulonglong2fs_PARM_1 + 2)
	ora	(___ulonglong2fs_PARM_1 + 1)
	ora	___ulonglong2fs_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (29, 37.599998) count=1.000000
;	../_ulonglong2fs.c: 68: return 0.0;
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
;	../_ulonglong2fs.c: 71: if (a == 0xffffffffffffffffull)
;	genCmpEQorNE
	lda	___ulonglong2fs_PARM_1
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 1)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 2)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 3)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 4)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 5)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 6)
	cmp	#0xff
	bne	00118$
	lda	(___ulonglong2fs_PARM_1 + 7)
	cmp	#0xff
	bne	00118$
;	Raw cost for generated ic 8 : (80, 92.799995) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_ulonglong2fs.c: 73: return 18446744073709551616.0f;
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x5f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	../_ulonglong2fs.c: 76: while (a < HIDDEN)
;	genLabel
00118$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	#0x96
;	Raw cost for generated ic 66 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=3.999698
;	genCmp
	lda	(___ulonglong2fs_PARM_1 + 2)
	sec
	sbc	#0x80
	lda	(___ulonglong2fs_PARM_1 + 3)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 4)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 5)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 6)
	sbc	#0x00
	lda	(___ulonglong2fs_PARM_1 + 7)
	sbc	#0x00
	bcs	00121$
;	Raw cost for generated ic 15 : (36, 43.599998) count=3.999698
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999698
;	../_ulonglong2fs.c: 78: a <<= 1;
;	genAssign
;	genCopy
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	___ulonglong2fs_PARM_1
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 78 : (48, 64.000000) count=2.999698
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__slulonglong_PARM_2
;	Raw cost for generated ic 79 : (5, 6.000000) count=2.999698
;	genCall
	phx
	jsr	__slulonglong
;	assignResultValue
	sta	___ulonglong2fs_PARM_1
	stx	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___ulonglong2fs_PARM_1 + 7)
	plx
;	Raw cost for generated ic 80 : (41, 63.000000) count=2.999698
;	../_ulonglong2fs.c: 79: exp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 22 : (1, 2.000000) count=2.999698
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 24 : (3, 3.000000) count=2.999698
;	../_ulonglong2fs.c: 82: while (a & NORM)
;	genLabel
00121$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.999925
;	genAssign
;	genCopy
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999925
;	genLabel
00110$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999283
;	genAnd
	lda	(___ulonglong2fs_PARM_1 + 3)
;	genIfxJump : z
	bne	00172$
	jmp	00112$
00172$:
;	Raw cost for generated ic 27 : (10, 12.200000) count=3.999283
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999283
;	../_ulonglong2fs.c: 85: if (a & 1)
;	genAnd
	lda	___ulonglong2fs_PARM_1
	and	#0x01
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 31 : (12, 14.200001) count=2.999462
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999462
;	../_ulonglong2fs.c: 86: a += 2;
;	genPlus
;	  genPlusInc
	lda	___ulonglong2fs_PARM_1
	clc
	adc	#0x02
	sta	___ulonglong2fs_PARM_1
	bcc	00175$
	inc	(___ulonglong2fs_PARM_1 + 1)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 2)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 3)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 4)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 5)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 6)
	bne	00175$
	inc	(___ulonglong2fs_PARM_1 + 7)
00175$:
;	Raw cost for generated ic 35 : (44, 72.199997) count=2.249518
;	genLabel
00109$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=2.999358
;	../_ulonglong2fs.c: 87: a >>= 1;
;	genAssign
;	genCopy
	lda	(___ulonglong2fs_PARM_1 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	(___ulonglong2fs_PARM_1 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	(___ulonglong2fs_PARM_1 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	(___ulonglong2fs_PARM_1 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	___ulonglong2fs_PARM_1
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 81 : (48, 64.000000) count=2.999358
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__srulonglong_PARM_2
;	Raw cost for generated ic 82 : (5, 6.000000) count=2.999358
;	genCall
	phx
	jsr	__srulonglong
;	assignResultValue
	sta	___ulonglong2fs_PARM_1
	stx	(___ulonglong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(___ulonglong2fs_PARM_1 + 7)
	plx
;	Raw cost for generated ic 83 : (41, 63.000000) count=2.999358
;	../_ulonglong2fs.c: 88: exp++;
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 41 : (1, 2.000000) count=2.999358
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999358
;	genLabel
00112$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999740
;	../_ulonglong2fs.c: 91: a &= ~HIDDEN ;
;	genAnd
	lda	(___ulonglong2fs_PARM_1 + 2)
	and	#0x7f
	sta	(___ulonglong2fs_PARM_1 + 2)
	stz	(___ulonglong2fs_PARM_1 + 4)
	stz	(___ulonglong2fs_PARM_1 + 5)
	stz	(___ulonglong2fs_PARM_1 + 6)
	stz	(___ulonglong2fs_PARM_1 + 7)
;	Raw cost for generated ic 45 : (20, 26.000000) count=0.999740
;	../_ulonglong2fs.c: 93: fl.l = PACK(0,(unsigned long)exp, a);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999740
;	genCast
;	genCopy
	stz	*(___ulonglong2fs_sloc0_1_0 + 3)
	stz	*(___ulonglong2fs_sloc0_1_0 + 2)
	stz	*(___ulonglong2fs_sloc0_1_0 + 1)
	stx	*___ulonglong2fs_sloc0_1_0
;	Raw cost for generated ic 49 : (11, 15.000000) count=0.999740
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	*(___ulonglong2fs_sloc0_1_0 + 1)
	lsr	a
	lda	*___ulonglong2fs_sloc0_1_0
	ror	a
	sta	*(___ulonglong2fs_sloc0_1_0 + 3)
	lda	#0x00
	sta	*(___ulonglong2fs_sloc0_1_0 + 1)
	sta	*___ulonglong2fs_sloc0_1_0
	ror	a
	sta	*(___ulonglong2fs_sloc0_1_0 + 2)
;	Raw cost for generated ic 50 : (17, 26.000000) count=0.999740
;	genCast
;	genCopy
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.999740
;	genCast
;	genCopy
	lda	(___ulonglong2fs_PARM_1 + 3)
	sta	*(___ulonglong2fs_sloc1_1_0 + 3)
	lda	(___ulonglong2fs_PARM_1 + 2)
	sta	*(___ulonglong2fs_sloc1_1_0 + 2)
	lda	(___ulonglong2fs_PARM_1 + 1)
	sta	*(___ulonglong2fs_sloc1_1_0 + 1)
	lda	___ulonglong2fs_PARM_1
	sta	*___ulonglong2fs_sloc1_1_0
;	Raw cost for generated ic 65 : (20, 28.000000) count=0.999740
;	genOr
	lda	*___ulonglong2fs_sloc0_1_0
	ora	*___ulonglong2fs_sloc1_1_0
	sta	*___ulonglong2fs_sloc1_1_0
	lda	*(___ulonglong2fs_sloc0_1_0 + 1)
	ora	*(___ulonglong2fs_sloc1_1_0 + 1)
	sta	*(___ulonglong2fs_sloc1_1_0 + 1)
	lda	*(___ulonglong2fs_sloc0_1_0 + 2)
	ora	*(___ulonglong2fs_sloc1_1_0 + 2)
	sta	*(___ulonglong2fs_sloc1_1_0 + 2)
	lda	*(___ulonglong2fs_sloc0_1_0 + 3)
	ora	*(___ulonglong2fs_sloc1_1_0 + 3)
	sta	*(___ulonglong2fs_sloc1_1_0 + 3)
;	Raw cost for generated ic 53 : (24, 36.000000) count=0.999740
;	genPointerSet
;	genDataPointerSet
	sta	(___ulonglong2fs_fl_10000_21 + 3)
	lda	*(___ulonglong2fs_sloc1_1_0 + 2)
	sta	(___ulonglong2fs_fl_10000_21 + 2)
	lda	*(___ulonglong2fs_sloc1_1_0 + 1)
	sta	(___ulonglong2fs_fl_10000_21 + 1)
	lda	*___ulonglong2fs_sloc1_1_0
	sta	___ulonglong2fs_fl_10000_21
;	Raw cost for generated ic 55 : (18, 25.000000) count=0.999740
;	../_ulonglong2fs.c: 95: return (fl.f);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999740
;	genPointerGet
;	genDataPointerGet
	lda	(___ulonglong2fs_fl_10000_21 + 3)
	sta	*(___ulonglong2fs_sloc1_1_0 + 3)
	lda	(___ulonglong2fs_fl_10000_21 + 2)
	sta	*(___ulonglong2fs_sloc1_1_0 + 2)
	lda	(___ulonglong2fs_fl_10000_21 + 1)
	sta	*(___ulonglong2fs_sloc1_1_0 + 1)
	lda	___ulonglong2fs_fl_10000_21
	sta	*___ulonglong2fs_sloc1_1_0
;	Raw cost for generated ic 58 : (20, 28.000000) count=0.999740
;	genRet
	lda	*(___ulonglong2fs_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___ulonglong2fs_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___ulonglong2fs_sloc1_1_0 + 1)
	lda	*___ulonglong2fs_sloc1_1_0
;	Raw cost for generated ic 59 : (12, 18.000000) count=0.999740
;	genLabel
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.999740
;	../_ulonglong2fs.c: 96: }
;	genEndFunction
	rts
;	Raw cost for generated ic 61 : (1, 6.000000) count=0.999740
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
