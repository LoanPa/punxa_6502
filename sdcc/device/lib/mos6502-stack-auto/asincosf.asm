;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module asincosf
	
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
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;x             Allocated to stack - sp +29 +4 
;isacos        Allocated to stack - sp +33 +1 
;y             Allocated to stack - sp +9 +4 
;g             Allocated to stack - sp +5 +4 
;r             Allocated to stack - sp +1 +4 
;i             Allocated to stack - sp +26 +1 
;quartPI       Allocated to stack - sp +25 +1 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;------------------------------------------------------------
;	../asincosf.c: 47: float asincosf(float x, bool isacos)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 26 bytes.
_asincosf:
;	  adjustStack : cycles stk:78  incdec:56  adc:12
	tsx
	txa
	clc
	adc	#0xe6
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../asincosf.c: 51: bool quartPI = isacos;
;	genAssign
;	genCopy
	lda	0x121,x
	sta	0x119,x
;	Raw cost for generated ic 2 : (6, 9.000000) count=1.000000
;	../asincosf.c: 56: y = fabsf(x);
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 3 : (16, 28.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 4 : (29, 50.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x10c,x
	lda	0x117,x
	sta	0x10b,x
	lda	0x116,x
	sta	0x10a,x
	lda	0x115,x
	sta	0x109,x
;	Raw cost for generated ic 5 : (21, 32.000000) count=1.000000
;	../asincosf.c: 57: if (y < EPS)
;	genIpush
	lda	#0x39
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 120 : (10, 18.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 121 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 122 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 7 : (7, 7.600000) count=1.000000
;	../asincosf.c: 59: r = y;
;	genAssign
;	genCopy
	lda	0x118,x
	sta	0x104,x
	lda	0x117,x
	sta	0x103,x
	lda	0x116,x
	sta	0x102,x
	lda	0x115,x
	sta	0x101,x
;	Raw cost for generated ic 10 : (24, 36.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 11 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.250000
;	../asincosf.c: 63: if (y > 0.5)
;	genIpush
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 123 : (17, 30.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 124 : (8, 16.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 125 : (11, 20.000000) count=0.250000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00158$
	jmp	00104$
00158$:
;	Raw cost for generated ic 14 : (7, 7.600000) count=0.250000
;	../asincosf.c: 65: quartPI = !isacos;
;	genNot
	lda	0x119,x
	eor	#0x01
	sta	0x119,x
;	Raw cost for generated ic 17 : (8, 11.000000) count=0.187500
;	../asincosf.c: 66: if (y > 1.0)
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 126 : (16, 28.000000) count=0.187500
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 127 : (10, 18.000000) count=0.187500
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 128 : (11, 20.000000) count=0.187500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 20 : (7, 7.600000) count=0.187500
;	../asincosf.c: 68: errno = EDOM;
;	genAssign
;	genAssignLit
	ldy	#0x21
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 24 : (10, 12.000000) count=0.140625
;	../asincosf.c: 69: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00117$
;	Raw cost for generated ic 25 : (9, 13.000000) count=0.140625
;	genLabel
00102$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.187500
;	../asincosf.c: 71: g = (0.5 - y) + 0.5;
;	genIpush
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 129 : (17, 30.000000) count=0.187500
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 130 : (10, 18.000000) count=0.187500
;	../asincosf.c: 72: g = ldexpf(g, -1);
;	genCall
	jsr	___fssub
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 131 : (30, 50.000000) count=0.187500
;	genIpush
	lda	#0xff
	pha
	pha
;	Raw cost for generated ic 29 : (4, 8.000000) count=0.187500
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 30 : (16, 28.000000) count=0.187500
;	genCall
	jsr	_ldexpf
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x117,x
	lda	*(REGTEMP+0)
	sta	0x118,x
	lda	*___SDCC_m6502_ret2
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 31 : (30, 50.000000) count=0.187500
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x108,x
	lda	0x113,x
	sta	0x107,x
	lda	0x112,x
	sta	0x106,x
	lda	0x111,x
	sta	0x105,x
;	Raw cost for generated ic 32 : (24, 36.000000) count=0.187500
;	../asincosf.c: 73: y = sqrtf(g);
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 33 : (16, 28.000000) count=0.187500
;	genCall
	jsr	_sqrtf
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 34 : (29, 50.000000) count=0.187500
;	../asincosf.c: 74: y = -(y + y);
;	genIpush
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 132 : (13, 24.000000) count=0.187500
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 133 : (16, 28.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 134 : (30, 50.000000) count=0.187500
;	genUminus
;	genUminusFloat
	lda	0x111,x
	sta	0x109,x
	lda	0x112,x
	sta	0x10a,x
	lda	0x113,x
	sta	0x10b,x
	lda	0x114,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 37 : (26, 38.000000) count=0.187500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 39 : (3, 3.000000) count=0.187500
;	genLabel
00104$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.062500
;	../asincosf.c: 78: g = y * y;
;	genIpush
	tsx
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 135 : (17, 30.000000) count=0.062500
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 136 : (16, 28.000000) count=0.062500
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 137 : (30, 50.000000) count=0.062500
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.250000
;	../asincosf.c: 80: r = y + y * ((P(g) * g) / Q(g));
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
;	Raw cost for generated ic 138 : (17, 30.000000) count=0.250000
;	genIpush
	lda	#0xbf
	pha
	lda	#0x01
	pha
	lda	#0x20
	pha
	lda	#0x65
	pha
;	Raw cost for generated ic 139 : (12, 20.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 140 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x6f
	pha
	lda	#0x16
	pha
	lda	#0x6b
	pha
;	Raw cost for generated ic 141 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 142 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 143 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 144 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 145 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 146 : (30, 50.000000) count=0.250000
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x118,x
	lda	0x107,x
	sta	0x117,x
	lda	0x106,x
	sta	0x116,x
	lda	0x105,x
	sta	0x115,x
;	Raw cost for generated ic 47 : (24, 36.000000) count=0.250000
;	genIpush
	lda	#0xc0
	pha
	lda	#0xb1
	pha
	lda	#0x8d
	pha
	lda	#0x0b
	pha
;	Raw cost for generated ic 147 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 148 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 149 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 150 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 151 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 152 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0x40
	pha
	lda	#0xb3
	pha
	lda	#0x50
	pha
	lda	#0xf0
	pha
;	Raw cost for generated ic 153 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 154 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 155 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 156 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 157 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 158 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 159 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 160 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 161 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 162 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 163 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 164 : (30, 50.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../asincosf.c: 82: i = quartPI;
;	genCast
;	genCopy
	tsx
	lda	0x119,x
	sta	0x11a,x
;	Raw cost for generated ic 56 : (7, 11.000000) count=1.000000
;	../asincosf.c: 83: if (isacos)
;	genIfx
	lda	0x121,x
;	genIfxJump : z
	bne	00163$
	jmp	00115$
00163$:
;	Raw cost for generated ic 58 : (8, 9.600000) count=1.000000
;	../asincosf.c: 85: if (x < 0.0)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 165 : (6, 14.000000) count=0.750000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 166 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 167 : (11, 20.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00165$
	jmp	00110$
00165$:
;	Raw cost for generated ic 62 : (7, 7.600000) count=0.750000
;	../asincosf.c: 86: r = (b[i] + r) + b[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562500
;	genCast
;	genCopy
	lda	0x11a,x
	ldx	#0x00
;	Raw cost for generated ic 66 : (5, 6.000000) count=0.562500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 67 : (10, 20.000000) count=0.562500
;	genAssign
;	genCopy
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_b_10000_26 savea=0
	clc
	adc	#<(_asincosf_b_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_b_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10f,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x110,x
;	Raw cost for generated ic 69 : (55, 94.000000) count=0.562500
;	genIpush
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 168 : (17, 30.000000) count=0.562500
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 169 : (16, 28.000000) count=0.562500
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 170 : (30, 50.000000) count=0.562500
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 171 : (16, 28.000000) count=0.562500
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 172 : (16, 28.000000) count=0.562500
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 173 : (30, 50.000000) count=0.562500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 78 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.187500
;	../asincosf.c: 88: r = (a[i] - r) + a[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.187500
;	genCast
;	genCopy
	tsx
	lda	0x11a,x
	ldx	#0x00
;	Raw cost for generated ic 81 : (6, 8.000000) count=0.187500
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 82 : (10, 20.000000) count=0.187500
;	genAssign
;	genCopy
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.187500
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_a_10000_26 savea=0
	clc
	adc	#<(_asincosf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10f,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x110,x
;	Raw cost for generated ic 84 : (55, 94.000000) count=0.187500
;	genIpush
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 174 : (17, 30.000000) count=0.187500
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 175 : (16, 28.000000) count=0.187500
;	genCall
	jsr	___fssub
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 176 : (30, 50.000000) count=0.187500
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 177 : (16, 28.000000) count=0.187500
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 178 : (16, 28.000000) count=0.187500
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 179 : (30, 50.000000) count=0.187500
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 94 : (3, 3.000000) count=0.187500
;	genLabel
00115$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.250000
;	../asincosf.c: 92: r = (a[i] + r) + a[i];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.250000
;	genCast
;	genCopy
	tsx
	lda	0x11a,x
	ldx	#0x00
;	Raw cost for generated ic 97 : (6, 8.000000) count=0.250000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 98 : (10, 20.000000) count=0.250000
;	genAssign
;	genCopy
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.250000
;	genPointerGet
;	  setupDPTR - off=0 remat=_asincosf_a_10000_26 savea=0
	clc
	adc	#<(_asincosf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_asincosf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10f,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x110,x
;	Raw cost for generated ic 100 : (55, 94.000000) count=0.250000
;	genIpush
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 180 : (17, 30.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 181 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 182 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 183 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 184 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 185 : (30, 50.000000) count=0.250000
;	../asincosf.c: 93: if (x < 0.0)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 186 : (6, 14.000000) count=0.250000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 187 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 188 : (11, 20.000000) count=0.250000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00116$
;	Raw cost for generated ic 110 : (7, 7.600000) count=0.250000
;	../asincosf.c: 94: r = -r;
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 113 : (8, 11.000000) count=0.187500
;	genLabel
00116$:
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	../asincosf.c: 96: return r;
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 117 : (21, 30.000000) count=1.000000
;	genLabel
00117$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	../asincosf.c: 97: }
;	genEndFunction
;	  adjustStack : cycles stk:110  incdec:62  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x1a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 119 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
_asincosf_a_10000_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area CODE
	.area RODATA
_asincosf_b_10000_26:
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0xdb, #0x0f, #0x49, #0x3f	;  7.853982e-01
	.area CODE
	.area XINIT
	.area CABS    (ABS)
