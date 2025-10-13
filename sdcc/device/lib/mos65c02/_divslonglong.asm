;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	
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
	.globl __divslonglong_PARM_2
	.globl __divslonglong_PARM_1
	.globl __divslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divslonglong_sloc0_1_0:
	.ds 8
__divslonglong_sloc1_1_0:
	.ds 1
__divslonglong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divslonglong_PARM_1:
	.ds 8
__divslonglong_PARM_2:
	.ds 8
__divslonglong_denominatorneg_10000_2:
	.ds 1
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '__divslonglong_sloc0_1_0'
;sloc1         Allocated with name '__divslonglong_sloc1_1_0'
;sloc2         Allocated with name '__divslonglong_sloc2_1_0'
;numerator     Allocated with name '__divslonglong_PARM_1'
;denominator   Allocated with name '__divslonglong_PARM_2'
;numeratorneg  Allocated to registers x 
;denominatorneg Allocated with name '__divslonglong_denominatorneg_10000_2'
;d             Allocated with name '__divslonglong_d_10000_2'
;------------------------------------------------------------
;	../_divslonglong.c: 36: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divslonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 38: bool numeratorneg = (numerator < 0);
;	genCmp
	bit	(__divslonglong_PARM_1 + 7)
	bmi	00127$
	lda	#0x00
	bra	00128$
00127$:
	lda	#0x01
00128$:
	tax
;	Raw cost for generated ic 2 : (12, 15.200001) count=1.000000
;	../_divslonglong.c: 39: bool denominatorneg = (denominator < 0);
;	genCmp
	bit	(__divslonglong_PARM_2 + 7)
	bmi	00129$
	lda	#0x00
	bra	00130$
00129$:
	lda	#0x01
00130$:
	sta	__divslonglong_denominatorneg_10000_2
;	Raw cost for generated ic 4 : (14, 17.200001) count=1.000000
;	../_divslonglong.c: 42: if (numeratorneg)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	../_divslonglong.c: 43: numerator = -numerator;
;	genUminus
	lda	#0x00
	sec
	sbc	__divslonglong_PARM_1
	sta	__divslonglong_PARM_1
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 1)
	sta	(__divslonglong_PARM_1 + 1)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 2)
	sta	(__divslonglong_PARM_1 + 2)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 3)
	sta	(__divslonglong_PARM_1 + 3)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 4)
	sta	(__divslonglong_PARM_1 + 4)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 5)
	sta	(__divslonglong_PARM_1 + 5)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 6)
	sta	(__divslonglong_PARM_1 + 6)
	lda	#0x00
	sbc	(__divslonglong_PARM_1 + 7)
	sta	(__divslonglong_PARM_1 + 7)
;	Raw cost for generated ic 9 : (65, 82.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 44: if (denominatorneg)
;	genIfx
	lda	__divslonglong_denominatorneg_10000_2
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 12 : (8, 9.600000) count=1.000000
;	../_divslonglong.c: 45: denominator = -denominator;
;	genUminus
	lda	#0x00
	sec
	sbc	__divslonglong_PARM_2
	sta	__divslonglong_PARM_2
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 1)
	sta	(__divslonglong_PARM_2 + 1)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 2)
	sta	(__divslonglong_PARM_2 + 2)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 3)
	sta	(__divslonglong_PARM_2 + 3)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 4)
	sta	(__divslonglong_PARM_2 + 4)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 5)
	sta	(__divslonglong_PARM_2 + 5)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 6)
	sta	(__divslonglong_PARM_2 + 6)
	lda	#0x00
	sbc	(__divslonglong_PARM_2 + 7)
	sta	(__divslonglong_PARM_2 + 7)
