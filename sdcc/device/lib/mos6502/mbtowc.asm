;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbtowc
	
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
	.globl _mbtowc_PARM_3
	.globl _mbtowc_PARM_2
	.globl _mbtowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mbtowc_sloc0_1_0:
	.ds 2
_mbtowc_sloc1_1_0:
	.ds 2
_mbtowc_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbtowc_PARM_2:
	.ds 2
_mbtowc_PARM_3:
	.ds 2
_mbtowc_pwc_10000_42:
	.ds 2
_mbtowc_codepoint_10000_43:
	.ds 4
_mbtowc_seqlen_10000_43:
	.ds 1
_mbtowc_first_byte_10000_43:
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
;Allocation info for local variables in function 'mbtowc'
;------------------------------------------------------------
;s             Allocated with name '_mbtowc_PARM_2'
;n             Allocated with name '_mbtowc_PARM_3'
;pwc           Allocated with name '_mbtowc_pwc_10000_42'
;codepoint     Allocated with name '_mbtowc_codepoint_10000_43'
;seqlen        Allocated with name '_mbtowc_seqlen_10000_43'
;i             Allocated to registers 
;first_byte    Allocated with name '_mbtowc_first_byte_10000_43'
;sloc0         Allocated with name '_mbtowc_sloc0_1_0'
;sloc1         Allocated with name '_mbtowc_sloc1_1_0'
;sloc2         Allocated with name '_mbtowc_sloc2_1_0'
;------------------------------------------------------------
;	../mbtowc.c: 31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbtowc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mbtowc_pwc_10000_42
	stx	(_mbtowc_pwc_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mbtowc.c: 37: if(!s)
;	genIfx
	lda	(_mbtowc_PARM_2 + 1)
	ora	_mbtowc_PARM_2
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbtowc.c: 38: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../mbtowc.c: 40: seqlen = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_mbtowc_seqlen_10000_43
;	Raw cost for generated ic 8 : (5, 6.000000) count=1.000000
;	../mbtowc.c: 41: first_byte = *s;
;	genAssign
;	genCopy
	lda	(_mbtowc_PARM_2 + 1)
	sta	*(_mbtowc_sloc0_1_0 + 1)
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc0_1_0
;	Raw cost for generated ic 9 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_mbtowc_sloc0_1_0],y
	sta	_mbtowc_first_byte_10000_43
;	Raw cost for generated ic 10 : (7, 11.000000) count=1.000000
;	../mbtowc.c: 43: if(first_byte & 0x80)
;	genAnd
	bit	_mbtowc_first_byte_10000_43
;	genIfxJump : n
	bpl	00107$
;	Raw cost for generated ic 13 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../mbtowc.c: 45: while (first_byte & (0x80 >> seqlen))
;	genAssign
;	genCopy
	iny
