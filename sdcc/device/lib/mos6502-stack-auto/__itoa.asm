;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __itoa
	
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
	.globl ___uitoa
	.globl ___itoa
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
;Allocation info for local variables in function '__uitoa'
;------------------------------------------------------------
;string        Allocated to stack - sp +14 +2 
;radix         Allocated to stack - sp +16 +1 
;value         Allocated to stack - sp +10 +2 
;index         Allocated to stack - sp +9 +1 
;i             Allocated to stack - sp +8 +1 
;tmp           Allocated to stack - sp +7 +1 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../__itoa.c: 42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 11 bytes.
___uitoa:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../__itoa.c: 47: do {
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x109,x
;	Raw cost for generated ic 73 : (5, 7.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	../__itoa.c: 48: string[index] = '0' + (value % radix);
;	genCast
;	genCopy
	tsx
	lda	0x109,x
	ldx	#0x00
	cmp	#0x00
	bpl	00143$
	dex
00143$:
;	Raw cost for generated ic 6 : (11, 14.600000) count=3.999997
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10e,x
	sta	0x105,x
	lda	*(REGTEMP+0)
	adc	0x10f,x
	sta	0x106,x
;	Raw cost for generated ic 7 : (18, 28.000000) count=3.999997
;	genCast
;	genCopy
	lda	#0x00
	sta	0x104,x
	lda	0x110,x
	sta	0x103,x
;	Raw cost for generated ic 8 : (11, 16.000000) count=3.999997
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 87 : (8, 14.000000) count=3.999997
;	Raw cost for generated ic 88 : (0, 0.000000) count=3.999997
;	genCall
;	genSend
	lda	0x10a,x
	tay
	lda	0x10b,x
	tax
	tya
	jsr	__moduint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 89 : (18, 34.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
;	Raw cost for generated ic 12 : (3, 4.000000) count=3.999997
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
;	Raw cost for generated ic 13 : (19, 30.000000) count=3.999997
;	../__itoa.c: 49: if (string[index] > '9')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	[DPTR],y
;	Raw cost for generated ic 16 : (2, 5.000000) count=3.999997
;	genCmp
	cmp	#0x39
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 17 : (9, 10.200000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999997
;	../__itoa.c: 50: string[index] += 'A' - '9' - 1;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	[DPTR],y
;	Raw cost for generated ic 25 : (2, 5.000000) count=2.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 26 : (0, 0.000000) count=2.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x07
;	Raw cost for generated ic 27 : (3, 4.000000) count=2.999997
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	[DPTR],y
;	Raw cost for generated ic 28 : (2, 6.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=3.999996
;	../__itoa.c: 51: value /= radix;
;	genIpush
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 90 : (9, 16.000000) count=3.999996
;	Raw cost for generated ic 91 : (0, 0.000000) count=3.999996
;	../__itoa.c: 52: ++index;
;	genCall
;	genSend
	lda	0x10a,x
	tay
	lda	0x10b,x
	tax
	tya
	jsr	__divuint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10c,x
	lda	*(REGTEMP+0)
	sta	0x10d,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
;	Raw cost for generated ic 92 : (26, 44.000000) count=3.999996
;	genPlus
;	  genPlusInc
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
;	Raw cost for generated ic 33 : (9, 13.000000) count=3.999996
;	../__itoa.c: 53: } while (value != 0);
;	genIfx
	lda	0x10b,x
	ora	0x10a,x
;	genIfxJump : z
	beq	00147$
	jmp	00103$
00147$:
;	Raw cost for generated ic 36 : (11, 13.600000) count=3.999996
;	../__itoa.c: 56: string[index--] = '\0';
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x109,x
	sec
	sbc	#0x01
	sta	0x103,x
;	Raw cost for generated ic 40 : (9, 13.000000) count=0.999998
;	genCast
;	genCopy
	lda	0x109,x
	ldx	#0x00
	cmp	#0x00
	bpl	00148$
	dex
00148$:
;	Raw cost for generated ic 42 : (10, 12.600000) count=0.999998
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10e,x
	pha
	lda	*(REGTEMP+0)
	adc	0x10f,x
	tax
	pla
;	Raw cost for generated ic 43 : (15, 27.000000) count=0.999998
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 44 : (9, 16.000000) count=0.999998
;	../__itoa.c: 59: while (index > i) {
;	genAssign
;	genAssignLit
	tsx
	sta	0x108,x
;	Raw cost for generated ic 76 : (4, 7.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=3.999987
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	0x103,x
	bvc	00150$
	bpl	00149$
	bmi	00151$
00150$:
	bmi	00149$
00151$:
	jmp	00109$
00149$:
;	Raw cost for generated ic 46 : (19, 25.400002) count=3.999987
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=3.999987
;	../__itoa.c: 60: char tmp = string[i];
;	genCast
;	genCopy
	lda	0x108,x
	ldx	#0x00
	cmp	#0x00
	bpl	00152$
	dex
00152$:
;	Raw cost for generated ic 50 : (10, 12.600000) count=2.999989
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10e,x
	sta	0x105,x
	lda	*(REGTEMP+0)
	adc	0x10f,x
	sta	0x106,x
;	Raw cost for generated ic 51 : (18, 28.000000) count=2.999989
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x105,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 52 : (14, 22.000000) count=2.999989
;	../__itoa.c: 61: string[i] = string[index];
;	genCast
;	genCopy
	lda	0x103,x
	ldx	#0x00
	cmp	#0x00
	bpl	00153$
	dex
00153$:
;	Raw cost for generated ic 56 : (10, 12.600000) count=2.999989
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10e,x
	sta	0x101,x
	lda	*(REGTEMP+0)
	adc	0x10f,x
	sta	0x102,x
;	Raw cost for generated ic 57 : (18, 28.000000) count=2.999989
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x101,x
	sta	*(DPTR+0)
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 58 : (10, 17.000000) count=2.999989
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	sta	[DPTR],y
;	Raw cost for generated ic 59 : (20, 33.000000) count=2.999989
;	../__itoa.c: 62: string[index] = tmp;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	0x107,x
	sta	[DPTR],y
;	Raw cost for generated ic 62 : (16, 26.000000) count=2.999989
;	../__itoa.c: 63: ++i;
;	genPlus
;	  genPlusInc
	lda	0x108,x
	clc
	adc	#0x01
	sta	0x108,x
;	Raw cost for generated ic 63 : (9, 13.000000) count=2.999989
;	../__itoa.c: 64: --index;
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
;	Raw cost for generated ic 65 : (9, 13.000000) count=2.999989
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 67 : (3, 3.000000) count=2.999989
;	genLabel
00109$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999997
;	../__itoa.c: 66: }
;	genEndFunction
;	  adjustStack : cycles stk:50  incdec:32  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0b
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 70 : (16, 30.000000) count=0.999997
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string        Allocated to stack - sp +5 +2 
;radix         Allocated to stack - sp +7 +1 
;value         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../__itoa.c: 68: void __itoa(int value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
___itoa:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	Raw cost for generated ic 1 : (7, 14.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../__itoa.c: 70: if (value < 0 && radix == 10) {
;	genCmp
	tsx
	lda	0x102,x
	sec
	sbc	#0x00
	bvc	00119$
	bpl	00118$
	bmi	00102$
00119$:
	bpl	00102$
00118$:
;	Raw cost for generated ic 3 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	0x107,x
	cmp	#0x0a
	bne	00102$
;	Raw cost for generated ic 7 : (10, 11.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	../__itoa.c: 71: *string++ = '-';
;	genAssign
;	genCopy
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
;	Raw cost for generated ic 11 : (9, 14.000000) count=0.562500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x2d
	ldy	#0x00
	sta	[DPTR],y
	lda	*(DPTR+0)
;	Raw cost for generated ic 14 : (12, 19.000000) count=0.562500
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x01
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 12 : (16, 24.000000) count=0.562500
;	../__itoa.c: 72: value = -value;
;	genUminus
	tya
	sec
	sbc	0x101,x
	sta	0x101,x
	tya
	sbc	0x102,x
	sta	0x102,x
;	Raw cost for generated ic 15 : (15, 24.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../__itoa.c: 74: __uitoa(value, string, radix);
;	genIpush
	tsx
	lda	0x107,x
	pha
;	Raw cost for generated ic 18 : (5, 9.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 19 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___uitoa
;	  adjustStack : cycles stk:18  incdec:16  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 21 : (21, 36.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../__itoa.c: 75: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 23 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
