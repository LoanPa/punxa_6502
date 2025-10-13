;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divulong
	
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
	.globl __divulong
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
;Allocation info for local variables in function '_divulong'
;------------------------------------------------------------
;x             Allocated to stack - sp +12 +4 
;y             Allocated to stack - sp +16 +4 
;reste         Allocated to stack - sp +1 +4 
;count         Allocated to registers y 
;c             Allocated to stack - sp +9 +1 
;sloc0         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../_divulong.c: 333: _divulong (unsigned long x, unsigned long y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
__divulong:
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_divulong.c: 335: unsigned long reste = 0L;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 2 : (14, 22.000000) count=1.000000
;	../_divulong.c: 339: do
;	genAssign
;	genCopy
	ldy	#0x20
;	Raw cost for generated ic 38 : (2, 2.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	../_divulong.c: 342: c = MSB_SET(x);
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	tsx
	lda	0x10f,x
	asl	a
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	rol	a
	sta	0x105,x
;	Raw cost for generated ic 5 : (20, 32.000000) count=3.999997
;	genAnd
	and	#0x01
	sta	0x109,x
;	Raw cost for generated ic 6 : (5, 7.000000) count=3.999997
;	../_divulong.c: 343: x <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	0x10c,x
	rol	0x10d,x
	rol	0x10e,x
	rol	0x10f,x
;	Raw cost for generated ic 9 : (12, 24.000000) count=3.999997
;	../_divulong.c: 344: reste <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	0x101,x
	rol	0x102,x
	rol	0x103,x
	rol	0x104,x
;	Raw cost for generated ic 11 : (12, 24.000000) count=3.999997
;	../_divulong.c: 345: if (c)
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (7, 7.600000) count=3.999997
;	../_divulong.c: 346: reste |= 1L;
;	genOr
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
;	Raw cost for generated ic 16 : (8, 11.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999996
;	../_divulong.c: 348: if (reste >= y)
;	genCmp
	tsx
	lda	0x101,x
	sec
	sbc	0x110,x
	lda	0x102,x
	sbc	0x111,x
	lda	0x103,x
	sbc	0x112,x
	lda	0x104,x
	sbc	0x113,x
	bcc	00106$
;	Raw cost for generated ic 19 : (31, 41.599998) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999996
;	../_divulong.c: 350: reste -= y;
;	genMinus
	lda	0x101,x
	sec
	sbc	0x110,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x111,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x112,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x113,x
	sta	0x104,x
;	Raw cost for generated ic 23 : (37, 54.000000) count=2.999997
;	../_divulong.c: 352: x |= 1L;
;	genOr
	lda	0x10c,x
	ora	#0x01
	sta	0x10c,x
;	Raw cost for generated ic 25 : (8, 11.000000) count=2.999997
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999996
;	../_divulong.c: 355: while (--count);
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
;	../_divulong.c: 356: return x;
;	genRet
	tsx
	lda	0x10f,x
	sta	*___SDCC_m6502_ret3
	lda	0x10e,x
	sta	*___SDCC_m6502_ret2
	lda	0x10d,x
	sta	*(REGTEMP+0)
	lda	0x10c,x
;	Raw cost for generated ic 34 : (21, 30.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.999998
;	../_divulong.c: 357: }
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
;	Raw cost for generated ic 36 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
