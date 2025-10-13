;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	
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
	.globl _mbrtoc16
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
_mbrtoc16_sps_10000_22:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;s             Allocated to stack - sp +21 +2 
;n             Allocated to stack - sp +23 +2 
;ps            Allocated to stack - sp +25 +2 
;pc16          Allocated to stack - sp +17 +2 
;codepoint     Allocated to stack - sp +1 +4 
;ret           Allocated to stack - sp +15 +2 
;low_surrogate Allocated to stack - sp +13 +2 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +5 +4 
;sps           Allocated with name '_mbrtoc16_sps_10000_22'
;------------------------------------------------------------
;	../mbrtoc16.c: 34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_mbrtoc16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 41: if(!s)
;	genIfx
	lda	0x116,x
	ora	0x115,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtoc16.c: 42: return(mbrtoc16(0, "", 1, ps));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	genIpush
	lda	0x11a,x
	pha
	lda	0x119,x
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
	jsr	_mbrtoc16
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
	jmp	00119$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 44: if(!ps)
;	genIfx
	tsx
	lda	0x11a,x
	ora	0x119,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 15 : (12, 15.600000) count=1.000000
;	../mbrtoc16.c: 45: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_mbrtoc16_sps_10000_22
	sta	0x11a,x
	lda	#_mbrtoc16_sps_10000_22
	sta	0x119,x
