;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstol
	
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
	.globl _wcstoul
	.globl _wcstol
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
;Allocation info for local variables in function 'wcstol'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +18 +2 
;base          Allocated to stack - sp +20 +2 
;nptr          Allocated to stack - sp +14 +2 
;__200000008   Allocated to registers 
;__200000005   Allocated to registers 
;ptr           Allocated to stack - sp +12 +2 
;rptr          Allocated to stack - sp +1 +2 
;u             Allocated to stack - sp +2 +4 
;neg           Allocated to stack - sp +11 +1 
;__200000006   Allocated to stack - sp -3 +4 
;c             Allocated to stack - sp -7 +4 
;__300000009   Allocated to stack - sp -11 +4 
;c             Allocated to stack - sp -15 +4 
;sloc0         Allocated to stack - sp +7 +4 
;sloc1         Allocated to stack - sp +3 +4 
;------------------------------------------------------------
;	../wcstol.c: 40: long int wcstol(const wchar_t *restrict nptr, wchar_t **restrict endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 15 bytes.
_wcstol:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:39  incdec:30  adc:12
	tsx
	txa
	clc
	adc	#0xf3
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcstol.c: 47: while (iswblank (*ptr))
;	genAssign
;	genCopy
	lda	0x10f,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10c,x
;	Raw cost for generated ic 153 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10c,x
	sta	*(DPTR+0)
	lda	0x10d,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
	iny
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
;	Raw cost for generated ic 6 : (36, 64.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	0x107,x
	cmp	#0x20
	bne	00241$
	lda	0x108,x
	bne	00241$
	lda	0x109,x
	bne	00241$
	lda	0x10a,x
	beq	00132$
00241$:
;	Raw cost for generated ic 9 : (34, 40.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	0x107,x
	cmp	#0x09
	bne	00158$
	lda	0x108,x
	bne	00158$
	lda	0x109,x
	bne	00158$
	lda	0x10a,x
	bne	00158$
;	Raw cost for generated ic 11 : (34, 40.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=3.999992
;	genLabel
00132$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=4.333324
;	../wcstol.c: 48: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10c,x
	clc
	adc	#0x04
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	Raw cost for generated ic 27 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 29 : (3, 3.000000) count=4.333324
;	genLabel
00158$:
;	Raw cost for generated ic 154 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x10d,x
	sta	0x108,x
;	Raw cost for generated ic 155 : (13, 20.000000) count=0.999997
;	../wcstol.c: 52: if (*ptr == L'-')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10c,x
	sta	0x107,x
	sta	*(DPTR+0)
	lda	0x10d,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
	iny
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
;	Raw cost for generated ic 36 : (35, 62.000000) count=0.999997
;	genCmpEQorNE
	lda	0x103,x
	cmp	#0x2d
	bne	00105$
	lda	0x104,x
	bne	00105$
	lda	0x105,x
	bne	00105$
	lda	0x106,x
	bne	00105$
;	Raw cost for generated ic 37 : (34, 40.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	../wcstol.c: 54: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 41 : (5, 7.000000) count=0.749996
;	../wcstol.c: 55: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x10c,x
	clc
	adc	#0x04
	sta	0x107,x
	lda	0x10d,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 43 : (17, 24.000000) count=0.749996
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 45 : (3, 3.000000) count=0.749996
;	genLabel
00105$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.249999
;	../wcstol.c: 58: neg = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10b,x
;	Raw cost for generated ic 47 : (6, 9.000000) count=0.249999
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999995
;	../wcstol.c: 61: if (neg && (iswblank (*ptr) || *ptr == L'-' || *ptr == L'+'))
;	genIfx
	tsx
	lda	0x10b,x
;	genIfxJump : z
	bne	00255$
	jmp	00110$
00255$:
;	Raw cost for generated ic 49 : (9, 11.600000) count=0.999995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
	iny
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
;	Raw cost for generated ic 53 : (35, 62.000000) count=0.749996
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	0x103,x
	cmp	#0x20
	bne	00257$
	lda	0x104,x
	bne	00257$
	lda	0x105,x
	bne	00257$
	lda	0x106,x
	beq	00109$
00257$:
;	Raw cost for generated ic 56 : (34, 40.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	lda	0x103,x
	cmp	#0x09
	bne	00261$
	lda	0x104,x
	bne	00261$
	lda	0x105,x
	bne	00261$
	lda	0x106,x
	beq	00109$
00261$:
;	Raw cost for generated ic 58 : (34, 40.400002) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.562497
;	../wcstol.c: 61: if (neg && (iswblank (*ptr) || *ptr == L'-' || *ptr == L'+'))
;	genCmpEQorNE
	lda	0x103,x
	cmp	#0x2d
	bne	00265$
	lda	0x104,x
	bne	00265$
	lda	0x105,x
	bne	00265$
	lda	0x106,x
	beq	00109$
00265$:
;	Raw cost for generated ic 75 : (34, 40.400002) count=0.421873
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.421873
;	genCmpEQorNE
	lda	0x103,x
	cmp	#0x2b
	bne	00110$
	lda	0x104,x
	bne	00110$
	lda	0x105,x
	bne	00110$
	lda	0x106,x
	bne	00110$
;	Raw cost for generated ic 81 : (34, 40.400002) count=0.316405
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.316405
;	genLabel
00109$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.670895
;	../wcstol.c: 63: if (endptr)
;	genIfx
	tsx
	lda	0x113,x
	ora	0x112,x
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 85 : (12, 15.600000) count=0.670895
;	../wcstol.c: 64: *endptr = nptr;
;	genAssign
;	genCopy
	lda	0x112,x
	tay
	lda	0x113,x
	tax
	tya
;	Raw cost for generated ic 88 : (9, 14.000000) count=0.503171
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 89 : (18, 32.000000) count=0.503171
;	genLabel
00108$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.670895
;	../wcstol.c: 65: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00129$
;	Raw cost for generated ic 91 : (10, 13.000000) count=0.670895
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.999995
;	../wcstol.c: 68: u = wcstoul(ptr, &rptr, base);
;	genAddrOf
	tsx
	inx
	txa
	sta	0x102,x
	lda	#0x01
	sta	0x103,x
;	Raw cost for generated ic 93 : (11, 18.000000) count=0.999995
;	genCast
;	genCopy
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.999995
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 95 : (8, 14.000000) count=0.999995
;	genIpush
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 96 : (8, 14.000000) count=0.999995
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999995
;	genCall
;	genSend
	lda	0x106,x
	tay
	lda	0x107,x
	tax
	tya
	jsr	_wcstoul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x107,x
	lda	*(REGTEMP+0)
	sta	0x108,x
	lda	*___SDCC_m6502_ret2
	sta	0x109,x
	lda	*___SDCC_m6502_ret3
	sta	0x10a,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 98 : (38, 64.000000) count=0.999995
;	../wcstol.c: 71: if (rptr == ptr)
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x107,x
	bne	00117$
	lda	0x102,x
	cmp	0x108,x
	bne	00117$
;	Raw cost for generated ic 100 : (22, 27.200001) count=0.999995
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999995
;	../wcstol.c: 73: if (endptr)
;	genIfx
	lda	0x113,x
	ora	0x112,x
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 104 : (11, 13.600000) count=0.749996
;	../wcstol.c: 74: *endptr = nptr;
;	genAssign
;	genCopy
	lda	0x112,x
	tay
	lda	0x113,x
	tax
	tya
;	Raw cost for generated ic 107 : (9, 14.000000) count=0.562497
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 108 : (18, 32.000000) count=0.562497
;	genLabel
00115$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.749996
;	../wcstol.c: 75: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00129$
;	Raw cost for generated ic 110 : (10, 13.000000) count=0.749996
;	genLabel
00117$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.999995
;	../wcstol.c: 78: if (endptr)
;	genIfx
	tsx
	lda	0x113,x
	ora	0x112,x
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 112 : (12, 15.600000) count=0.999995
;	../wcstol.c: 79: *endptr = rptr;
;	genAssign
;	genCopy
	lda	0x112,x
	tay
	lda	0x113,x
	tax
	tya
;	Raw cost for generated ic 115 : (9, 14.000000) count=0.749996
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
;	Raw cost for generated ic 116 : (18, 32.000000) count=0.749996
;	genLabel
00119$:
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.999995
;	../wcstol.c: 82: if (!neg && u > LONG_MAX)
;	genIfx
	tsx
	lda	0x10b,x
;	genIfxJump : z
	bne	00124$
;	Raw cost for generated ic 118 : (9, 11.600000) count=0.999995
;	genCmp
	lda	#0xff
	sec
	sbc	0x103,x
	lda	#0xff
	sbc	0x104,x
	lda	#0xff
	sbc	0x105,x
	lda	#0x7f
	sbc	0x106,x
	bcs	00124$
;	Raw cost for generated ic 121 : (26, 31.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.749996
;	../wcstol.c: 84: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 126 : (10, 12.000000) count=0.562497
;	../wcstol.c: 85: return (LONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x7f
	sty	*___SDCC_m6502_ret3
	jmp	00129$
;	Raw cost for generated ic 127 : (12, 15.000000) count=0.562497
;	genLabel
00124$:
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.999995
;	../wcstol.c: 87: else if (neg && u > -LONG_MIN)
;	genIfx
	tsx
	lda	0x10b,x
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 130 : (9, 11.600000) count=0.999995
;	genCmp
	lda	#0x00
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x80
	sbc	0x106,x
	bcs	00125$
;	Raw cost for generated ic 133 : (26, 31.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 134 : (0, 0.000000) count=0.749996
;	../wcstol.c: 89: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 138 : (10, 12.000000) count=0.562497
;	../wcstol.c: 90: return (LONG_MIN);
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x80
	sty	*___SDCC_m6502_ret3
	jmp	00129$
;	Raw cost for generated ic 139 : (11, 15.000000) count=0.562497
;	genLabel
00125$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.999995
;	../wcstol.c: 93: return (neg ? -u : u);
;	genIfx
	tsx
	lda	0x10b,x
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 142 : (9, 11.600000) count=0.999995
;	genUminus
	lda	#0x00
	sec
	sbc	0x103,x
	sta	0x107,x
	lda	#0x00
	sbc	0x104,x
	sta	0x108,x
	lda	#0x00
	sbc	0x105,x
	sta	0x109,x
	lda	#0x00
	sbc	0x106,x
	sta	0x10a,x
;	Raw cost for generated ic 143 : (33, 46.000000) count=0.749996
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 145 : (3, 3.000000) count=0.749996
;	genLabel
00137$:
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.249999
;	genAssign
;	genCopy
	tsx
	lda	0x106,x
	sta	0x10a,x
	lda	0x105,x
	sta	0x109,x
	lda	0x104,x
	sta	0x108,x
	lda	0x103,x
	sta	0x107,x
;	Raw cost for generated ic 147 : (25, 38.000000) count=0.249999
;	genLabel
00138$:
;	Raw cost for generated ic 148 : (0, 0.000000) count=0.999995
;	genRet
	tsx
	lda	0x10a,x
	sta	*___SDCC_m6502_ret3
	lda	0x109,x
	sta	*___SDCC_m6502_ret2
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 149 : (21, 30.000000) count=0.999995
;	genLabel
00129$:
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.999995
;	../wcstol.c: 94: }
;	genEndFunction
;	  adjustStack : cycles stk:66  incdec:40  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0f
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 151 : (16, 30.000000) count=0.999995
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
