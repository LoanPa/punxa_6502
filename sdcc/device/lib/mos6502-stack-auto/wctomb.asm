;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wctomb
	
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
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc            Allocated to stack - sp +15 +4 
;s             Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +5 +4 
;sloc2         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../wctomb.c: 31: int wctomb(char *s, wchar_t wc)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_wctomb:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wctomb.c: 33: if(!s)
;	genIfx
	lda	0x10c,x
	ora	0x10b,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../wctomb.c: 34: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00119$
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../wctomb.c: 36: if(wc < 0x80)
;	genCmp
	tsx
	lda	0x10f,x
	sec
	sbc	#0x80
	lda	0x110,x
	sbc	#0x00
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00117$
;	Raw cost for generated ic 8 : (27, 33.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../wctomb.c: 38: s[0] = wc;
;	genCast
;	genCopy
	lda	0x10f,x
	tax
;	Raw cost for generated ic 13 : (4, 6.000000) count=0.750000
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 14 : (22, 35.000000) count=0.750000
;	../wctomb.c: 39: return(1);
;	genRet
	lda	#0x01
	ldx	#0x00
	jmp	00119$
;	Raw cost for generated ic 15 : (7, 7.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../wctomb.c: 41: else if(wc < 0x800)
;	genCmp
	tsx
	lda	0x110,x
	sec
	sbc	#0x08
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00114$
;	Raw cost for generated ic 18 : (22, 27.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../wctomb.c: 43: s[0] = (wc >> 6) & 0x1f | 0xc0;
;	genCast
;	genCopy
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
;	Raw cost for generated ic 133 : (9, 14.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x1f
;	Raw cost for generated ic 24 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xc0
;	Raw cost for generated ic 25 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 27 : (19, 30.000000) count=0.750000
;	../wctomb.c: 44: s[1] = (wc >> 0) & 0x3f | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 28 : (12, 18.000000) count=0.750000
;	genGetByte
	lda	0x10f,x
;	Raw cost for generated ic 29 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 31 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 32 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 34 : (17, 28.000000) count=0.750000
;	../wctomb.c: 45: return(2);
;	genRet
	lda	#0x02
	ldx	#0x00
	jmp	00119$
;	Raw cost for generated ic 35 : (7, 7.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	../wctomb.c: 47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
;	genCmp
	tsx
	lda	0x110,x
	sec
	sbc	#0xd8
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 38 : (22, 27.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genCmp
	lda	0x110,x
	sec
	sbc	#0xe0
	lda	0x111,x
	sbc	#0x00
	lda	0x112,x
	sbc	#0x00
	bcs	00110$
;	Raw cost for generated ic 42 : (21, 25.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.750000
;	../wctomb.c: 48: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00119$
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wctomb.c: 49: else if(wc < 0x10000)
;	genCmp
	tsx
	lda	0x111,x
	sec
	sbc	#0x01
	lda	0x112,x
	sbc	#0x00
	bcc	00169$
	jmp	00107$
00169$:
;	Raw cost for generated ic 49 : (17, 21.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	../wctomb.c: 51: s[0] = (wc >> 12) & 0x0f | 0xe0;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=12
	lda	0x112,x
	lsr	a
	sta	0x107,x
	lda	0x111,x
	ror	a
	sta	0x106,x
	lda	0x110,x
	ror	a
	lsr	0x107,x
	ror	0x106,x
	ror	a
	lsr	0x107,x
	ror	0x106,x
	ror	a
	lsr	0x107,x
	ror	0x106,x
	ror	a
	sta	0x105,x
	lda	#0x00
	sta	0x108,x
;	Raw cost for generated ic 54 : (47, 82.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x105,x
;	Raw cost for generated ic 126 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x0f
;	Raw cost for generated ic 55 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xe0
;	Raw cost for generated ic 56 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 58 : (18, 28.000000) count=0.750000
;	../wctomb.c: 52: s[1] = (wc >> 6) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 59 : (12, 18.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
;	Raw cost for generated ic 134 : (9, 14.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 60 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 61 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 62 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x01
	sta	[DPTR],y
;	Raw cost for generated ic 64 : (19, 30.000000) count=0.750000
;	../wctomb.c: 53: s[2] = (wc >> 0) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 65 : (12, 18.000000) count=0.750000
;	genGetByte
	lda	0x10f,x
;	Raw cost for generated ic 66 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 68 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 69 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 71 : (17, 28.000000) count=0.750000
;	../wctomb.c: 54: return(3);
;	genRet
	lda	#0x03
	ldx	#0x00
	jmp	00119$
;	Raw cost for generated ic 72 : (7, 7.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	../wctomb.c: 56: else if(wc < 0x110000)
;	genCmp
	tsx
	lda	0x111,x
	sec
	sbc	#0x11
	lda	0x112,x
	sbc	#0x00
	bcc	00170$
	jmp	00104$
00170$:
;	Raw cost for generated ic 75 : (17, 21.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	../wctomb.c: 58: s[0] = (wc >> 18) & 0x07 | 0xf0;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=18
	lda	0x112,x
	lsr	a
	sta	0x106,x
	lda	0x111,x
	ror	a
	sta	0x105,x
	lda	0x106,x
	lsr	a
	ror	0x105,x
	sta	0x106,x
	lda	#0x00
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 80 : (32, 51.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x105,x
;	Raw cost for generated ic 129 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x07
;	Raw cost for generated ic 81 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xf0
;	Raw cost for generated ic 82 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 84 : (18, 28.000000) count=0.750000
;	../wctomb.c: 59: s[1] = (wc >> 12) & 0x3f | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 85 : (12, 18.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=12
	lda	0x112,x
	lsr	a
	sta	0x103,x
	lda	0x111,x
	ror	a
	sta	0x102,x
	lda	0x110,x
	ror	a
	lsr	0x103,x
	ror	0x102,x
	ror	a
	lsr	0x103,x
	ror	0x102,x
	ror	a
	lsr	0x103,x
	ror	0x102,x
	ror	a
	sta	0x101,x
	tya
	sta	0x104,x
;	Raw cost for generated ic 86 : (46, 82.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x101,x
;	Raw cost for generated ic 130 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 87 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 88 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 90 : (17, 28.000000) count=0.750000
;	../wctomb.c: 60: s[2] = (wc >> 6) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 91 : (12, 18.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
;	Raw cost for generated ic 135 : (9, 14.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 92 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 93 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 94 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x02
	sta	[DPTR],y
;	Raw cost for generated ic 96 : (19, 30.000000) count=0.750000
;	../wctomb.c: 61: s[3] = (wc >> 0) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 97 : (12, 18.000000) count=0.750000
;	genGetByte
	lda	0x10f,x
;	Raw cost for generated ic 98 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 100 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 101 : (2, 2.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=3 remat=(null) savea=0
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 103 : (17, 28.000000) count=0.750000
;	../wctomb.c: 62: return(4);
;	genRet
	lda	#0x04
	ldx	#0x00
	jmp	00119$
;	Raw cost for generated ic 104 : (7, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.000000
;	../wctomb.c: 65: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 107 : (3, 4.000000) count=1.000000
;	genLabel
00119$:
;	Raw cost for generated ic 113 : (0, 0.000000) count=1.000000
;	../wctomb.c: 66: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 114 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
