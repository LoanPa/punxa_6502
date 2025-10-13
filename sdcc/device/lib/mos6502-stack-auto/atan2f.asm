;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atan2f
	
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
	.globl _atan2f
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
;Allocation info for local variables in function 'atan2f'
;------------------------------------------------------------
;x             Allocated to stack - sp +15 +4 
;y             Allocated to stack - sp +19 +4 
;r             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +4 
;sloc1         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../atan2f.c: 34: float atan2f(float x, float y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_atan2f:
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
;	genIfx
	lda	0x112,x
	and	#0x7F
	ora	0x111,x
	ora	0x110,x
	ora	0x10f,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (19, 23.600000) count=1.000000
;	genIfx
	lda	0x116,x
	and	#0x7F
	ora	0x115,x
	ora	0x114,x
	ora	0x113,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 5 : (19, 23.600000) count=0.750000
;	../atan2f.c: 40: errno=EDOM;
;	genAssign
;	genAssignLit
	ldy	#0x21
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 9 : (10, 12.000000) count=0.562500
;	../atan2f.c: 41: return 0.0;
;	genRet
	tya
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00109$
;	Raw cost for generated ic 10 : (9, 13.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
;	genIpush
	tsx
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 12 : (17, 30.000000) count=1.000000
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
;	Raw cost for generated ic 13 : (29, 50.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 14 : (16, 28.000000) count=1.000000
;	genCall
	jsr	_fabsf
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 15 : (29, 50.000000) count=1.000000
;	genIpush
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 59 : (13, 24.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 60 : (16, 28.000000) count=1.000000
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
;	Raw cost for generated ic 61 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00156$
	jmp	00107$
00156$:
;	Raw cost for generated ic 17 : (7, 7.600000) count=1.000000
;	../atan2f.c: 46: r=atanf(x/y);
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 62 : (16, 28.000000) count=0.750000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 63 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 64 : (30, 50.000000) count=0.750000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 21 : (16, 28.000000) count=0.750000
;	genCall
	jsr	_atanf
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 22 : (29, 50.000000) count=0.750000
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 23 : (21, 32.000000) count=0.750000
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 65 : (6, 14.000000) count=0.750000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 66 : (16, 28.000000) count=0.750000
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
;	Raw cost for generated ic 67 : (11, 20.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00158$
	jmp	00108$
00158$:
;	Raw cost for generated ic 25 : (7, 7.600000) count=0.750000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 68 : (6, 14.000000) count=0.562500
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 69 : (16, 28.000000) count=0.562500
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
;	Raw cost for generated ic 70 : (11, 20.000000) count=0.562500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00111$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.562500
;	genAssign
;	genAssignLit
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0x49
	sta	0x10b,x
	lda	#0x40
	sta	0x10c,x
;	Raw cost for generated ic 31 : (20, 28.000000) count=0.421875
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 32 : (3, 3.000000) count=0.421875
;	genLabel
00111$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.140625
;	genAssign
;	genAssignLit
	lda	#0xdb
	tsx
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0x49
	sta	0x10b,x
	lda	#0xc0
	sta	0x10c,x
;	Raw cost for generated ic 34 : (21, 30.000000) count=0.140625
;	genLabel
00112$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.562500
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
;	Raw cost for generated ic 71 : (17, 30.000000) count=0.562500
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 72 : (16, 28.000000) count=0.562500
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
;	Raw cost for generated ic 73 : (30, 50.000000) count=0.562500
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 39 : (3, 3.000000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.250000
;	../atan2f.c: 51: r=-atanf(y/x);
;	genIpush
	tsx
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 74 : (17, 30.000000) count=0.250000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 75 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 76 : (30, 50.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 42 : (16, 28.000000) count=0.250000
;	genCall
	jsr	_atanf
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 43 : (29, 50.000000) count=0.250000
;	genUminus
;	genUminusFloat
	lda	0x108,x
	eor	#0x80
	sta	0x108,x
;	Raw cost for generated ic 44 : (8, 11.000000) count=0.250000
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 77 : (6, 14.000000) count=0.250000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 78 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 79 : (11, 20.000000) count=0.250000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 47 : (7, 7.600000) count=0.250000
;	genAssign
;	genAssignLit
	lda	#0xdb
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0xc9
	sta	0x10b,x
	lda	#0xbf
	sta	0x10c,x
;	Raw cost for generated ic 48 : (20, 28.000000) count=0.187500
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 49 : (3, 3.000000) count=0.187500
;	genLabel
00113$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.062500
;	genAssign
;	genAssignLit
	lda	#0xdb
	tsx
	sta	0x109,x
	lda	#0x0f
	sta	0x10a,x
	lda	#0xc9
	sta	0x10b,x
	lda	#0x3f
	sta	0x10c,x
;	Raw cost for generated ic 51 : (21, 30.000000) count=0.062500
;	genLabel
00114$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.250000
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
;	Raw cost for generated ic 80 : (17, 30.000000) count=0.250000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 81 : (16, 28.000000) count=0.250000
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
;	Raw cost for generated ic 82 : (30, 50.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	../atan2f.c: 54: return r;
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
;	Raw cost for generated ic 56 : (21, 30.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../atan2f.c: 55: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 58 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
