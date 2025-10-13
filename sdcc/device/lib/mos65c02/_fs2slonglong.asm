;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2slonglong
	
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
	.globl ___fs2slonglong_PARM_1
	.globl ___fs2slonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2slonglong_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2slonglong_PARM_1:
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
;Allocation info for local variables in function '__fs2slonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '___fs2slonglong_sloc0_1_0'
;f             Allocated with name '___fs2slonglong_PARM_1'
;------------------------------------------------------------
;	../_fs2slonglong.c: 34: signed long long __fs2slonglong (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2slonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2slonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 37: if (!f)
;	genIfx
	lda	(___fs2slonglong_PARM_1 + 3)
	and	#0x7F
	ora	(___fs2slonglong_PARM_1 + 2)
	ora	(___fs2slonglong_PARM_1 + 1)
	ora	___fs2slonglong_PARM_1
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	../_fs2slonglong.c: 38: return 0;
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
;	Raw cost for generated ic 5 : (18, 25.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 40: if (f<0) {
;	genAssign
;	genCopy
	lda	(___fs2slonglong_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(___fs2slonglong_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(___fs2slonglong_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	___fs2slonglong_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 26 : (24, 32.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	___fslt_PARM_2
	stz	(___fslt_PARM_2 + 1)
	stz	(___fslt_PARM_2 + 2)
	stz	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 27 : (12, 16.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 28 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	jmp	00104$
00123$:
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	../_fs2slonglong.c: 41: return -__fs2ulonglong(-f);
;	genUminus
;	genUminusFloat
	lda	___fs2slonglong_PARM_1
	sta	___fs2ulonglong_PARM_1
	lda	(___fs2slonglong_PARM_1 + 1)
	sta	(___fs2ulonglong_PARM_1 + 1)
	lda	(___fs2slonglong_PARM_1 + 2)
	sta	(___fs2ulonglong_PARM_1 + 2)
	lda	(___fs2slonglong_PARM_1 + 3)
	eor	#0x80
	sta	(___fs2ulonglong_PARM_1 + 3)
;	Raw cost for generated ic 11 : (26, 34.000000) count=0.750000
;	genCall
	jsr	___fs2ulonglong
;	assignResultValue
	sta	*___fs2slonglong_sloc0_1_0
	stx	*(___fs2slonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2slonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2slonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___fs2slonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___fs2slonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___fs2slonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___fs2slonglong_sloc0_1_0 + 7)
;	Raw cost for generated ic 14 : (31, 48.000000) count=0.750000
;	genUminus
	lda	#0x00
	sec
	sbc	*___fs2slonglong_sloc0_1_0
	sta	*___fs2slonglong_sloc0_1_0
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 1)
	sta	*(___fs2slonglong_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 2)
	sta	*(___fs2slonglong_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 3)
	sta	*(___fs2slonglong_sloc0_1_0 + 3)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 4)
	sta	*(___fs2slonglong_sloc0_1_0 + 4)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 5)
	sta	*(___fs2slonglong_sloc0_1_0 + 5)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 6)
	sta	*(___fs2slonglong_sloc0_1_0 + 6)
	lda	#0x00
	sbc	*(___fs2slonglong_sloc0_1_0 + 7)
	sta	*(___fs2slonglong_sloc0_1_0 + 7)
;	Raw cost for generated ic 15 : (49, 66.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(___fs2slonglong_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(___fs2slonglong_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(___fs2slonglong_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(___fs2slonglong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fs2slonglong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fs2slonglong_sloc0_1_0 + 1)
	lda	*___fs2slonglong_sloc0_1_0
	rts
;	Raw cost for generated ic 16 : (29, 42.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 43: return __fs2ulonglong(f);
;	genAssign
;	genCopy
	lda	(___fs2slonglong_PARM_1 + 3)
	sta	(___fs2ulonglong_PARM_1 + 3)
	lda	(___fs2slonglong_PARM_1 + 2)
	sta	(___fs2ulonglong_PARM_1 + 2)
	lda	(___fs2slonglong_PARM_1 + 1)
	sta	(___fs2ulonglong_PARM_1 + 1)
	lda	___fs2slonglong_PARM_1
	sta	___fs2ulonglong_PARM_1
;	Raw cost for generated ic 19 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2ulonglong
;	assignResultValue
	sta	*___fs2slonglong_sloc0_1_0
	stx	*(___fs2slonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2slonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2slonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___fs2slonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___fs2slonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___fs2slonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___fs2slonglong_sloc0_1_0 + 7)
;	Raw cost for generated ic 21 : (31, 48.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(___fs2slonglong_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(___fs2slonglong_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(___fs2slonglong_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(___fs2slonglong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___fs2slonglong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___fs2slonglong_sloc0_1_0
;	Raw cost for generated ic 22 : (24, 36.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../_fs2slonglong.c: 45: }
;	genEndFunction
	rts
;	Raw cost for generated ic 25 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
