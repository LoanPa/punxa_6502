;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	
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
	.globl _mbrtowc_PARM_4
	.globl _mbrtowc_PARM_3
	.globl _mbrtowc_PARM_2
	.globl _mbrtowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbrtowc_sloc0_1_0:
	.ds 2
_mbrtowc_sloc1_1_0:
	.ds 2
_mbrtowc_sloc2_1_0:
	.ds 2
_mbrtowc_sloc3_1_0:
	.ds 1
_mbrtowc_sloc4_1_0:
	.ds 2
_mbrtowc_sloc5_1_0:
	.ds 2
_mbrtowc_sloc6_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbrtowc_PARM_2:
	.ds 2
_mbrtowc_PARM_3:
	.ds 2
_mbrtowc_PARM_4:
	.ds 2
_mbrtowc_pwc_10000_15:
	.ds 2
_mbrtowc_first_byte_10000_16:
	.ds 1
_mbrtowc_mbseq_10000_16:
	.ds 4
_mbrtowc_codepoint_10000_16:
	.ds 4
_mbrtowc_i_10000_16:
	.ds 1
_mbrtowc_sps_10000_16:
	.ds 3
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
;Allocation info for local variables in function 'mbrtowc'
;------------------------------------------------------------
;sloc0         Allocated with name '_mbrtowc_sloc0_1_0'
;sloc1         Allocated with name '_mbrtowc_sloc1_1_0'
;sloc2         Allocated with name '_mbrtowc_sloc2_1_0'
;sloc3         Allocated with name '_mbrtowc_sloc3_1_0'
;sloc4         Allocated with name '_mbrtowc_sloc4_1_0'
;sloc5         Allocated with name '_mbrtowc_sloc5_1_0'
;sloc6         Allocated with name '_mbrtowc_sloc6_1_0'
;s             Allocated with name '_mbrtowc_PARM_2'
;n             Allocated with name '_mbrtowc_PARM_3'
;ps            Allocated with name '_mbrtowc_PARM_4'
;pwc           Allocated with name '_mbrtowc_pwc_10000_15'
;first_byte    Allocated with name '_mbrtowc_first_byte_10000_16'
;seqlen        Allocated to registers 
;mbseq         Allocated with name '_mbrtowc_mbseq_10000_16'
;codepoint     Allocated with name '_mbrtowc_codepoint_10000_16'
;i             Allocated with name '_mbrtowc_i_10000_16'
;j             Allocated to registers 
;sps           Allocated with name '_mbrtowc_sps_10000_16'
;------------------------------------------------------------
;	../mbrtowc.c: 32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtowc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mbrtowc_pwc_10000_15
	stx	(_mbrtowc_pwc_10000_15 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mbrtowc.c: 41: if(!s)
;	genIfx
	lda	(_mbrtowc_PARM_2 + 1)
	ora	_mbrtowc_PARM_2
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtowc.c: 42: return(mbrtowc(0, "", 1, ps));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_mbrtowc_PARM_2 + 1)
	lda	#___str_0
	sta	_mbrtowc_PARM_2