;	Raw cost for generated ic 19 : (10, 14.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
;	genAssign
;	genCopy
	tsx
	lda	0x11a,x
	sta	0x10c,x
	lda	0x119,x
	sta	0x10b,x
;	Raw cost for generated ic 22 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 25 : (12, 19.000000) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00180$
	jmp	00108$
00180$:
;	Raw cost for generated ic 26 : (5, 5.600000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 31 : (13, 20.000000) count=0.750000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 32 : (11, 19.000000) count=0.750000
;	genIfx
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 33 : (5, 5.600000) count=0.750000
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 38 : (13, 20.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 39 : (11, 19.000000) count=0.562500
;	genIfx
;	genIfxJump : z
	bne	00184$
	jmp	00108$
00184$:
;	Raw cost for generated ic 40 : (5, 5.600000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.609375
;	../mbrtoc16.c: 49: if(pc16)
;	genIfx
	tsx
	lda	0x112,x
	ora	0x111,x
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 43 : (12, 15.600000) count=0.609375
;	../mbrtoc16.c: 50: *pc16 = ps->c[1] + (ps->c[2] << 8);
;	genAssign
;	genCopy
	lda	0x11a,x
	sta	0x10a,x
	lda	0x119,x
	sta	0x109,x
;	Raw cost for generated ic 47 : (12, 18.000000) count=0.457031
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x10c,x
	lda	0x109,x
	sta	0x10b,x
;	Raw cost for generated ic 49 : (12, 18.000000) count=0.457031
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 50 : (12, 19.000000) count=0.457031
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10c,x
	tya
	sta	0x10b,x
;	Raw cost for generated ic 51 : (9, 14.000000) count=0.457031
;	genAssign
;	genCopy
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.457031
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 55 : (15, 23.000000) count=0.457031
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 56 : (3, 4.000000) count=0.457031
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=8
	tax
	lda	#0x00
;	Raw cost for generated ic 57 : (3, 4.000000) count=0.457031
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10b,x
	sta	0x109,x
	lda	*(REGTEMP+0)
	adc	0x10c,x
	sta	0x10a,x
;	Raw cost for generated ic 58 : (18, 28.000000) count=0.457031
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 59 : (23, 38.000000) count=0.457031
;	genLabel
00106$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.609375
;	../mbrtoc16.c: 51: ps->c[1] = ps->c[2] = 0;
;	genAssign
;	genCopy
	tsx
	lda	0x11a,x
	sta	0x10a,x
	lda	0x119,x
	sta	0x109,x
;	Raw cost for generated ic 61 : (13, 20.000000) count=0.609375
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x10c,x
;	Raw cost for generated ic 63 : (12, 18.000000) count=0.609375
;	genAssign
;	genCopy
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.609375
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x109,x
	sta	0x10b,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[DPTR],y
;	Raw cost for generated ic 67 : (16, 24.000000) count=0.609375
;	genPointerSet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	#0x00
	dey
	sta	[DPTR],y
;	Raw cost for generated ic 68 : (15, 24.000000) count=0.609375
;	../mbrtoc16.c: 52: return(-3);
;	genRet
	lda	#0xfd
	ldx	#0xff
	jmp	00119$
;	Raw cost for generated ic 69 : (7, 7.000000) count=0.609375
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 55: ret = mbrtowc(&codepoint, s, n, ps);
;	genAddrOf
	tsx
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 71 : (11, 18.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 72 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x119,x
	pha
	lda	0x118,x
	pha
;	Raw cost for generated ic 73 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x117,x
	pha
	lda	0x116,x
	pha
;	Raw cost for generated ic 74 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x115,x
	pha
	lda	0x114,x
	pha
;	Raw cost for generated ic 75 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	_mbrtowc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 77 : (29, 48.000000) count=1.000000
;	../mbrtoc16.c: 57: if(ret > MB_LEN_MAX)
;	genCmp
	lda	#0x04
	sec
	sbc	0x10f,x
	lda	#0x00
	sbc	0x110,x
	bcs	00112$
;	Raw cost for generated ic 79 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 58: return(ret);
;	genRet
	lda	0x110,x
	sta	*(REGTEMP+0)
	lda	0x10f,x
	ldx	*(REGTEMP+0)
	jmp	00119$
;	Raw cost for generated ic 83 : (13, 17.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 60: if (codepoint <= 0xffff) // Basic multilingual plane
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
	bcc	00116$
;	Raw cost for generated ic 85 : (27, 33.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 62: if(pc16)
;	genIfx
	lda	0x112,x
	ora	0x111,x
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 89 : (11, 13.600000) count=0.750000
;	../mbrtoc16.c: 63: *pc16 = codepoint;
;	genCast
;	genCopy
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 93 : (9, 14.000000) count=0.562500
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
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
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 94 : (29, 49.000000) count=0.562500
;	genLabel
00114$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.750000
;	../mbrtoc16.c: 64: return(ret);
;	genRet
	tsx
	lda	0x110,x
	sta	*(REGTEMP+0)
	lda	0x10f,x
	ldx	*(REGTEMP+0)
	jmp	00119$
;	Raw cost for generated ic 96 : (14, 19.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 67: codepoint -= 0x100000;
;	genMinus
;	  genMinusDec - size=4  icount=1048576
	tsx
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
;	Raw cost for generated ic 98 : (34, 48.000000) count=1.000000
;	../mbrtoc16.c: 68: if(pc16)
;	genIfx
	lda	0x112,x
	ora	0x111,x
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 100 : (11, 13.600000) count=1.000000
;	../mbrtoc16.c: 69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lda	0x104,x
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
;	Raw cost for generated ic 104 : (39, 63.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
;	Raw cost for generated ic 135 : (9, 14.000000) count=0.750000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
;	Raw cost for generated ic 105 : (8, 12.000000) count=0.750000
;	genPlus
;	  genPlusInc
;	Raw cost for generated ic 106 : (7, 15.000000) count=0.750000
;	genPointerSet
	lda	*(REGTEMP+0)
	clc
	txa
	adc #0xd8
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
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 108 : (29, 49.000000) count=0.750000
;	genLabel
00118$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
;	genCast
;	genCopy
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 136 : (10, 16.000000) count=1.000000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 110 : (8, 12.000000) count=1.000000
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x00
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	adc	#0xdc
	sta	0x10e,x
;	Raw cost for generated ic 111 : (16, 24.000000) count=1.000000
;	../mbrtoc16.c: 71: ps->c[0] = 0;
;	genAssign
;	genCopy
	lda	0x11a,x
	sta	0x106,x
	lda	0x119,x
	sta	0x105,x
;	Raw cost for generated ic 114 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 117 : (12, 20.000000) count=1.000000
;	../mbrtoc16.c: 72: ps->c[1] = low_surrogate & 0xff;
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x10a,x
	lda	0x105,x
	sta	0x109,x
;	Raw cost for generated ic 120 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10d,x
	tax
;	Raw cost for generated ic 134 : (4, 6.000000) count=1.000000
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 123 : (21, 35.000000) count=1.000000
;	../mbrtoc16.c: 73: ps->c[2] = low_surrogate >> 8;
;	genAssign
;	genCopy
;	Raw cost for generated ic 126 : (0, 0.000000) count=1.000000
;	genGetByte
	tsx
	lda	0x10e,x
	tax
;	Raw cost for generated ic 127 : (5, 8.000000) count=1.000000
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 128 : (21, 35.000000) count=1.000000
;	../mbrtoc16.c: 75: return(ret);
;	genRet
	tsx
	lda	0x110,x
	sta	*(REGTEMP+0)
	lda	0x10f,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 129 : (11, 16.000000) count=1.000000
;	genLabel
00119$:
;	Raw cost for generated ic 130 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 76: }
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
;	Raw cost for generated ic 131 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
