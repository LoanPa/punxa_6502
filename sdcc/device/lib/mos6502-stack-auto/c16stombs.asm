;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module c16stombs
	
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
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;c16s          Allocated to stack - sp +33 +2 
;n             Allocated to stack - sp +35 +2 
;s             Allocated to stack - sp +29 +2 
;m             Allocated to stack - sp +27 +2 
;b             Allocated to stack - sp +5 +4 
;l             Allocated to stack - sp +25 +2 
;codepoint     Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +23 +2 
;sloc1         Allocated to stack - sp +21 +2 
;sloc2         Allocated to stack - sp +19 +2 
;sloc3         Allocated to stack - sp +17 +2 
;sloc4         Allocated to stack - sp +13 +4 
;sloc5         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../c16stombs.c: 44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 30 bytes.
___c16stombs:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:84  incdec:60  adc:12
	tsx
	txa
	clc
	adc	#0xe4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../c16stombs.c: 46: size_t m = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x11b,x
	sta	0x11c,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../c16stombs.c: 87: return(m);
;	genLabel
00119$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230759
;	../c16stombs.c: 54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
;	genAssign
;	genCopy
	tsx
	lda	0x122,x
	sta	0x118,x
	lda	0x121,x
	sta	0x117,x
;	Raw cost for generated ic 5 : (13, 20.000000) count=1.230759
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x118,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
;	Raw cost for generated ic 6 : (20, 34.000000) count=1.230759
;	genCmp
	sec
	sbc	#0xd8
	bcc	00106$
;	Raw cost for generated ic 7 : (8, 9.600000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.230759
;	genCmp
	lda	0x116,x
	sec
	sbc	#0xe0
	bcc	00107$
;	Raw cost for generated ic 13 : (11, 13.600000) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.923069
;	genLabel
00106$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.999992
;	../c16stombs.c: 56: codepoint = c16s[0];
;	genAssign
;	genCopy
	tsx
	lda	0x122,x
	sta	0x114,x
	lda	0x121,x
	sta	0x113,x
;	Raw cost for generated ic 17 : (13, 20.000000) count=0.999992
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
;	Raw cost for generated ic 18 : (20, 34.000000) count=0.999992
;	genCast
;	genCopy
	lda	#0x00
	sta	0x104,x
	sta	0x103,x
	lda	0x112,x
	sta	0x102,x
	lda	0x111,x
	sta	0x101,x
;	Raw cost for generated ic 19 : (20, 30.000000) count=0.999992
;	../c16stombs.c: 57: c16s++;
;	genPlus
;	  genPlusInc
	lda	0x113,x
	clc
	adc	#0x02
	sta	0x121,x
	lda	0x114,x
	adc	#0x00
	sta	0x122,x
;	Raw cost for generated ic 22 : (17, 24.000000) count=0.999992
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 24 : (3, 3.000000) count=0.999992
;	genLabel
00107$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.230759
;	../c16stombs.c: 59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
;	genCmp
	lda	#0xff
	sec
	tsx
	sbc	0x115,x
	lda	#0xdb
	sbc	0x116,x
	bcc	00101$
;	Raw cost for generated ic 28 : (17, 21.600000) count=0.230759
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.230759
;	genAssign
;	genCopy
	lda	0x118,x
	sta	0x112,x
	lda	0x117,x
;	Raw cost for generated ic 32 : (12, 18.000000) count=0.173069
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
;	Raw cost for generated ic 33 : (23, 38.000000) count=0.173069
;	genCmp
	sec
	sbc	#0xdc
	bcc	00101$
;	Raw cost for generated ic 34 : (8, 9.600000) count=0.173069
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.173069
;	genCmp
	lda	#0xff
	sec
	sbc	0x111,x
	lda	#0xdf
	sbc	0x112,x
	bcs	00102$
;	Raw cost for generated ic 40 : (16, 19.600000) count=0.129802
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.129802
;	genLabel
00101$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.198309
;	../c16stombs.c: 60: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00121$
;	Raw cost for generated ic 44 : (6, 7.000000) count=0.198309
;	genLabel
00102$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.230759
;	../c16stombs.c: 63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x110,x
	sta	0x10f,x
	lda	0x116,x
	sta	0x10e,x
	lda	0x115,x
;	Raw cost for generated ic 49 : (21, 32.000000) count=0.230759
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=10
	sta	0x10d,x
	asl	a
	sta	*(REGTEMP+0)
	lda	0x10e,x
	tax
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(REGTEMP+0)
	txa
	rol	a
	sta	*(REGTEMP+0)
	tsx
	lda	0x10f,x
	tax
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+0)
	tsx
	sta	0x10f,x
	ldx	*(REGTEMP+0)
	txa
	rol	a
	pha
	lda	#0x00
	tsx
	sta	0x10e,x
	pla
	asl	0x10f,x
	rol	0x110,x
	rol	a
	sta	0x111,x
;	Raw cost for generated ic 50 : (59, 101.000000) count=0.230759
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10d,x
	sta	0x10c,x
	lda	0x113,x
	sta	0x10b,x
	lda	0x112,x
	sta	0x10a,x
;	Raw cost for generated ic 53 : (20, 30.000000) count=0.230759
;	genPlus
	lda	0x10e,x
	clc
	adc	0x10a,x
	sta	0x10a,x
	lda	0x10f,x
	adc	0x10b,x
	sta	0x10b,x
	lda	0x110,x
	adc	0x10c,x
	sta	0x10c,x
	lda	0x111,x
	adc	0x10d,x
	sta	0x10d,x
