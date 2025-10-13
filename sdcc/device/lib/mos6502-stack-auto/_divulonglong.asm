;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	
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
	.globl __divulonglong
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;x             Allocated to stack - sp +20 +8 
;y             Allocated to stack - sp +28 +8 
;reste         Allocated to stack - sp +1 +8 
;count         Allocated to registers y 
;c             Allocated to stack - sp +17 +1 
;sloc0         Allocated to stack - sp +9 +8 
;------------------------------------------------------------
;	../_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 17 bytes.
__divulonglong:
;	  adjustStack : cycles stk:51  incdec:38  adc:12
	tsx
	txa
	clc
	adc	#0xef
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_divulonglong.c: 41: unsigned long long reste = 0L;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 2 : (26, 42.000000) count=1.000000
;	../_divulonglong.c: 45: do
;	genAssign
;	genCopy
	ldy	#0x40
;	Raw cost for generated ic 38 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	../_divulonglong.c: 48: c = MSB_SET(x);
;	genIpush
	tya
	pha
	lda	#0x3f
	pha
;	Raw cost for generated ic 44 : (5, 10.000000) count=3.999997
;	genIpush
	tsx
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
;	Raw cost for generated ic 45 : (33, 58.000000) count=3.999997
;	genCall
	jsr	__srulonglong
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
	lda	*___SDCC_m6502_ret4
	sta	0x117,x
	lda	*___SDCC_m6502_ret5
	sta	0x118,x
	lda	*___SDCC_m6502_ret6
	sta	0x119,x
	lda	*___SDCC_m6502_ret7
	sta	0x11a,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 46 : (56, 94.000000) count=3.999997
;	genAnd
	lda	0x10a,x
	and	#0x01
	sta	0x112,x
;	Raw cost for generated ic 6 : (8, 11.000000) count=3.999997
;	../_divulonglong.c: 49: x <<= 1;
;	genIpush
	tya
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 47 : (5, 10.000000) count=3.999997
;	genIpush
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 48 : (32, 56.000000) count=3.999997
;	genCall
	jsr	__slulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11e,x
	lda	*(REGTEMP+0)
	sta	0x11f,x
	lda	*___SDCC_m6502_ret2
	sta	0x120,x
	lda	*___SDCC_m6502_ret3
	sta	0x121,x
	lda	*___SDCC_m6502_ret4
	sta	0x122,x
	lda	*___SDCC_m6502_ret5
	sta	0x123,x
	lda	*___SDCC_m6502_ret6
	sta	0x124,x
	lda	*___SDCC_m6502_ret7
	sta	0x125,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
;	Raw cost for generated ic 49 : (56, 94.000000) count=3.999997
;	../_divulonglong.c: 50: reste <<= 1;
;	genIpush
	tay
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 50 : (5, 10.000000) count=3.999997
;	genIpush
	lda	0x109,x
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
;	Raw cost for generated ic 51 : (32, 56.000000) count=3.999997
;	genCall
	jsr	__slulonglong
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
	lda	*___SDCC_m6502_ret4
	sta	0x10f,x
	lda	*___SDCC_m6502_ret5
	sta	0x110,x
	lda	*___SDCC_m6502_ret6
	sta	0x111,x
	lda	*___SDCC_m6502_ret7
	sta	0x112,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 52 : (56, 94.000000) count=3.999997
;	../_divulonglong.c: 51: if (c)
;	genIfx
	lda	0x112,x
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (8, 9.600000) count=3.999997
;	../_divulonglong.c: 52: reste |= 1L;
;	genOr
	lda	0x102,x
	ora	#0x01
	sta	0x102,x
;	Raw cost for generated ic 16 : (8, 11.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 54: if (reste >= y)
;	genCmp
	tsx
	lda	0x101,x
	sec
	sbc	0x11c,x
	lda	0x102,x
	sbc	0x11d,x
	lda	0x103,x
	sbc	0x11e,x
	lda	0x104,x
	sbc	0x11f,x
	lda	0x105,x
	sbc	0x120,x
	lda	0x106,x
	sbc	0x121,x
	lda	0x107,x
	sbc	0x122,x
	lda	0x108,x
	sbc	0x123,x
	bcc	00106$
;	Raw cost for generated ic 19 : (55, 73.599998) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 56: reste -= y;
;	genMinus
	lda	0x101,x
	sec
	sbc	0x11c,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x11d,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x11e,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x11f,x
	sta	0x104,x
	lda	0x105,x
	sbc	0x120,x
	sta	0x105,x
	lda	0x106,x
	sbc	0x121,x
	sta	0x106,x
	lda	0x107,x
	sbc	0x122,x
	sta	0x107,x
	lda	0x108,x
	sbc	0x123,x
	sta	0x108,x
;	Raw cost for generated ic 23 : (73, 106.000000) count=2.999997
;	../_divulonglong.c: 58: x |= 1L;
;	genOr
	lda	0x114,x
	ora	#0x01
	sta	0x114,x
;	Raw cost for generated ic 25 : (8, 11.000000) count=2.999997
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 61: while (--count);
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 29 : (1, 2.000000) count=3.999996
;	genIfx
;	genIfxJump : z
	beq	00139$
	jmp	00105$
00139$:
;	Raw cost for generated ic 31 : (5, 5.600000) count=3.999996
;	../_divulonglong.c: 62: return x;
;	genRet
	tsx
	lda	0x11b,x
	sta	*___SDCC_m6502_ret7
	lda	0x11a,x
	sta	*___SDCC_m6502_ret6
	lda	0x119,x
	sta	*___SDCC_m6502_ret5
	lda	0x118,x
	sta	*___SDCC_m6502_ret4
	lda	0x117,x
	sta	*___SDCC_m6502_ret3
	lda	0x116,x
	sta	*___SDCC_m6502_ret2
	lda	0x115,x
	sta	*(REGTEMP+0)
	lda	0x114,x
;	Raw cost for generated ic 34 : (41, 58.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.999998
;	../_divulonglong.c: 63: }
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
;	Raw cost for generated ic 36 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
