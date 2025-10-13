;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modulong
	
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
	.globl __modulong
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;a             Allocated to stack - sp +8 +4 
;b             Allocated to stack - sp +12 +4 
;count         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_modulong.c: 342: _modulong (unsigned long a, unsigned long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
__modulong:
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_modulong.c: 344: unsigned char count = 0;
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 2 : (2, 2.000000) count=1.000000
;	../_modulong.c: 346: while (!MSB_SET(b))
;	genAssign
;	genAssignLit
	tya
	sta	0x105,x
;	Raw cost for generated ic 46 : (4, 7.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.230759
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	tsx
	lda	0x10f,x
	asl	a
	lda	#0x00
	sta	0x104,x
	sta	0x103,x
	sta	0x102,x
	rol	a
	sta	0x101,x
;	Raw cost for generated ic 4 : (20, 32.000000) count=1.230759
;	genAnd
	and	#0x01
;	genIfxJump : z
	bne	00117$
;	Raw cost for generated ic 5 : (9, 10.200000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230759
;	../_modulong.c: 348: b <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	0x10c,x
	rol	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
;	Raw cost for generated ic 9 : (12, 24.000000) count=0.923069
;	../_modulong.c: 349: if (b > a)
;	genCmp
	lda	0x108,x
	sec
	sbc	0x10c,x
	lda	0x109,x
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	bcs	00102$
;	Raw cost for generated ic 11 : (30, 39.599998) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.923069
;	../_modulong.c: 351: b >>=1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	0x10f,x
	lsr	a
	ror	0x10e,x
	ror	0x10d,x
	ror	0x10c,x
	sta	0x10f,x
;	Raw cost for generated ic 15 : (16, 29.000000) count=0.692302
;	../_modulong.c: 352: break;
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 17 : (3, 3.000000) count=0.692302
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.230759
;	../_modulong.c: 354: count++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
;	Raw cost for generated ic 20 : (10, 15.000000) count=0.230759
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 21 : (1, 2.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=0.230759
;	../_modulong.c: 356: do
;	genLabel
00117$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=3.999952
;	../_modulong.c: 358: if (a >= b)
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	0x10c,x
	lda	0x109,x
	sbc	0x10d,x
	lda	0x10a,x
	sbc	0x10e,x
	lda	0x10b,x
	sbc	0x10f,x
	bcc	00107$
;	Raw cost for generated ic 25 : (31, 41.599998) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999952
;	../_modulong.c: 359: a -= b;
;	genMinus
	lda	0x108,x
	sec
	sbc	0x10c,x
	sta	0x108,x
	lda	0x109,x
	sbc	0x10d,x
	sta	0x109,x
	lda	0x10a,x
	sbc	0x10e,x
	sta	0x10a,x
	lda	0x10b,x
	sbc	0x10f,x
	sta	0x10b,x
;	Raw cost for generated ic 29 : (37, 54.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999947
;	../_modulong.c: 360: b >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	tsx
	lda	0x10f,x
	lsr	a
	ror	0x10e,x
	ror	0x10d,x
	ror	0x10c,x
	sta	0x10f,x
;	Raw cost for generated ic 32 : (17, 31.000000) count=3.999947
;	../_modulong.c: 362: while (count--);
;	genAssign
;	genCopy
	tya
;	Raw cost for generated ic 35 : (1, 2.000000) count=3.999947
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 36 : (1, 2.000000) count=3.999947
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 38 : (7, 7.600000) count=3.999947
;	../_modulong.c: 364: return a;
;	genRet
	lda	0x10b,x
	sta	*___SDCC_m6502_ret3
	lda	0x10a,x
	sta	*___SDCC_m6502_ret2
	lda	0x109,x
	sta	*(REGTEMP+0)
	lda	0x108,x
;	Raw cost for generated ic 41 : (20, 28.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999983
;	../_modulong.c: 365: }
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 43 : (12, 26.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
