;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoull
	
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
	.globl _strncmp
	.globl _strtoull
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
;base          Allocated to registers x 
;c             Allocated to registers a 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../strtoull.c: 42: static signed char _isdigit(const char c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../strtoull.c: 46: if (c >= '0' && c <= '9')
;	genCmp
	cmp	#0x30
	bcc	00110$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00160$
	bcs	00110$
00160$:
;	Raw cost for generated ic 8 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	../strtoull.c: 47: v = c - '0';
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	../strtoull.c: 48: else if (c >= 'a' && c <='z')
;	genCmp
	cmp	#0x61
	bcc	00106$
;	Raw cost for generated ic 17 : (7, 7.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.437500
;	genCmp
	cmp	#0x7a
	beq	00163$
	bcs	00106$
00163$:
;	Raw cost for generated ic 21 : (9, 10.200000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.328125
;	../strtoull.c: 49: v = c - 'a' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 26 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	../strtoull.c: 50: else if (c >= 'A' && c <='Z')
;	genCmp
	cmp	#0x41
	bcc	00102$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.191406
;	genCmp
	cmp	#0x5a
	beq	00166$
	bcs	00102$
00166$:
;	Raw cost for generated ic 34 : (9, 10.200000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.143555
;	../strtoull.c: 51: v = c - 'A' + 10;
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
;	../strtoull.c: 53: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../strtoull.c: 55: if (v >= base)
;	genCmp
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	cmp	*(REGTEMP+1)
	lda	*(REGTEMP+0)
	bcc	00114$
;	Raw cost for generated ic 47 : (13, 17.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../strtoull.c: 56: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../strtoull.c: 58: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../strtoull.c: 59: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoull'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +36 +2 
;base          Allocated to stack - sp +38 +2 
;nptr          Allocated to stack - sp +32 +2 
;__200000004   Allocated to registers 
;ptr           Allocated to stack - sp +30 +2 
;ret           Allocated to stack - sp +9 +8 
;range_error   Allocated to stack - sp +29 +1 
;neg           Allocated to stack - sp +28 +1 
;b             Allocated to stack - sp +27 +1 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;digit         Allocated to registers y 
;oldret        Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +25 +2 
;sloc1         Allocated to stack - sp +17 +8 
;------------------------------------------------------------
;	../strtoull.c: 63: unsigned long long int strtoull(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoull
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 33 bytes.
_strtoull:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:93  incdec:66  adc:12
	tsx
	txa
	clc
	adc	#0xe1
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strtoull.c: 67: bool range_error = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x11d,x
;	Raw cost for generated ic 4 : (5, 7.000000) count=1.000000
;	../strtoull.c: 68: bool neg = false;
;	genAssign
;	genAssignLit
	sta	0x11c,x
;	Raw cost for generated ic 5 : (3, 5.000000) count=1.000000
;	../strtoull.c: 69: unsigned char b = base;
;	genCast
;	genCopy
	lda	0x126,x
	sta	0x11b,x
;	Raw cost for generated ic 6 : (6, 9.000000) count=1.000000
;	../strtoull.c: 71: while (isblank (*ptr))
;	genAssign
;	genCopy
	lda	0x121,x
	sta	0x11a,x
	lda	0x120,x
	sta	0x119,x
;	Raw cost for generated ic 249 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x119,x
	sta	*(DPTR+0)
	lda	0x11a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 10 : (15, 23.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 14 : (1, 2.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x20
	beq	00149$
;	Raw cost for generated ic 15 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x09
	bne	00175$
;	Raw cost for generated ic 18 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999992
;	genLabel
00149$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=4.333324
;	../strtoull.c: 72: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x119,x
	clc
	adc	#0x01
	sta	0x119,x
	lda	0x11a,x
	adc	#0x00
	sta	0x11a,x
;	Raw cost for generated ic 34 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 36 : (3, 3.000000) count=4.333324
;	genLabel
00175$:
;	Raw cost for generated ic 250 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x11a,x
	sta	0x11f,x
;	Raw cost for generated ic 251 : (13, 20.000000) count=0.999997
;	../strtoull.c: 75: switch(*ptr)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x119,x
	sta	0x11e,x
	sta	*(DPTR+0)
	lda	0x11a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 39 : (15, 23.000000) count=0.999997
;	genCmpEQorNE
	cpx	#0x2b
	beq	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cpx	#0x2d
	bne	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.749996
;	../strtoull.c: 78: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x11c,x
;	Raw cost for generated ic 46 : (6, 9.000000) count=0.562496
;	../strtoull.c: 79: case '+':
;	genLabel
00105$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.812494
;	../strtoull.c: 80: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11e,x
	clc
	adc	#0x01
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 49 : (18, 26.000000) count=0.812494
;	../strtoull.c: 81: }
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999993
;	../strtoull.c: 84: if (!b)
;	genIfx
	tsx
	lda	0x11b,x
;	genIfxJump : z
	beq	00283$
	jmp	00128$
00283$:
;	Raw cost for generated ic 52 : (9, 11.600000) count=0.999993
;	../strtoull.c: 86: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.749995
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 57 : (6, 10.000000) count=0.749995
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 58 : (6, 10.000000) count=0.749995
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 60 : (22, 38.000000) count=0.749995
;	genIfx
;	genIfxJump : z
	bne	00285$
	cmp	#0x00
	beq	00114$
00285$:
;	Raw cost for generated ic 61 : (9, 10.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.562496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 66 : (6, 10.000000) count=0.562496
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 67 : (6, 10.000000) count=0.562496
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	tsx
	lda	0x122,x
	tay
	lda	0x123,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 69 : (23, 40.000000) count=0.562496
;	genIfx
;	genIfxJump : z
	bne	00115$
	cmp	#0x00
	bne	00115$
;	Raw cost for generated ic 70 : (9, 10.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.609371
;	../strtoull.c: 88: b = 16;
;	genAssign
;	genAssignLit
	lda	#0x10
	tsx
	sta	0x11b,x
;	Raw cost for generated ic 73 : (6, 9.000000) count=0.609371
;	../strtoull.c: 89: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 74 : (17, 24.000000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	../strtoull.c: 91: else if (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.140623
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 80 : (6, 10.000000) count=0.140623
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 81 : (6, 10.000000) count=0.140623
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	tsx
	lda	0x122,x
	tay
	lda	0x123,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 83 : (23, 40.000000) count=0.140623
;	genIfx
;	genIfxJump : z
	bne	00289$
	cmp	#0x00
	beq	00110$
00289$:
;	Raw cost for generated ic 84 : (9, 10.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.105467
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.105467
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 89 : (6, 10.000000) count=0.105467
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 90 : (6, 10.000000) count=0.105467
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	tsx
	lda	0x122,x
	tay
	lda	0x123,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 92 : (23, 40.000000) count=0.105467
;	genIfx
;	genIfxJump : z
	bne	00111$
	cmp	#0x00
	bne	00111$
;	Raw cost for generated ic 93 : (9, 10.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.114256
;	../strtoull.c: 93: b = 2;
;	genAssign
;	genAssignLit
	lda	#0x02
	tsx
	sta	0x11b,x
;	Raw cost for generated ic 96 : (6, 9.000000) count=0.114256
;	../strtoull.c: 94: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 97 : (17, 24.000000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 99 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.020970
;	../strtoull.c: 96: else if (*ptr == '0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11e,x
	sta	*(DPTR+0)
	lda	0x11f,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 102 : (16, 25.000000) count=0.020970
;	genCmpEQorNE
	cpx	#0x30
	bne	00108$
;	Raw cost for generated ic 103 : (7, 7.600000) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.020970
;	../strtoull.c: 98: b = 8;
;	genAssign
;	genAssignLit
	lda	#0x08
	tsx
	sta	0x11b,x
;	Raw cost for generated ic 107 : (6, 9.000000) count=0.015727
;	../strtoull.c: 99: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	clc
	adc	#0x01
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 109 : (17, 24.000000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 111 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=0.000000
;	../strtoull.c: 102: b = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	tsx
	sta	0x11b,x
;	Raw cost for generated ic 113 : (6, 9.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 117 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.249997
;	../strtoull.c: 105: else if (b == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
;	genCmpEQorNE
	tsx
	lda	0x11b,x
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 119 : (11, 13.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.187496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 125 : (6, 10.000000) count=0.187496
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 126 : (6, 10.000000) count=0.187496
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 128 : (22, 38.000000) count=0.187496
;	genIfx
;	genIfxJump : z
	bne	00295$
	cmp	#0x00
	beq	00122$
00295$:
;	Raw cost for generated ic 129 : (9, 10.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.140622
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.140622
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 134 : (6, 10.000000) count=0.140622
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 135 : (6, 10.000000) count=0.140622
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	tsx
	lda	0x122,x
	tay
	lda	0x123,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 137 : (23, 40.000000) count=0.140622
;	genIfx
;	genIfxJump : z
	bne	00123$
	cmp	#0x00
	bne	00123$
;	Raw cost for generated ic 138 : (9, 10.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.152341
;	../strtoull.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 141 : (18, 26.000000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 143 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.097654
;	../strtoull.c: 107: else if (b == 2 && (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2)))
;	genCmpEQorNE
	tsx
	lda	0x11b,x
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 145 : (11, 13.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.073241
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 151 : (6, 10.000000) count=0.073241
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 152 : (6, 10.000000) count=0.073241
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 154 : (22, 38.000000) count=0.073241
;	genIfx
;	genIfxJump : z
	bne	00300$
	cmp	#0x00
	beq	00118$
00300$:
;	Raw cost for generated ic 155 : (9, 10.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.054931
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.054931
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 160 : (6, 10.000000) count=0.054931
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 161 : (6, 10.000000) count=0.054931
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	tsx
	lda	0x122,x
	tay
	lda	0x123,x
	tax
	tya
	jsr	_strncmp
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
;	Raw cost for generated ic 163 : (23, 40.000000) count=0.054931
;	genIfx
;	genIfxJump : z
	bne	00129$
	cmp	#0x00
	bne	00129$
;	Raw cost for generated ic 164 : (9, 10.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.059508
;	../strtoull.c: 108: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 167 : (18, 26.000000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 171 : (0, 0.000000) count=0.989349
;	../strtoull.c: 111: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11e,x
	sta	*(DPTR+0)
	lda	0x11f,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (16, 25.000000) count=0.989349
;	Raw cost for generated ic 174 : (0, 0.000000) count=0.989349
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	genCall
;	genSend
	tay
	sta	*(REGTEMP+0)
	lda	0x11b,x
	tax
	lda	*(REGTEMP+0)
	jsr	__isdigit
;	assignResultValue
;	Raw cost for generated ic 176 : (12, 20.000000) count=0.989349
;	genCmp
	sec
	sbc	#0x00
	bvc	00304$
	bpl	00303$
	bmi	00133$
00304$:
	bpl	00133$
00303$:
;	Raw cost for generated ic 177 : (14, 17.400000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.989349
;	../strtoull.c: 113: if (endptr)
;	genIfx
	tsx
	lda	0x125,x
	ora	0x124,x
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 181 : (12, 15.600000) count=0.742012
;	../strtoull.c: 114: *endptr = (char*)nptr;
;	genAssign
;	genCopy
	lda	0x124,x
	tay
	lda	0x125,x
	tax
	tya
;	Raw cost for generated ic 184 : (9, 14.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x120,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x121,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 185 : (18, 32.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 186 : (0, 0.000000) count=0.742012
;	../strtoull.c: 115: return (0);
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
;	Raw cost for generated ic 187 : (18, 25.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.989349
;	../strtoull.c: 118: for (ret = 0;; ptr++)
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
;	Raw cost for generated ic 189 : (27, 44.000000) count=0.989349
;	genAssign
;	genCopy
	lda	0x11f,x
	sta	0x11a,x
	lda	0x11e,x
	sta	0x119,x
;	Raw cost for generated ic 252 : (12, 18.000000) count=0.989349
;	genLabel
00144$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=3.958165
;	../strtoull.c: 120: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x119,x
	sta	*(DPTR+0)
	lda	0x11a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 192 : (16, 25.000000) count=3.958165
;	Raw cost for generated ic 193 : (0, 0.000000) count=3.958165
;	Raw cost for generated ic 194 : (0, 0.000000) count=3.958165
;	genCall
;	genSend
	tay
	sta	*(REGTEMP+0)
	lda	0x11b,x
	tax
	lda	*(REGTEMP+0)
	jsr	__isdigit
;	assignResultValue
;	Raw cost for generated ic 195 : (13, 22.000000) count=3.958165
;	../strtoull.c: 122: if (digit < 0)
;	genCmp
	tay
	sec
	sbc	#0x00
	bvs	00309$
	bpl	00308$
	bmi	00310$
00309$:
	bmi	00308$
00310$:
	jmp	00138$
00308$:
;	Raw cost for generated ic 197 : (15, 19.400002) count=3.958165
;	skipping generated iCode
;	Raw cost for generated ic 198 : (0, 0.000000) count=3.958165
;	../strtoull.c: 129: unsigned long long int oldret = ret;
;	genAssign
;	genCopy
	tsx
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
;	Raw cost for generated ic 203 : (49, 74.000000) count=2.968624
;	../strtoull.c: 130: ret *= b;
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
	lda	0x11b,x
	sta	0x111,x
;	Raw cost for generated ic 204 : (29, 46.000000) count=2.968624
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
;	Raw cost for generated ic 261 : (34, 61.000000) count=2.968624
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
;	Raw cost for generated ic 262 : (32, 56.000000) count=2.968624
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
;	Raw cost for generated ic 263 : (56, 94.000000) count=2.968624
;	../strtoull.c: 131: if (ret < oldret)
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
;	Raw cost for generated ic 207 : (54, 71.599998) count=2.968624
;	skipping generated iCode
;	Raw cost for generated ic 208 : (0, 0.000000) count=2.968624
;	../strtoull.c: 132: range_error = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x11e,x
;	Raw cost for generated ic 211 : (5, 7.000000) count=2.226612
;	genLabel
00137$:
;	Raw cost for generated ic 212 : (0, 0.000000) count=2.968816
;	../strtoull.c: 133: ret += (unsigned char)digit;
;	genCast
;	genCopy
;	Raw cost for generated ic 213 : (0, 0.000000) count=2.968816
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x118,x
	sta	0x117,x
	sta	0x116,x
	sta	0x115,x
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	tya
	sta	0x111,x
;	Raw cost for generated ic 215 : (28, 46.000000) count=2.968816
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
;	Raw cost for generated ic 216 : (73, 106.000000) count=2.968816
;	../strtoull.c: 118: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	0x119,x
	clc
	adc	#0x01
	sta	0x119,x
	lda	0x11a,x
	adc	#0x00
	sta	0x11a,x
;	Raw cost for generated ic 220 : (17, 24.000000) count=2.968816
;	genGoto
	jmp	00144$
;	Raw cost for generated ic 222 : (3, 3.000000) count=2.968816
;	genLabel
00138$:
;	Raw cost for generated ic 223 : (0, 0.000000) count=0.989605
;	../strtoull.c: 138: if (endptr)
;	genIfx
	tsx
	lda	0x125,x
	ora	0x124,x
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 224 : (12, 15.600000) count=0.989605
;	../strtoull.c: 139: *endptr = (char*)ptr;
;	genAssign
;	genCopy
	lda	0x124,x
	tay
	lda	0x125,x
	tax
	tya
;	Raw cost for generated ic 227 : (9, 14.000000) count=0.742204
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x119,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 228 : (18, 32.000000) count=0.742204
;	genLabel
00140$:
;	Raw cost for generated ic 229 : (0, 0.000000) count=0.989605
;	../strtoull.c: 141: if (range_error)
;	genIfx
	tsx
	lda	0x11d,x
;	genIfxJump : z
	beq	00142$
;	Raw cost for generated ic 230 : (9, 11.600000) count=0.989605
;	../strtoull.c: 143: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 234 : (10, 12.000000) count=0.742204
;	../strtoull.c: 144: return (ULLONG_MAX);
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
;	Raw cost for generated ic 235 : (18, 25.000000) count=0.742204
;	genLabel
00142$:
;	Raw cost for generated ic 236 : (0, 0.000000) count=0.989605
;	../strtoull.c: 147: return (neg ? -ret : ret);
;	genIfx
	tsx
	lda	0x11c,x
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 237 : (9, 11.600000) count=0.989605
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
;	Raw cost for generated ic 238 : (65, 90.000000) count=0.742204
;	genGoto
	jmp	00152$
;	Raw cost for generated ic 240 : (3, 3.000000) count=0.742204
;	genLabel
00151$:
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.247540
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
;	Raw cost for generated ic 242 : (49, 74.000000) count=0.247540
;	genLabel
00152$:
;	Raw cost for generated ic 243 : (0, 0.000000) count=0.989744
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
;	Raw cost for generated ic 244 : (41, 58.000000) count=0.989744
;	genLabel
00146$:
;	Raw cost for generated ic 245 : (0, 0.000000) count=0.989744
;	../strtoull.c: 148: }
;	genEndFunction
;	  adjustStack : cycles stk:138  incdec:76  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x21
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 246 : (16, 30.000000) count=0.989744
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area RODATA
___str_2:
	.ascii "0b"
	.db 0x00
	.area CODE
	.area RODATA
___str_3:
	.ascii "0B"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
