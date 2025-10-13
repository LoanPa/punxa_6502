;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	
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
	.globl __mullonglong_PARM_2
	.globl __mullonglong_PARM_1
	.globl __mullonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__mullonglong_sloc0_1_0:
	.ds 1
__mullonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__mullonglong_PARM_1:
	.ds 8
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ret_10000_2:
	.ds 8
__mullonglong_l_30000_4:
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '__mullonglong_sloc0_1_0'
;sloc1         Allocated with name '__mullonglong_sloc1_1_0'
;ll            Allocated with name '__mullonglong_PARM_1'
;lr            Allocated with name '__mullonglong_PARM_2'
;ret           Allocated with name '__mullonglong_ret_10000_2'
;i             Allocated to registers 
;j             Allocated to registers 
;l             Allocated with name '__mullonglong_l_30000_4'
;r             Allocated to registers a 
;------------------------------------------------------------
;	../_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__mullonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_mullonglong.c: 37: unsigned long long ret = 0ull;
;	genAssign
;	genAssignLit
	stz	__mullonglong_ret_10000_2
	stz	(__mullonglong_ret_10000_2 + 1)
	stz	(__mullonglong_ret_10000_2 + 2)
	stz	(__mullonglong_ret_10000_2 + 3)
	stz	(__mullonglong_ret_10000_2 + 4)
	stz	(__mullonglong_ret_10000_2 + 5)
	stz	(__mullonglong_ret_10000_2 + 6)
	stz	(__mullonglong_ret_10000_2 + 7)
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
;	genAssign
;	genAssignLit
	stz	*__mullonglong_sloc0_1_0