;	Raw cost for generated ic 132 : (1, 2.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.999995
;	genRightShift
	ldx	#0x80
	stx	*_mbtowc_sloc1_1_0
	lda	#0x00
	sta	*(_mbtowc_sloc1_1_0 + 1)
	tya
	tax
	beq	00219$
	lda	*(_mbtowc_sloc1_1_0 + 1)
00218$:
	cmp	#0x80
	ror	a
	ror	*_mbtowc_sloc1_1_0
	dex
	bne	00218$
	sta	*(_mbtowc_sloc1_1_0 + 1)
00219$:
;	Raw cost for generated ic 18 : (24, 36.200001) count=2.999995
;	genCast
;	genCopy
	lda	_mbtowc_first_byte_10000_43
;	Raw cost for generated ic 19 : (3, 4.000000) count=2.999995
;	genAnd
	and	*_mbtowc_sloc1_1_0
	bne	00220$
	txa
	and	*(_mbtowc_sloc1_1_0 + 1)
00220$:
;	genIfxJump : z
	beq	00143$
;	Raw cost for generated ic 20 : (12, 16.200001) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=2.999995
;	../mbtowc.c: 46: seqlen++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 25 : (1, 2.000000) count=2.249995
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 27 : (3, 3.000000) count=2.249995
;	genLabel
00143$:
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.749999
;	genAssign
;	genCopy
	sty	_mbtowc_seqlen_10000_43
;	Raw cost for generated ic 134 : (3, 4.000000) count=0.749999
;	../mbtowc.c: 47: first_byte &= (0xff >> (seqlen + 1));
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 30 : (1, 2.000000) count=0.749999
;	genRightShift
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00223$
	stx	*(REGTEMP+0)
00222$:
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	dey
	bne	00222$
	ldx	*(REGTEMP+0)
00223$:
;	Raw cost for generated ic 31 : (20, 28.200001) count=0.749999
;	genCast
;	genCopy
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.749999
;	genAnd
	and	_mbtowc_first_byte_10000_43
	sta	_mbtowc_first_byte_10000_43
;	Raw cost for generated ic 33 : (6, 8.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999999
;	../mbtowc.c: 50: if(seqlen > 4 || n < seqlen)
;	genCmp
	lda	_mbtowc_seqlen_10000_43
	cmp	#0x04
	beq	00224$
	bcs	00108$
00224$:
;	Raw cost for generated ic 37 : (12, 14.200001) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 41 : (2, 2.000000) count=0.749998
;	genCmp
	sta	*(REGTEMP+0)
	lda	_mbtowc_PARM_3
	sec
	sbc	*(REGTEMP+0)
	lda	(_mbtowc_PARM_3 + 1)
	sbc	#0x00
	bcs	00136$
;	Raw cost for generated ic 42 : (18, 23.600000) count=0.749998
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.749998
;	genLabel
00108$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.812497
;	../mbtowc.c: 51: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.812497
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
;	genLabel
00136$:
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	ldx	#0x01
;	Raw cost for generated ic 135 : (2, 2.000000) count=0.999997
;	genLabel
00121$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=3.999972
;	genCmp
	cpx	_mbtowc_seqlen_10000_43
	bcs	00113$
;	Raw cost for generated ic 50 : (8, 9.600000) count=3.999972
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=3.999972
;	../mbtowc.c: 54: if((s[i] & 0xc0) != 0x80)
;	genPlus
	txa
	clc
	adc	*_mbtowc_sloc0_1_0
	sta	*_mbtowc_sloc1_1_0
	lda	#0x00
	adc	*(_mbtowc_sloc0_1_0 + 1)
	sta	*(_mbtowc_sloc1_1_0 + 1)
;	Raw cost for generated ic 54 : (12, 18.000000) count=2.999979
;	genPointerGet
	ldy	#0x00
	lda	[*_mbtowc_sloc1_1_0],y
;	Raw cost for generated ic 55 : (4, 7.000000) count=2.999979
;	genCast
;	genCopy
;	Raw cost for generated ic 56 : (0, 0.000000) count=2.999979
;	genAnd
	and	#0xc0
;	Raw cost for generated ic 57 : (2, 2.000000) count=2.999979
;	genCmpEQorNE
	cmp	#0x80
	beq	00122$
;	Raw cost for generated ic 58 : (7, 7.600000) count=2.999979
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=2.999979
;	../mbtowc.c: 55: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 62 : (6, 7.000000) count=2.249982
;	genLabel
00122$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=2.999975
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 66 : (1, 2.000000) count=2.999975
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 68 : (3, 3.000000) count=2.999975
;	genLabel
00113$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999990
;	../mbtowc.c: 57: codepoint = first_byte;
;	genCast
;	genCopy
	ldy	#0x00
	sty	(_mbtowc_codepoint_10000_43 + 3)
	sty	(_mbtowc_codepoint_10000_43 + 2)
	sty	(_mbtowc_codepoint_10000_43 + 1)
	lda	_mbtowc_first_byte_10000_43
	sta	_mbtowc_codepoint_10000_43
;	Raw cost for generated ic 70 : (17, 22.000000) count=0.999990
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
;	genPlus
;	  genPlusInc
	lda	*_mbtowc_sloc0_1_0
	clc
	adc	#0x01
	sta	_mbtowc_PARM_2
	lda	*(_mbtowc_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_mbtowc_PARM_2 + 1)
;	Raw cost for generated ic 73 : (15, 20.000000) count=0.999990
;	genCast
;	genCopy
	ldx	_mbtowc_seqlen_10000_43
;	Raw cost for generated ic 75 : (3, 4.000000) count=0.999990
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 76 : (1, 2.000000) count=0.999990
;	genAssign
;	genCopy
	sta	*(_mbtowc_sloc1_1_0 + 1)
	lda	_mbtowc_PARM_2
	sta	*_mbtowc_sloc1_1_0
;	Raw cost for generated ic 136 : (7, 10.000000) count=0.999990
;	genLabel
00124$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=3.999946
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 79 : (7, 7.600000) count=3.999946
;	../mbtowc.c: 61: codepoint <<= 6;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=6
	lda	(_mbtowc_codepoint_10000_43 + 3)
	lsr	a
	pha
	lda	(_mbtowc_codepoint_10000_43 + 2)
	ror	a
	sta	(_mbtowc_codepoint_10000_43 + 3)
	lda	(_mbtowc_codepoint_10000_43 + 1)
	ror	a
	sta	(_mbtowc_codepoint_10000_43 + 2)
	lda	_mbtowc_codepoint_10000_43
	ror	a
	sta	(_mbtowc_codepoint_10000_43 + 1)
	lda	#0x00
	ror	a
	sta	_mbtowc_codepoint_10000_43
	pla
	lsr	a
	ror	(_mbtowc_codepoint_10000_43 + 3)
	ror	(_mbtowc_codepoint_10000_43 + 2)
	ror	(_mbtowc_codepoint_10000_43 + 1)
	ror	_mbtowc_codepoint_10000_43
;	Raw cost for generated ic 82 : (46, 77.000000) count=2.999955
;	../mbtowc.c: 62: codepoint |= (*s & 0x3f);
;	genPointerGet
	ldy	#0x00
	lda	[*_mbtowc_sloc1_1_0],y
;	Raw cost for generated ic 85 : (4, 7.000000) count=2.999955
;	genCast
;	genCopy
;	Raw cost for generated ic 86 : (0, 0.000000) count=2.999955
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 87 : (2, 2.000000) count=2.999955
;	genCast
	sta	*_mbtowc_sloc2_1_0
	sty	*(_mbtowc_sloc2_1_0 + 1)
	sty	*(_mbtowc_sloc2_1_0 + 2)
	sty	*(_mbtowc_sloc2_1_0 + 3)
;	Raw cost for generated ic 88 : (8, 12.000000) count=2.999955
;	genOr
	lda	_mbtowc_codepoint_10000_43
	ora	*_mbtowc_sloc2_1_0
	sta	_mbtowc_codepoint_10000_43
	lda	(_mbtowc_codepoint_10000_43 + 1)
	ora	*(_mbtowc_sloc2_1_0 + 1)
	sta	(_mbtowc_codepoint_10000_43 + 1)
	lda	(_mbtowc_codepoint_10000_43 + 2)
	ora	*(_mbtowc_sloc2_1_0 + 2)
	sta	(_mbtowc_codepoint_10000_43 + 2)
	lda	(_mbtowc_codepoint_10000_43 + 3)
	ora	*(_mbtowc_sloc2_1_0 + 3)
	sta	(_mbtowc_codepoint_10000_43 + 3)
;	Raw cost for generated ic 89 : (32, 44.000000) count=2.999955
;	../mbtowc.c: 63: s++;
;	genPlus
;	  genPlusInc
	inc	*_mbtowc_sloc1_1_0
	bne	00231$
	inc	*(_mbtowc_sloc1_1_0 + 1)
00231$:
;	Raw cost for generated ic 92 : (6, 12.600000) count=2.999955
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 96 : (1, 2.000000) count=2.999955
;	genGoto
	jmp	00124$
;	Raw cost for generated ic 98 : (3, 3.000000) count=2.999955
;	genLabel
00114$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.999986
;	../mbtowc.c: 66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
;	genCmp
	lda	(_mbtowc_codepoint_10000_43 + 1)
	sec
	sbc	#0xd8
	lda	(_mbtowc_codepoint_10000_43 + 2)
	sbc	#0x00
	lda	(_mbtowc_codepoint_10000_43 + 3)
	sbc	#0x00
	bcc	00116$
;	Raw cost for generated ic 100 : (21, 25.600000) count=0.999986
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999986
;	genCmp
	lda	#0xff
	sec
	sbc	_mbtowc_codepoint_10000_43
	lda	#0xdf
	sbc	(_mbtowc_codepoint_10000_43 + 1)
	lda	#0x00
	sbc	(_mbtowc_codepoint_10000_43 + 2)
	lda	#0x00
	sbc	(_mbtowc_codepoint_10000_43 + 3)
	bcc	00116$
;	Raw cost for generated ic 104 : (26, 31.600000) count=0.749986
;	skipping generated iCode
;	Raw cost for generated ic 105 : (0, 0.000000) count=0.749986
;	../mbtowc.c: 67: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 108 : (6, 7.000000) count=0.562490
;	genLabel
00116$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 69: if(pwc)
;	genIfx
	lda	(_mbtowc_pwc_10000_42 + 1)
	ora	_mbtowc_pwc_10000_42
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 110 : (11, 13.600000) count=0.999982
;	../mbtowc.c: 70: *pwc = codepoint;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mbtowc_pwc_10000_42
	stx	*(DPTR+0)
	ldx	(_mbtowc_pwc_10000_42 + 1)
	stx	*(DPTR+1)
	lda	_mbtowc_codepoint_10000_43
	ldy	#0x00
	sta	[DPTR],y
	lda	(_mbtowc_codepoint_10000_43 + 1)
	iny
	sta	[DPTR],y
	lda	(_mbtowc_codepoint_10000_43 + 2)
	iny
	sta	[DPTR],y
	lda	(_mbtowc_codepoint_10000_43 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 114 : (35, 62.000000) count=0.749986
;	genLabel
00119$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 71: return(codepoint ? seqlen : 0);
;	genIfx
	lda	(_mbtowc_codepoint_10000_43 + 3)
	ora	(_mbtowc_codepoint_10000_43 + 2)
	ora	(_mbtowc_codepoint_10000_43 + 1)
	ora	_mbtowc_codepoint_10000_43
;	genIfxJump : z
	beq	00128$
;	Raw cost for generated ic 116 : (17, 21.600000) count=0.999982
;	genCast
;	genCopy
	ldx	#0x00
	lda	_mbtowc_seqlen_10000_43
;	Raw cost for generated ic 117 : (5, 6.000000) count=0.749986
;	genGoto
	rts
;	Raw cost for generated ic 119 : (3, 3.000000) count=0.749986
;	genLabel
00128$:
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.249995
;	genAssign
;	genCopy
	ldx	#0x00
	txa
;	Raw cost for generated ic 121 : (3, 4.000000) count=0.249995
;	genLabel
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.999982
;	genRet
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.999982
;	genLabel
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 72: }
;	genEndFunction
	rts
;	Raw cost for generated ic 125 : (1, 6.000000) count=0.999982
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
