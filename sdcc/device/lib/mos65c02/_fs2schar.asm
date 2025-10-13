;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	
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
	.globl ___fs2slong
	.globl ___fs2schar_PARM_1
	.globl ___fs2schar
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2schar_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2schar_PARM_1:
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;sloc0         Allocated with name '___fs2schar_sloc0_1_0'
;f             Allocated with name '___fs2schar_PARM_1'
;sl            Allocated with name '___fs2schar_sl_10000_21'
;------------------------------------------------------------
;	../_fs2schar.c: 87: signed char __fs2schar (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2schar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
;	genAssign
;	genCopy
	lda	(___fs2schar_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	lda	(___fs2schar_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(___fs2schar_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	___fs2schar_PARM_1
	sta	___fs2slong_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2slong
;	assignResultValue
	sta	*___fs2schar_sloc0_1_0
	stx	*(___fs2schar_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2schar_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2schar_sloc0_1_0 + 3)
;	Raw cost for generated ic 3 : (15, 24.000000) count=1.000000
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
;	genCmp
	lda	*___fs2schar_sloc0_1_0
	sec
	sbc	#0x7f
	txa
	sbc	#0x00
	lda	*(___fs2schar_sloc0_1_0 + 2)
	sbc	#0x00
	lda	*(___fs2schar_sloc0_1_0 + 3)
	sbc	#0x00
	bvs	00120$
	bpl	00119$
	bmi	00102$
00120$:
	bpl	00102$
00119$:
;	Raw cost for generated ic 5 : (27, 34.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 91: return SCHAR_MAX;
;	genRet
	lda	#0x7f
	rts
;	Raw cost for generated ic 9 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
;	genCmp
	lda	#0x80
	sec
	sbc	*___fs2schar_sloc0_1_0
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 1)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 2)
	lda	#0xff
	sbc	*(___fs2schar_sloc0_1_0 + 3)
	bvs	00123$
	bpl	00122$
	bmi	00104$
00123$:
	bpl	00104$
00122$:
;	Raw cost for generated ic 11 : (28, 35.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 93: return -SCHAR_MIN;
;	genRet
	lda	#0x80
	rts
;	Raw cost for generated ic 15 : (5, 5.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 94: return sl;
;	genCast
;	genCopy
	lda	*___fs2schar_sloc0_1_0
;	Raw cost for generated ic 17 : (2, 3.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 95: }
;	genEndFunction
	rts
;	Raw cost for generated ic 20 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
