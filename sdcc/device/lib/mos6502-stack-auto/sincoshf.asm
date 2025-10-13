;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sincoshf
	
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
	.globl _sincoshf
	.globl _expf
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;x             Allocated to stack - sp +28 +4 
;iscosh        Allocated to stack - sp +32 +1 
;y             Allocated to stack - sp +9 +4 
;w             Allocated to stack - sp +5 +4 
;z             Allocated to stack - sp +1 +4 
;sign          Allocated to stack - sp +25 +1 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;------------------------------------------------------------
;	../sincoshf.c: 56: float sincoshf(float x, bool iscosh)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_sincoshf:
;	  adjustStack : cycles stk:75  incdec:54  adc:12
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../sincoshf.c: 61: if (x<0.0) { y=-x; sign=1; }
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 91 : (6, 14.000000) count=1.000000
;	genIpush
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
;	Raw cost for generated ic 92 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 93 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	0x11c,x
	sta	0x109,x
	lda	0x11d,x
	sta	0x10a,x
	lda	0x11e,x
	sta	0x10b,x
	lda	0x11f,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 6 : (26, 38.000000) count=0.750000
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x119,x
;	Raw cost for generated ic 8 : (5, 7.000000) count=0.750000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	../sincoshf.c: 62: else { y=x;  sign=0; }
;	genAssign
;	genCopy
	tsx
	lda	0x11f,x
	sta	0x10c,x
	lda	0x11e,x
	sta	0x10b,x
	lda	0x11d,x
	sta	0x10a,x
	lda	0x11c,x
	sta	0x109,x
