;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _mullonglong
	
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
	.globl __mullonglong
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;ll            Allocated to stack - sp +21 +8 
;lr            Allocated to stack - sp +29 +8 
;ret           Allocated to stack - sp +1 +8 
;i             Allocated to stack - sp +18 +1 
;j             Allocated to registers y 
;l             Allocated to stack - sp +17 +1 
;r             Allocated to registers a 
;sloc0         Allocated to stack - sp +9 +8 
;------------------------------------------------------------
;	../_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
__mullonglong:
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_mullonglong.c: 37: unsigned long long ret = 0ull;
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
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
;	genAssign
;	genAssignLit
	sta	0x112,x
;	Raw cost for generated ic 61 : (3, 5.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.969304
;	../_mullonglong.c: 42: unsigned char l = ll >> (i * 8);
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	tsx
	lda	0x112,x
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 6 : (7, 12.000000) count=3.969304
;	genCast
;	genCopy
;	Raw cost for generated ic 70 : (0, 0.000000) count=3.969304
;	genIpush
	pha
;	Raw cost for generated ic 71 : (1, 3.000000) count=3.969304
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
;	Raw cost for generated ic 72 : (32, 56.000000) count=3.969304
;	genCall
	jsr	__srslonglong
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
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
;	Raw cost for generated ic 73 : (50, 82.000000) count=3.969304
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x111,x
;	Raw cost for generated ic 8 : (6, 9.000000) count=3.969304
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 58 : (2, 2.000000) count=3.969304
;	genLabel
00104$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=15.846519
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x10a,x
	lda	0x112,x
	sta	0x109,x
;	Raw cost for generated ic 12 : (12, 18.000000) count=15.846519
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 13 : (3, 4.000000) count=15.846519
;	genPlus
	clc
	tsx
	adc	0x109,x
	pha
	lda	#0x00
	adc	0x10a,x
	tax
	pla
;	Raw cost for generated ic 14 : (13, 23.000000) count=15.846519
;	genCmp
	sec
	sbc	#0x08
	txa
	sbc	#0x00
	bvc	00137$
	bpl	00136$
	bmi	00138$
00137$:
	bmi	00136$
00138$:
	jmp	00107$
00136$:
;	Raw cost for generated ic 15 : (17, 21.400002) count=15.846519
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=15.846519
;	../_mullonglong.c: 45: unsigned char r = lr >> (j * 8);
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	tya
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 20 : (4, 8.000000) count=11.884890
;	genCast
;	genCopy
;	Raw cost for generated ic 74 : (0, 0.000000) count=11.884890
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 75 : (7, 14.000000) count=11.884890
;	genIpush
	tsx
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 76 : (33, 58.000000) count=11.884890
;	genCall
	jsr	__srslonglong
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
;	Raw cost for generated ic 77 : (56, 94.000000) count=11.884890
;	genCast
;	genCopy
	lda	0x10a,x
;	Raw cost for generated ic 22 : (3, 4.000000) count=11.884890
;	../_mullonglong.c: 46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
;	Raw cost for generated ic 78 : (0, 0.000000) count=11.884890
;	Raw cost for generated ic 79 : (0, 0.000000) count=11.884890
;	genCall
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
;	genSend
	tax
	stx	*(REGTEMP+0)
	tsx
	lda	0x112,x
	php
	ldx	*(REGTEMP+0)
	plp
	jsr	__muluchar
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10a,x
	lda	*(REGTEMP+0)
	sta	0x10b,x
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 80 : (37, 68.000000) count=11.884890
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=11.884890
;	genCast
;	genCopy
	lda	#0x00
	sta	0x111,x
	sta	0x110,x
	sta	0x10f,x
	sta	0x10e,x
	sta	0x10d,x
	sta	0x10c,x
	lda	0x10a,x
;	Raw cost for generated ic 26 : (32, 50.000000) count=11.884890
;	genPlus
	tya
	clc
	adc	0x113,x
;	Raw cost for generated ic 29 : (5, 8.000000) count=11.884890
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=3
	asl	a
	asl	a
	asl	a
;	Raw cost for generated ic 30 : (3, 6.000000) count=11.884890
;	genCast
;	genCopy
;	Raw cost for generated ic 81 : (0, 0.000000) count=11.884890
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	pha
;	Raw cost for generated ic 82 : (7, 14.000000) count=11.884890
;	genIpush
	lda	0x111,x
	pha
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
;	Raw cost for generated ic 83 : (32, 56.000000) count=11.884890
;	genCall
	jsr	__slulonglong
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
;	Raw cost for generated ic 84 : (56, 94.000000) count=11.884890
;	genPlus
	lda	0x102,x
	clc
	adc	0x10a,x
	sta	0x102,x
	lda	0x103,x
	adc	0x10b,x
	sta	0x103,x
	lda	0x104,x
	adc	0x10c,x
	sta	0x104,x
	lda	0x105,x
	adc	0x10d,x
	sta	0x105,x
	lda	0x106,x
	adc	0x10e,x
	sta	0x106,x
	lda	0x107,x
	adc	0x10f,x
	sta	0x107,x
	lda	0x108,x
	adc	0x110,x
	sta	0x108,x
	lda	0x109,x
	adc	0x111,x
	sta	0x109,x
;	Raw cost for generated ic 32 : (73, 106.000000) count=11.884890
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 36 : (1, 2.000000) count=11.884890
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 38 : (3, 3.000000) count=11.884890
;	genLabel
00107$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=3.961630
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
;	genPlus
;	  genPlusInc
	tsx
	lda	0x112,x
	clc
	adc	#0x01
	sta	0x112,x
;	Raw cost for generated ic 42 : (10, 15.000000) count=3.961630
;	genCmp
	cmp	#0x08
	bcs	00139$
	jmp	00106$
00139$:
;	Raw cost for generated ic 44 : (7, 7.600000) count=3.961630
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=3.961630
;	../_mullonglong.c: 50: return(ret);
;	genRet
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 48 : (40, 56.000000) count=0.990407
;	genLabel
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.990407
;	../_mullonglong.c: 51: }
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
;	Raw cost for generated ic 50 : (16, 30.000000) count=0.990407
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
