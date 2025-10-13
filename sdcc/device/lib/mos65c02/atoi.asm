;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atoi
	
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
	.globl _atoi
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_atoi_sloc0_1_0:
	.ds 2
_atoi_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atoi_ret_10000_63:
	.ds 2
_atoi_neg_10000_63:
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;sloc0         Allocated with name '_atoi_sloc0_1_0'
;sloc1         Allocated with name '_atoi_sloc1_1_0'
;nptr          Allocated to registers a x 
;__200000007   Allocated to registers 
;__200000004   Allocated to registers 
;ret           Allocated with name '_atoi_ret_10000_63'
;neg           Allocated with name '_atoi_neg_10000_63'
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__200000008   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../atoi.c: 34: int atoi(const char *nptr)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atoi:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_atoi_sloc0_1_0
	stx	*(_atoi_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../atoi.c: 36: int ret = 0;
;	genAssign
;	genAssignLit
	stz	_atoi_ret_10000_63
	stz	(_atoi_ret_10000_63 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../atoi.c: 39: while (isblank (*nptr))
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
;	Raw cost for generated ic 6 : (4, 7.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x20
	beq	00115$
;	Raw cost for generated ic 11 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x09
	bne	00131$
;	Raw cost for generated ic 14 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999992
;	genLabel
00115$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=4.333324
;	../atoi.c: 40: nptr++;
;	genPlus
;	  genPlusInc
	inc	*_atoi_sloc0_1_0
	bne	00101$
	inc	*(_atoi_sloc0_1_0 + 1)
;	Raw cost for generated ic 30 : (6, 12.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 32 : (3, 3.000000) count=4.333324
;	genLabel
00131$:
;	Raw cost for generated ic 105 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	ldx	*(_atoi_sloc0_1_0 + 1)
	lda	*_atoi_sloc0_1_0
;	Raw cost for generated ic 106 : (4, 6.000000) count=0.999997
;	../atoi.c: 42: neg = (*nptr == '-');
;	genPointerGet
	sta	*(REGTEMP+0)
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 35 : (9, 15.000000) count=0.999997
;	genCmpEQorNE
	cpy	#0x2d
	sta	*(REGTEMP+0)
	beq	00179$
	lda	#0x00
	bra	00178$
00179$:
	lda	#0x01
00178$:
	sta	_atoi_neg_10000_63
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 36 : (17, 21.200001) count=0.999997
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
;	genCmpEQorNE
	cpy	#0x2d
	beq	00104$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cpy	#0x2b
	bne	00129$
;	Raw cost for generated ic 46 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.749996
;	genLabel
00104$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.812496
;	../atoi.c: 45: nptr++;
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00182$
	inx
00182$:
;	Raw cost for generated ic 51 : (6, 8.600000) count=0.812496
;	../atoi.c: 47: while (isdigit (*nptr))
;	genLabel
00129$:
;	Raw cost for generated ic 103 : (0, 0.000000) count=0.999995
;	genAssign
;	genCopy
	sta	*_atoi_sloc0_1_0
	stx	*(_atoi_sloc0_1_0 + 1)
;	Raw cost for generated ic 107 : (4, 6.000000) count=0.999995
;	genLabel
00107$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=2.285698
;	genPointerGet
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
;	Raw cost for generated ic 56 : (4, 7.000000) count=2.285698
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (0, 0.000000) count=2.285698
;	genCmp
	cmp	#0x30
	bcc	00109$
;	Raw cost for generated ic 61 : (7, 7.600000) count=2.285698
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=2.285698
;	genCmp
	cmp	#0x39
	beq	00184$
	bcs	00109$
00184$:
;	Raw cost for generated ic 65 : (9, 10.200000) count=1.714274
;	skipping generated iCode
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.714274
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
;	genAssign
;	genCopy
	lda	(_atoi_ret_10000_63 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	_atoi_ret_10000_63
	sta	__mulint_PARM_2
;	Raw cost for generated ic 117 : (12, 16.000000) count=1.285703
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.285703
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	sta	*_atoi_sloc1_1_0
	stx	*(_atoi_sloc1_1_0 + 1)
;	Raw cost for generated ic 118 : (11, 16.000000) count=1.285703
;	genPointerGet
	ldy	#0x00
	lda	[*_atoi_sloc0_1_0],y
;	Raw cost for generated ic 85 : (4, 7.000000) count=1.285703
;	genPlus
;	  genPlusInc
	inc	*_atoi_sloc0_1_0
	bne	00186$
	inc	*(_atoi_sloc0_1_0 + 1)
00186$:
;	Raw cost for generated ic 83 : (6, 12.600000) count=1.285703
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 86 : (2, 2.000000) count=1.285703
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00187$
	dex
00187$:
;	Raw cost for generated ic 87 : (6, 8.600000) count=1.285703
;	genPlus
	clc
	adc	*_atoi_sloc1_1_0
	sta	_atoi_ret_10000_63
	txa
	adc	*(_atoi_sloc1_1_0 + 1)
	sta	(_atoi_ret_10000_63 + 1)
;	Raw cost for generated ic 88 : (12, 18.000000) count=1.285703
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 90 : (3, 3.000000) count=1.285703
;	genLabel
00109$:
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.999991
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
;	genIfx
	lda	_atoi_neg_10000_63
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 92 : (8, 9.600000) count=0.999991
;	genUminus
	lda	#0x00
	sec
	sbc	_atoi_ret_10000_63
	pha
	lda	#0x00
	sbc	(_atoi_ret_10000_63 + 1)
	tax
	pla
;	Raw cost for generated ic 93 : (14, 23.000000) count=0.749993
;	genGoto
	rts
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.749993
;	genLabel
00120$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.249996
;	genAssign
;	genCopy
	ldx	(_atoi_ret_10000_63 + 1)
	lda	_atoi_ret_10000_63
;	Raw cost for generated ic 97 : (6, 8.000000) count=0.249996
;	genLabel
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999989
;	genRet
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.999989
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.999989
;	../atoi.c: 51: }
;	genEndFunction
	rts
;	Raw cost for generated ic 101 : (1, 6.000000) count=0.999989
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
