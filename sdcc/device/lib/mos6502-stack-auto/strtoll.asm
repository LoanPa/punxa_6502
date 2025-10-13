;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoll
	
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
	.globl _strtoull
	.globl _strtoll
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
;Allocation info for local variables in function 'strtoll'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +30 +2 
;base          Allocated to stack - sp +32 +2 
;nptr          Allocated to stack - sp +26 +2 
;__200000007   Allocated to registers 
;__200000004   Allocated to registers 
;ptr           Allocated to stack - sp +24 +2 
;rptr          Allocated to stack - sp +1 +2 
;u             Allocated to stack - sp +10 +8 
;neg           Allocated to stack - sp +23 +1 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__300000008   Allocated to registers 
;c             Allocated to registers 
;sloc0         Allocated to stack - sp +21 +2 
;sloc1         Allocated to stack - sp +19 +2 
;sloc2         Allocated to stack - sp +11 +8 
;sloc3         Allocated to stack - sp +3 +8 
;------------------------------------------------------------
;	../strtoll.c: 42: long long int strtoll(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoll
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 27 bytes.
_strtoll:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:75  incdec:54  adc:12
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strtoll.c: 49: while (isblank (*ptr))
;	genAssign
;	genCopy
	lda	0x11b,x
	sta	0x119,x
	lda	0x11a,x
	sta	0x118,x
;	Raw cost for generated ic 158 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 6 : (15, 23.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 10 : (1, 2.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x20
	beq	00132$
;	Raw cost for generated ic 11 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x09
	bne	00158$
;	Raw cost for generated ic 14 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999992
;	genLabel
00132$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=4.333324
;	../strtoll.c: 50: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x118,x
	clc
	adc	#0x01
	sta	0x118,x
	lda	0x119,x
	adc	#0x00
	sta	0x119,x
;	Raw cost for generated ic 30 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 32 : (3, 3.000000) count=4.333324
;	genLabel
00158$:
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x119,x
	sta	0x116,x
;	Raw cost for generated ic 160 : (13, 20.000000) count=0.999997
;	../strtoll.c: 54: if (*ptr == '-')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x118,x
	sta	0x115,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 39 : (15, 23.000000) count=0.999997
;	genCmpEQorNE
	cpx	#0x2d
	bne	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	../strtoll.c: 56: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x117,x
;	Raw cost for generated ic 44 : (6, 9.000000) count=0.749996
;	../strtoll.c: 57: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x118,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x119,x
	adc	#0x00
	sta	0x116,x
;	Raw cost for generated ic 46 : (17, 24.000000) count=0.749996
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 48 : (3, 3.000000) count=0.749996
;	genLabel
00105$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.249999
;	../strtoll.c: 60: neg = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x117,x
;	Raw cost for generated ic 50 : (6, 9.000000) count=0.249999
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999995
;	../strtoll.c: 63: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
;	genIfx
	tsx
	lda	0x117,x
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 52 : (9, 11.600000) count=0.999995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 56 : (14, 21.000000) count=0.749996
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 57 : (1, 2.000000) count=0.749996
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	cpy	#0x20
	beq	00109$
;	Raw cost for generated ic 61 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	cpy	#0x09
	beq	00109$
;	Raw cost for generated ic 64 : (7, 7.600000) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562497
;	../strtoll.c: 63: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
;	genCmpEQorNE
	cmp	#0x2d
	beq	00109$
;	Raw cost for generated ic 81 : (7, 7.600000) count=0.421873
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.421873
;	genCmpEQorNE
	cmp	#0x2b
	bne	00110$
;	Raw cost for generated ic 87 : (7, 7.600000) count=0.316405
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.316405
;	genLabel
00109$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.670895
;	../strtoll.c: 65: if (endptr)
;	genIfx
	tsx
	lda	0x11f,x
	ora	0x11e,x
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 91 : (12, 15.600000) count=0.670895
;	../strtoll.c: 66: *endptr = nptr;
;	genAssign
;	genCopy
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
;	Raw cost for generated ic 94 : (9, 14.000000) count=0.503171
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x11a,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11b,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 95 : (18, 32.000000) count=0.503171
;	genLabel
00108$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.670895
;	../strtoll.c: 67: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00129$
;	Raw cost for generated ic 97 : (18, 25.000000) count=0.670895
;	genLabel
00110$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999995
;	../strtoll.c: 70: u = strtoull(ptr, &rptr, base);
;	genAddrOf
	tsx
	inx
	txa
	sta	0x112,x
	lda	#0x01
	sta	0x113,x
;	Raw cost for generated ic 99 : (11, 18.000000) count=0.999995
;	genCast
;	genCopy
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.999995
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 101 : (8, 14.000000) count=0.999995
;	genIpush
	lda	0x113,x
	pha
	lda	0x112,x
	pha
;	Raw cost for generated ic 102 : (8, 14.000000) count=0.999995
;	Raw cost for generated ic 103 : (0, 0.000000) count=0.999995
;	genCall
;	genSend
	lda	0x114,x
	tay
	lda	0x115,x
	tax
	tya
	jsr	_strtoull
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10f,x
	lda	*(REGTEMP+0)
	sta	0x110,x
	lda	*___SDCC_m6502_ret2
	sta	0x111,x
	lda	*___SDCC_m6502_ret3
	sta	0x112,x
	lda	*___SDCC_m6502_ret4
	sta	0x113,x
	lda	*___SDCC_m6502_ret5
	sta	0x114,x
	lda	*___SDCC_m6502_ret6
	sta	0x115,x
	lda	*___SDCC_m6502_ret7
	sta	0x116,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 104 : (58, 96.000000) count=0.999995
;	../strtoll.c: 73: if (rptr == ptr)
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x115,x
	bne	00117$
	lda	0x102,x
	cmp	0x116,x
	bne	00117$
;	Raw cost for generated ic 106 : (22, 27.200001) count=0.999995
;	skipping generated iCode
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999995
;	../strtoll.c: 75: if (endptr)
;	genIfx
	lda	0x11f,x
	ora	0x11e,x
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 110 : (11, 13.600000) count=0.749996
;	../strtoll.c: 76: *endptr = nptr;
;	genAssign
;	genCopy
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
;	Raw cost for generated ic 113 : (9, 14.000000) count=0.562497
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x11a,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11b,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 114 : (18, 32.000000) count=0.562497
;	genLabel
00115$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.749996
;	../strtoll.c: 77: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	jmp	00129$
;	Raw cost for generated ic 116 : (18, 25.000000) count=0.749996
;	genLabel
00117$:
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.999995
;	../strtoll.c: 80: if (endptr)
;	genIfx
	tsx
	lda	0x11f,x
	ora	0x11e,x
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 118 : (12, 15.600000) count=0.999995
;	../strtoll.c: 81: *endptr = rptr;
;	genAssign
;	genCopy
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
;	Raw cost for generated ic 121 : (9, 14.000000) count=0.749996
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x101,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 122 : (18, 32.000000) count=0.749996
;	genLabel
00119$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.999995
;	../strtoll.c: 84: if (!neg && u > LLONG_MAX)
;	genIfx
	tsx
	lda	0x117,x
;	genIfxJump : z
	bne	00124$
;	Raw cost for generated ic 124 : (9, 11.600000) count=0.999995
;	genCmp
	lda	#0xff
	sec
	sbc	0x10b,x
	lda	#0xff
	sbc	0x10c,x
	lda	#0xff
	sbc	0x10d,x
	lda	#0xff
	sbc	0x10e,x
	lda	#0xff
	sbc	0x10f,x
	lda	#0xff
	sbc	0x110,x
	lda	#0xff
	sbc	0x111,x
	lda	#0x7f
	sbc	0x112,x
	bcs	00124$
;	Raw cost for generated ic 127 : (46, 55.599998) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 128 : (0, 0.000000) count=0.749996
;	../strtoll.c: 86: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 132 : (10, 12.000000) count=0.562497
;	../strtoll.c: 87: return (LLONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	ldy	#0x7f
	sty	*___SDCC_m6502_ret7
	jmp	00129$
;	Raw cost for generated ic 133 : (20, 27.000000) count=0.562497
;	genLabel
00124$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.999995
;	../strtoll.c: 89: else if (neg && u > -LLONG_MIN)
;	genIfx
	tsx
	lda	0x117,x
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 136 : (9, 11.600000) count=0.999995
;	genIfx
	lda	0x112,x
	ora	0x111,x
	ora	0x110,x
	ora	0x10f,x
	ora	0x10e,x
	ora	0x10d,x
	ora	0x10c,x
	ora	0x10b,x
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 139 : (29, 37.599998) count=0.749996
;	../strtoll.c: 91: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 143 : (10, 12.000000) count=0.562497
;	../strtoll.c: 92: return (LLONG_MIN);
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	ldy	#0x80
	sty	*___SDCC_m6502_ret7
	jmp	00129$
;	Raw cost for generated ic 144 : (19, 27.000000) count=0.562497
;	genLabel
00125$:
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.999995
;	../strtoll.c: 95: return (neg ? -u : u);
;	genIfx
	tsx
	lda	0x117,x
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 147 : (9, 11.600000) count=0.999995
;	genUminus
	lda	#0x00
	sec
	sbc	0x10b,x
	sta	0x103,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x104,x
	lda	#0x00
	sbc	0x10d,x
	sta	0x105,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x106,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x107,x
	lda	#0x00
	sbc	0x110,x
	sta	0x108,x
	lda	#0x00
	sbc	0x111,x
	sta	0x109,x
	lda	#0x00
	sbc	0x112,x
	sta	0x10a,x
;	Raw cost for generated ic 148 : (65, 90.000000) count=0.749996
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 150 : (3, 3.000000) count=0.749996
;	genLabel
00137$:
;	Raw cost for generated ic 151 : (0, 0.000000) count=0.249999
;	genAssign
;	genCopy
	tsx
	lda	0x112,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x109,x
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
;	Raw cost for generated ic 152 : (49, 74.000000) count=0.249999
;	genLabel
00138$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.999995
;	genRet
	tsx
	lda	0x10a,x
	sta	*___SDCC_m6502_ret7
	lda	0x109,x
	sta	*___SDCC_m6502_ret6
	lda	0x108,x
	sta	*___SDCC_m6502_ret5
	lda	0x107,x
	sta	*___SDCC_m6502_ret4
	lda	0x106,x
	sta	*___SDCC_m6502_ret3
	lda	0x105,x
	sta	*___SDCC_m6502_ret2
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 154 : (41, 58.000000) count=0.999995
;	genLabel
00129$:
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.999995
;	../strtoll.c: 96: }
;	genEndFunction
;	  adjustStack : cycles stk:114  incdec:64  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x1b
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 156 : (16, 30.000000) count=0.999995
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
