;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	
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
	.globl ___fs2slong
	.globl ___fs2schar
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
;Allocation info for local variables in function '__fs2schar'
;------------------------------------------------------------
;f             Allocated to stack - sp +7 +4 
;sl            Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_fs2schar.c: 87: signed char __fs2schar (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___fs2schar:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 2 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fs2slong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 3 : (29, 50.000000) count=1.000000
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
;	genCmp
	lda	0x101,x
	sec
	sbc	#0x7f
	lda	0x102,x
	sbc	#0x00
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bvs	00120$
	bpl	00119$
	bmi	00102$
00120$:
	bpl	00102$
00119$:
;	Raw cost for generated ic 5 : (32, 39.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 91: return SCHAR_MAX;
;	genRet
	lda	#0x7f
	jmp	00105$
;	Raw cost for generated ic 9 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
;	genCmp
	lda	#0x80
	sec
	tsx
	sbc	0x101,x
	lda	#0xff
	sbc	0x102,x
	lda	#0xff
	sbc	0x103,x
	lda	#0xff
	sbc	0x104,x
	bvs	00123$
	bpl	00122$
	bmi	00104$
00123$:
	bpl	00104$
00122$:
;	Raw cost for generated ic 11 : (33, 41.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 93: return -SCHAR_MIN;
;	genRet
	lda	#0x80
	jmp	00105$
;	Raw cost for generated ic 15 : (5, 5.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 94: return sl;
;	genCast
;	genCopy
	tsx
	lda	0x101,x
;	Raw cost for generated ic 17 : (4, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_fs2schar.c: 95: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 20 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
