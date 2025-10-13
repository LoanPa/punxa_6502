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
	.globl _mbtowc
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
;s             Allocated to stack - sp +22 +2 
;n             Allocated to stack - sp +24 +2 
;pwc           Allocated to stack - sp +18 +2 
;codepoint     Allocated to stack - sp +1 +4 
;seqlen        Allocated to stack - sp +15 +1 
;i             Allocated to stack - sp +17 +1 
;first_byte    Allocated to stack - sp +16 +1 
;sloc0         Allocated to stack - sp +15 +1 
;sloc1         Allocated to stack - sp +13 +2 
;sloc2         Allocated to stack - sp +11 +2 
;sloc3         Allocated to stack - sp +9 +2 
;sloc4         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../mbtowc.c: 31: int mbtowc(wchar_t *pwc, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbtowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 19 bytes.
_mbtowc:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:51  incdec:38  adc:12
	tsx
	txa
	clc
	adc	#0xef
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../mbtowc.c: 37: if(!s)
;	genIfx
	lda	0x117,x
	ora	0x116,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbtowc.c: 38: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00126$
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../mbtowc.c: 40: seqlen = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x10f,x
;	Raw cost for generated ic 8 : (6, 9.000000) count=1.000000
;	../mbtowc.c: 41: first_byte = *s;
;	genAssign
;	genCopy
	lda	0x117,x
	sta	0x10e,x
	lda	0x116,x
	sta	0x10d,x
;	Raw cost for generated ic 9 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x110,x
;	Raw cost for generated ic 10 : (14, 22.000000) count=1.000000
;	../mbtowc.c: 43: if(first_byte & 0x80)
;	genAnd
	and	#0x80
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 13 : (7, 7.600000) count=1.000000
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
	lda	#0x80
	tsx
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
	tya
	beq	00220$
	lda	0x10c,x
00219$:
	cmp	#0x80
	ror	a
	ror	0x10b,x
	sec
	sbc	#0x01
	bne	00219$
	sta	0x10c,x
00220$:
;	Raw cost for generated ic 18 : (31, 46.199997) count=2.999995
;	genCast
;	genCopy
	sta	0x10a,x
	lda	0x110,x
	sta	0x109,x
;	Raw cost for generated ic 19 : (9, 14.000000) count=2.999995
;	genAnd
	and	0x10b,x
	bne	00221$
	lda	0x10a,x
	and	0x10c,x
00221$:
;	genIfxJump : z
	beq	00143$
;	Raw cost for generated ic 20 : (16, 20.200001) count=2.999995
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
	tya
	tsx
	sta	0x10f,x
;	Raw cost for generated ic 134 : (5, 9.000000) count=0.749999
;	../mbtowc.c: 47: first_byte &= (0xff >> (seqlen + 1));
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 30 : (1, 2.000000) count=0.749999
;	genRightShift
	lda	#0xff
	ldx	#0x00
	cpy	#0x00
	beq	00224$
	stx	*(REGTEMP+0)
00223$:
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	dey
	bne	00223$
	ldx	*(REGTEMP+0)
00224$:
;	Raw cost for generated ic 31 : (20, 28.200001) count=0.749999
;	genCast
;	genCopy
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.749999
;	genAnd
	tsx
	and	0x110,x
	sta	0x110,x
;	Raw cost for generated ic 33 : (7, 11.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999999
;	../mbtowc.c: 50: if(seqlen > 4 || n < seqlen)
;	genCmp
	tsx
	lda	0x10f,x
	cmp	#0x04
	beq	00225$
	bcs	00108$
00225$:
;	Raw cost for generated ic 37 : (13, 16.200001) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10a,x
	lda	0x10f,x
	sta	0x109,x
;	Raw cost for generated ic 41 : (11, 16.000000) count=0.749998
;	genCmp
	lda	0x118,x
	sec
	sbc	0x109,x
	lda	0x119,x
	sbc	0x10a,x
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
	jmp	00126$
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.812497
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
;	genLabel
00136$:
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.999997
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x111,x
;	Raw cost for generated ic 135 : (6, 9.000000) count=0.999997
;	genLabel
00121$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=3.999972
;	genCmp
	tsx
	lda	0x111,x
	cmp	0x10f,x
	bcs	00113$
;	Raw cost for generated ic 50 : (12, 15.600000) count=3.999972
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=3.999972
;	../mbtowc.c: 54: if((s[i] & 0xc0) != 0x80)
;	genPlus
	lda	0x10d,x
	clc
	adc	0x111,x
	sta	0x109,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 54 : (18, 26.000000) count=2.999979
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x109,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 55 : (11, 17.000000) count=2.999979
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
	jmp	00126$
;	Raw cost for generated ic 62 : (6, 7.000000) count=2.249982
;	genLabel
00122$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=2.999975
;	../mbtowc.c: 53: for(i = 1; i < seqlen; i++)
;	genPlus
;	  genPlusInc
	tsx
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
;	Raw cost for generated ic 66 : (10, 15.000000) count=2.999975
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 68 : (3, 3.000000) count=2.999975
;	genLabel
00113$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999990
;	../mbtowc.c: 57: codepoint = first_byte;
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x104,x
	sta	0x103,x
	sta	0x102,x
	lda	0x110,x
	sta	0x101,x
;	Raw cost for generated ic 70 : (18, 28.000000) count=0.999990
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
;	genPlus
;	  genPlusInc
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x116,x
	lda	0x10e,x
	adc	#0x00
	sta	0x117,x
;	Raw cost for generated ic 73 : (17, 24.000000) count=0.999990
;	genCast
;	genCopy
	lda	0x10f,x
	sta	0x109,x
;	Raw cost for generated ic 75 : (6, 9.000000) count=0.999990
;	genMinus
;	  genMinusDec - size=1  icount=1
	sec
	sbc	#0x01
	sta	0x109,x
;	Raw cost for generated ic 76 : (6, 9.000000) count=0.999990
;	genAssign
;	genCopy
	lda	0x117,x
	sta	0x10c,x
	lda	0x116,x
	sta	0x10b,x
;	Raw cost for generated ic 136 : (12, 18.000000) count=0.999990
;	genLabel
00124$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=3.999946
;	genIfx
	tsx
	lda	0x109,x
;	genIfxJump : z
	bne	00231$
	jmp	00114$
00231$:
;	Raw cost for generated ic 79 : (9, 11.600000) count=3.999946
;	../mbtowc.c: 61: codepoint <<= 6;
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
;	Raw cost for generated ic 82 : (46, 81.000000) count=2.999955
;	../mbtowc.c: 62: codepoint |= (*s & 0x3f);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 85 : (15, 23.000000) count=2.999955
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 86 : (1, 2.000000) count=2.999955
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 87 : (2, 2.000000) count=2.999955
;	genCast
	tsx
	sta	0x105,x
	tya
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 88 : (14, 24.000000) count=2.999955
;	genOr
	lda	0x101,x
	ora	0x105,x
	sta	0x101,x
	lda	0x102,x
	ora	0x106,x
	sta	0x102,x
	lda	0x103,x
	ora	0x107,x
	sta	0x103,x
	lda	0x104,x
	ora	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 89 : (36, 52.000000) count=2.999955
;	../mbtowc.c: 63: s++;
;	genPlus
;	  genPlusInc
	lda	0x10b,x
	clc
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 92 : (17, 24.000000) count=2.999955
;	../mbtowc.c: 59: for(s++, i = seqlen - 1; i; i--)
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x109,x
;	Raw cost for generated ic 96 : (9, 13.000000) count=2.999955
;	genGoto
	jmp	00124$
;	Raw cost for generated ic 98 : (3, 3.000000) count=2.999955
;	genLabel
00114$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.999986
;	../mbtowc.c: 66: if(codepoint >= 0xd800 && codepoint <= 0xdfff) // UTF-16 surrogate.
;	genCmp
	tsx
	lda	0x102,x
	sec
	sbc	#0xd8
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bcc	00116$
;	Raw cost for generated ic 100 : (22, 27.600000) count=0.999986
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999986
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
	bcc	00116$
;	Raw cost for generated ic 104 : (26, 31.600000) count=0.749986
;	skipping generated iCode
;	Raw cost for generated ic 105 : (0, 0.000000) count=0.749986
;	../mbtowc.c: 67: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00126$
;	Raw cost for generated ic 108 : (6, 7.000000) count=0.562490
;	genLabel
00116$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 69: if(pwc)
;	genIfx
	tsx
	lda	0x113,x
	ora	0x112,x
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 110 : (12, 15.600000) count=0.999982
;	../mbtowc.c: 70: *pwc = codepoint;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x112,x
	sta	*(DPTR+0)
	lda	0x113,x
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
;	Raw cost for generated ic 114 : (35, 62.000000) count=0.749986
;	genLabel
00119$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 71: return(codepoint ? seqlen : 0);
;	genIfx
	tsx
	lda	0x104,x
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00128$
;	Raw cost for generated ic 116 : (18, 23.600000) count=0.999982
;	genCast
;	genCopy
	lda	0x10f,x
	ldx	#0x00
;	Raw cost for generated ic 117 : (5, 6.000000) count=0.749986
;	genGoto
	jmp	00129$
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
00129$:
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.999982
;	genRet
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.999982
;	genLabel
00126$:
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.999982
;	../mbtowc.c: 72: }
;	genEndFunction
;	  adjustStack : cycles stk:82  incdec:48  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x13
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 125 : (16, 30.000000) count=0.999982
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
