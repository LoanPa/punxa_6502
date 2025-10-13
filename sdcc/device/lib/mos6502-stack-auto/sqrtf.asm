;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sqrtf
	
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
	.globl _frexpf
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
;Allocation info for local variables in function 'sqrtf'
;------------------------------------------------------------
;x             Allocated to stack - sp +21 +4 
;f             Allocated to stack - sp +15 +4 
;y             Allocated to stack - sp +3 +4 
;n             Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +15 +4 
;sloc1         Allocated to stack - sp +11 +4 
;sloc2         Allocated to stack - sp +7 +4 
;------------------------------------------------------------
;	../sqrtf.c: 37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_sqrtf:
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../sqrtf.c: 42: if (x==0.0) return x;
;	genIfx
	lda	0x118,x
	and	#0x7F
	ora	0x117,x
	ora	0x116,x
	ora	0x115,x
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genRet
	lda	0x118,x
	sta	*___SDCC_m6502_ret3
	lda	0x117,x
	sta	*___SDCC_m6502_ret2
	lda	0x116,x
	sta	*(REGTEMP+0)
	lda	0x115,x
	ldx	*(REGTEMP+0)
	jmp	00111$
;	Raw cost for generated ic 5 : (23, 31.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 43: else if (x==1.0) return 1.0;
;	genIpush
	lda	#0x3f
	pha
	lda	#0x80
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 65 : (10, 18.000000) count=1.000000
;	genIpush
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 66 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fseq
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 67 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 9 : (7, 7.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00111$
;	Raw cost for generated ic 12 : (14, 17.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 44: else if (x<0.0)
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 68 : (6, 14.000000) count=1.000000
;	genIpush
	tsx
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 69 : (17, 30.000000) count=1.000000
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
;	Raw cost for generated ic 70 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 16 : (7, 7.600000) count=1.000000
;	../sqrtf.c: 46: errno=EDOM;
;	genAssign
;	genAssignLit
	ldy	#0x21
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 20 : (10, 12.000000) count=0.750000
;	../sqrtf.c: 47: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00111$
;	Raw cost for generated ic 21 : (9, 13.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 49: f=frexpf(x, &n);
;	genAddrOf
	tsx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 25 : (5, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 27 : (5, 12.000000) count=1.000000
;	genIpush
	tsx
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 28 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_frexpf
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
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 29 : (30, 50.000000) count=1.000000
;	../sqrtf.c: 50: y=0.41731+0.59016*f; /*Educated guess*/
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 71 : (16, 28.000000) count=1.000000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x17
	pha
	lda	#0x14
	pha
	lda	#0xba
	pha
;	Raw cost for generated ic 72 : (12, 20.000000) count=1.000000
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
;	Raw cost for generated ic 73 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0x3e
	pha
	lda	#0xd5
	pha
	lda	#0xa9
	pha
	lda	#0xa8
	pha
;	Raw cost for generated ic 74 : (12, 20.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 75 : (16, 28.000000) count=1.000000
;	../sqrtf.c: 52: y+=f/y;
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
;	Raw cost for generated ic 76 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 77 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 78 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
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
;	Raw cost for generated ic 79 : (30, 50.000000) count=1.000000
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
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 81 : (16, 28.000000) count=1.000000
;	../sqrtf.c: 53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 82 : (30, 50.000000) count=1.000000
;	genIpush
	lda	#0xff
	pha
	lda	#0xfe
	pha
;	Raw cost for generated ic 37 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 38 : (16, 28.000000) count=1.000000
;	genCall
	jsr	_ldexpf
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
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 39 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 83 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 84 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsdiv
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
;	Raw cost for generated ic 85 : (30, 50.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 86 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 87 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fsadd
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
;	Raw cost for generated ic 88 : (30, 50.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x106,x
	lda	0x109,x
	sta	0x105,x
	lda	0x108,x
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
;	Raw cost for generated ic 42 : (24, 36.000000) count=1.000000
;	../sqrtf.c: 55: if (n&1)
;	genAnd
	lda	0x101,x
	and	#0x01
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 43 : (12, 14.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 57: y*=0.7071067812;
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 89 : (16, 28.000000) count=0.750000
;	genIpush
	lda	#0x3f
	pha
	lda	#0x35
	pha
	lda	#0x04
	pha
	lda	#0xf3
	pha
;	Raw cost for generated ic 90 : (12, 20.000000) count=0.750000
;	genCall
	jsr	___fsmul
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
;	Raw cost for generated ic 91 : (30, 50.000000) count=0.750000
;	../sqrtf.c: 58: ++n;
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 49 : (17, 24.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 60: return ldexpf(y, n/2);
;	genAssign
;	genCopy
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 52 : (10, 16.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	txa
	sec
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00153$
	bpl	00152$
	bmi	00113$
00153$:
	bpl	00113$
00152$:
;	Raw cost for generated ic 53 : (21, 32.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00155$
	inx
00155$:
;	Raw cost for generated ic 55 : (6, 8.600000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	stx	*(REGTEMP+0)
	cpx	#0x80
	ror	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 58 : (9, 15.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 59 : (5, 12.000000) count=1.000000
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
;	Raw cost for generated ic 60 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_ldexpf
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
;	  adjustStack : cycles stk:24  incdec:14  adc:10
	txa
	clc
	adc	#0x06
	tax
	txs
;	Raw cost for generated ic 61 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x10a,x
	sta	*___SDCC_m6502_ret3
	lda	0x109,x
	sta	*___SDCC_m6502_ret2
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 62 : (20, 28.000000) count=1.000000
;	genLabel
00111$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	../sqrtf.c: 61: }
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 64 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
