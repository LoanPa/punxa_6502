;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sincosf
	
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
	.globl _sincosf
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;x             Allocated to stack - sp +30 +4 
;iscos         Allocated to stack - sp +34 +1 
;y             Allocated to stack - sp +9 +4 
;f             Allocated to stack - sp +5 +4 
;r             Allocated to stack - sp +16 +4 
;g             Allocated to stack - sp +12 +4 
;XN            Allocated to stack - sp +1 +4 
;N             Allocated to stack - sp +26 +2 
;sign          Allocated to stack - sp +25 +1 
;sloc0         Allocated to stack - sp +21 +4 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;------------------------------------------------------------
;	../sincosf.c: 50: float sincosf(float x, bool iscos)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 27 bytes.
_sincosf:
;	  adjustStack : cycles stk:81  incdec:58  adc:12
	tsx
	txa
	clc
	adc	#0xe5
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../sincosf.c: 56: if(iscos)
;	genIfx
	lda	0x122,x
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	../sincosf.c: 58: y=fabsf(x)+HALF_PI;
;	genIpush
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
;	Raw cost for generated ic 5 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 6 : (29, 50.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0xc9
	pha
	lda	#0x0f
	pha
	lda	#0xdb
	pha
;	Raw cost for generated ic 94 : (12, 20.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 95 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 96 : (30, 50.000000) count=0.750000
;	../sincosf.c: 59: sign=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x119,x
;	Raw cost for generated ic 9 : (5, 7.000000) count=0.750000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 10 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.250000
;	../sincosf.c: 63: if(x<0.0)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 97 : (6, 14.000000) count=0.250000
;	genIpush
	tsx
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
;	Raw cost for generated ic 98 : (17, 30.000000) count=0.250000
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
;	Raw cost for generated ic 99 : (11, 20.000000) count=0.250000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (7, 7.600000) count=0.250000
;	../sincosf.c: 64: { y=-x; sign=1; }
;	genUminus
;	genUminusFloat
	lda	0x11e,x
	sta	0x109,x
	lda	0x11f,x
	sta	0x10a,x
	lda	0x120,x
	sta	0x10b,x
	lda	0x121,x
	eor	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 16 : (26, 38.000000) count=0.187500
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x119,x
;	Raw cost for generated ic 18 : (5, 7.000000) count=0.187500
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 19 : (3, 3.000000) count=0.187500
;	genLabel
00102$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.062500
;	../sincosf.c: 66: { y=x; sign=0; }
;	genAssign
;	genCopy
	tsx
	lda	0x121,x
	sta	0x10c,x
	lda	0x120,x
	sta	0x10b,x
	lda	0x11f,x
	sta	0x10a,x
	lda	0x11e,x
	sta	0x109,x
;	Raw cost for generated ic 21 : (25, 38.000000) count=0.062500
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x119,x
;	Raw cost for generated ic 22 : (5, 7.000000) count=0.062500
;	genLabel
00106$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../sincosf.c: 69: if(y>YMAX)
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
;	Raw cost for generated ic 100 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x46
	pha
	lda	#0x49
	pha
	lda	#0x0c
	pha
	lda	#0x00
	pha
;	Raw cost for generated ic 101 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 102 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 26 : (7, 7.600000) count=1.000000
;	../sincosf.c: 71: errno=ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 30 : (10, 12.000000) count=0.750000
;	../sincosf.c: 72: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00115$
;	Raw cost for generated ic 31 : (9, 13.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../sincosf.c: 76: N=((y*iPI)+0.5); /*y is positive*/
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
;	Raw cost for generated ic 103 : (17, 30.000000) count=1.000000
;	genIpush
	lda	#0x3e
	pha
	lda	#0xa2
	pha
	lda	#0xf9
	pha
	lda	#0x83
	pha
;	Raw cost for generated ic 104 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 105 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 106 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 107 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 108 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 109 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2sint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11e,x
	lda	*(REGTEMP+0)
	sta	0x11f,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 110 : (19, 34.000000) count=1.000000
;	../sincosf.c: 79: if(N&1) sign=!sign;
;	genAnd
	lda	0x11a,x
	and	#0x01
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 37 : (12, 14.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genNot
	lda	0x119,x
	eor	#0x01
	sta	0x119,x
;	Raw cost for generated ic 41 : (8, 11.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	../sincosf.c: 81: XN=N;
;	Raw cost for generated ic 111 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x11a,x
	tay
	lda	0x11b,x
	tax
	tya
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
;	Raw cost for generated ic 112 : (34, 56.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x117,x
	sta	0x103,x
	lda	0x116,x
	sta	0x102,x
	lda	0x115,x
	sta	0x101,x
;	Raw cost for generated ic 45 : (21, 32.000000) count=1.000000
;	../sincosf.c: 83: if(iscos) XN-=0.5;
;	genIfx
	lda	0x122,x
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 46 : (8, 9.600000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 113 : (8, 16.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 114 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 115 : (30, 50.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	../sincosf.c: 85: y=fabsf(x);
;	genIpush
	tsx
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
;	Raw cost for generated ic 52 : (17, 30.000000) count=1.000000
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
;	Raw cost for generated ic 53 : (29, 50.000000) count=1.000000
;	../sincosf.c: 86: r=(int)y;
;	genIpush
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 116 : (13, 24.000000) count=1.000000
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
;	Raw cost for generated ic 117 : (13, 24.000000) count=1.000000
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
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
;	Raw cost for generated ic 119 : (24, 40.000000) count=1.000000
;	../sincosf.c: 87: g=y-r;
;	genIpush
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 120 : (13, 24.000000) count=1.000000
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
;	../sincosf.c: 88: f=((r-XN*C1)+g)-XN*C2;
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
;	Raw cost for generated ic 122 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 123 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x40
	pha
	lda	#0x49
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 124 : (10, 18.000000) count=1.000000
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
;	Raw cost for generated ic 125 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 126 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 127 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 128 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 129 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 130 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 131 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 132 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3a
	pha
	lda	#0x7d
	pha
	lda	#0xaa
	pha
	lda	#0x22
	pha
;	Raw cost for generated ic 133 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 134 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 135 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 136 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 137 : (30, 50.000000) count=1.000000
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
;	Raw cost for generated ic 65 : (24, 36.000000) count=1.000000
;	../sincosf.c: 90: g=f*f;
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 138 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 139 : (16, 28.000000) count=1.000000
;	../sincosf.c: 91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
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
;	Raw cost for generated ic 140 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 141 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x33
	pha
	lda	#0x7f
	pha
	lda	#0xff
	pha
	lda	#0xf3
	pha
;	Raw cost for generated ic 142 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 143 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00173$
	jmp	00114$
00173$:
;	Raw cost for generated ic 69 : (7, 7.600000) count=1.000000
;	../sincosf.c: 93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 144 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x36
	pha
	lda	#0x2e
	pha
	lda	#0x9c
	pha
	lda	#0x5b
	pha
;	Raw cost for generated ic 145 : (12, 20.000000) count=0.750000
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
;	Raw cost for generated ic 146 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0xb9
	pha
	lda	#0x4f
	pha
	lda	#0xb2
	pha
	lda	#0x22
	pha
;	Raw cost for generated ic 147 : (12, 20.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 148 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 149 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 150 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 151 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 152 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0x3c
	pha
	lda	#0x08
	pha
	lda	#0x87
	pha
	lda	#0x3e
	pha
;	Raw cost for generated ic 153 : (12, 20.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 154 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 155 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 156 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 157 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 158 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0xbe
	pha
	lda	#0x2a
	pha
	lda	#0xaa
	pha
	lda	#0xa4
	pha
;	Raw cost for generated ic 159 : (12, 20.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 160 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 161 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 162 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 163 : (16, 28.000000) count=0.750000
;	../sincosf.c: 94: f+=f*r;
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
;	Raw cost for generated ic 164 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 165 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 166 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 167 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 168 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 169 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 170 : (30, 50.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	../sincosf.c: 96: return (sign?-f:f);
;	genIfx
	tsx
	lda	0x119,x
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 84 : (9, 11.600000) count=1.000000
;	genUminus
;	genUminusFloat
	lda	0x105,x
	sta	0x10d,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x108,x
	eor	#0x80
	sta	0x110,x
;	Raw cost for generated ic 85 : (26, 38.000000) count=0.750000
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 87 : (3, 3.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x110,x
	lda	0x107,x
	sta	0x10f,x
	lda	0x106,x
	sta	0x10e,x
	lda	0x105,x
	sta	0x10d,x
;	Raw cost for generated ic 89 : (25, 38.000000) count=0.250000
;	genLabel
00118$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=1.000000
;	genRet
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 91 : (21, 30.000000) count=1.000000
;	genLabel
00115$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	../sincosf.c: 97: }
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
;	Raw cost for generated ic 93 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