;	Raw cost for generated ic 11 : (25, 38.000000) count=0.250000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x119,x
;	Raw cost for generated ic 12 : (5, 7.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 64: if ((y>1.0) || iscosh)
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 94 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 95 : (10, 18.000000) count=1.000000
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
;	Raw cost for generated ic 96 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00117$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	genIfx
	lda	0x120,x
;	genIfxJump : z
	bne	00170$
	jmp	00118$
00170$:
;	Raw cost for generated ic 18 : (8, 9.600000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.812500
;	../sincoshf.c: 66: if(y>YBAR)
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 97 : (17, 30.000000) count=0.812500
;	genIpush
	lda	#0x41
	pha
	lda	#0x10
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 98 : (10, 18.000000) count=0.812500
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
;	Raw cost for generated ic 99 : (11, 20.000000) count=0.812500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00172$
	jmp	00110$
00172$:
;	Raw cost for generated ic 22 : (7, 7.600000) count=0.812500
;	../sincoshf.c: 68: w=y-K1;
;	genIpush
	lda	#0x3f
	pha
	lda	#0x31
	pha
	lda	#0x73
	pha
	lda	#0x00
	pha
;	Raw cost for generated ic 100 : (12, 20.000000) count=0.609375
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 101 : (16, 28.000000) count=0.609375
;	../sincoshf.c: 69: if (w>WMAX)
;	genCall
	jsr	___fssub
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
	lda	*___SDCC_m6502_ret2
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 102 : (30, 50.000000) count=0.609375
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 103 : (16, 28.000000) count=0.609375
;	genIpush
	lda	#0x42
	pha
	lda	#0x33
	pha
	lda	#0xbd
	pha
	lda	#0xcf
	pha
;	Raw cost for generated ic 104 : (12, 20.000000) count=0.609375
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
;	Raw cost for generated ic 105 : (11, 20.000000) count=0.609375
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 28 : (7, 7.600000) count=0.609375
;	../sincoshf.c: 71: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 32 : (10, 12.000000) count=0.457031
;	../sincoshf.c: 72: z=HUGE_VALF;
;	genAssign
;	genAssignLit
	lda	#0xff
	sta	0x101,x
	sta	0x102,x
	lda	#0x7f
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 33 : (16, 24.000000) count=0.457031
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 34 : (3, 3.000000) count=0.457031
;	genLabel
00105$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.152344
;	../sincoshf.c: 76: z=expf(w);
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
;	Raw cost for generated ic 36 : (17, 30.000000) count=0.152344
;	genCall
	jsr	_expf
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
;	Raw cost for generated ic 37 : (29, 50.000000) count=0.152344
;	../sincoshf.c: 77: z+=K3*z;
;	genIpush
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 106 : (13, 24.000000) count=0.152344
;	genIpush
	lda	#0x37
	pha
	lda	#0x68
	pha
	lda	#0x08
	pha
	lda	#0x97
	pha
;	Raw cost for generated ic 107 : (12, 20.000000) count=0.152344
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
;	Raw cost for generated ic 108 : (30, 50.000000) count=0.152344
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 109 : (16, 28.000000) count=0.152344
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 110 : (16, 28.000000) count=0.152344
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
;	Raw cost for generated ic 111 : (30, 50.000000) count=0.152344
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 43 : (3, 3.000000) count=0.152344
;	genLabel
00110$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.203125
;	../sincoshf.c: 82: z=expf(y);
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 45 : (17, 30.000000) count=0.203125
;	genCall
	jsr	_expf
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
;	Raw cost for generated ic 46 : (29, 50.000000) count=0.203125
;	../sincoshf.c: 83: w=1.0/z;
;	genIpush
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 112 : (13, 24.000000) count=0.203125
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 113 : (10, 18.000000) count=0.203125
;	genCall
	jsr	___fsdiv
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
	lda	*___SDCC_m6502_ret2
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 114 : (30, 50.000000) count=0.203125
;	genAssign
;	genCopy
	lda	0x118,x
	sta	0x108,x
	lda	0x117,x
	sta	0x107,x
	lda	0x116,x
	sta	0x106,x
	lda	0x115,x
	sta	0x105,x
;	Raw cost for generated ic 49 : (24, 36.000000) count=0.203125
;	../sincoshf.c: 84: if(!iscosh) w=-w;
;	genIfx
	lda	0x120,x
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 50 : (8, 9.600000) count=0.203125
;	genUminus
;	genUminusFloat
	lda	0x115,x
	sta	0x105,x
	lda	0x116,x
	sta	0x106,x
	lda	0x117,x
	sta	0x107,x
	lda	0x118,x
	eor	#0x80
	sta	0x108,x
;	Raw cost for generated ic 53 : (26, 38.000000) count=0.152344
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.203125
;	../sincoshf.c: 85: z=(z+w)*0.5;
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
;	Raw cost for generated ic 115 : (17, 30.000000) count=0.203125
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 116 : (16, 28.000000) count=0.203125
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
;	Raw cost for generated ic 117 : (30, 50.000000) count=0.203125
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 118 : (16, 28.000000) count=0.203125
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 119 : (8, 16.000000) count=0.203125
;	genCall
	jsr	___fsmul
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
;	Raw cost for generated ic 120 : (30, 50.000000) count=0.203125
;	genLabel
00111$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.812500
;	../sincoshf.c: 87: if(sign) z=-z;
;	genIfx
	tsx
	lda	0x119,x
;	genIfxJump : z
	bne	00178$
	jmp	00119$
00178$:
;	Raw cost for generated ic 60 : (9, 11.600000) count=0.812500
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 63 : (8, 11.000000) count=0.609375
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 66 : (3, 3.000000) count=0.609375
;	genLabel
00118$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.187500
;	../sincoshf.c: 91: if (y<EPS)
;	genIpush
	lda	#0x39
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 121 : (10, 18.000000) count=0.187500
;	genIpush
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 122 : (17, 30.000000) count=0.187500
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
;	Raw cost for generated ic 123 : (11, 20.000000) count=0.187500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 69 : (7, 7.600000) count=0.187500
;	../sincoshf.c: 92: z=x;
;	genAssign
;	genCopy
	lda	0x11f,x
	sta	0x104,x
	lda	0x11e,x
	sta	0x103,x
	lda	0x11d,x
	sta	0x102,x
	lda	0x11c,x
	sta	0x101,x
;	Raw cost for generated ic 72 : (24, 36.000000) count=0.140625
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.140625
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.046875
;	../sincoshf.c: 95: z=x*x;
;	genIpush
	tsx
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
;	Raw cost for generated ic 124 : (17, 30.000000) count=0.046875
;	genIpush
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
;	Raw cost for generated ic 125 : (16, 28.000000) count=0.046875
;	../sincoshf.c: 96: z=x+x*z*P(z)/Q(z);
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
;	Raw cost for generated ic 126 : (30, 50.000000) count=0.046875
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 127 : (16, 28.000000) count=0.046875
;	genIpush
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
;	Raw cost for generated ic 128 : (16, 28.000000) count=0.046875
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
	lda	*___SDCC_m6502_ret2
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 129 : (30, 50.000000) count=0.046875
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 130 : (16, 28.000000) count=0.046875
;	genIpush
	lda	#0xbe
	pha
	lda	#0x42
	pha
	lda	#0xe6
	pha
	lda	#0xea
	pha
;	Raw cost for generated ic 131 : (12, 20.000000) count=0.046875
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
;	Raw cost for generated ic 132 : (30, 50.000000) count=0.046875
;	genIpush
	lda	#0xc0
	pha
	lda	#0xe4
	pha
	lda	#0x69
	pha
	lda	#0xf0
	pha
;	Raw cost for generated ic 133 : (12, 20.000000) count=0.046875
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 134 : (16, 28.000000) count=0.046875
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
;	Raw cost for generated ic 135 : (30, 50.000000) count=0.046875
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 136 : (16, 28.000000) count=0.046875
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 137 : (16, 28.000000) count=0.046875
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
;	Raw cost for generated ic 138 : (30, 50.000000) count=0.046875
;	genIpush
	lda	#0xc2
	pha
	lda	#0x2b
	pha
	lda	#0x4f
	pha
	lda	#0x93
	pha
;	Raw cost for generated ic 139 : (12, 20.000000) count=0.046875
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 140 : (16, 28.000000) count=0.046875
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
;	Raw cost for generated ic 141 : (30, 50.000000) count=0.046875
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 142 : (16, 28.000000) count=0.046875
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 143 : (16, 28.000000) count=0.046875
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
;	Raw cost for generated ic 144 : (30, 50.000000) count=0.046875
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 145 : (16, 28.000000) count=0.046875
;	genIpush
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
;	Raw cost for generated ic 146 : (16, 28.000000) count=0.046875
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
;	Raw cost for generated ic 147 : (30, 50.000000) count=0.046875
;	genLabel
00119$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 99: return z;
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 88 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 89 : (0, 0.000000) count=1.000000
;	../sincoshf.c: 100: }
;	genEndFunction
;	  adjustStack : cycles stk:106  incdec:60  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x19
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 90 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
