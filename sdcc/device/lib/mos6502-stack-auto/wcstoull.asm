;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoull
	
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
	.globl _wcsncmp
	.globl _wcstoull
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;c             Allocated to stack - sp +3 +4 
;base          Allocated to stack - sp +7 +1 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../wcstoull.c: 43: static signed char _isdigit(const wchar_t c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 47: if (c >= L'0' && c <= L'9')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x30
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 2 : (27, 33.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00110$
;	Raw cost for generated ic 6 : (26, 31.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../wcstoull.c: 48: v = c - L'0';
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 10 : (3, 4.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 11 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.437500
;	../wcstoull.c: 49: else if (c >= L'a' && c <= L'z')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x61
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00106$
;	Raw cost for generated ic 15 : (27, 33.599998) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x7a
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00106$
;	Raw cost for generated ic 19 : (26, 31.600000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.328125
;	../wcstoull.c: 50: v = c - L'a' + 10;
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 23 : (3, 4.000000) count=0.246094
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 25 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.191406
;	../wcstoull.c: 51: else if (c >= L'A' && c <= L'Z')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x41
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 29 : (27, 33.599998) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x5a
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00102$
;	Raw cost for generated ic 33 : (26, 31.600000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.143555
;	../wcstoull.c: 52: v = c - L'A' + 10;
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.107666
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.107666
;	genPlus
;	  genPlusInc
	clc
	adc	#0xc9
;	Raw cost for generated ic 39 : (3, 4.000000) count=0.107666
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 41 : (3, 3.000000) count=0.107666
;	genLabel
00102$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.083740
;	../wcstoull.c: 54: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 56: if (v >= base)
;	genCmp
	tsx
	cmp	0x107,x
	bcc	00114$
;	Raw cost for generated ic 47 : (9, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 57: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 59: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 60: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'wcstoull'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +44 +2 
;base          Allocated to stack - sp +46 +2 
;nptr          Allocated to stack - sp +40 +2 
;__200000005   Allocated to registers 
;ptr           Allocated to stack - sp +38 +2 
;ret           Allocated to stack - sp +9 +8 
;range_error   Allocated to stack - sp +37 +1 
;neg           Allocated to stack - sp +36 +1 
;b             Allocated to stack - sp +35 +1 
;__200000006   Allocated to stack - sp +21 +4 
;c             Allocated to stack - sp +17 +4 
;digit         Allocated to registers y 
;oldret        Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +33 +2 
;sloc1         Allocated to stack - sp +29 +4 
;sloc2         Allocated to stack - sp +25 +4 
;sloc3         Allocated to stack - sp +17 +8 
;------------------------------------------------------------
;	../wcstoull.c: 64: unsigned long long int wcstoull(const wchar_t *nptr, wchar_t **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoull
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 41 bytes.
_wcstoull:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:117  incdec:82  adc:12
	tsx
	txa
	clc
	adc	#0xd9
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 68: bool range_error = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x125,x
;	Raw cost for generated ic 4 : (5, 7.000000) count=1.000000
;	../wcstoull.c: 69: bool neg = false;
;	genAssign
;	genAssignLit
	sta	0x124,x
;	Raw cost for generated ic 5 : (3, 5.000000) count=1.000000
;	../wcstoull.c: 70: unsigned char b = base;
;	genCast
;	genCopy
	lda	0x12e,x
	sta	0x123,x
;	Raw cost for generated ic 6 : (6, 9.000000) count=1.000000
;	../wcstoull.c: 72: while (iswblank (*ptr))
;	genAssign
;	genCopy
	lda	0x129,x
	sta	0x122,x
	lda	0x128,x
	sta	0x121,x
;	Raw cost for generated ic 246 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 10 : (36, 64.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	0x11d,x
	cmp	#0x20
	bne	00279$
	lda	0x11e,x
	bne	00279$
	lda	0x11f,x
	bne	00279$
	lda	0x120,x
	beq	00149$
00279$:
;	Raw cost for generated ic 13 : (34, 40.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	0x11d,x
	cmp	#0x09
	bne	00175$
	lda	0x11e,x
	bne	00175$
	lda	0x11f,x
	bne	00175$
	lda	0x120,x
	bne	00175$
;	Raw cost for generated ic 15 : (34, 40.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999992
;	genLabel
00149$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=4.333324
;	../wcstoull.c: 73: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x121,x
	clc
	adc	#0x04
	sta	0x121,x
	lda	0x122,x
	adc	#0x00
	sta	0x122,x
;	Raw cost for generated ic 31 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 33 : (3, 3.000000) count=4.333324
;	genLabel
00175$:
;	Raw cost for generated ic 247 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x122,x
	sta	0x127,x
;	Raw cost for generated ic 248 : (13, 20.000000) count=0.999997
;	../wcstoull.c: 76: switch(*ptr)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x121,x
	sta	0x126,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 36 : (35, 62.000000) count=0.999997
;	genCmpEQorNE
	lda	0x11d,x
	cmp	#0x2b
	bne	00288$
	lda	0x11e,x
	bne	00288$
	lda	0x11f,x
	bne	00288$
	lda	0x120,x
	beq	00105$
00288$:
;	Raw cost for generated ic 37 : (34, 40.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	lda	0x11d,x
	cmp	#0x2d
	bne	00106$
	lda	0x11e,x
	bne	00106$
	lda	0x11f,x
	bne	00106$
	lda	0x120,x
	bne	00106$
;	Raw cost for generated ic 39 : (34, 40.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.749996
;	../wcstoull.c: 79: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x124,x
;	Raw cost for generated ic 43 : (5, 7.000000) count=0.562496
;	../wcstoull.c: 80: case L'+':
;	genLabel
00105$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.812494
;	../wcstoull.c: 81: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x126,x
	clc
	adc	#0x04
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 46 : (18, 26.000000) count=0.812494
;	../wcstoull.c: 82: }
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999993
;	../wcstoull.c: 85: if (!b)
;	genIfx
	tsx
	lda	0x123,x
;	genIfxJump : z
	beq	00297$
	jmp	00128$
00297$:
;	Raw cost for generated ic 49 : (9, 11.600000) count=0.999993
;	../wcstoull.c: 87: if (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.749995
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 54 : (6, 10.000000) count=0.749995
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 55 : (6, 10.000000) count=0.749995
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	lda	0x126,x
	tay
	lda	0x127,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 57 : (22, 38.000000) count=0.749995
;	genIfx
;	genIfxJump : z
	bne	00299$
	cmp	#0x00
	beq	00114$
00299$:
;	Raw cost for generated ic 58 : (9, 10.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.562496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.562496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 63 : (6, 10.000000) count=0.562496
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 64 : (6, 10.000000) count=0.562496
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	tsx
	lda	0x12a,x
	tay
	lda	0x12b,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 66 : (23, 40.000000) count=0.562496
;	genIfx
;	genIfxJump : z
	bne	00115$
	cmp	#0x00
	bne	00115$
;	Raw cost for generated ic 67 : (9, 10.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.609371
;	../wcstoull.c: 89: b = 16;
;	genAssign
;	genAssignLit
	lda	#0x10
	tsx
	sta	0x123,x
;	Raw cost for generated ic 70 : (6, 9.000000) count=0.609371
;	../wcstoull.c: 90: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x126,x
	clc
	adc	#0x08
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 71 : (17, 24.000000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.140623
;	../wcstoull.c: 92: else if (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.140623
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 77 : (6, 10.000000) count=0.140623
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 78 : (6, 10.000000) count=0.140623
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	tsx
	lda	0x12a,x
	tay
	lda	0x12b,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 80 : (23, 40.000000) count=0.140623
;	genIfx
;	genIfxJump : z
	bne	00303$
	cmp	#0x00
	beq	00110$
00303$:
;	Raw cost for generated ic 81 : (9, 10.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.105467
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 85 : (0, 0.000000) count=0.105467
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 86 : (6, 10.000000) count=0.105467
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 87 : (6, 10.000000) count=0.105467
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	tsx
	lda	0x12a,x
	tay
	lda	0x12b,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 89 : (23, 40.000000) count=0.105467
;	genIfx
;	genIfxJump : z
	bne	00111$
	cmp	#0x00
	bne	00111$
;	Raw cost for generated ic 90 : (9, 10.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.114256
;	../wcstoull.c: 94: b = 2;
;	genAssign
;	genAssignLit
	lda	#0x02
	tsx
	sta	0x123,x
;	Raw cost for generated ic 93 : (6, 9.000000) count=0.114256
;	../wcstoull.c: 95: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x126,x
	clc
	adc	#0x08
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 94 : (17, 24.000000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.020970
;	../wcstoull.c: 97: else if (*ptr == L'0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x126,x
	sta	*(DPTR+0)
	lda	0x127,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 99 : (36, 64.000000) count=0.020970
;	genCmpEQorNE
	lda	0x11d,x
	cmp	#0x30
	bne	00108$
	lda	0x11e,x
	bne	00108$
	lda	0x11f,x
	bne	00108$
	lda	0x120,x
	bne	00108$
;	Raw cost for generated ic 100 : (34, 40.400002) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.020970
;	../wcstoull.c: 99: b = 8;
;	genAssign
;	genAssignLit
	lda	#0x08
	sta	0x123,x
;	Raw cost for generated ic 104 : (5, 7.000000) count=0.015727
;	../wcstoull.c: 100: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x126,x
	clc
	adc	#0x04
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 106 : (17, 24.000000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.000000
;	../wcstoull.c: 103: b = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	tsx
	sta	0x123,x
;	Raw cost for generated ic 110 : (6, 9.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 114 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.249997
;	../wcstoull.c: 106: else if (b == 16 && (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2)))
;	genCmpEQorNE
	tsx
	lda	0x123,x
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 116 : (11, 13.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 121 : (0, 0.000000) count=0.187496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 122 : (6, 10.000000) count=0.187496
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 123 : (6, 10.000000) count=0.187496
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	lda	0x126,x
	tay
	lda	0x127,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 125 : (22, 38.000000) count=0.187496
;	genIfx
;	genIfxJump : z
	bne	00313$
	cmp	#0x00
	beq	00122$
00313$:
;	Raw cost for generated ic 126 : (9, 10.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.140622
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 130 : (0, 0.000000) count=0.140622
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 131 : (6, 10.000000) count=0.140622
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 132 : (6, 10.000000) count=0.140622
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	tsx
	lda	0x12a,x
	tay
	lda	0x12b,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 134 : (23, 40.000000) count=0.140622
;	genIfx
;	genIfxJump : z
	bne	00123$
	cmp	#0x00
	bne	00123$
;	Raw cost for generated ic 135 : (9, 10.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.152341
;	../wcstoull.c: 107: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x126,x
	clc
	adc	#0x08
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 138 : (18, 26.000000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 140 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.097654
;	../wcstoull.c: 108: else if (b == 2 && (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2)))
;	genCmpEQorNE
	tsx
	lda	0x123,x
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 142 : (11, 13.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 147 : (0, 0.000000) count=0.073241
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 148 : (6, 10.000000) count=0.073241
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 149 : (6, 10.000000) count=0.073241
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	lda	0x126,x
	tay
	lda	0x127,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 151 : (22, 38.000000) count=0.073241
;	genIfx
;	genIfxJump : z
	bne	00318$
	cmp	#0x00
	beq	00118$
00318$:
;	Raw cost for generated ic 152 : (9, 10.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.054931
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 156 : (0, 0.000000) count=0.054931
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 157 : (6, 10.000000) count=0.054931
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 158 : (6, 10.000000) count=0.054931
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	tsx
	lda	0x12a,x
	tay
	lda	0x12b,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 160 : (23, 40.000000) count=0.054931
;	genIfx
;	genIfxJump : z
	bne	00129$
	cmp	#0x00
	bne	00129$
;	Raw cost for generated ic 161 : (9, 10.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.059508
;	../wcstoull.c: 109: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x126,x
	clc
	adc	#0x08
	sta	0x126,x
	lda	0x127,x
	adc	#0x00
	sta	0x127,x
;	Raw cost for generated ic 164 : (18, 26.000000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 168 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 112: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x126,x
	sta	*(DPTR+0)
	lda	0x127,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 170 : (36, 64.000000) count=0.989349
;	genIpush
	lda	0x123,x
	pha
;	Raw cost for generated ic 171 : (4, 7.000000) count=0.989349
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 172 : (16, 28.000000) count=0.989349
;	genCall
	jsr	__isdigit
;	assignResultValue
;	  adjustStack : cycles stk:26  incdec:14  adc:18
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 173 : (10, 20.000000) count=0.989349
;	genCmp
	sec
	sbc	#0x00
	bvc	00322$
	bpl	00321$
	bmi	00133$
00322$:
	bpl	00133$
00321$:
;	Raw cost for generated ic 174 : (14, 17.400000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 114: if (endptr)
;	genIfx
	lda	0x12d,x
	ora	0x12c,x
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 178 : (11, 13.600000) count=0.742012
;	../wcstoull.c: 115: *endptr = (wchar_t*)nptr;
;	genAssign
;	genCopy
	lda	0x12c,x
	tay
	lda	0x12d,x
	tax
	tya
;	Raw cost for generated ic 181 : (9, 14.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x128,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x129,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 182 : (18, 32.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 183 : (0, 0.000000) count=0.742012
;	../wcstoull.c: 116: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00146$
;	Raw cost for generated ic 184 : (18, 25.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 119: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
	sta	0x10d,x
	sta	0x10e,x
	sta	0x10f,x
	sta	0x110,x
;	Raw cost for generated ic 186 : (27, 44.000000) count=0.989349
;	genAssign
;	genCopy
	lda	0x127,x
	sta	0x11e,x
	lda	0x126,x
	sta	0x11d,x
;	Raw cost for generated ic 249 : (12, 18.000000) count=0.989349
;	genLabel
00144$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=3.958165
;	../wcstoull.c: 121: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x119,x
	iny
	lda	[DPTR],y
	sta	0x11a,x
	iny
	lda	[DPTR],y
	sta	0x11b,x
	iny
	lda	[DPTR],y
	sta	0x11c,x
;	Raw cost for generated ic 189 : (36, 64.000000) count=3.958165
;	genIpush
	lda	0x123,x
	pha
;	Raw cost for generated ic 190 : (4, 7.000000) count=3.958165
;	genIpush
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 191 : (16, 28.000000) count=3.958165
;	genCall
	jsr	__isdigit
;	assignResultValue
	tay
;	  adjustStack : cycles stk:20  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0x05
	tax
	txs
;	Raw cost for generated ic 192 : (11, 20.000000) count=3.958165
;	../wcstoull.c: 123: if (digit < 0)
;	genCmp
	tya
	sec
	sbc	#0x00
	bvs	00327$
	bpl	00326$
	bmi	00328$
00327$:
	bmi	00326$
00328$:
	jmp	00138$
00326$:
;	Raw cost for generated ic 194 : (15, 19.400002) count=3.958165
;	skipping generated iCode
;	Raw cost for generated ic 195 : (0, 0.000000) count=3.958165
;	../wcstoull.c: 130: unsigned long long int oldret = ret;
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x108,x
	lda	0x10f,x
	sta	0x107,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 200 : (48, 72.000000) count=2.968624
;	../wcstoull.c: 131: ret *= b;
;	genCast
;	genCopy
	lda	#0x00
	sta	0x118,x
	sta	0x117,x
	sta	0x116,x
	sta	0x115,x
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	lda	0x123,x
	sta	0x111,x
;	Raw cost for generated ic 201 : (29, 46.000000) count=2.968624
;	genIpush
	tya
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 258 : (34, 61.000000) count=2.968624
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 259 : (32, 56.000000) count=2.968624
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11a,x
	lda	*(REGTEMP+0)
	sta	0x11b,x
	lda	*___SDCC_m6502_ret2
	sta	0x11c,x
	lda	*___SDCC_m6502_ret3
	sta	0x11d,x
	lda	*___SDCC_m6502_ret4
	sta	0x11e,x
	lda	*___SDCC_m6502_ret5
	sta	0x11f,x
	lda	*___SDCC_m6502_ret6
	sta	0x120,x
	lda	*___SDCC_m6502_ret7
	sta	0x121,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 260 : (56, 94.000000) count=2.968624
;	../wcstoull.c: 132: if (ret < oldret)
;	genCmp
	lda	0x10a,x
	sec
	sbc	0x102,x
	lda	0x10b,x
	sbc	0x103,x
	lda	0x10c,x
	sbc	0x104,x
	lda	0x10d,x
	sbc	0x105,x
	lda	0x10e,x
	sbc	0x106,x
	lda	0x10f,x
	sbc	0x107,x
	lda	0x110,x
	sbc	0x108,x
	lda	0x111,x
	sbc	0x109,x
	bcs	00137$
;	Raw cost for generated ic 204 : (54, 71.599998) count=2.968624
;	skipping generated iCode
;	Raw cost for generated ic 205 : (0, 0.000000) count=2.968624
;	../wcstoull.c: 133: range_error = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x126,x
;	Raw cost for generated ic 208 : (5, 7.000000) count=2.226612
;	genLabel
00137$:
;	Raw cost for generated ic 209 : (0, 0.000000) count=2.968816
;	../wcstoull.c: 134: ret += (unsigned char)digit;
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 210 : (1, 2.000000) count=2.968816
;	genCast
	tsx
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
	sta	0x115,x
	sta	0x116,x
	sta	0x117,x
	sta	0x118,x
;	Raw cost for generated ic 212 : (27, 44.000000) count=2.968816
;	genPlus
	lda	0x109,x
	clc
	adc	0x111,x
	sta	0x109,x
	lda	0x10a,x
	adc	0x112,x
	sta	0x10a,x
	lda	0x10b,x
	adc	0x113,x
	sta	0x10b,x
	lda	0x10c,x
	adc	0x114,x
	sta	0x10c,x
	lda	0x10d,x
	adc	0x115,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x116,x
	sta	0x10e,x
	lda	0x10f,x
	adc	0x117,x
	sta	0x10f,x
	lda	0x110,x
	adc	0x118,x
	sta	0x110,x
;	Raw cost for generated ic 213 : (73, 106.000000) count=2.968816
;	../wcstoull.c: 119: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	0x11d,x
	clc
	adc	#0x04
	sta	0x11d,x
	lda	0x11e,x
	adc	#0x00
	sta	0x11e,x
;	Raw cost for generated ic 217 : (17, 24.000000) count=2.968816
;	genGoto
	jmp	00144$
;	Raw cost for generated ic 219 : (3, 3.000000) count=2.968816
;	genLabel
00138$:
;	Raw cost for generated ic 220 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 139: if (endptr)
;	genIfx
	tsx
	lda	0x12d,x
	ora	0x12c,x
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 221 : (12, 15.600000) count=0.989605
;	../wcstoull.c: 140: *endptr = (wchar_t*)ptr;
;	genAssign
;	genCopy
	lda	0x12c,x
	tay
	lda	0x12d,x
	tax
	tya
;	Raw cost for generated ic 224 : (9, 14.000000) count=0.742204
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x11d,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11e,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 225 : (18, 32.000000) count=0.742204
;	genLabel
00140$:
;	Raw cost for generated ic 226 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 142: if (range_error)
;	genIfx
	tsx
	lda	0x125,x
;	genIfxJump : z
	beq	00142$
;	Raw cost for generated ic 227 : (9, 11.600000) count=0.989605
;	../wcstoull.c: 144: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 231 : (10, 12.000000) count=0.742204
;	../wcstoull.c: 145: return (ULLONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00146$
;	Raw cost for generated ic 232 : (18, 25.000000) count=0.742204
;	genLabel
00142$:
;	Raw cost for generated ic 233 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 148: return (neg ? -ret : ret);
;	genIfx
	tsx
	lda	0x124,x
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 234 : (9, 11.600000) count=0.989605
;	genUminus
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x111,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x112,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x113,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x114,x
	lda	#0x00
	sbc	0x10d,x
	sta	0x115,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x116,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x117,x
	lda	#0x00
	sbc	0x110,x
	sta	0x118,x
;	Raw cost for generated ic 235 : (65, 90.000000) count=0.742204
;	genGoto
	jmp	00152$
;	Raw cost for generated ic 237 : (3, 3.000000) count=0.742204
;	genLabel
00151$:
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.247540
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x118,x
	lda	0x10f,x
	sta	0x117,x
	lda	0x10e,x
	sta	0x116,x
	lda	0x10d,x
	sta	0x115,x
	lda	0x10c,x
	sta	0x114,x
	lda	0x10b,x
	sta	0x113,x
	lda	0x10a,x
	sta	0x112,x
	lda	0x109,x
	sta	0x111,x
;	Raw cost for generated ic 239 : (49, 74.000000) count=0.247540
;	genLabel
00152$:
;	Raw cost for generated ic 240 : (0, 0.000000) count=0.989744
;	genRet
	tsx
	lda	0x118,x
	sta	*___SDCC_m6502_ret7
	lda	0x117,x
	sta	*___SDCC_m6502_ret6
	lda	0x116,x
	sta	*___SDCC_m6502_ret5
	lda	0x115,x
	sta	*___SDCC_m6502_ret4
	lda	0x114,x
	sta	*___SDCC_m6502_ret3
	lda	0x113,x
	sta	*___SDCC_m6502_ret2
	lda	0x112,x
	sta	*(REGTEMP+0)
	lda	0x111,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 241 : (41, 58.000000) count=0.989744
;	genLabel
00146$:
;	Raw cost for generated ic 242 : (0, 0.000000) count=0.989744
;	../wcstoull.c: 149: }
;	genEndFunction
;	  adjustStack : cycles stk:170  incdec:92  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x29
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 243 : (16, 30.000000) count=0.989744
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.byte 48,0,0,0
	.byte 120,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_1:
	.byte 48,0,0,0
	.byte 88,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_2:
	.byte 48,0,0,0
	.byte 98,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_3:
	.byte 48,0,0,0
	.byte 66,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area XINIT
	.area CABS    (ABS)
