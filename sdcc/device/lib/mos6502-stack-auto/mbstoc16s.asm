;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	
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
	.globl ___mbstoc16s
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;s             Allocated to stack - sp +21 +2 
;n             Allocated to stack - sp +23 +2 
;c16s          Allocated to stack - sp +17 +2 
;m             Allocated to stack - sp +15 +2 
;l             Allocated to stack - sp +13 +2 
;codepoint     Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../mbstoc16s.c: 44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
___mbstoc16s:
;	  adjustStack : cycles stk:54  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sta	0x10c,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../mbstoc16s.c: 46: size_t m = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../mbstoc16s.c: 85: return(m);
;	genLabel
00116$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
;	genAddrOf
	tsx
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 5 : (11, 18.000000) count=1.230679
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230679
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 7 : (6, 10.000000) count=1.230679
;	genIpush
	lda	0x115,x
	pha
	lda	0x114,x
	pha
;	Raw cost for generated ic 8 : (8, 14.000000) count=1.230679
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.230679
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	_mbtowc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 10 : (28, 48.000000) count=1.230679
;	../mbstoc16s.c: 55: if(l < 0)
;	genCmp
	sec
	sbc	#0x00
	bvc	00170$
	bpl	00169$
	bmi	00106$
00170$:
	bpl	00106$
00169$:
;	Raw cost for generated ic 12 : (14, 17.400000) count=1.230679
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 56: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00118$
;	Raw cost for generated ic 16 : (6, 7.000000) count=0.923009
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 57: else if(!l)
;	genIfx
	tsx
	lda	0x10e,x
	ora	0x10d,x
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 19 : (12, 15.600000) count=1.230679
;	../mbstoc16s.c: 59: if(m < n)
;	genCmp
	lda	0x10f,x
	sec
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	bcc	00174$
	jmp	00115$
00174$:
;	Raw cost for generated ic 22 : (18, 23.600000) count=0.923009
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.923009
;	../mbstoc16s.c: 60: *c16s = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 27 : (18, 32.000000) count=0.692257
;	../mbstoc16s.c: 61: break;
;	genGoto
	jmp	00115$
;	Raw cost for generated ic 29 : (3, 3.000000) count=0.692257
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.307634
;	../mbstoc16s.c: 64: if (codepoint <= 0xffff) // Basic multilingual plane
;	genCmp
	lda	#0xff
	sec
	tsx
	sbc	0x101,x
	lda	#0xff
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcc	00113$
;	Raw cost for generated ic 32 : (27, 33.599998) count=0.307634
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.307634
;	../mbstoc16s.c: 66: if (m >= n)
;	genCmp
	lda	0x10f,x
	sec
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	bcc	00176$
	jmp	00115$
00176$:
;	Raw cost for generated ic 36 : (18, 23.600000) count=0.230726
;	skipping generated iCode
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.230726
;	../mbstoc16s.c: 69: *c16s++ = codepoint;
;	genCast
;	genCopy
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 45 : (9, 14.000000) count=0.173044
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 46 : (29, 49.000000) count=0.173044
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10b,x
	clc
	adc	#0x02
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 43 : (18, 26.000000) count=0.173044
;	../mbstoc16s.c: 70: m++;
;	genPlus
;	  genPlusInc
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 48 : (17, 24.000000) count=0.173044
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 50 : (3, 3.000000) count=0.173044
;	genLabel
00113$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.076909
;	../mbstoc16s.c: 74: if (m + 1 >= n)
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x110,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 52 : (18, 26.000000) count=0.076909
;	genCmp
	lda	0x109,x
	sec
	sbc	0x117,x
	lda	0x10a,x
	sbc	0x118,x
	bcc	00177$
	jmp	00115$
00177$:
;	Raw cost for generated ic 53 : (18, 23.600000) count=0.076909
;	skipping generated iCode
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.076909
;	../mbstoc16s.c: 77: codepoint -= 0x100000;
;	genMinus
;	  genMinusDec - size=4  icount=1048576
	lda	0x101,x
	sec
	sbc	#0x00
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
	lda	0x103,x
	sbc	#0x10
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 59 : (33, 46.000000) count=0.057634
;	../mbstoc16s.c: 78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lsr	a
	sta	0x107,x
	lda	0x103,x
	ror	a
	sta	0x106,x
	lda	0x102,x
	ror	a
	sta	0x105,x
	lda	0x107,x
	lsr	a
	ror	0x106,x
	ror	0x105,x
	sta	0x107,x
	lda	#0x00
	sta	0x108,x
;	Raw cost for generated ic 64 : (36, 59.000000) count=0.057634
;	genCast
;	genCopy
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
;	Raw cost for generated ic 90 : (9, 14.000000) count=0.057634
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
;	Raw cost for generated ic 65 : (8, 12.000000) count=0.057634
;	genPlus
;	  genPlusInc
;	Raw cost for generated ic 66 : (7, 15.000000) count=0.057634
;	genPointerSet
	lda	*(REGTEMP+0)
	clc
	txa
	adc #0xd8
	sta *(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 68 : (29, 49.000000) count=0.057634
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10b,x
	clc
	adc	#0x02
	sta	0x111,x
	lda	0x10c,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 62 : (18, 26.000000) count=0.057634
;	../mbstoc16s.c: 79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
;	genCast
;	genCopy
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 91 : (9, 14.000000) count=0.057634
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
;	Raw cost for generated ic 72 : (8, 12.000000) count=0.057634
;	genPlus
;	  genPlusInc
;	Raw cost for generated ic 73 : (7, 15.000000) count=0.057634
;	genPointerSet
	lda	*(REGTEMP+0)
	clc
	txa
	adc #0xdc
	sta *(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 75 : (29, 49.000000) count=0.057634
;	genPlus
;	  genPlusInc
	tsx
	lda	0x111,x
	clc
	adc	#0x02
	sta	0x10b,x
	lda	0x112,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 70 : (18, 26.000000) count=0.057634
;	../mbstoc16s.c: 80: m += 2;
;	genPlus
;	  genPlusInc
	lda	0x10f,x
	clc
	adc	#0x02
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 76 : (17, 24.000000) count=0.057634
;	genLabel
00114$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.230679
;	../mbstoc16s.c: 82: s += l;
;	genPlus
	tsx
	lda	0x115,x
	clc
	adc	0x10d,x
	sta	0x115,x
	lda	0x116,x
	adc	0x10e,x
	sta	0x116,x
;	Raw cost for generated ic 79 : (20, 30.000000) count=0.230679
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 82 : (3, 3.000000) count=0.230679
;	genLabel
00115$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.999918
;	../mbstoc16s.c: 85: return(m);
;	genRet
	tsx
	lda	0x110,x
	sta	*(REGTEMP+0)
	lda	0x10f,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 84 : (11, 16.000000) count=0.999918
;	genLabel
00118$:
;	Raw cost for generated ic 85 : (0, 0.000000) count=0.999918
;	../mbstoc16s.c: 86: }
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 86 : (16, 30.000000) count=0.999918
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
