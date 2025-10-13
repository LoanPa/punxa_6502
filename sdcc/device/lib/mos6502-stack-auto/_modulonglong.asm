;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	
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
	.globl __modulonglong
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;a             Allocated to stack - sp +12 +8 
;b             Allocated to stack - sp +20 +8 
;count         Allocated to stack - sp +9 +1 
;sloc0         Allocated to stack - sp +9 +1 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../_modulonglong.c: 40: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
__modulonglong:
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_modulonglong.c: 42: unsigned char count = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x109,x
;	Raw cost for generated ic 2 : (5, 7.000000) count=1.000000
;	../_modulonglong.c: 44: while (!MSB_SET(b))
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 46 : (1, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.230759
;	genIpush
	tya
	pha
	lda	#0x3f
	pha
;	Raw cost for generated ic 56 : (5, 10.000000) count=1.230759
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
;	Raw cost for generated ic 57 : (33, 58.000000) count=1.230759
;	genCall
	jsr	__srulonglong
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
;	Raw cost for generated ic 58 : (56, 94.000000) count=1.230759
;	genAnd
	lda	0x102,x
	and	#0x01
;	genIfxJump : z
	beq	00151$
	jmp	00117$
00151$:
;	Raw cost for generated ic 5 : (12, 14.200001) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230759
;	../_modulonglong.c: 46: b <<= 1;
;	genIpush
	tya
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 59 : (5, 10.000000) count=0.923069
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
;	Raw cost for generated ic 60 : (32, 56.000000) count=0.923069
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
	tay
;	Raw cost for generated ic 61 : (56, 94.000000) count=0.923069
;	../_modulonglong.c: 47: if (b > a)
;	genCmp
	lda	0x10d,x
	sec
	sbc	0x115,x
	lda	0x10e,x
	sbc	0x116,x
	lda	0x10f,x
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	lda	0x111,x
	sbc	0x119,x
	lda	0x112,x
	sbc	0x11a,x
	lda	0x113,x
	sbc	0x11b,x
	lda	0x114,x
	sbc	0x11c,x
	bcs	00102$
;	Raw cost for generated ic 11 : (54, 71.599998) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.923069
;	../_modulonglong.c: 49: b >>=1;
;	genIpush
	lda	#0x01
	pha
;	Raw cost for generated ic 62 : (3, 5.000000) count=0.692302
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
;	Raw cost for generated ic 63 : (32, 56.000000) count=0.692302
;	genCall
	jsr	__srulonglong
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
	lda	*___SDCC_m6502_ret4
	sta	0x121,x
	lda	*___SDCC_m6502_ret5
	sta	0x122,x
	lda	*___SDCC_m6502_ret6
	sta	0x123,x
	lda	*___SDCC_m6502_ret7
	sta	0x124,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
;	Raw cost for generated ic 64 : (50, 82.000000) count=0.692302
;	../_modulonglong.c: 50: break;
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 17 : (3, 3.000000) count=0.692302
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.230759
;	../_modulonglong.c: 52: count++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 20 : (1, 2.000000) count=0.230759
;	genAssign
;	genCopy
	tya
	tsx
	sta	0x109,x
;	Raw cost for generated ic 21 : (5, 9.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=0.230759
;	../_modulonglong.c: 54: do
;	genLabel
00117$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
	tsx
	lda	0x109,x
	tay
;	Raw cost for generated ic 47 : (5, 8.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=3.999952
;	../_modulonglong.c: 56: if (a >= b)
;	genCmp
	tsx
	lda	0x10c,x
	sec
	sbc	0x114,x
	lda	0x10d,x
	sbc	0x115,x
	lda	0x10e,x
	sbc	0x116,x
	lda	0x10f,x
	sbc	0x117,x
	lda	0x110,x
	sbc	0x118,x
	lda	0x111,x
	sbc	0x119,x
	lda	0x112,x
	sbc	0x11a,x
	lda	0x113,x
	sbc	0x11b,x
	bcc	00107$
;	Raw cost for generated ic 25 : (55, 73.599998) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999952
;	../_modulonglong.c: 57: a -= b;
;	genMinus
	lda	0x10c,x
	sec
	sbc	0x114,x
	sta	0x10c,x
	lda	0x10d,x
	sbc	0x115,x
	sta	0x10d,x
	lda	0x10e,x
	sbc	0x116,x
	sta	0x10e,x
	lda	0x10f,x
	sbc	0x117,x
	sta	0x10f,x
	lda	0x110,x
	sbc	0x118,x
	sta	0x110,x
	lda	0x111,x
	sbc	0x119,x
	sta	0x111,x
	lda	0x112,x
	sbc	0x11a,x
	sta	0x112,x
	lda	0x113,x
	sbc	0x11b,x
	sta	0x113,x
;	Raw cost for generated ic 29 : (73, 106.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999947
;	../_modulonglong.c: 58: b >>= 1;
;	genIpush
	tya
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 65 : (5, 10.000000) count=3.999947
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
;	Raw cost for generated ic 66 : (33, 58.000000) count=3.999947
;	genCall
	jsr	__srulonglong
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
;	Raw cost for generated ic 67 : (56, 94.000000) count=3.999947
;	../_modulonglong.c: 60: while (count--);
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 35 : (1, 2.000000) count=3.999947
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 36 : (1, 2.000000) count=3.999947
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00155$
	jmp	00108$
00155$:
;	Raw cost for generated ic 38 : (7, 7.600000) count=3.999947
;	../_modulonglong.c: 62: return a;
;	genRet
	lda	0x114,x
	sta	*___SDCC_m6502_ret7
	lda	0x113,x
	sta	*___SDCC_m6502_ret6
	lda	0x112,x
	sta	*___SDCC_m6502_ret5
	lda	0x111,x
	sta	*___SDCC_m6502_ret4
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
;	Raw cost for generated ic 41 : (40, 56.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999983
;	../_modulonglong.c: 63: }
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 43 : (16, 30.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
