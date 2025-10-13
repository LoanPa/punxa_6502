;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module frexpf
	
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
	.globl _frexpf
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
;Allocation info for local variables in function 'frexpf'
;------------------------------------------------------------
;x             Allocated to stack - sp +15 +4 
;pw2           Allocated to stack - sp +19 +2 
;fl            Allocated to stack - sp +1 +4 
;i             Allocated to stack - sp +5 +4 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../frexpf.c: 34: float frexpf(float x, int *pw2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function frexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_frexpf:
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../frexpf.c: 39: fl.f=x;
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 2 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (32, 58.000000) count=1.000000
;	../frexpf.c: 41: i  = ( fl.l >> 23) & 0x000000ff;
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x104,x
	iny
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 7 : (35, 62.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x106,x
	rol	a
	lda	0x107,x
	rol	a
	sta	0x104,x
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
;	Raw cost for generated ic 8 : (26, 38.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
;	Raw cost for generated ic 37 : (9, 14.000000) count=1.000000
;	genAnd
	ldx	#0x00
;	Raw cost for generated ic 9 : (2, 2.000000) count=1.000000
;	../frexpf.c: 42: i -= 0x7e;
;	genMinus
;	  genMinusDec - size=2  icount=126
	sec
	sbc	#0x7e
	tsx
	sta	0x105,x
	lda	#0x00
	sbc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 11 : (14, 20.000000) count=1.000000
;	../frexpf.c: 43: *pw2 = i;
;	genAssign
;	genCopy
	lda	0x113,x
	tay
	lda	0x114,x
	tax
	tya
;	Raw cost for generated ic 13 : (9, 14.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x105,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 15 : (18, 32.000000) count=1.000000
;	../frexpf.c: 44: fl.l &= 0x807fffff; /* strip all exponent bits */
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 20 : (34, 62.000000) count=1.000000
;	genAnd
	lda	0x107,x
	and	#0x7f
	sta	0x107,x
	lda	0x108,x
	and	#0x80
	sta	0x108,x
;	Raw cost for generated ic 21 : (16, 22.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
	lda	0x108,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (25, 48.000000) count=1.000000
;	../frexpf.c: 45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
;	genOr
	lda	0x108,x
	ora	#0x3f
	sta	0x108,x
;	Raw cost for generated ic 28 : (8, 11.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
	lda	0x108,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 29 : (25, 48.000000) count=1.000000
;	../frexpf.c: 46: return(fl.f);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 32 : (35, 62.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 33 : (17, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../frexpf.c: 47: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 35 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
