;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module tancotf
	
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
	.globl _tancotf
	.globl _fabsf
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
;Allocation info for local variables in function 'tancotf'
;------------------------------------------------------------
;x             Allocated to stack - sp +29 +4 
;iscotan       Allocated to stack - sp +33 +1 
;f             Allocated to stack - sp +23 +4 
;g             Allocated to stack - sp +19 +4 
;xn            Allocated to stack - sp +15 +4 
;xnum          Allocated to stack - sp +5 +4 
;xden          Allocated to stack - sp +1 +4 
;n             Allocated to stack - sp +25 +2 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../tancotf.c: 53: float tancotf(float x, bool iscotan)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 26 bytes.
_tancotf:
;	  adjustStack : cycles stk:78  incdec:56  adc:12
	tsx
	txa
	clc
	adc	#0xe6
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 2 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 3 : (29, 50.000000) count=1.000000
;	genIpush
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 89 : (13, 24.000000) count=1.000000
;	genIpush
	lda	#0x45
	pha
	lda	#0xc9
	pha
	lda	#0x08
	pha
	lda	#0x00
	pha
;	Raw cost for generated ic 90 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 91 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 5 : (7, 7.600000) count=1.000000
;	../tancotf.c: 60: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 9 : (10, 12.000000) count=0.750000
;	../tancotf.c: 61: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00115$
;	Raw cost for generated ic 10 : (9, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
;	genIpush
	tsx
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 92 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x22
	pha
	lda	#0xf9
	pha
	lda	#0x83
	pha
;	Raw cost for generated ic 93 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 94 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 95 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 96 : (6, 14.000000) count=1.000000
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
	beq	00117$
;	Raw cost for generated ic 14 : (7, 7.600000) count=1.000000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0x3f
	sta	0x114,x
;	Raw cost for generated ic 15 : (16, 24.000000) count=0.750000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	lda	#0xbf
	sta	0x114,x
;	Raw cost for generated ic 18 : (17, 26.000000) count=0.250000
;	genLabel
00118$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genIpush
	tsx
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 98 : (17, 30.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 99 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 100 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 101 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 102 : (19, 34.000000) count=1.000000
;	../tancotf.c: 66: xn=n;
;	Raw cost for generated ic 103 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x119,x
	tay
	lda	0x11a,x
	tax
	tya
	jsr	___sint2fs
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
;	Raw cost for generated ic 104 : (33, 54.000000) count=1.000000
;	../tancotf.c: 68: xnum=(int)x;
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 105 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
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
;	Raw cost for generated ic 106 : (13, 24.000000) count=1.000000
;	Raw cost for generated ic 107 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___sint2fs
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
;	Raw cost for generated ic 108 : (24, 40.000000) count=1.000000
;	../tancotf.c: 69: xden=x-xnum;
;	genIpush
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 109 : (13, 24.000000) count=1.000000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 110 : (16, 28.000000) count=1.000000
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
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
;	Raw cost for generated ic 111 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 112 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0xc9
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 113 : (10, 18.000000) count=1.000000
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
;	Raw cost for generated ic 114 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 115 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 116 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 117 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 118 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 119 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 120 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 121 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x39
	pha
	lda	#0xfd
	pha
	lda	#0xaa
	pha
	lda	#0x22
	pha
;	Raw cost for generated ic 122 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 123 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 124 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 125 : (16, 28.000000) count=1.000000
;	../tancotf.c: 72: if (fabsf(f) < EPS)
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 126 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 36 : (16, 28.000000) count=1.000000
;	genCall
	jsr	_fabsf
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 37 : (29, 50.000000) count=1.000000
;	genIpush
	lda	#0x39
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 127 : (10, 18.000000) count=1.000000
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
;	Raw cost for generated ic 129 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 39 : (7, 7.600000) count=1.000000
;	../tancotf.c: 74: xnum = f;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10a,x
	sta	0x106,x
	lda	0x109,x
	sta	0x105,x
;	Raw cost for generated ic 42 : (24, 36.000000) count=0.750000
;	../tancotf.c: 75: xden = 1.0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	lda	#0x80
	sta	0x103,x
	lda	#0x3f
	sta	0x104,x
;	Raw cost for generated ic 43 : (18, 26.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 44 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.250000
;	../tancotf.c: 79: g = f*f;
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
;	Raw cost for generated ic 130 : (17, 30.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 131 : (16, 28.000000) count=0.250000
;	../tancotf.c: 80: xnum = P(f,g);
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
;	Raw cost for generated ic 132 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 133 : (16, 28.000000) count=0.250000
;	genIpush
	lda	#0xbd
	pha
	lda	#0xc4
	pha
	lda	#0x33
	pha
	lda	#0xb8
	pha
;	Raw cost for generated ic 134 : (12, 20.000000) count=0.250000
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
;	Raw cost for generated ic 135 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 136 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 137 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 138 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 139 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 140 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 141 : (30, 50.000000) count=0.250000
;	../tancotf.c: 81: xden = Q(g);
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 142 : (16, 28.000000) count=0.250000
;	genIpush
	lda	#0x3c
	pha
	lda	#0x1f
	pha
	lda	#0x33
	pha
	lda	#0x75
	pha
;	Raw cost for generated ic 143 : (12, 20.000000) count=0.250000
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
;	Raw cost for generated ic 144 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0xbe
	pha
	lda	#0xdb
	pha
	lda	#0xb7
	pha
	lda	#0xaf
	pha
;	Raw cost for generated ic 145 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 146 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 147 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 148 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 149 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 150 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 151 : (10, 18.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 152 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 153 : (30, 50.000000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../tancotf.c: 84: if(n&1)
;	genAnd
	tsx
	lda	0x119,x
	and	#0x01
;	genIfxJump : z
	bne	00162$
	jmp	00113$
00162$:
;	Raw cost for generated ic 58 : (13, 16.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
;	genIfx
	lda	0x121,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 62 : (8, 9.600000) count=0.750000
;	genUminus
;	genUminusFloat
	lda	0x105,x
	sta	0x109,x
	lda	0x106,x
	sta	0x10a,x
	lda	0x107,x
	sta	0x10b,x
	lda	0x108,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 65 : (26, 38.000000) count=0.562500
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 154 : (16, 28.000000) count=0.562500
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 155 : (16, 28.000000) count=0.562500
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
;	Raw cost for generated ic 156 : (30, 50.000000) count=0.562500
;	genRet
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
	jmp	00115$
;	Raw cost for generated ic 67 : (23, 31.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.750000
;	../tancotf.c: 88: else return (-xden/xnum);
;	genUminus
;	genUminusFloat
	tsx
	lda	0x101,x
	sta	0x109,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x103,x
	sta	0x10b,x
	lda	0x104,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 70 : (27, 40.000000) count=0.750000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 157 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 158 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 159 : (30, 50.000000) count=0.750000
;	genRet
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
	jmp	00115$
;	Raw cost for generated ic 72 : (23, 31.000000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
;	genIfx
	tsx
	lda	0x121,x
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 76 : (9, 11.600000) count=1.000000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 160 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 161 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 162 : (30, 50.000000) count=0.750000
;	genRet
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
	jmp	00115$
;	Raw cost for generated ic 80 : (23, 31.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	../tancotf.c: 93: else return (xnum/xden);
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
;	Raw cost for generated ic 163 : (17, 30.000000) count=1.000000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 164 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 165 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 84 : (20, 28.000000) count=1.000000
;	genLabel
00115$:
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	../tancotf.c: 95: }
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
;	Raw cost for generated ic 88 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