;	Raw cost for generated ic 15 : (65, 82.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 47: d = (unsigned long long)numerator / (unsigned long long)denominator;
;	genCast
;	genCopy
	lda	(__divslonglong_PARM_1 + 7)
	sta	(__divulonglong_PARM_1 + 7)
	lda	(__divslonglong_PARM_1 + 6)
	sta	(__divulonglong_PARM_1 + 6)
	lda	(__divslonglong_PARM_1 + 5)
	sta	(__divulonglong_PARM_1 + 5)
	lda	(__divslonglong_PARM_1 + 4)
	sta	(__divulonglong_PARM_1 + 4)
	lda	(__divslonglong_PARM_1 + 3)
	sta	(__divulonglong_PARM_1 + 3)
	lda	(__divslonglong_PARM_1 + 2)
	sta	(__divulonglong_PARM_1 + 2)
	lda	(__divslonglong_PARM_1 + 1)
	sta	(__divulonglong_PARM_1 + 1)
	lda	__divslonglong_PARM_1
	sta	__divulonglong_PARM_1
;	Raw cost for generated ic 18 : (48, 64.000000) count=1.000000
;	genCast
;	genCopy
	lda	(__divslonglong_PARM_2 + 7)
	sta	(__divulonglong_PARM_2 + 7)
	lda	(__divslonglong_PARM_2 + 6)
	sta	(__divulonglong_PARM_2 + 6)
	lda	(__divslonglong_PARM_2 + 5)
	sta	(__divulonglong_PARM_2 + 5)
	lda	(__divslonglong_PARM_2 + 4)
	sta	(__divulonglong_PARM_2 + 4)
	lda	(__divslonglong_PARM_2 + 3)
	sta	(__divulonglong_PARM_2 + 3)
	lda	(__divslonglong_PARM_2 + 2)
	sta	(__divulonglong_PARM_2 + 2)
	lda	(__divslonglong_PARM_2 + 1)
	sta	(__divulonglong_PARM_2 + 1)
	lda	__divslonglong_PARM_2
	sta	__divulonglong_PARM_2
;	Raw cost for generated ic 19 : (48, 64.000000) count=1.000000
;	../_divslonglong.c: 49: return ((numeratorneg ^ denominatorneg) ? -d : d);
;	genCall
	phx
	jsr	__divulonglong
;	assignResultValue
	sta	*__divslonglong_sloc0_1_0
	stx	*(__divslonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__divslonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__divslonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__divslonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__divslonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__divslonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__divslonglong_sloc0_1_0 + 7)
	plx
;	Raw cost for generated ic 35 : (33, 55.000000) count=1.000000
;	genXor
	txa
	eor	__divslonglong_denominatorneg_10000_2
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 22 : (9, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	*__divslonglong_sloc0_1_0
	sta	*__divslonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 1)
	sta	*(__divslonglong_sloc2_1_0 + 1)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 2)
	sta	*(__divslonglong_sloc2_1_0 + 2)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 3)
	sta	*(__divslonglong_sloc2_1_0 + 3)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 4)
	sta	*(__divslonglong_sloc2_1_0 + 4)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 5)
	sta	*(__divslonglong_sloc2_1_0 + 5)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 6)
	sta	*(__divslonglong_sloc2_1_0 + 6)
	lda	#0x00
	sbc	*(__divslonglong_sloc0_1_0 + 7)
	sta	*(__divslonglong_sloc2_1_0 + 7)
;	Raw cost for generated ic 24 : (49, 66.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 26 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(__divslonglong_sloc0_1_0 + 7)
	sta	*(__divslonglong_sloc2_1_0 + 7)
	lda	*(__divslonglong_sloc0_1_0 + 6)
	sta	*(__divslonglong_sloc2_1_0 + 6)
	lda	*(__divslonglong_sloc0_1_0 + 5)
	sta	*(__divslonglong_sloc2_1_0 + 5)
	lda	*(__divslonglong_sloc0_1_0 + 4)
	sta	*(__divslonglong_sloc2_1_0 + 4)
	lda	*(__divslonglong_sloc0_1_0 + 3)
	sta	*(__divslonglong_sloc2_1_0 + 3)
	lda	*(__divslonglong_sloc0_1_0 + 2)
	sta	*(__divslonglong_sloc2_1_0 + 2)
	lda	*(__divslonglong_sloc0_1_0 + 1)
	sta	*(__divslonglong_sloc2_1_0 + 1)
	lda	*__divslonglong_sloc0_1_0
	sta	*__divslonglong_sloc2_1_0
;	Raw cost for generated ic 28 : (32, 48.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genRet
	lda	*(__divslonglong_sloc2_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(__divslonglong_sloc2_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(__divslonglong_sloc2_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(__divslonglong_sloc2_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(__divslonglong_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(__divslonglong_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(__divslonglong_sloc2_1_0 + 1)
	lda	*__divslonglong_sloc2_1_0
;	Raw cost for generated ic 30 : (28, 42.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 50: }
;	genEndFunction
	rts
;	Raw cost for generated ic 32 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
