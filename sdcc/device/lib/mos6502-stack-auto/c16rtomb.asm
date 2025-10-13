;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	
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
	.globl _wctomb
	.globl _c16rtomb
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
_c16rtomb_sps_10000_49:
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;c16           Allocated to stack - sp +27 +2 
;ps            Allocated to stack - sp +29 +2 
;s             Allocated to stack - sp +23 +2 
;codepoint     Allocated to stack - sp +5 +4 
;buf           Allocated to stack - sp +1 +4 
;high_surrogate Allocated to registers a x 
;sloc0         Allocated to stack - sp +21 +2 
;sloc1         Allocated to stack - sp +19 +2 
;sloc2         Allocated to stack - sp +17 +2 
;sloc3         Allocated to stack - sp +15 +2 
;sloc4         Allocated to stack - sp +13 +2 
;sloc5         Allocated to stack - sp +9 +4 
;sps           Allocated with name '_c16rtomb_sps_10000_49'
;------------------------------------------------------------
;	../c16rtomb.c: 35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 24 bytes.
_c16rtomb:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:66  incdec:48  adc:12
	tsx
	txa
	clc
	adc	#0xea
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../c16rtomb.c: 41: if(!s)
;	genIfx
	lda	0x118,x
	ora	0x117,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../c16rtomb.c: 42: s = buf;
;	genAddrOf
	inx
	txa
	sta	0x114,x
	lda	#0x01
;	Raw cost for generated ic 6 : (10, 16.000000) count=0.750000
;	genCast
;	genCopy
	sta	0x115,x
	sta	0x117,x
	lda	0x114,x
	sta	0x116,x