;	Raw cost for generated ic 7 : (10, 12.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_mbrtowc_PARM_3
	stz	(_mbrtowc_PARM_3 + 1)
;	Raw cost for generated ic 10 : (8, 10.000000) count=0.750000
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	dex
	txa
;	assignResultValue
;	Raw cost for generated ic 12 : (5, 10.000000) count=0.750000
;	genRet
	jmp	_mbrtowc
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../mbrtowc.c: 43: if(!n)
;	genIfx
	lda	(_mbrtowc_PARM_3 + 1)
	ora	_mbrtowc_PARM_3
;	genIfxJump : z
	bne	00341$
	jmp	00128$
00341$:
;	Raw cost for generated ic 15 : (11, 13.600000) count=1.000000
;	../mbrtowc.c: 45: if(!ps)
;	genIfx
	lda	(_mbrtowc_PARM_4 + 1)
	ora	_mbrtowc_PARM_4
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 20 : (11, 13.600000) count=0.750000
;	../mbrtowc.c: 47: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	lda	#>_mbrtowc_sps_10000_16
	sta	(_mbrtowc_PARM_4 + 1)
	lda	#_mbrtowc_sps_10000_16
	sta	_mbrtowc_PARM_4
;	Raw cost for generated ic 24 : (10, 12.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.750000
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_mbrtowc_PARM_4 + 1)
	sta	*(_mbrtowc_sloc0_1_0 + 1)
	lda	_mbrtowc_PARM_4
	sta	*_mbrtowc_sloc0_1_0
;	Raw cost for generated ic 29 : (10, 14.000000) count=0.750000
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 264 : (2, 2.000000) count=0.750000
;	genLabel
00131$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.714280
;	genPlus
	txa
	clc
	adc	*_mbrtowc_sloc0_1_0
	sta	*_mbrtowc_sloc1_1_0
	lda	#0x00
	adc	*(_mbrtowc_sloc0_1_0 + 1)
	sta	*(_mbrtowc_sloc1_1_0 + 1)
;	Raw cost for generated ic 32 : (12, 18.000000) count=1.714280
;	genPointerGet
	ldy	#0x00
	lda	[*_mbrtowc_sloc1_1_0],y
;	Raw cost for generated ic 33 : (4, 7.000000) count=1.714280
;	genIfx
;	genIfxJump : z
	beq	00177$
;	Raw cost for generated ic 34 : (5, 5.600000) count=1.714280
;	genCmp
	cpx	#0x03
	bcs	00177$
;	Raw cost for generated ic 37 : (7, 7.600000) count=1.285710
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.285710
;	../mbrtowc.c: 51: mbseq[i] = ps->c[i];
;	genAssign
;	genCopy
	sty	*(_mbrtowc_sloc1_1_0 + 1)
	stx	*_mbrtowc_sloc1_1_0
;	Raw cost for generated ic 42 : (4, 6.000000) count=0.964280
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=_mbrtowc_mbseq_10000_16 savea=0
	clc
	txa
	adc	#<(_mbrtowc_mbseq_10000_16+0)
	sta	*(DPTR+0)
	lda	*(_mbrtowc_sloc1_1_0 + 1)
	adc	#>(_mbrtowc_mbseq_10000_16+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
	ldx	*(_mbrtowc_sloc1_1_0+0)
;	Raw cost for generated ic 48 : (21, 33.000000) count=0.964280
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 51 : (1, 2.000000) count=0.964280
;	genGoto
	jmp	00131$
;	Raw cost for generated ic 53 : (3, 3.000000) count=0.964280
;	genLabel
00177$:
;	Raw cost for generated ic 265 : (0, 0.000000) count=0.749996
;	genAssign
;	genCopy
	stx	_mbrtowc_i_10000_16
;	Raw cost for generated ic 266 : (3, 4.000000) count=0.749996
;	../mbrtowc.c: 53: seqlen = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*_mbrtowc_sloc1_1_0
;	Raw cost for generated ic 55 : (4, 5.000000) count=0.749996
;	../mbrtowc.c: 54: first_byte = ps->c[0] ? ps->c[0] : *s;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mbrtowc_PARM_4
	stx	*(DPTR+0)
	ldx	(_mbrtowc_PARM_4 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 59 : (14, 21.000000) count=0.749996
;	genIfx
;	genIfxJump : z
;	Raw cost for generated ic 60 : (5, 5.600000) count=0.749996
;	genAssign
;	genCopy
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562494
;	genGoto
;	Raw cost for generated ic 66 : (3, 3.000000) count=0.562494
;	genLabel
	bne	00148$
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.187498
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mbrtowc_PARM_2
	stx	*(DPTR+0)
	ldx	(_mbrtowc_PARM_2 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 69 : (14, 21.000000) count=0.187498
;	genLabel
00148$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.749992
;	genCast
;	genCopy
	sta	_mbrtowc_first_byte_10000_16
;	Raw cost for generated ic 72 : (3, 4.000000) count=0.749992
;	../mbrtowc.c: 56: if(first_byte & 0x80)
;	genAnd
	bit	_mbrtowc_first_byte_10000_16
;	genIfxJump : n
	bpl	00112$
;	Raw cost for generated ic 74 : (8, 9.600000) count=0.749992
;	skipping generated iCode
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.749992
;	../mbrtowc.c: 58: while (first_byte & (0x80 >> seqlen))
;	genAssign
;	genCopy
	ldy	#0x01
;	Raw cost for generated ic 267 : (2, 2.000000) count=0.562494
;	genLabel
00108$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=2.249943
;	genRightShift
	ldx	#0x80
	stx	*_mbrtowc_sloc0_1_0
	stz	*(_mbrtowc_sloc0_1_0 + 1)
	tya
	tax
	beq	00351$
	lda	*(_mbrtowc_sloc0_1_0 + 1)
00350$:
	cmp	#0x80
	ror	a
	ror	*_mbrtowc_sloc0_1_0
	dex
	bne	00350$
	sta	*(_mbrtowc_sloc0_1_0 + 1)
00351$:
;	Raw cost for generated ic 79 : (23, 35.200001) count=2.249943
;	genCast
;	genCopy
	lda	_mbrtowc_first_byte_10000_16
;	Raw cost for generated ic 80 : (3, 4.000000) count=2.249943
;	genAnd
	and	*_mbrtowc_sloc0_1_0
	bne	00352$
	txa
	and	*(_mbrtowc_sloc0_1_0 + 1)
00352$:
;	genIfxJump : z
	beq	00178$
;	Raw cost for generated ic 81 : (12, 16.200001) count=2.249943
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=2.249943
;	../mbrtowc.c: 59: seqlen++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 86 : (1, 2.000000) count=1.687449
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 88 : (3, 3.000000) count=1.687449
;	genLabel
00178$:
;	Raw cost for generated ic 268 : (0, 0.000000) count=0.562486
;	genAssign
;	genCopy
	sty	*_mbrtowc_sloc1_1_0
;	Raw cost for generated ic 269 : (2, 3.000000) count=0.562486
;	../mbrtowc.c: 60: first_byte &= (0xff >> (seqlen + 1));
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 91 : (1, 2.000000) count=0.562486
;	genRightShift
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00355$
	stx	*(REGTEMP+0)
00354$:
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	dey
	bne	00354$
	ldx	*(REGTEMP+0)
00355$:
;	Raw cost for generated ic 92 : (20, 28.200001) count=0.562486
;	genCast
;	genCopy
;	Raw cost for generated ic 263 : (0, 0.000000) count=0.562486
;	genAnd
	and	_mbrtowc_first_byte_10000_16
	sta	_mbrtowc_first_byte_10000_16
;	Raw cost for generated ic 94 : (6, 8.000000) count=0.562486
;	genLabel
00112$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.749984
;	../mbrtowc.c: 63: if(seqlen > 4)
;	genCmp
	lda	*_mbrtowc_sloc1_1_0
	cmp	#0x04
	beq	00356$
	bcc	00356$
	jmp	00128$
00356$:
;	Raw cost for generated ic 98 : (11, 13.200000) count=0.749984
;	skipping generated iCode
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.749984
;	../mbrtowc.c: 66: if(i + n < seqlen) // Incomplete multibyte character
;	genCast
;	genCopy
	lda	_mbrtowc_i_10000_16
	sta	*_mbrtowc_sloc0_1_0
;	Raw cost for generated ic 104 : (5, 7.000000) count=0.562479
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 105 : (2, 2.000000) count=0.562479
;	genPlus
	clc
	adc	_mbrtowc_PARM_3
	pha
	txa
	adc	(_mbrtowc_PARM_3 + 1)
	tax
	pla
;	Raw cost for generated ic 106 : (11, 21.000000) count=0.562479
;	genCast
;	genCopy
	stz	*(_mbrtowc_sloc2_1_0 + 1)
	ldy	*_mbrtowc_sloc1_1_0
	sty	*_mbrtowc_sloc2_1_0
;	Raw cost for generated ic 107 : (7, 10.000000) count=0.562479
;	genCmp
	sec
	sbc	*_mbrtowc_sloc2_1_0
	txa
	sbc	*(_mbrtowc_sloc2_1_0 + 1)
	bcs	00166$
;	Raw cost for generated ic 108 : (11, 15.600000) count=0.562479
;	skipping generated iCode
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.562479
;	../mbrtowc.c: 70: return(-2);
;	genAssign
;	genCopy
	lda	(_mbrtowc_PARM_2 + 1)
	sta	*(_mbrtowc_sloc2_1_0 + 1)
	lda	_mbrtowc_PARM_2
	sta	*_mbrtowc_sloc2_1_0
;	Raw cost for generated ic 270 : (10, 14.000000) count=0.421859
;	genAssign
;	genCopy
	lda	_mbrtowc_i_10000_16
	sta	*_mbrtowc_sloc3_1_0
;	Raw cost for generated ic 273 : (5, 7.000000) count=0.421859
;	genAssign
;	genCopy
	lda	(_mbrtowc_PARM_3 + 1)
	sta	*(_mbrtowc_sloc4_1_0 + 1)
	lda	_mbrtowc_PARM_3
	sta	*_mbrtowc_sloc4_1_0
;	Raw cost for generated ic 275 : (10, 14.000000) count=0.421859
;	genLabel
00134$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=1.687450
;	../mbrtowc.c: 68: for(;n-- ; i++)
;	genAssign
;	genCopy
	ldx	*(_mbrtowc_sloc4_1_0 + 1)
	lda	*_mbrtowc_sloc4_1_0
;	Raw cost for generated ic 113 : (4, 6.000000) count=1.687450
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_mbrtowc_sloc4_1_0
	bne	00359$
	dec	*(_mbrtowc_sloc4_1_0 + 1)
00359$:
	dec	*_mbrtowc_sloc4_1_0
;	Raw cost for generated ic 114 : (8, 15.600000) count=1.687450
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00361$
	cpx	#0x00
	beq	00115$
00361$:
;	Raw cost for generated ic 116 : (11, 12.200000) count=1.687450
;	../mbrtowc.c: 69: ps->c[i] = *s++;
;	genPlus
	lda	_mbrtowc_PARM_4
	clc
	adc	*_mbrtowc_sloc3_1_0
	sta	*_mbrtowc_sloc5_1_0
	lda	(_mbrtowc_PARM_4 + 1)
	adc	#0x00
	sta	*(_mbrtowc_sloc5_1_0 + 1)
;	Raw cost for generated ic 122 : (15, 21.000000) count=1.265590
;	genPointerGet
	ldy	#0x00
	lda	[*_mbrtowc_sloc2_1_0],y
;	Raw cost for generated ic 126 : (4, 7.000000) count=1.265590
;	genPlus
;	  genPlusInc
	inc	*_mbrtowc_sloc2_1_0
	bne	00362$
	inc	*(_mbrtowc_sloc2_1_0 + 1)
00362$:
;	Raw cost for generated ic 124 : (6, 12.600000) count=1.265590
;	genPointerSet
	sta	[*_mbrtowc_sloc5_1_0],y
;	Raw cost for generated ic 127 : (2, 6.000000) count=1.265590
;	../mbrtowc.c: 68: for(;n-- ; i++)
;	genPlus
;	  genPlusInc
	inc	*_mbrtowc_sloc3_1_0
;	Raw cost for generated ic 130 : (2, 5.000000) count=1.265590
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 132 : (3, 3.000000) count=1.265590
;	genLabel
00115$:
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.421862
;	../mbrtowc.c: 70: return(-2);
;	genRet
	lda	#0xfe
	ldx	#0xff
	rts
;	Raw cost for generated ic 134 : (7, 7.000000) count=0.421862
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
;	genLabel
00166$:
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.562482
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 277 : (2, 2.000000) count=0.562482
;	genLabel
00137$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=2.249993
;	genCmp
	cpx	_mbrtowc_i_10000_16
	bcs	00118$
;	Raw cost for generated ic 138 : (8, 9.600000) count=2.249993
;	skipping generated iCode
;	Raw cost for generated ic 139 : (0, 0.000000) count=2.249993
;	../mbrtowc.c: 74: ps->c[j] = 0;
;	genPlus
	txa
	clc
	adc	_mbrtowc_PARM_4
	sta	*_mbrtowc_sloc5_1_0
	lda	#0x00
	adc	(_mbrtowc_PARM_4 + 1)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
;	Raw cost for generated ic 145 : (14, 20.000000) count=1.687511
;	genPointerSet
	lda	#0x00
	tay
	sta	[*_mbrtowc_sloc5_1_0],y
;	Raw cost for generated ic 146 : (5, 10.000000) count=1.687511
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 149 : (1, 2.000000) count=1.687511
;	genGoto
	jmp	00137$
;	Raw cost for generated ic 151 : (3, 3.000000) count=1.687511
;	genLabel
00118$:
;	Raw cost for generated ic 152 : (0, 0.000000) count=0.562511
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_mbrtowc_PARM_3
	stz	(_mbrtowc_PARM_3 + 1)
;	Raw cost for generated ic 153 : (8, 10.000000) count=0.562511
;	genIfx
	lda	_mbrtowc_i_10000_16
;	genIfxJump : z
	beq	00149$
;	Raw cost for generated ic 154 : (8, 9.600000) count=0.562511
;	genCast
;	genCopy
	ldx	*_mbrtowc_sloc0_1_0
;	Raw cost for generated ic 156 : (2, 3.000000) count=0.421900
;	genGoto
	jmp	00150$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.421900
;	genLabel
00149$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.140628
;	genAssign
;	genCopy
	ldx	#0x01
;	Raw cost for generated ic 159 : (2, 2.000000) count=0.140628
;	genLabel
00150$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.562527
;	genCast
;	genCopy
;	Raw cost for generated ic 161 : (0, 0.000000) count=0.562527
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 168 : (0, 0.000000) count=0.562527
;	genAssign
;	genCopy
	lda	(_mbrtowc_PARM_2 + 1)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	lda	_mbrtowc_PARM_2
	sta	*_mbrtowc_sloc5_1_0
;	Raw cost for generated ic 280 : (10, 14.000000) count=0.562527
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*_mbrtowc_sloc4_1_0
	stz	*(_mbrtowc_sloc4_1_0 + 1)
;	Raw cost for generated ic 282 : (7, 9.000000) count=0.562527
;	genLabel
00140$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=1.285815
;	genCmp
	cpx	*_mbrtowc_sloc1_1_0
	bcs	00121$
;	Raw cost for generated ic 164 : (7, 8.600000) count=1.285815
;	skipping generated iCode
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.285815
;	../mbrtowc.c: 78: mbseq[i] = *s++;
;	genAssign
;	genCopy
	stz	*(_mbrtowc_sloc2_1_0 + 1)
	stx	*_mbrtowc_sloc2_1_0
;	Raw cost for generated ic 169 : (5, 7.000000) count=0.964384
;	genPointerGet
	ldy	#0x00
	lda	[*_mbrtowc_sloc5_1_0],y
;	Raw cost for generated ic 173 : (4, 7.000000) count=0.964384
;	genPlus
;	  genPlusInc
	inc	*_mbrtowc_sloc5_1_0
	bne	00367$
	inc	*(_mbrtowc_sloc5_1_0 + 1)
00367$:
;	Raw cost for generated ic 171 : (6, 12.600000) count=0.964384
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=_mbrtowc_mbseq_10000_16 savea=0
	clc
	txa
	adc	#<(_mbrtowc_mbseq_10000_16+0)
	sta	*(DPTR+0)
	lda	*(_mbrtowc_sloc2_1_0 + 1)
	adc	#>(_mbrtowc_mbseq_10000_16+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
	ldx	*(_mbrtowc_sloc2_1_0+0)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 174 : (23, 36.000000) count=0.964384
;	../mbrtowc.c: 79: if((mbseq[i] & 0xc0) != 0x80)
;	genCast
;	genCopy
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.964384
;	genAnd
	and	#0xc0
;	Raw cost for generated ic 179 : (2, 2.000000) count=0.964384
;	genCmpEQorNE
	cmp	#0x80
	beq	00368$
	jmp	00128$
00368$:
;	Raw cost for generated ic 180 : (7, 7.600000) count=0.964384
;	skipping generated iCode
;	Raw cost for generated ic 181 : (0, 0.000000) count=0.964384
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 188 : (1, 2.000000) count=0.723288
;	genPlus
;	  genPlusInc
	inc	*_mbrtowc_sloc4_1_0
	bne	00369$
	inc	*(_mbrtowc_sloc4_1_0 + 1)
00369$:
;	Raw cost for generated ic 191 : (6, 12.600000) count=0.723288
;	genAssign
;	genCopy
	lda	*(_mbrtowc_sloc4_1_0 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	*_mbrtowc_sloc4_1_0
	sta	_mbrtowc_PARM_3
;	Raw cost for generated ic 192 : (10, 14.000000) count=0.723288
;	genGoto
	jmp	00140$
;	Raw cost for generated ic 193 : (3, 3.000000) count=0.723288
;	genLabel
00121$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.321475
;	../mbrtowc.c: 83: codepoint = first_byte;
;	genCast
;	genCopy
	stz	(_mbrtowc_codepoint_10000_16 + 3)
	stz	(_mbrtowc_codepoint_10000_16 + 2)
	stz	(_mbrtowc_codepoint_10000_16 + 1)
	lda	_mbrtowc_first_byte_10000_16
	sta	_mbrtowc_codepoint_10000_16
;	Raw cost for generated ic 195 : (15, 20.000000) count=0.321475
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 198 : (0, 0.000000) count=0.321475
;	genCast
;	genCopy
	lda	#>(_mbrtowc_mbseq_10000_16 + 0x0001)
	sta	*(_mbrtowc_sloc5_1_0 + 1)
	lda	#(_mbrtowc_mbseq_10000_16 + 0x0001)
	sta	*_mbrtowc_sloc5_1_0
;	Raw cost for generated ic 199 : (8, 10.000000) count=0.321475
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	*_mbrtowc_sloc1_1_0
	sec
	sbc	#0x01
	tax
;	Raw cost for generated ic 202 : (6, 9.000000) count=0.321475
;	genLabel
00143$:
;	Raw cost for generated ic 204 : (0, 0.000000) count=1.286052
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 205 : (7, 7.600000) count=1.286052
;	../mbrtowc.c: 87: codepoint <<= 6;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=6
	lda	(_mbrtowc_codepoint_10000_16 + 3)
	lsr	a
	pha
	lda	(_mbrtowc_codepoint_10000_16 + 2)
	ror	a
	sta	(_mbrtowc_codepoint_10000_16 + 3)
	lda	(_mbrtowc_codepoint_10000_16 + 1)
	ror	a
	sta	(_mbrtowc_codepoint_10000_16 + 2)
	lda	_mbrtowc_codepoint_10000_16
	ror	a
	sta	(_mbrtowc_codepoint_10000_16 + 1)
	lda	#0x00
	ror	a
	sta	_mbrtowc_codepoint_10000_16
	pla
	lsr	a
	ror	(_mbrtowc_codepoint_10000_16 + 3)
	ror	(_mbrtowc_codepoint_10000_16 + 2)
	ror	(_mbrtowc_codepoint_10000_16 + 1)
	ror	_mbrtowc_codepoint_10000_16
;	Raw cost for generated ic 208 : (46, 77.000000) count=0.964577
;	../mbrtowc.c: 88: codepoint |= (*s & 0x3f);
;	genPointerGet
	ldy	#0x00
	lda	[*_mbrtowc_sloc5_1_0],y
;	Raw cost for generated ic 211 : (4, 7.000000) count=0.964577
;	genCast
;	genCopy
;	Raw cost for generated ic 212 : (0, 0.000000) count=0.964577
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 213 : (2, 2.000000) count=0.964577
;	genCast
	sta	*_mbrtowc_sloc6_1_0
	sty	*(_mbrtowc_sloc6_1_0 + 1)
	sty	*(_mbrtowc_sloc6_1_0 + 2)
	sty	*(_mbrtowc_sloc6_1_0 + 3)
;	Raw cost for generated ic 214 : (8, 12.000000) count=0.964577
;	genOr
	lda	_mbrtowc_codepoint_10000_16
	ora	*_mbrtowc_sloc6_1_0
	sta	_mbrtowc_codepoint_10000_16
	lda	(_mbrtowc_codepoint_10000_16 + 1)
	ora	*(_mbrtowc_sloc6_1_0 + 1)
	sta	(_mbrtowc_codepoint_10000_16 + 1)
	lda	(_mbrtowc_codepoint_10000_16 + 2)
	ora	*(_mbrtowc_sloc6_1_0 + 2)
	sta	(_mbrtowc_codepoint_10000_16 + 2)
	lda	(_mbrtowc_codepoint_10000_16 + 3)
	ora	*(_mbrtowc_sloc6_1_0 + 3)
	sta	(_mbrtowc_codepoint_10000_16 + 3)
;	Raw cost for generated ic 215 : (32, 44.000000) count=0.964577
;	../mbrtowc.c: 89: s++;
;	genPlus
;	  genPlusInc
	inc	*_mbrtowc_sloc5_1_0
	bne	00372$
	inc	*(_mbrtowc_sloc5_1_0 + 1)
00372$:
;	Raw cost for generated ic 218 : (6, 12.600000) count=0.964577
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 222 : (1, 2.000000) count=0.964577
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 224 : (3, 3.000000) count=0.964577
;	genLabel
00122$:
;	Raw cost for generated ic 225 : (0, 0.000000) count=0.321543
;	../mbrtowc.c: 92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
;	genCmp
	lda	(_mbrtowc_codepoint_10000_16 + 1)
	sec
	sbc	#0xd8
	lda	(_mbrtowc_codepoint_10000_16 + 2)
	sbc	#0x00
	lda	(_mbrtowc_codepoint_10000_16 + 3)
	sbc	#0x00
	bcc	00124$
;	Raw cost for generated ic 226 : (21, 25.600000) count=0.321543
;	skipping generated iCode
;	Raw cost for generated ic 227 : (0, 0.000000) count=0.321543
;	genCmp
	lda	#0xff
	sec
	sbc	_mbrtowc_codepoint_10000_16
	lda	#0xdf
	sbc	(_mbrtowc_codepoint_10000_16 + 1)
	lda	#0x00
	sbc	(_mbrtowc_codepoint_10000_16 + 2)
	lda	#0x00
	sbc	(_mbrtowc_codepoint_10000_16 + 3)
	bcc	00124$
;	Raw cost for generated ic 230 : (26, 31.600000) count=0.241196
;	skipping generated iCode
;	Raw cost for generated ic 231 : (0, 0.000000) count=0.241196
;	../mbrtowc.c: 93: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 234 : (6, 7.000000) count=0.180945
;	genLabel
00124$:
;	Raw cost for generated ic 235 : (0, 0.000000) count=0.321630
;	../mbrtowc.c: 95: if(pwc)
;	genIfx
	lda	(_mbrtowc_pwc_10000_15 + 1)
	ora	_mbrtowc_pwc_10000_15
;	genIfxJump : z
	beq	00127$
;	Raw cost for generated ic 236 : (11, 13.600000) count=0.321630
;	../mbrtowc.c: 96: *pwc = codepoint;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mbrtowc_pwc_10000_15
	stx	*(DPTR+0)
	ldx	(_mbrtowc_pwc_10000_15 + 1)
	stx	*(DPTR+1)
	lda	_mbrtowc_codepoint_10000_16
	ldy	#0x00
	sta	[DPTR],y
	lda	(_mbrtowc_codepoint_10000_16 + 1)
	iny
	sta	[DPTR],y
	lda	(_mbrtowc_codepoint_10000_16 + 2)
	iny
	sta	[DPTR],y
	lda	(_mbrtowc_codepoint_10000_16 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 240 : (35, 62.000000) count=0.241260
;	genLabel
00127$:
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.321680
;	../mbrtowc.c: 97: return(codepoint ? n : 0);
;	genIfx
	lda	(_mbrtowc_codepoint_10000_16 + 3)
	ora	(_mbrtowc_codepoint_10000_16 + 2)
	ora	(_mbrtowc_codepoint_10000_16 + 1)
	ora	_mbrtowc_codepoint_10000_16
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 242 : (17, 21.600000) count=0.321680
;	genAssign
;	genCopy
	ldx	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtowc_PARM_3
;	Raw cost for generated ic 243 : (6, 8.000000) count=0.241260
;	genGoto
	rts
;	Raw cost for generated ic 244 : (3, 3.000000) count=0.241260
;	genLabel
00151$:
;	Raw cost for generated ic 245 : (0, 0.000000) count=0.080452
;	genAssign
;	genCopy
	ldx	#0x00
	txa
;	Raw cost for generated ic 246 : (3, 4.000000) count=0.080452
;	genLabel
;	Raw cost for generated ic 247 : (0, 0.000000) count=0.321712
;	genRet
	rts
;	Raw cost for generated ic 248 : (3, 3.000000) count=0.321712
;	../mbrtowc.c: 99: eilseq:
;	genLabel
00128$:
;	Raw cost for generated ic 249 : (0, 0.000000) count=1.000304
;	../mbrtowc.c: 100: errno = EILSEQ;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 251 : (8, 10.000000) count=1.000304
;	../mbrtowc.c: 101: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 252 : (3, 4.000000) count=1.000304
;	genLabel
;	Raw cost for generated ic 253 : (0, 0.000000) count=1.000304
;	../mbrtowc.c: 102: }
;	genEndFunction
	rts
;	Raw cost for generated ic 254 : (1, 6.000000) count=1.000304
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
