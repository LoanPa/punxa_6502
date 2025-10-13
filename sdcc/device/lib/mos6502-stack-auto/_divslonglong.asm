;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divslonglong
	
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
	.globl __divslonglong
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
;Allocation info for local variables in function '_divslonglong'
;------------------------------------------------------------
;numerator     Allocated to stack - sp +20 +8 
;denominator   Allocated to stack - sp +28 +8 
;numeratorneg  Allocated to registers y 
;denominatorneg Allocated to stack - sp +17 +1 
;d             Allocated to stack - sp +8 +8 
;sloc0         Allocated to stack - sp +9 +8 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../_divslonglong.c: 36: _divslonglong (long long numerator, long long denominator) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 17 bytes.
__divslonglong:
;	  adjustStack : cycles stk:51  incdec:38  adc:12
	tsx
	txa
	clc
	adc	#0xef
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_divslonglong.c: 38: bool numeratorneg = (numerator < 0);
;	genCmp
	lda	0x11b,x
	sec
	sbc	#0x00
	bvc	00129$
	bpl	00127$
	bmi	00130$
00129$:
	bmi	00127$
00130$:
	lda	#0x00
	jmp	00128$
00127$:
	lda	#0x01
00128$:
	tay
;	Raw cost for generated ic 2 : (22, 27.400002) count=1.000000
;	../_divslonglong.c: 39: bool denominatorneg = (denominator < 0);
;	genCmp
	lda	0x123,x
	sec
	sbc	#0x00
	bvc	00133$
	bpl	00131$
	bmi	00134$
00133$:
	bmi	00131$
00134$:
	lda	#0x00
	jmp	00132$
00131$:
	lda	#0x01
00132$:
	sta	0x111,x
;	Raw cost for generated ic 4 : (24, 30.400002) count=1.000000
;	../_divslonglong.c: 42: if (numeratorneg)
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	../_divslonglong.c: 43: numerator = -numerator;
;	genUminus
	lda	#0x00
	sec
	sbc	0x114,x
	sta	0x114,x
	lda	#0x00
	sbc	0x115,x
	sta	0x115,x
	lda	#0x00
	sbc	0x116,x
	sta	0x116,x
	lda	#0x00
	sbc	0x117,x
	sta	0x117,x
	lda	#0x00
	sbc	0x118,x
	sta	0x118,x
	lda	#0x00
	sbc	0x119,x
	sta	0x119,x
	lda	#0x00
	sbc	0x11a,x
	sta	0x11a,x
	lda	#0x00
	sbc	0x11b,x
	sta	0x11b,x
;	Raw cost for generated ic 9 : (65, 90.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 44: if (denominatorneg)
;	genIfx
	tsx
	lda	0x111,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 12 : (9, 11.600000) count=1.000000
;	../_divslonglong.c: 45: denominator = -denominator;
;	genUminus
	lda	#0x00
	sec
	sbc	0x11c,x
	sta	0x11c,x
	lda	#0x00
	sbc	0x11d,x
	sta	0x11d,x
	lda	#0x00
	sbc	0x11e,x
	sta	0x11e,x
	lda	#0x00
	sbc	0x11f,x
	sta	0x11f,x
	lda	#0x00
	sbc	0x120,x
	sta	0x120,x
	lda	#0x00
	sbc	0x121,x
	sta	0x121,x
	lda	#0x00
	sbc	0x122,x
	sta	0x122,x
	lda	#0x00
	sbc	0x123,x
	sta	0x123,x
;	Raw cost for generated ic 15 : (65, 90.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 47: d = (unsigned long long)numerator / (unsigned long long)denominator;
;	genCast
;	genCopy
	tsx
	lda	0x11b,x
	sta	0x110,x
	lda	0x11a,x
	sta	0x10f,x
	lda	0x119,x
	sta	0x10e,x
	lda	0x118,x
	sta	0x10d,x
	lda	0x117,x
	sta	0x10c,x
	lda	0x116,x
	sta	0x10b,x
	lda	0x115,x
	sta	0x10a,x
	lda	0x114,x
	sta	0x109,x
;	Raw cost for generated ic 18 : (49, 74.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x123,x
	sta	0x108,x
	lda	0x122,x
	sta	0x107,x
	lda	0x121,x
	sta	0x106,x
	lda	0x120,x
	sta	0x105,x
	lda	0x11f,x
	sta	0x104,x
	lda	0x11e,x
	sta	0x103,x
	lda	0x11d,x
	sta	0x102,x
	lda	0x11c,x
	sta	0x101,x
;	Raw cost for generated ic 19 : (48, 72.000000) count=1.000000
;	genIpush
	tya
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 33 : (34, 61.000000) count=1.000000
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 34 : (32, 56.000000) count=1.000000
;	../_divslonglong.c: 49: return ((numeratorneg ^ denominatorneg) ? -d : d);
;	genCall
	jsr	__divulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x112,x
	lda	*(REGTEMP+0)
	sta	0x113,x
	lda	*___SDCC_m6502_ret2
	sta	0x114,x
	lda	*___SDCC_m6502_ret3
	sta	0x115,x
	lda	*___SDCC_m6502_ret4
	sta	0x116,x
	lda	*___SDCC_m6502_ret5
	sta	0x117,x
	lda	*___SDCC_m6502_ret6
	sta	0x118,x
	lda	*___SDCC_m6502_ret7
	sta	0x119,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
	sta	*(REGTEMP+0)
	pla
;	Raw cost for generated ic 35 : (56, 94.000000) count=1.000000
;	genXor
	tay
	eor	0x112,x
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 22 : (9, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x102,x
	sta	0x10a,x
	lda	#0x00
	sbc	0x103,x
	sta	0x10b,x
	lda	#0x00
	sbc	0x104,x
	sta	0x10c,x
	lda	#0x00
	sbc	0x105,x
	sta	0x10d,x
	lda	#0x00
	sbc	0x106,x
	sta	0x10e,x
	lda	#0x00
	sbc	0x107,x
	sta	0x10f,x
	lda	#0x00
	sbc	0x108,x
	sta	0x110,x
	lda	#0x00
	sbc	0x109,x
	sta	0x111,x
;	Raw cost for generated ic 24 : (65, 90.000000) count=0.750000
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 26 : (3, 3.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.250000
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
	lda	0x104,x
	sta	0x10c,x
	lda	0x103,x
	sta	0x10b,x
	lda	0x102,x
	sta	0x10a,x
	lda	0x101,x
	sta	0x109,x
;	Raw cost for generated ic 28 : (49, 74.000000) count=0.250000
;	genLabel
00108$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genRet
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret7
	lda	0x10f,x
	sta	*___SDCC_m6502_ret6
	lda	0x10e,x
	sta	*___SDCC_m6502_ret5
	lda	0x10d,x
	sta	*___SDCC_m6502_ret4
	lda	0x10c,x
	sta	*___SDCC_m6502_ret3
	lda	0x10b,x
	sta	*___SDCC_m6502_ret2
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
;	Raw cost for generated ic 30 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	../_divslonglong.c: 50: }
;	genEndFunction
;	  adjustStack : cycles stk:74  incdec:44  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x11
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 32 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
