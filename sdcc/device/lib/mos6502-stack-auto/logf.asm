;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module logf
	
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
	.globl _frexpf
	.globl _logf
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x             Allocated to stack - sp +25 +4 
;Rz            Allocated to stack - sp +19 +4 
;f             Allocated to stack - sp +15 +4 
;z             Allocated to stack - sp +11 +4 
;w             Allocated to stack - sp +7 +4 
;znum          Allocated to stack - sp +7 +4 
;zden          Allocated to stack - sp +3 +4 
;xn            Allocated to stack - sp -5 +4 
;n             Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +19 +4 
;sloc1         Allocated to stack - sp +15 +4 
;sloc2         Allocated to stack - sp +11 +4 
;------------------------------------------------------------
;	../logf.c: 216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_logf:
;	  adjustStack : cycles stk:66  incdec:48  adc:12
	tsx
	txa
	clc
	adc	#0xea
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../logf.c: 226: if (x<=0.0)
;	genIpush
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 55 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 56 : (6, 14.000000) count=1.000000
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
;	Raw cost for generated ic 57 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (7, 7.600000) count=1.000000
;	../logf.c: 228: errno=EDOM;
;	genAssign
;	genAssignLit
	ldy	#0x21
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 7 : (10, 12.000000) count=0.750000
;	../logf.c: 229: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
;	Raw cost for generated ic 8 : (9, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../logf.c: 231: f=frexpf(x, &n);
;	genAddrOf
	tsx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 10 : (5, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 12 : (5, 12.000000) count=1.000000
;	genIpush
	tsx
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
;	Raw cost for generated ic 13 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_frexpf
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
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 14 : (30, 50.000000) count=1.000000
;	../logf.c: 232: znum=f-0.5;
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 58 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 59 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 60 : (30, 50.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x109,x
	lda	0x110,x
	sta	0x108,x
	lda	0x10f,x
	sta	0x107,x
;	Raw cost for generated ic 17 : (24, 36.000000) count=1.000000
;	../logf.c: 233: if (f>C0)
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 61 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x35
	pha
	lda	#0x04
	pha
	lda	#0xf3
	pha
;	Raw cost for generated ic 62 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 63 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00123$
	jmp	00104$
00123$:
;	Raw cost for generated ic 19 : (7, 7.600000) count=1.000000
;	../logf.c: 235: znum-=0.5;
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 64 : (8, 16.000000) count=0.750000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 65 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fssub
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 66 : (30, 50.000000) count=0.750000
;	../logf.c: 236: zden=(f*0.5)+0.5;
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 67 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 68 : (8, 16.000000) count=0.750000
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
;	Raw cost for generated ic 69 : (30, 50.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 70 : (8, 16.000000) count=0.750000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 71 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sta	0x10c,x
	lda	*___SDCC_m6502_ret2
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 72 : (30, 50.000000) count=0.750000
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.250000
;	../logf.c: 240: n--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 30 : (18, 26.000000) count=0.250000
;	../logf.c: 241: zden=znum*0.5+0.5;
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 73 : (16, 28.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 74 : (8, 16.000000) count=0.250000
;	genCall
	jsr	___fsmul
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 75 : (30, 50.000000) count=0.250000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x00
	pha
	pha
	pha
;	Raw cost for generated ic 76 : (8, 16.000000) count=0.250000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 77 : (16, 28.000000) count=0.250000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sta	0x10c,x
	lda	*___SDCC_m6502_ret2
	sta	0x10d,x
	lda	*___SDCC_m6502_ret3
	sta	0x10e,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 78 : (30, 50.000000) count=0.250000
;	genLabel
00105$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../logf.c: 243: z=znum/zden;
;	genIpush
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 79 : (17, 30.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 80 : (16, 28.000000) count=1.000000
;	../logf.c: 244: w=z*z;
;	genCall
	jsr	___fsdiv
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 81 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 82 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 83 : (16, 28.000000) count=1.000000
;	../logf.c: 246: Rz=z+z*(w*A(w)/B(w));
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
;	Raw cost for generated ic 84 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 85 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0xbf
	pha
	lda	#0x0d
	pha
	lda	#0x7e
	pha
	lda	#0x3d
	pha
;	Raw cost for generated ic 86 : (12, 20.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 87 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0xc0
	pha
	lda	#0xd4
	pha
	lda	#0x3f
	pha
	lda	#0x3a
	pha
;	Raw cost for generated ic 88 : (12, 20.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 89 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 90 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 91 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 92 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 93 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 94 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 95 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 96 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 97 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 98 : (16, 28.000000) count=1.000000
;	../logf.c: 247: xn=n;
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 99 : (30, 50.000000) count=1.000000
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___sint2fs
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
;	Raw cost for generated ic 101 : (33, 54.000000) count=1.000000
;	../logf.c: 248: return ((xn*C2+Rz)+xn*C1);
;	genIpush
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 102 : (13, 24.000000) count=1.000000
;	genIpush
	lda	#0xb9
	pha
	lda	#0x5e
	pha
	lda	#0x80
	pha
	lda	#0x83
	pha
;	Raw cost for generated ic 103 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 104 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 105 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 106 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 107 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 108 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x31
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
;	Raw cost for generated ic 109 : (12, 20.000000) count=1.000000
;	genCall
	jsr	___fsmul
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 110 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 111 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 112 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
	lda	*___SDCC_m6502_ret2
	sta	0x115,x
	lda	*___SDCC_m6502_ret3
	sta	0x116,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 113 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x10e,x
	sta	*___SDCC_m6502_ret3
	lda	0x10d,x
	sta	*___SDCC_m6502_ret2
	lda	0x10c,x
	sta	*(REGTEMP+0)
	lda	0x10b,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 52 : (20, 28.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	../logf.c: 249: }
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 54 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
