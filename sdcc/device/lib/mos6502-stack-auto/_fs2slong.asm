;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2slong
	
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
	.globl ___fs2ulong
	.globl ___fs2slong
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
;Allocation info for local variables in function '__fs2slong'
;------------------------------------------------------------
;f             Allocated to stack - sp +7 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_fs2slong.c: 108: signed long __fs2slong (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___fs2slong:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../_fs2slong.c: 111: if (!f)
;	genIfx
	tsx
	lda	0x10a,x
	and	#0x7F
	ora	0x109,x
	ora	0x108,x
	ora	0x107,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (20, 25.600000) count=1.000000
;	../_fs2slong.c: 112: return 0;
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
;	Raw cost for generated ic 5 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../_fs2slong.c: 114: if (f<0) {
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 24 : (6, 14.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 25 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 26 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
;	genUminus
;	genUminusFloat
	lda	0x107,x
	sta	0x101,x
	lda	0x108,x
	sta	0x102,x
	lda	0x109,x
	sta	0x103,x
	lda	0x10a,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 11 : (26, 38.000000) count=0.750000
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 12 : (13, 24.000000) count=0.750000
;	genCall
	jsr	___fs2ulong
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
;	Raw cost for generated ic 13 : (29, 50.000000) count=0.750000
;	genUminus
	lda	#0x00
	sec
	sbc	0x101,x
	sta	0x101,x
	lda	#0x00
	sbc	0x102,x
	sta	0x102,x
	lda	#0x00
	sbc	0x103,x
	sta	0x103,x
	lda	#0x00
	sbc	0x104,x
	sta	0x104,x
;	Raw cost for generated ic 14 : (33, 46.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00106$
;	Raw cost for generated ic 15 : (20, 27.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_fs2slong.c: 117: return __fs2ulong(f);
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
;	Raw cost for generated ic 18 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fs2ulong
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
;	Raw cost for generated ic 19 : (29, 50.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 20 : (17, 24.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../_fs2slong.c: 119: }
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
;	Raw cost for generated ic 23 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
