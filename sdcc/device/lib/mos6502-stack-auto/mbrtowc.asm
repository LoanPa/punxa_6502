;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtowc
	
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
	.globl _mbrtowc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;s             Allocated to stack - sp +35 +2 
;n             Allocated to stack - sp +37 +2 
;ps            Allocated to stack - sp +39 +2 
;pwc           Allocated to stack - sp +31 +2 
;first_byte    Allocated to stack - sp +30 +1 
;seqlen        Allocated to registers 
;mbseq         Allocated to stack - sp +5 +4 
;codepoint     Allocated to stack - sp +1 +4 
;i             Allocated to stack - sp +29 +1 
;j             Allocated to registers y 
;sloc0         Allocated to stack - sp +27 +2 
;sloc1         Allocated to stack - sp +25 +2 
;sloc2         Allocated to stack - sp +23 +2 
;sloc3         Allocated to stack - sp +21 +2 
;sloc4         Allocated to stack - sp +19 +2 
;sloc5         Allocated to stack - sp +17 +2 
;sloc6         Allocated to stack - sp +15 +2 
;sloc7         Allocated to stack - sp +13 +2 
;sloc8         Allocated to stack - sp +9 +4 
;sps           Allocated with name '_mbrtowc_sps_10000_16'
;------------------------------------------------------------
;	../mbrtowc.c: 32: size_t mbrtowc(wchar_t *restrict pwc, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 32 bytes.
_mbrtowc:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:90  incdec:64  adc:12
	tsx
	txa
	clc
	adc	#0xe2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../mbrtowc.c: 41: if(!s)
;	genIfx
	lda	0x124,x
	ora	0x123,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtowc.c: 42: return(mbrtowc(0, "", 1, ps));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	genIpush
	lda	0x128,x
	pha
	lda	0x127,x
	pha
;	Raw cost for generated ic 8 : (8, 14.000000) count=0.750000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 9 : (6, 10.000000) count=0.750000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 10 : (6, 10.000000) count=0.750000
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	#0x00
	txa
	jsr	_mbrtowc
;	assignResultValue
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (18, 32.000000) count=0.750000
;	genRet
	jmp	00145$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../mbrtowc.c: 43: if(!n)
;	genIfx
	tsx
	lda	0x126,x
	ora	0x125,x
;	genIfxJump : z
	bne	00341$
	jmp	00128$
00341$:
;	Raw cost for generated ic 15 : (12, 15.600000) count=1.000000
;	../mbrtowc.c: 45: if(!ps)
;	genIfx
	lda	0x128,x
	ora	0x127,x
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 20 : (11, 13.600000) count=0.750000
;	../mbrtowc.c: 47: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	lda	#>_mbrtowc_sps_10000_16
	sta	0x128,x
	lda	#_mbrtowc_sps_10000_16
	sta	0x127,x
;	Raw cost for generated ic 24 : (10, 14.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.750000
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x11b,x
	lda	#0x01
	sta	0x11c,x
;	Raw cost for generated ic 41 : (13, 20.000000) count=0.750000
;	genAssign
;	genCopy
	lda	0x128,x
	sta	0x11a,x
	lda	0x127,x
	sta	0x119,x
;	Raw cost for generated ic 29 : (12, 18.000000) count=0.750000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x11d,x
;	Raw cost for generated ic 264 : (5, 7.000000) count=0.750000
;	genLabel
00131$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.714280
;	genPlus
	tsx
	lda	0x119,x
	clc
	adc	0x11d,x
	sta	0x117,x
	lda	0x11a,x
	adc	#0x00
	sta	0x118,x
;	Raw cost for generated ic 32 : (19, 28.000000) count=1.714280
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x117,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 33 : (12, 19.000000) count=1.714280
;	genIfx
;	genIfxJump : z
	beq	00177$
;	Raw cost for generated ic 34 : (5, 5.600000) count=1.714280
;	genCmp
	lda	0x11d,x
	cmp	#0x03
	bcs	00177$
;	Raw cost for generated ic 37 : (10, 11.600000) count=1.285710
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.285710
;	../mbrtowc.c: 51: mbseq[i] = ps->c[i];
;	genPlus
	lda	0x11b,x
	clc
	adc	0x11d,x
	sta	0x117,x
	lda	0x11c,x
	adc	#0x00
	sta	0x118,x
;	Raw cost for generated ic 42 : (18, 26.000000) count=0.964280
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x117,x
	sta	*(DPTR+0)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 48 : (18, 29.000000) count=0.964280
;	../mbrtowc.c: 50: for(i = 0; ps->c[i] && i < 3; i++)
;	genPlus
;	  genPlusInc
	lda	0x11d,x
	clc
	adc	#0x01
	sta	0x11d,x
;	Raw cost for generated ic 51 : (9, 13.000000) count=0.964280
;	genGoto
	jmp	00131$
;	Raw cost for generated ic 53 : (3, 3.000000) count=0.964280
;	genLabel
00177$:
;	Raw cost for generated ic 265 : (0, 0.000000) count=0.749996
;	genAssign
;	genCopy
	tsx
	lda	0x11d,x
	sta	0x117,x
;	Raw cost for generated ic 266 : (7, 11.000000) count=0.749996
;	../mbrtowc.c: 53: seqlen = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x119,x
;	Raw cost for generated ic 55 : (5, 7.000000) count=0.749996
;	../mbrtowc.c: 54: first_byte = ps->c[0] ? ps->c[0] : *s;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x127,x
	sta	*(DPTR+0)
	lda	0x128,x
	sta	*(DPTR+1)
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
	tsx
	lda	0x123,x
	sta	*(DPTR+0)
	lda	0x124,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 69 : (15, 23.000000) count=0.187498
;	genLabel
00148$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.749992
;	genAssign
;	genCopy
	tsx
	sta	0x11e,x
;	Raw cost for generated ic 72 : (4, 7.000000) count=0.749992
;	../mbrtowc.c: 56: if(first_byte & 0x80)
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 74 : (7, 7.600000) count=0.749992
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
	lda	#0x80
	tsx
	sta	0x115,x
	lda	#0x00
	sta	0x116,x
	tya
	beq	00352$
	lda	0x116,x
00351$:
	cmp	#0x80
	ror	a
	ror	0x115,x
	sec
	sbc	#0x01
	bne	00351$
	sta	0x116,x
00352$:
;	Raw cost for generated ic 79 : (31, 46.199997) count=2.249943
;	genCast
;	genCopy
	sta	0x114,x
	lda	0x11e,x
	sta	0x113,x
;	Raw cost for generated ic 80 : (9, 14.000000) count=2.249943
;	genAnd
	and	0x115,x
	bne	00353$
	lda	0x114,x
	and	0x116,x
00353$:
;	genIfxJump : z
	beq	00178$
;	Raw cost for generated ic 81 : (16, 20.200001) count=2.249943
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
	tya
	tsx
	sta	0x119,x
;	Raw cost for generated ic 269 : (5, 9.000000) count=0.562486
;	../mbrtowc.c: 60: first_byte &= (0xff >> (seqlen + 1));
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 91 : (1, 2.000000) count=0.562486
;	genRightShift
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00356$
	stx	*(REGTEMP+0)
00355$:
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	dey
	bne	00355$
	ldx	*(REGTEMP+0)
00356$:
;	Raw cost for generated ic 92 : (20, 28.200001) count=0.562486
;	genCast
;	genCopy
;	Raw cost for generated ic 263 : (0, 0.000000) count=0.562486
;	genAnd
	tsx
	and	0x11e,x
	sta	0x11e,x
;	Raw cost for generated ic 94 : (7, 11.000000) count=0.562486
;	genLabel
00112$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.749984
;	../mbrtowc.c: 63: if(seqlen > 4)
;	genCmp
	tsx
	lda	0x119,x
	cmp	#0x04
	beq	00357$
	bcc	00357$
	jmp	00128$
00357$:
;	Raw cost for generated ic 98 : (13, 16.200001) count=0.749984
;	skipping generated iCode
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.749984
;	../mbrtowc.c: 66: if(i + n < seqlen) // Incomplete multibyte character
;	genCast
;	genCopy
	lda	0x117,x
	sta	0x113,x
;	Raw cost for generated ic 104 : (6, 9.000000) count=0.562479
;	genCast
;	genCopy
;	Raw cost for generated ic 105 : (2, 2.000000) count=0.562479
;	genPlus
	clc
	tsx
	adc	0x125,x
	sta	0x115,x
	lda	#0x00
	adc	0x126,x
	sta	0x116,x
;	Raw cost for generated ic 106 : (16, 24.000000) count=0.562479
;	genCast
;	genCopy
	lda	#0x00
	sta	0x112,x
	lda	0x119,x
	sta	0x111,x
;	Raw cost for generated ic 107 : (11, 16.000000) count=0.562479
;	genCmp
	lda	0x115,x
	sec
	sbc	0x111,x
	lda	0x116,x
	sbc	0x112,x
	bcc	00359$
	jmp	00166$
00359$:
;	Raw cost for generated ic 108 : (18, 23.600000) count=0.562479
;	skipping generated iCode
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.562479
;	../mbrtowc.c: 70: return(-2);
;	genAssign
;	genCopy
	lda	0x124,x
	sta	0x112,x
	lda	0x123,x
	sta	0x111,x
;	Raw cost for generated ic 270 : (12, 18.000000) count=0.421859
;	genAssign
;	genCopy
	lda	0x117,x
	sta	0x115,x
;	Raw cost for generated ic 273 : (6, 9.000000) count=0.421859
;	genAssign
;	genCopy
	lda	0x126,x
	sta	0x110,x
	lda	0x125,x
	sta	0x10f,x
;	Raw cost for generated ic 275 : (12, 18.000000) count=0.421859
;	genLabel
00134$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=1.687450
;	../mbrtowc.c: 68: for(;n-- ; i++)
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x10e,x
;	Raw cost for generated ic 113 : (13, 20.000000) count=1.687450
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x10f,x
	sta	0x10d,x
	sec
	sbc	#0x01
	sta	0x10f,x
	lda	0x110,x
	sbc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 114 : (17, 24.000000) count=1.687450
;	genIfx
	lda	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 116 : (11, 13.600000) count=1.687450
;	../mbrtowc.c: 69: ps->c[i] = *s++;
;	genPlus
	lda	0x127,x
	clc
	adc	0x115,x
	sta	0x10d,x
	lda	0x128,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 122 : (18, 26.000000) count=1.265590
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 126 : (15, 23.000000) count=1.265590
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 124 : (17, 24.000000) count=1.265590
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 127 : (21, 33.000000) count=1.265590
;	../mbrtowc.c: 68: for(;n-- ; i++)
;	genPlus
;	  genPlusInc
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115,x
;	Raw cost for generated ic 130 : (9, 13.000000) count=1.265590
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
	jmp	00145$
;	Raw cost for generated ic 134 : (7, 7.000000) count=0.421862
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
;	genLabel
00166$:
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.562482
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 277 : (2, 2.000000) count=0.562482
;	genLabel
00137$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=2.249993
;	genCmp
	tya
	tsx
	cmp	0x117,x
	bcs	00118$
;	Raw cost for generated ic 138 : (10, 13.600000) count=2.249993
;	skipping generated iCode
;	Raw cost for generated ic 139 : (0, 0.000000) count=2.249993
;	../mbrtowc.c: 74: ps->c[j] = 0;
;	genPlus
	tya
	clc
	adc	0x127,x
	sta	0x10d,x
	lda	#0x00
	adc	0x128,x
	sta	0x10e,x
;	Raw cost for generated ic 145 : (16, 24.000000) count=1.687511
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	#0x00
	tay
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 146 : (16, 26.000000) count=1.687511
;	../mbrtowc.c: 73: for(j = 0; j < i; j++)
;	genPlus
;	  genPlusInc
	iny
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
	lda	#0x01
	tsx
	sta	0x125,x
	lda	#0x00
	sta	0x126,x
;	Raw cost for generated ic 153 : (11, 16.000000) count=0.562511
;	genIfx
	lda	0x117,x
;	genIfxJump : z
	beq	00149$
;	Raw cost for generated ic 154 : (8, 9.600000) count=0.562511
;	genCast
;	genCopy
	lda	0x113,x
	sta	0x10d,x
;	Raw cost for generated ic 156 : (6, 9.000000) count=0.421900
;	genGoto
	jmp	00150$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.421900
;	genLabel
00149$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.140628
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x10d,x
;	Raw cost for generated ic 159 : (6, 9.000000) count=0.140628
;	genLabel
00150$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.562527
;	genCast
;	genCopy
;	Raw cost for generated ic 161 : (0, 0.000000) count=0.562527
;	genAssign
;	genCopy
	tsx
	lda	0x11c,x
	sta	0x110,x
	lda	0x11b,x
	sta	0x10f,x
;	Raw cost for generated ic 168 : (13, 20.000000) count=0.562527
;	genAssign
;	genCopy
	lda	0x124,x
	sta	0x112,x
	lda	0x123,x
	sta	0x111,x
;	Raw cost for generated ic 280 : (12, 18.000000) count=0.562527
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
;	Raw cost for generated ic 282 : (10, 14.000000) count=0.562527
;	genLabel
00140$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=1.285815
;	genCmp
	tsx
	lda	0x10d,x
	cmp	0x119,x
	bcs	00121$
;	Raw cost for generated ic 164 : (12, 15.600000) count=1.285815
;	skipping generated iCode
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.285815
;	../mbrtowc.c: 78: mbseq[i] = *s++;
;	genPlus
	lda	0x10f,x
	clc
	adc	0x10d,x
	sta	0x115,x
	lda	0x110,x
	adc	#0x00
	sta	0x116,x
;	Raw cost for generated ic 169 : (18, 26.000000) count=0.964384
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (14, 21.000000) count=0.964384
;	genPlus
;	  genPlusInc
	pha
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
	pla
;	Raw cost for generated ic 171 : (19, 31.000000) count=0.964384
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 174 : (18, 29.000000) count=0.964384
;	../mbrtowc.c: 79: if((mbseq[i] & 0xc0) != 0x80)
;	genCast
;	genCopy
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.964384
;	genAnd
	and	#0xc0
;	Raw cost for generated ic 179 : (2, 2.000000) count=0.964384
;	genCmpEQorNE
	cmp	#0x80
	beq	00366$
	jmp	00128$
00366$:
;	Raw cost for generated ic 180 : (7, 7.600000) count=0.964384
;	skipping generated iCode
;	Raw cost for generated ic 181 : (0, 0.000000) count=0.964384
;	../mbrtowc.c: 76: for(n = 1, i = i ? i : 1; i < seqlen; i++, n++)
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x10d,x
;	Raw cost for generated ic 188 : (9, 13.000000) count=0.723288
;	genPlus
;	  genPlusInc
	lda	0x113,x
	clc
	adc	#0x01
	sta	0x113,x
	lda	0x114,x
	adc	#0x00
	sta	0x114,x
;	Raw cost for generated ic 191 : (17, 24.000000) count=0.723288
;	genAssign
;	genCopy
	sta	0x126,x
	lda	0x113,x
	sta	0x125,x
;	Raw cost for generated ic 192 : (9, 14.000000) count=0.723288
;	genGoto
	jmp	00140$
;	Raw cost for generated ic 193 : (3, 3.000000) count=0.723288
;	genLabel
00121$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.321475
;	../mbrtowc.c: 83: codepoint = first_byte;
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x104,x
	sta	0x103,x
	sta	0x102,x
	lda	0x11e,x
	sta	0x101,x
;	Raw cost for generated ic 195 : (18, 28.000000) count=0.321475
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
;	genPlus
;	  genPlusInc
	lda	0x11b,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x11c,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 198 : (17, 24.000000) count=0.321475
;	genCast
;	genCopy
;	Raw cost for generated ic 199 : (0, 0.000000) count=0.321475
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x119,x
	sec
	sbc	#0x01
	sta	0x10f,x
;	Raw cost for generated ic 202 : (9, 13.000000) count=0.321475
;	genLabel
00143$:
;	Raw cost for generated ic 204 : (0, 0.000000) count=1.286052
;	genIfx
	tsx
	lda	0x10f,x
;	genIfxJump : z
	bne	00368$
	jmp	00122$
00368$:
;	Raw cost for generated ic 205 : (9, 11.600000) count=1.286052
;	../mbrtowc.c: 87: codepoint <<= 6;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=6
	lda	0x104,x
	lsr	a
	pha
	lda	0x103,x
	ror	a
	sta	0x104,x
	lda	0x102,x
	ror	a
	sta	0x103,x
	lda	0x101,x
	ror	a
	sta	0x102,x
	lda	#0x00
	ror	a
	sta	0x101,x
	pla
	lsr	a
	ror	0x104,x
	ror	0x103,x
	ror	0x102,x
	ror	0x101,x
;	Raw cost for generated ic 208 : (46, 81.000000) count=0.964577
;	../mbrtowc.c: 88: codepoint |= (*s & 0x3f);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 211 : (15, 23.000000) count=0.964577
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 212 : (1, 2.000000) count=0.964577
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 213 : (2, 2.000000) count=0.964577
;	genCast
	tsx
	sta	0x109,x
	tya
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 214 : (14, 24.000000) count=0.964577
;	genOr
	lda	0x101,x
	ora	0x109,x
	sta	0x101,x
	lda	0x102,x
	ora	0x10a,x
	sta	0x102,x
	lda	0x103,x
	ora	0x10b,x
	sta	0x103,x
	lda	0x104,x
	ora	0x10c,x
	sta	0x104,x
;	Raw cost for generated ic 215 : (36, 52.000000) count=0.964577
;	../mbrtowc.c: 89: s++;
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 218 : (17, 24.000000) count=0.964577
;	../mbrtowc.c: 85: for(s = mbseq + 1, seqlen--; seqlen; seqlen--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x10f,x
	sec
	sbc	#0x01
	sta	0x10f,x
;	Raw cost for generated ic 222 : (9, 13.000000) count=0.964577
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 224 : (3, 3.000000) count=0.964577
;	genLabel
00122$:
;	Raw cost for generated ic 225 : (0, 0.000000) count=0.321543
;	../mbrtowc.c: 92: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
;	genCmp
	tsx
	lda	0x102,x
	sec
	sbc	#0xd8
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bcc	00124$
;	Raw cost for generated ic 226 : (22, 27.600000) count=0.321543
;	skipping generated iCode
;	Raw cost for generated ic 227 : (0, 0.000000) count=0.321543
;	genCmp
	lda	#0xff
	sec
	sbc	0x101,x
	lda	#0xdf
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcc	00124$
;	Raw cost for generated ic 230 : (26, 31.600000) count=0.241196
;	skipping generated iCode
;	Raw cost for generated ic 231 : (0, 0.000000) count=0.241196
;	../mbrtowc.c: 93: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00145$
;	Raw cost for generated ic 234 : (6, 7.000000) count=0.180945
;	genLabel
00124$:
;	Raw cost for generated ic 235 : (0, 0.000000) count=0.321630
;	../mbrtowc.c: 95: if(pwc)
;	genIfx
	tsx
	lda	0x120,x
	ora	0x11f,x
;	genIfxJump : z
	beq	00127$
;	Raw cost for generated ic 236 : (12, 15.600000) count=0.321630
;	../mbrtowc.c: 96: *pwc = codepoint;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 240 : (35, 62.000000) count=0.241260
;	genLabel
00127$:
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.321680
;	../mbrtowc.c: 97: return(codepoint ? n : 0);
;	genIfx
	tsx
	lda	0x104,x
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 242 : (18, 23.600000) count=0.321680
;	genAssign
;	genCopy
	lda	0x125,x
	tay
	lda	0x126,x
	tax
	tya
;	Raw cost for generated ic 243 : (9, 14.000000) count=0.241260
;	genGoto
	jmp	00145$
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
	jmp	00145$
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
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 251 : (10, 12.000000) count=1.000304
;	../mbrtowc.c: 101: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 252 : (3, 4.000000) count=1.000304
;	genLabel
00145$:
;	Raw cost for generated ic 253 : (0, 0.000000) count=1.000304
;	../mbrtowc.c: 102: }
;	genEndFunction
;	  adjustStack : cycles stk:134  incdec:74  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x20
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 254 : (16, 30.000000) count=1.000304
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
