;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atanf
	
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
	.globl _fabsf
	.globl _atanf
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x             Allocated to stack - sp +21 +4 
;f             Allocated to stack - sp +5 +4 
;r             Allocated to stack - sp +1 +4 
;g             Allocated to stack - sp +7 +4 
;n             Allocated to stack - sp +17 +2 
;sloc0         Allocated to stack - sp +13 +4 
;sloc1         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../atanf.c: 55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_atanf:
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../atanf.c: 58: int n=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
;	Raw cost for generated ic 2 : (8, 12.000000) count=1.000000
;	../atanf.c: 61: f=fabsf(x);
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 3 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 4 : (29, 50.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x108,x
	lda	0x10f,x
	sta	0x107,x
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 5 : (21, 32.000000) count=1.000000
;	../atanf.c: 62: if(f>1.0)
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 72 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 73 : (10, 18.000000) count=1.000000
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
;	Raw cost for generated ic 74 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 7 : (7, 7.600000) count=1.000000
;	../atanf.c: 64: f=1.0/f;
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 75 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 76 : (10, 18.000000) count=0.750000
;	genCall
	jsr	___fsdiv
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
;	Raw cost for generated ic 77 : (30, 50.000000) count=0.750000
;	../atanf.c: 65: n=2;
;	genAssign
;	genAssignLit
	lda	#0x02
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
;	Raw cost for generated ic 12 : (10, 14.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../atanf.c: 67: if(f>K1)
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
;	Raw cost for generated ic 78 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x3e
	pha
	lda	#0x89
	pha
	lda	#0x30
	pha
	lda	#0xa3
	pha
;	Raw cost for generated ic 79 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 80 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00147$
	jmp	00104$
00147$:
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.000000
;	../atanf.c: 69: f=((K2*f-1.0)+f)/(K3+f);
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 81 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x3b
	pha
	lda	#0x67
	pha
	lda	#0xaf
	pha
;	Raw cost for generated ic 82 : (12, 20.000000) count=0.750000
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
;	Raw cost for generated ic 83 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 84 : (10, 18.000000) count=0.750000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 85 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 86 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 87 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 88 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 89 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0xdd
	pha
	lda	#0xb3
	pha
	lda	#0xd7
	pha
;	Raw cost for generated ic 90 : (12, 20.000000) count=0.750000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 91 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 92 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 93 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 94 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fsdiv
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
;	Raw cost for generated ic 95 : (30, 50.000000) count=0.750000
;	../atanf.c: 73: n++;
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 25 : (17, 24.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	../atanf.c: 75: if(fabsf(f)<EPS) r=f;
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
;	Raw cost for generated ic 28 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_fabsf
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 29 : (29, 50.000000) count=1.000000
;	genIpush
	lda	#0x39
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 96 : (10, 18.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 97 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 98 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 31 : (7, 7.600000) count=1.000000
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 34 : (24, 36.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 35 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.250000
;	../atanf.c: 78: g=f*f;
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
;	Raw cost for generated ic 99 : (17, 30.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 100 : (16, 28.000000) count=0.250000
;	../atanf.c: 79: r=f+P(g,f)/Q(g);
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
;	Raw cost for generated ic 101 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 102 : (16, 28.000000) count=0.250000
;	genIpush
	lda	#0xbd
	pha
	lda	#0x50
	pha
	lda	#0x86
	pha
	lda	#0x91
	pha
;	Raw cost for generated ic 103 : (12, 20.000000) count=0.250000
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
;	Raw cost for generated ic 104 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0xbe
	pha
	lda	#0xf1
	pha
	lda	#0x10
	pha
	lda	#0xf6
	pha
;	Raw cost for generated ic 105 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 106 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 107 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 108 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 109 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 110 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 111 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 112 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 113 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0xb4
	pha
	lda	#0xcc
	pha
	lda	#0xd3
	pha
;	Raw cost for generated ic 114 : (12, 20.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 115 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 116 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 117 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 118 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 119 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 120 : (16, 28.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 121 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 122 : (30, 50.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../atanf.c: 81: if(n>1) r=-r;
;	genCmp
	lda	#0x01
	sec
	tsx
	sbc	0x111,x
	lda	#0x00
	sbc	0x112,x
	bvc	00151$
	bpl	00150$
	bmi	00109$
00151$:
	bpl	00109$
00150$:
;	Raw cost for generated ic 49 : (23, 29.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 53 : (8, 11.000000) count=0.750000
;	genLabel
00109$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../atanf.c: 82: r+=a[n];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=2
	tsx
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 57 : (20, 36.000000) count=1.000000
;	genAssign
;	genCopy
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=_atanf_a_10000_26 savea=0
	clc
	adc	#<(_atanf_a_10000_26+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_atanf_a_10000_26+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10a,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10b,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x10c,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 59 : (55, 94.000000) count=1.000000
;	genIpush
	pha
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 123 : (14, 26.000000) count=1.000000
;	genIpush
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 124 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 125 : (30, 50.000000) count=1.000000
;	../atanf.c: 83: if(x<0.0) r=-r;
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 126 : (6, 14.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 127 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 128 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 63 : (7, 7.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 66 : (8, 11.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	../atanf.c: 84: return r;
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 69 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../atanf.c: 85: }
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 71 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
_atanf_a_10000_26:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x92, #0x0a, #0x06, #0x3f	;  5.235988e-01
	.byte #0xdb, #0x0f, #0xc9, #0x3f	;  1.570796e+00
	.byte #0x92, #0x0a, #0x86, #0x3f	;  1.047198e+00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
