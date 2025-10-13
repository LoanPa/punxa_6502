;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __ltoa
	
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
	.globl ___ultoa
	.globl ___ltoa
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;value         Allocated to stack - sp +46 +4 
;string        Allocated to stack - sp +50 +2 
;radix         Allocated to stack - sp +52 +1 
;buffer        Allocated to stack - sp +1 +32 
;index         Allocated to stack - sp +43 +1 
;c             Allocated to registers a 
;sloc0         Allocated to stack - sp +41 +2 
;sloc1         Allocated to stack - sp +37 +4 
;sloc2         Allocated to stack - sp +33 +4 
;------------------------------------------------------------
;	../__ltoa.c: 58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 43 bytes.
___ultoa:
;	  adjustStack : cycles stk:129  incdec:90  adc:12
	tsx
	txa
	clc
	adc	#0xd5
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../__ltoa.c: 63: do {
;	genAddrOf
	inx
	txa
	sta	0x128,x
	lda	#0x01
	sta	0x129,x
;	Raw cost for generated ic 18 : (10, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	#0x20
;	Raw cost for generated ic 51 : (2, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	../__ltoa.c: 64: unsigned char c = '0' + (value % radix);
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x128,x
	sta	0x127,x
	sta	0x126,x
	lda	0x134,x
	sta	0x125,x
;	Raw cost for generated ic 4 : (18, 28.000000) count=3.999997
;	genIpush
	tya
	pha
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
;	Raw cost for generated ic 65 : (18, 33.000000) count=3.999997
;	genIpush
	lda	0x131,x
	pha
	lda	0x130,x
	pha
	lda	0x12f,x
	pha
	lda	0x12e,x
	pha
;	Raw cost for generated ic 66 : (16, 28.000000) count=3.999997
;	genCall
	jsr	__modulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x12a,x
	lda	*(REGTEMP+0)
	sta	0x12b,x
	lda	*___SDCC_m6502_ret2
	sta	0x12c,x
	lda	*___SDCC_m6502_ret3
	sta	0x12d,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 67 : (36, 62.000000) count=3.999997
;	genCast
;	genCopy
	lda	0x122,x
;	Raw cost for generated ic 6 : (3, 4.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
;	Raw cost for generated ic 8 : (3, 4.000000) count=3.999997
;	../__ltoa.c: 65: if (c > (unsigned char)'9')
;	genCmp
	cmp	#0x39
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 10 : (9, 10.200000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999997
;	../__ltoa.c: 66: c += 'A' - '9' - 1;
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x07
;	Raw cost for generated ic 15 : (3, 4.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=3.999996
;	../__ltoa.c: 67: buffer[--index] = c;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 19 : (1, 2.000000) count=3.999996
;	genPlus
	pha
	tya
	clc
	tsx
	adc	0x12a,x
	sta	0x122,x
	lda	#0x00
	adc	0x12b,x
	sta	0x123,x
	pla
;	Raw cost for generated ic 21 : (19, 33.000000) count=3.999996
;	genPointerSet
	sta	*(REGTEMP+0)
	sty	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x122,x
	sta	*(DPTR+0)
	lda	0x123,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+1)
;	Raw cost for generated ic 22 : (22, 34.000000) count=3.999996
;	../__ltoa.c: 68: value /= radix;
;	genIpush
	tya
	pha
	lda	0x129,x
	pha
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
;	Raw cost for generated ic 68 : (18, 33.000000) count=3.999996
;	genIpush
	lda	0x132,x
	pha
	lda	0x131,x
	pha
	lda	0x130,x
	pha
	lda	0x12f,x
	pha
;	Raw cost for generated ic 69 : (16, 28.000000) count=3.999996
;	genCall
	jsr	__divulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x137,x
	lda	*(REGTEMP+0)
	sta	0x138,x
	lda	*___SDCC_m6502_ret2
	sta	0x139,x
	lda	*___SDCC_m6502_ret3
	sta	0x13a,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 70 : (36, 62.000000) count=3.999996
;	../__ltoa.c: 69: } while (value);
;	genIfx
	lda	0x132,x
	ora	0x131,x
	ora	0x130,x
	ora	0x12f,x
;	genIfxJump : z
	beq	00145$
	jmp	00103$
00145$:
;	Raw cost for generated ic 27 : (17, 21.600000) count=3.999996
;	../__ltoa.c: 71: do {
;	genAssign
;	genCopy
	lda	0x134,x
	sta	0x123,x
	lda	0x133,x
	sta	0x122,x
;	Raw cost for generated ic 54 : (12, 18.000000) count=0.999998
;	genAssign
;	genCopy
	tya
	sta	0x12c,x
;	Raw cost for generated ic 57 : (4, 7.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=3.999988
;	../__ltoa.c: 72: *string++ = buffer[index];
;	genPlus
	tsx
	lda	0x129,x
	clc
	adc	0x12b,x
	sta	0x125,x
	lda	0x12a,x
	adc	#0x00
	sta	0x126,x
;	Raw cost for generated ic 35 : (19, 28.000000) count=3.999988
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x125,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 36 : (11, 17.000000) count=3.999988
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
;	Raw cost for generated ic 37 : (16, 26.000000) count=3.999988
;	genPlus
;	  genPlusInc
	lda	0x121,x
	clc
	adc	#0x01
	sta	0x121,x
	lda	0x122,x
	adc	#0x00
	sta	0x122,x
;	Raw cost for generated ic 32 : (17, 24.000000) count=3.999988
;	../__ltoa.c: 73: } while ( ++index != NUMBER_OF_DIGITS );
;	genPlus
;	  genPlusInc
	lda	0x12b,x
	clc
	adc	#0x01
	sta	0x12b,x
;	Raw cost for generated ic 39 : (9, 13.000000) count=3.999988
;	genCmpEQorNE
	cmp	#0x20
	bne	00106$
;	Raw cost for generated ic 41 : (7, 7.600000) count=3.999988
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=3.999988
;	../__ltoa.c: 75: *string = 0;  /* string terminator */
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	tya
	sta	[DPTR],y
;	Raw cost for generated ic 46 : (13, 22.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999997
;	../__ltoa.c: 76: }
;	genEndFunction
;	  adjustStack : cycles stk:178  incdec:96  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x2b
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 48 : (16, 30.000000) count=0.999997
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;value         Allocated to stack - sp +3 +4 
;string        Allocated to stack - sp +7 +2 
;radix         Allocated to stack - sp +9 +1 
;------------------------------------------------------------
;	../__ltoa.c: 78: void __ltoa(long value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ltoa:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 80: if (value < 0 && radix == 10) {
;	genCmp
	tsx
	lda	0x106,x
	sec
	sbc	#0x00
	bvc	00119$
	bpl	00118$
	bmi	00102$
00119$:
	bpl	00102$
00118$:
;	Raw cost for generated ic 2 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	0x109,x
	cmp	#0x0a
	bne	00102$
;	Raw cost for generated ic 6 : (10, 11.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../__ltoa.c: 81: *string++ = '-';
;	genAssign
;	genCopy
	lda	0x107,x
	tay
	lda	0x108,x
	tax
	tya
;	Raw cost for generated ic 10 : (9, 14.000000) count=0.562500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x2d
	ldy	#0x00
	sta	[DPTR],y
	lda	*(DPTR+0)
;	Raw cost for generated ic 13 : (12, 19.000000) count=0.562500
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x01
	tsx
	sta	0x107,x
	lda	*(REGTEMP+0)
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 11 : (16, 24.000000) count=0.562500
;	../__ltoa.c: 82: value = -value;
;	genUminus
	tya
	sec
	sbc	0x103,x
	sta	0x103,x
	tya
	sbc	0x104,x
	sta	0x104,x
	tya
	sbc	0x105,x
	sta	0x105,x
	tya
	sbc	0x106,x
	sta	0x106,x
;	Raw cost for generated ic 14 : (29, 46.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 84: __ultoa(value, string, radix);
;	genIpush
	tsx
	lda	0x109,x
	pha
;	Raw cost for generated ic 17 : (5, 9.000000) count=1.000000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 18 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 19 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___ultoa
;	  adjustStack : cycles stk:28  incdec:18  adc:12
	tsx
	txa
	clc
	adc	#0x07
	tax
	txs
;	Raw cost for generated ic 20 : (10, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 85: }
;	genEndFunction
	rts
;	Raw cost for generated ic 22 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