;	Raw cost for generated ic 54 : (37, 54.000000) count=0.230759
;	genPlus
;	  genPlusInc
	lda	0x10a,x
	clc
	sta	0x102,x
	lda	0x10b,x
	adc	#0x24
	sta	0x103,x
	lda	0x10c,x
	adc	#0xa0
	sta	0x104,x
	lda	0x10d,x
	adc	#0xfc
	sta	0x105,x
;	Raw cost for generated ic 55 : (31, 44.000000) count=0.230759
;	../c16stombs.c: 64: c16s += 2;
;	genPlus
;	  genPlusInc
	lda	0x118,x
	clc
	adc	#0x04
	sta	0x122,x
	lda	0x119,x
	adc	#0x00
	sta	0x123,x
;	Raw cost for generated ic 57 : (17, 24.000000) count=0.230759
;	genLabel
00108$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.230751
;	../c16stombs.c: 67: if(!codepoint)
;	genIfx
	tsx
	lda	0x104,x
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
;	genIfxJump : z
	bne	00113$
;	Raw cost for generated ic 61 : (18, 23.600000) count=1.230751
;	../c16stombs.c: 69: if(m < n)
;	genCmp
	lda	0x11b,x
	sec
	sbc	0x123,x
	lda	0x11c,x
	sbc	0x124,x
	bcc	00178$
	jmp	00118$
00178$:
;	Raw cost for generated ic 64 : (18, 23.600000) count=0.923063
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.923063
;	../c16stombs.c: 70: *s = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 69 : (15, 24.000000) count=0.692297
;	../c16stombs.c: 71: break;
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 71 : (3, 3.000000) count=0.692297
;	genLabel
00113$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 74: l = wctomb(b, codepoint);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x109,x
	lda	#0x01
;	Raw cost for generated ic 73 : (13, 20.000000) count=0.307679
;	genCast
;	genCopy
	sta	0x10a,x
	sta	0x10e,x
	lda	0x109,x
	sta	0x10d,x
;	Raw cost for generated ic 74 : (12, 18.000000) count=0.307679
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 75 : (16, 28.000000) count=0.307679
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.307679
;	genCall
;	genSend
	lda	0x10d,x
	tay
	lda	0x10e,x
	tax
	tya
	jsr	_wctomb
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 77 : (28, 48.000000) count=0.307679
;	../c16stombs.c: 76: if(l < 0)
;	genCmp
	sec
	sbc	#0x00
	bvc	00180$
	bpl	00179$
	bmi	00115$
00180$:
	bpl	00115$
00179$:
;	Raw cost for generated ic 79 : (14, 17.400000) count=0.307679
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 77: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00121$
;	Raw cost for generated ic 83 : (6, 7.000000) count=0.230759
;	genLabel
00115$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 79: if(m + l > n)
;	genCast
;	genCopy
	tsx
	lda	0x11a,x
	sta	0x10e,x
	lda	0x119,x
	sta	0x10d,x
;	Raw cost for generated ic 85 : (13, 20.000000) count=0.307679
;	genPlus
	lda	0x11b,x
	clc
	adc	0x10d,x
	sta	0x111,x
	lda	0x11c,x
	adc	0x10e,x
	sta	0x112,x
;	Raw cost for generated ic 86 : (19, 28.000000) count=0.307679
;	genCmp
	lda	0x123,x
	sec
	sbc	0x111,x
	lda	0x124,x
	sbc	0x112,x
	bcc	00118$
;	Raw cost for generated ic 87 : (18, 23.600000) count=0.307679
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 82: memcpy(s, b, l);
;	genCast
;	genCopy
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.230759
;	genCast
;	genCopy
	lda	0x11e,x
	sta	0x112,x
	lda	0x11d,x
	sta	0x111,x
;	Raw cost for generated ic 95 : (12, 18.000000) count=0.230759
;	genIpush
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 96 : (8, 14.000000) count=0.230759
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 97 : (8, 14.000000) count=0.230759
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.230759
;	genCall
;	genSend
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 99 : (22, 38.000000) count=0.230759
;	../c16stombs.c: 83: s += l;
;	genPlus
	tsx
	lda	0x11d,x
	clc
	adc	0x119,x
	sta	0x11d,x
	lda	0x11e,x
	adc	0x11a,x
	sta	0x11e,x
;	Raw cost for generated ic 100 : (20, 30.000000) count=0.230759
;	../c16stombs.c: 84: m += l;
;	genPlus
	lda	0x11b,x
	clc
	adc	0x10d,x
	sta	0x11b,x
	lda	0x11c,x
	adc	0x10e,x
	sta	0x11c,x
;	Raw cost for generated ic 103 : (19, 28.000000) count=0.230759
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 106 : (3, 3.000000) count=0.230759
;	genLabel
00118$:
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999983
;	../c16stombs.c: 87: return(m);
;	genRet
	tsx
	lda	0x11c,x
	sta	*(REGTEMP+0)
	lda	0x11b,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 108 : (11, 16.000000) count=0.999983
;	genLabel
00121$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.999983
;	../c16stombs.c: 88: }
;	genEndFunction
;	  adjustStack : cycles stk:126  incdec:70  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x1e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 110 : (16, 30.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
