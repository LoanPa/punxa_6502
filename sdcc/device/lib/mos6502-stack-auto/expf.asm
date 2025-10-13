;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module expf
	
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
	.globl _ldexpf
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x             Allocated to stack - sp +26 +4 
;n             Allocated to registers a x 
;xn            Allocated to stack - sp +18 +4 
;g             Allocated to stack - sp +14 +4 
;r             Allocated to stack - sp +5 +4 
;z             Allocated to stack - sp +6 +4 
;y             Allocated to stack - sp +1 +4 
;sign          Allocated to stack - sp +23 +1 
;sloc0         Allocated to stack - sp +19 +4 
;sloc1         Allocated to stack - sp +17 +2 
;sloc2         Allocated to stack - sp +13 +4 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../expf.c: 331: float expf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 23 bytes.
_expf:
;	  adjustStack : cycles stk:69  incdec:50  adc:12
	tsx
	txa
	clc
	adc	#0xe9
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../expf.c: 337: if(x>=0.0)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 92 : (6, 14.000000) count=1.000000
;	genIpush
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
;	Raw cost for generated ic 93 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 94 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	../expf.c: 338: { y=x;  sign=0; }
;	genAssign
;	genCopy
	lda	0x11d,x
	sta	0x104,x
	lda	0x11c,x
	sta	0x103,x
	lda	0x11b,x
	sta	0x102,x
	lda	0x11a,x
	sta	0x101,x
;	Raw cost for generated ic 6 : (24, 36.000000) count=0.750000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x117,x
;	Raw cost for generated ic 7 : (5, 7.000000) count=0.750000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 8 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.250000
;	../expf.c: 340: { y=-x; sign=1; }
;	genUminus
;	genUminusFloat
	tsx
	lda	0x11a,x
	sta	0x101,x
	lda	0x11b,x
	sta	0x102,x
	lda	0x11c,x
	sta	0x103,x
	lda	0x11d,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 10 : (27, 40.000000) count=0.250000
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x117,x
;	Raw cost for generated ic 12 : (5, 7.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../expf.c: 342: if(y<EXPEPS) return 1.0;
;	genIpush
	lda	#0x33
	pha
	lda	#0xd6
	pha
	lda	#0xbf
	pha
	lda	#0x95
	pha
;	Raw cost for generated ic 95 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 96 : (17, 30.000000) count=1.000000
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
;	Raw cost for generated ic 97 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00118$
;	Raw cost for generated ic 18 : (14, 17.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../expf.c: 344: if(y>BIGX)
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
;	Raw cost for generated ic 98 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x42
	pha
	lda	#0xb1
	pha
	lda	#0x72
	pha
	lda	#0x18
	pha
;	Raw cost for generated ic 99 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 100 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 21 : (7, 7.600000) count=1.000000
;	../expf.c: 346: if(sign)
;	genIfx
	lda	0x117,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 24 : (8, 9.600000) count=0.750000
;	../expf.c: 348: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 28 : (10, 12.000000) count=0.562500
;	../expf.c: 350: ;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	jmp	00118$
;	Raw cost for generated ic 29 : (12, 15.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.750000
;	../expf.c: 354: return 0.0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00118$
;	Raw cost for generated ic 32 : (10, 13.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../expf.c: 358: z=y*K1;
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
;	Raw cost for generated ic 101 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0xb8
	pha
	lda	#0xaa
	pha
	lda	#0x3b
	pha
;	Raw cost for generated ic 102 : (12, 20.000000) count=1.000000
;	../expf.c: 359: n=z;
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 103 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 104 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 105 : (19, 34.000000) count=1.000000
;	../expf.c: 361: if(n<0) --n;
;	genCmp
	sec
	sbc	#0x00
	bvc	00178$
	bpl	00177$
	bmi	00112$
00178$:
	bpl	00112$
00177$:
;	Raw cost for generated ic 39 : (14, 17.400000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x111,x
	sec
	sbc	#0x01
	sta	0x111,x
	lda	0x112,x
	sbc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 43 : (17, 24.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	../expf.c: 362: if(z-n>=0.5) ++n;
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	jsr	___sint2fs
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
;	Raw cost for generated ic 107 : (34, 56.000000) count=1.000000
;	genIpush
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 108 : (13, 24.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 109 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 110 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 111 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 112 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 113 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 49 : (7, 7.600000) count=1.000000
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 52 : (17, 24.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../expf.c: 363: xn=n;
;	Raw cost for generated ic 114 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	jsr	___sint2fs
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
;	Raw cost for generated ic 115 : (34, 56.000000) count=1.000000
;	../expf.c: 364: g=((y-xn*C1))-xn*C2;
;	genIpush
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 116 : (13, 24.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x31
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
;	Raw cost for generated ic 117 : (12, 20.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 118 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 119 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 120 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 121 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 122 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0xb9
	pha
	lda	#0x5e
	pha
	lda	#0x80
	pha
	lda	#0x83
	pha
;	Raw cost for generated ic 123 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 124 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 125 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 126 : (16, 28.000000) count=1.000000
;	../expf.c: 365: z=g*g;
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 127 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 128 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 129 : (16, 28.000000) count=1.000000
;	../expf.c: 366: r=P(z)*g;
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 130 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 131 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3b
	pha
	lda	#0x88
	pha
	lda	#0x53
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 132 : (12, 20.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 133 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3e
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 134 : (10, 18.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 135 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 136 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 137 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 138 : (16, 28.000000) count=1.000000
;	../expf.c: 367: r=0.5+(r/(Q(z)-r));
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 139 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 140 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3d
	pha
	lda	#0x4c
	pha
	lda	#0xbf
	pha
	lda	#0x5b
	pha
;	Raw cost for generated ic 141 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 142 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 143 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 144 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 145 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 146 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 147 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 148 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 149 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 150 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 151 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 152 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 153 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 154 : (30, 50.000000) count=1.000000
;	../expf.c: 369: n++;
;	genPlus
;	  genPlusInc
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	clc
	adc	#0x01
	bcc	00182$
	inx
00182$:
;	Raw cost for generated ic 75 : (15, 22.600000) count=1.000000
;	../expf.c: 370: z=ldexpf(r, n);
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 77 : (5, 12.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 78 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_ldexpf
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
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 79 : (30, 50.000000) count=1.000000
;	../expf.c: 371: if(sign)
;	genIfx
	lda	0x117,x
;	genIfxJump : z
	beq	00116$
;	Raw cost for generated ic 81 : (8, 9.600000) count=1.000000
;	../expf.c: 372: return 1.0/z;
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 155 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 156 : (10, 18.000000) count=0.750000
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
;	Raw cost for generated ic 157 : (30, 50.000000) count=0.750000
;	genRet
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
	jmp	00118$
;	Raw cost for generated ic 85 : (23, 31.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../expf.c: 374: return z;
;	genRet
	tsx
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 88 : (21, 30.000000) count=1.000000
;	genLabel
00118$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	../expf.c: 375: }
;	genEndFunction
;	  adjustStack : cycles stk:98  incdec:56  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x17
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 91 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