;	Raw cost for generated ic 7 : (12, 18.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../c16rtomb.c: 44: if(!ps)
;	genIfx
	tsx
	lda	0x11e,x
	ora	0x11d,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 10 : (12, 15.600000) count=1.000000
;	../c16rtomb.c: 45: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_c16rtomb_sps_10000_49
	sta	0x11e,x
	lda	#_c16rtomb_sps_10000_49
	sta	0x11d,x
;	Raw cost for generated ic 14 : (10, 14.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../c16rtomb.c: 47: if (!c16) // 0 always resets conversion state.
;	genIfx
	tsx
	lda	0x11c,x
	ora	0x11b,x
;	genIfxJump : z
	bne	00119$
;	Raw cost for generated ic 17 : (12, 15.600000) count=1.000000
;	../c16rtomb.c: 49: ps->c[1] = ps->c[2] = 0;
;	genAssign
;	genCopy
	lda	0x11e,x
	sta	0x116,x
	lda	0x11d,x
	sta	0x115,x
;	Raw cost for generated ic 20 : (12, 18.000000) count=0.750000
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x114,x
;	Raw cost for generated ic 22 : (12, 18.000000) count=0.750000
;	genAssign
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x115,x
	sta	0x113,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[DPTR],y
;	Raw cost for generated ic 26 : (16, 24.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	#0x00
	dey
	sta	[DPTR],y
;	Raw cost for generated ic 27 : (15, 24.000000) count=0.750000
;	../c16rtomb.c: 50: codepoint = 0;
;	genAssign
;	genAssignLit
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 28 : (12, 20.000000) count=0.750000
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 29 : (3, 3.000000) count=0.750000
;	genLabel
00119$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.250000
;	../c16rtomb.c: 52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
;	genAssign
;	genCopy
	tsx
	lda	0x11e,x
	sta	0x114,x
	lda	0x11d,x
	sta	0x113,x
;	Raw cost for generated ic 31 : (13, 20.000000) count=0.250000
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x116,x
	lda	0x113,x
	sta	0x115,x
;	Raw cost for generated ic 33 : (12, 18.000000) count=0.250000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 34 : (12, 19.000000) count=0.250000
;	genIfx
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 35 : (5, 5.600000) count=0.250000
;	genAssign
;	genCopy
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.187500
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 41 : (15, 25.000000) count=0.187500
;	genIfx
;	genIfxJump : z
	bne	00181$
	jmp	00115$
00181$:
;	Raw cost for generated ic 42 : (5, 5.600000) count=0.187500
;	genLabel
00114$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.203125
;	../c16rtomb.c: 56: if(c16 < 0xdc00 || c16 > 0xdfff)
;	genCmp
	tsx
	lda	0x11c,x
	sec
	sbc	#0xdc
	bcs	00182$
	jmp	00121$
00182$:
;	Raw cost for generated ic 45 : (12, 15.600000) count=0.203125
;	skipping generated iCode
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.203125
;	genCmp
	lda	#0xff
	sec
	sbc	0x11b,x
	lda	#0xdf
	sbc	0x11c,x
	bcs	00183$
	jmp	00121$
00183$:
;	Raw cost for generated ic 49 : (16, 19.600000) count=0.152344
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.152344
;	../c16rtomb.c: 59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
;	genAssign
;	genCopy
	lda	0x11e,x
	sta	0x112,x
	lda	0x11d,x
	sta	0x111,x
;	Raw cost for generated ic 55 : (12, 18.000000) count=0.114258
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x110,x
	lda	0x111,x
	sta	0x10f,x
;	Raw cost for generated ic 57 : (12, 18.000000) count=0.114258
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 58 : (12, 19.000000) count=0.114258
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10e,x
	tya
	sta	0x10d,x
;	Raw cost for generated ic 59 : (9, 14.000000) count=0.114258
;	genAssign
;	genCopy
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.114258
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 63 : (14, 21.000000) count=0.114258
;	genCast
;	genCopy
;	Raw cost for generated ic 64 : (2, 2.000000) count=0.114258
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=8
	tax
	lda	#0x00
;	Raw cost for generated ic 65 : (3, 4.000000) count=0.114258
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10d,x
	pha
	lda	*(REGTEMP+0)
	adc	0x10e,x
	tax
	pla
;	Raw cost for generated ic 66 : (15, 27.000000) count=0.114258
;	../c16rtomb.c: 60: ps->c[1] = ps->c[2] = 0;
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 74 : (12, 20.000000) count=0.114258
;	genPointerSet
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x10f,x
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	lda	#0x00
	dey
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 75 : (24, 38.000000) count=0.114258
;	../c16rtomb.c: 61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=10
	asl	a
	asl	a
	tax
	lda	#0x00
;	Raw cost for generated ic 76 : (5, 8.000000) count=0.114258
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x11b,x
	sta	0x10d,x
	lda	*(REGTEMP+0)
	adc	0x11c,x
	sta	0x10e,x
;	Raw cost for generated ic 77 : (18, 28.000000) count=0.114258
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10c,x
	sta	0x10b,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10d,x
	sta	0x109,x
;	Raw cost for generated ic 78 : (20, 30.000000) count=0.114258
;	genPlus
;	  genPlusInc
	clc
	sta	0x105,x
	lda	0x10a,x
	adc	#0x24
	sta	0x106,x
	lda	0x10b,x
	adc	#0x00
	sta	0x107,x
	lda	0x10c,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 79 : (28, 40.000000) count=0.114258
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 81 : (3, 3.000000) count=0.114258
;	genLabel
00115$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.046875
;	../c16rtomb.c: 63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
;	genCmp
	tsx
	lda	0x11b,x
	sec
	sbc	#0xff
	lda	0x11c,x
	sbc	#0xd7
	bcc	00110$
;	Raw cost for generated ic 83 : (17, 21.600000) count=0.046875
;	skipping generated iCode
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.046875
;	genCmp
	lda	0x11c,x
	sec
	sbc	#0xe0
	bcc	00111$
;	Raw cost for generated ic 87 : (11, 13.600000) count=0.035156
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.035156
;	genLabel
00110$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.038086
;	../c16rtomb.c: 64: codepoint = c16;
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x108,x
	sta	0x107,x
	lda	0x11c,x
	sta	0x106,x
	lda	0x11b,x
	sta	0x105,x
;	Raw cost for generated ic 91 : (21, 32.000000) count=0.038086
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 93 : (3, 3.000000) count=0.038086
;	genLabel
00111$:
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.000000
;	../c16rtomb.c: 67: if(c16 > 0xdbff)
;	genCmp
	lda	#0xff
	sec
	tsx
	sbc	0x11b,x
	lda	#0xdb
	sbc	0x11c,x
	bcc	00121$
;	Raw cost for generated ic 95 : (17, 21.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.000000
;	../c16rtomb.c: 70: ps->c[1] = c16 & 0xff;
;	genCast
;	genCopy
	lda	0x11b,x
;	Raw cost for generated ic 126 : (3, 4.000000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x01
	sta	[DPTR],y
;	Raw cost for generated ic 106 : (18, 28.000000) count=0.000000
;	../c16rtomb.c: 71: ps->c[2] = c16 >> 8;
;	genGetByte
	lda	0x11c,x
	tax
;	Raw cost for generated ic 110 : (4, 6.000000) count=0.000000
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 111 : (21, 35.000000) count=0.000000
;	../c16rtomb.c: 72: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00122$
;	Raw cost for generated ic 112 : (6, 7.000000) count=0.000000
;	genLabel
00120$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.902344
;	../c16rtomb.c: 75: return(wctomb(s, codepoint));
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 116 : (17, 30.000000) count=0.902344
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.902344
;	genCall
;	genSend
	lda	0x117,x
	tay
	lda	0x118,x
	tax
	tya
	jsr	_wctomb
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 118 : (22, 38.000000) count=0.902344
;	genRet
	jmp	00122$
;	Raw cost for generated ic 119 : (3, 3.000000) count=0.902344
;	../c16rtomb.c: 77: eilseq:
;	genLabel
00121$:
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.991211
;	../c16rtomb.c: 78: errno = EILSEQ;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 122 : (10, 12.000000) count=0.991211
;	../c16rtomb.c: 79: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 123 : (3, 4.000000) count=0.991211
;	genLabel
00122$:
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.991211
;	../c16rtomb.c: 80: }
;	genEndFunction
;	  adjustStack : cycles stk:102  incdec:58  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x18
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 125 : (16, 30.000000) count=0.991211
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
