;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module rand
	
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
	.globl _rand
	.globl _srand
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
_s:
	.ds 4
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +4 
;sloc1         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../rand.c: 40: int rand(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_rand:
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../rand.c: 44: t ^= t >> 10;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lda	(_s + 3)
	lsr	a
	sta	0x10b,x
	lda	(_s + 2)
	ror	a
	sta	0x10a,x
	lda	(_s + 1)
	ror	a
	sta	0x109,x
	lda	0x10b,x
	lsr	a
	ror	0x10a,x
	ror	0x109,x
	sta	0x10b,x
	lda	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 3 : (39, 63.000000) count=1.000000
;	genXor
	lda	_s
	eor	0x109,x
	sta	0x109,x
	lda	(_s + 1)
	eor	0x10a,x
	sta	0x10a,x
	lda	(_s + 2)
	eor	0x10b,x
	sta	0x10b,x
	lda	(_s + 3)
	eor	0x10c,x
	sta	0x10c,x
;	Raw cost for generated ic 4 : (36, 52.000000) count=1.000000
;	../rand.c: 45: t ^= t << 9;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=9
	lda	0x109,x
	asl	a
	sta	0x106,x
	lda	0x10a,x
	rol	a
	sta	0x107,x
	lda	0x10b,x
	rol	a
	pha
	lda	#0x00
	sta	0x105,x
	pla
	sta	0x108,x
;	Raw cost for generated ic 6 : (28, 47.000000) count=1.000000
;	genXor
	lda	0x109,x
	eor	0x105,x
	sta	0x105,x
	lda	0x10a,x
	eor	0x106,x
	sta	0x106,x
	lda	0x10b,x
	eor	0x107,x
	sta	0x107,x
	lda	0x10c,x
	eor	0x108,x
	sta	0x108,x
;	Raw cost for generated ic 7 : (36, 52.000000) count=1.000000
;	../rand.c: 46: t ^= t >> 25;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=25
	lsr	a
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 9 : (15, 24.000000) count=1.000000
;	genXor
	lda	0x105,x
	eor	0x109,x
	sta	0x105,x
	lda	0x106,x
	eor	0x10a,x
	sta	0x106,x
	lda	0x107,x
	eor	0x10b,x
	sta	0x107,x
	lda	0x108,x
	eor	0x10c,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (36, 52.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 11 : (21, 32.000000) count=1.000000
;	../rand.c: 48: s = t;
;	genAssign
;	genCopy
	lda	0x108,x
	sta	(_s + 3)
	lda	0x107,x
	sta	(_s + 2)
	lda	0x106,x
	sta	(_s + 1)
	lda	0x105,x
	sta	_s
;	Raw cost for generated ic 12 : (24, 32.000000) count=1.000000
;	../rand.c: 50: return(t & RAND_MAX);
;	genCast
;	genCopy
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
;	Raw cost for generated ic 19 : (9, 14.000000) count=1.000000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x7f
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 14 : (8, 12.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../rand.c: 51: }
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
;	Raw cost for generated ic 18 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed          Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../rand.c: 53: void srand(unsigned int seed)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_srand:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../rand.c: 55: s = seed | 0x80000000; /* s shall not become 0 */
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x104,x
	sta	0x103,x
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 3 : (21, 32.000000) count=1.000000
;	genOr
	sta	_s
	lda	0x102,x
	sta	(_s + 1)
	lda	0x103,x
	sta	(_s + 2)
	lda	0x104,x
	ora	#0x80
	sta	(_s + 3)
;	Raw cost for generated ic 4 : (23, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../rand.c: 56: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 8 : (13, 28.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS)