;	Raw cost for generated ic 61 : (3, 4.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.969304
;	../_mullonglong.c: 42: unsigned char l = ll >> (i * 8);
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	lda	*__mullonglong_sloc0_1_0
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 6 : (5, 9.000000) count=3.969304
;	genCast
;	genCopy
	sta	__srslonglong_PARM_2
;	Raw cost for generated ic 70 : (3, 4.000000) count=3.969304
;	genAssign
;	genCopy
	lda	(__mullonglong_PARM_1 + 7)
	sta	(__srslonglong_PARM_1 + 7)
	lda	(__mullonglong_PARM_1 + 6)
	sta	(__srslonglong_PARM_1 + 6)
	lda	(__mullonglong_PARM_1 + 5)
	sta	(__srslonglong_PARM_1 + 5)
	lda	(__mullonglong_PARM_1 + 4)
	sta	(__srslonglong_PARM_1 + 4)
	lda	(__mullonglong_PARM_1 + 3)
	sta	(__srslonglong_PARM_1 + 3)
	lda	(__mullonglong_PARM_1 + 2)
	sta	(__srslonglong_PARM_1 + 2)
	lda	(__mullonglong_PARM_1 + 1)
	sta	(__srslonglong_PARM_1 + 1)
	lda	__mullonglong_PARM_1
	sta	__srslonglong_PARM_1
;	Raw cost for generated ic 71 : (48, 64.000000) count=3.969304
;	genCall
	jsr	__srslonglong
;	assignResultValue
	sta	*__mullonglong_sloc1_1_0
	stx	*(__mullonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc1_1_0 + 7)
;	Raw cost for generated ic 73 : (31, 48.000000) count=3.969304
;	genCast
;	genCopy
	lda	*__mullonglong_sloc1_1_0
	sta	__mullonglong_l_30000_4
;	Raw cost for generated ic 8 : (5, 7.000000) count=3.969304
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 58 : (2, 2.000000) count=3.969304
;	genLabel
00104$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=15.846519
;	genCast
;	genCopy
	ldx	#0x00
	lda	*__mullonglong_sloc0_1_0
;	Raw cost for generated ic 12 : (4, 5.000000) count=15.846519
;	genCast
;	genCopy
	stx	*(__mullonglong_sloc1_1_0 + 1)
	sty	*__mullonglong_sloc1_1_0
;	Raw cost for generated ic 13 : (4, 6.000000) count=15.846519
;	genPlus
	clc
	adc	*__mullonglong_sloc1_1_0
	pha
	txa
	adc	*(__mullonglong_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 14 : (9, 19.000000) count=15.846519
;	genCmp
	sec
	sbc	#0x08
	txa
	sbc	#0x00
	bvc	00137$
	bpl	00136$
	bmi	00138$
00137$:
	bmi	00136$
00138$:
	jmp	00107$
00136$:
;	Raw cost for generated ic 15 : (17, 21.400002) count=15.846519
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=15.846519
;	../_mullonglong.c: 45: unsigned char r = lr >> (j * 8);
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	tya
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 20 : (4, 8.000000) count=11.884890
;	genCast
;	genCopy
	sta	__srslonglong_PARM_2
;	Raw cost for generated ic 74 : (3, 4.000000) count=11.884890
;	genAssign
;	genCopy
	lda	(__mullonglong_PARM_2 + 7)
	sta	(__srslonglong_PARM_1 + 7)
	lda	(__mullonglong_PARM_2 + 6)
	sta	(__srslonglong_PARM_1 + 6)
	lda	(__mullonglong_PARM_2 + 5)
	sta	(__srslonglong_PARM_1 + 5)
	lda	(__mullonglong_PARM_2 + 4)
	sta	(__srslonglong_PARM_1 + 4)
	lda	(__mullonglong_PARM_2 + 3)
	sta	(__srslonglong_PARM_1 + 3)
	lda	(__mullonglong_PARM_2 + 2)
	sta	(__srslonglong_PARM_1 + 2)
	lda	(__mullonglong_PARM_2 + 1)
	sta	(__srslonglong_PARM_1 + 1)
	lda	__mullonglong_PARM_2
	sta	__srslonglong_PARM_1
;	Raw cost for generated ic 75 : (48, 64.000000) count=11.884890
;	genCall
	phy
	jsr	__srslonglong
;	assignResultValue
	sta	*__mullonglong_sloc1_1_0
	stx	*(__mullonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc1_1_0 + 7)
	ply
;	Raw cost for generated ic 77 : (33, 55.000000) count=11.884890
;	genCast
;	genCopy
	lda	*__mullonglong_sloc1_1_0
;	Raw cost for generated ic 22 : (2, 3.000000) count=11.884890
;	../_mullonglong.c: 46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
;	Raw cost for generated ic 78 : (0, 0.000000) count=11.884890
;	Raw cost for generated ic 79 : (0, 0.000000) count=11.884890
;	genCall
	phy
;	genSend
	tax
	lda	__mullonglong_l_30000_4
	jsr	__muluchar
;	assignResultValue
	ply
;	Raw cost for generated ic 80 : (9, 19.000000) count=11.884890
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=11.884890
;	genCast
;	genCopy
	stz	(__slulonglong_PARM_1 + 7)
	stz	(__slulonglong_PARM_1 + 6)
	stz	(__slulonglong_PARM_1 + 5)
	stz	(__slulonglong_PARM_1 + 4)
	stz	(__slulonglong_PARM_1 + 3)
	stz	(__slulonglong_PARM_1 + 2)
	stx	(__slulonglong_PARM_1 + 1)
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 26 : (24, 32.000000) count=11.884890
;	genPlus
	tya
	clc
	adc	*__mullonglong_sloc0_1_0
;	Raw cost for generated ic 29 : (4, 7.000000) count=11.884890
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 30 : (3, 6.000000) count=11.884890
;	genCast
;	genCopy
	sta	__slulonglong_PARM_2
;	Raw cost for generated ic 81 : (3, 4.000000) count=11.884890
;	genCall
	phy
	jsr	__slulonglong
;	assignResultValue
	sta	*__mullonglong_sloc1_1_0
	stx	*(__mullonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__mullonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__mullonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__mullonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__mullonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__mullonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__mullonglong_sloc1_1_0 + 7)
	ply
;	Raw cost for generated ic 84 : (33, 55.000000) count=11.884890
;	genPlus
	lda	__mullonglong_ret_10000_2
	clc
	adc	*__mullonglong_sloc1_1_0
	sta	__mullonglong_ret_10000_2
	lda	(__mullonglong_ret_10000_2 + 1)
	adc	*(__mullonglong_sloc1_1_0 + 1)
	sta	(__mullonglong_ret_10000_2 + 1)
	lda	(__mullonglong_ret_10000_2 + 2)
	adc	*(__mullonglong_sloc1_1_0 + 2)
	sta	(__mullonglong_ret_10000_2 + 2)
	lda	(__mullonglong_ret_10000_2 + 3)
	adc	*(__mullonglong_sloc1_1_0 + 3)
	sta	(__mullonglong_ret_10000_2 + 3)
	lda	(__mullonglong_ret_10000_2 + 4)
	adc	*(__mullonglong_sloc1_1_0 + 4)
	sta	(__mullonglong_ret_10000_2 + 4)
	lda	(__mullonglong_ret_10000_2 + 5)
	adc	*(__mullonglong_sloc1_1_0 + 5)
	sta	(__mullonglong_ret_10000_2 + 5)
	lda	(__mullonglong_ret_10000_2 + 6)
	adc	*(__mullonglong_sloc1_1_0 + 6)
	sta	(__mullonglong_ret_10000_2 + 6)
	lda	(__mullonglong_ret_10000_2 + 7)
	adc	*(__mullonglong_sloc1_1_0 + 7)
	sta	(__mullonglong_ret_10000_2 + 7)
;	Raw cost for generated ic 32 : (65, 90.000000) count=11.884890
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 36 : (1, 2.000000) count=11.884890
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 38 : (3, 3.000000) count=11.884890
;	genLabel
00107$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=3.961630
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
;	genPlus
;	  genPlusInc
	inc	*__mullonglong_sloc0_1_0
;	Raw cost for generated ic 42 : (2, 5.000000) count=3.961630
;	genCmp
	lda	*__mullonglong_sloc0_1_0
	cmp	#0x08
	bcs	00139$
	jmp	00106$
00139$:
;	Raw cost for generated ic 44 : (9, 10.600000) count=3.961630
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=3.961630
;	../_mullonglong.c: 50: return(ret);
;	genRet
	lda	(__mullonglong_ret_10000_2 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__mullonglong_ret_10000_2 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__mullonglong_ret_10000_2 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__mullonglong_ret_10000_2 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__mullonglong_ret_10000_2 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__mullonglong_ret_10000_2 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__mullonglong_ret_10000_2 + 1)
	lda	__mullonglong_ret_10000_2
;	Raw cost for generated ic 48 : (36, 50.000000) count=0.990407
;	genLabel
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.990407
;	../_mullonglong.c: 51: }
;	genEndFunction
	rts
;	Raw cost for generated ic 50 : (1, 6.000000) count=0.990407
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
