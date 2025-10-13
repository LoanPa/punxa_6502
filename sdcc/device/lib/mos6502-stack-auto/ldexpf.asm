;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ldexpf
	
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
	.globl _ldexpf
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
;Allocation info for local variables in function 'ldexpf'
;------------------------------------------------------------
;x             Allocated to stack - sp +19 +4 
;pw2           Allocated to stack - sp +23 +2 
;fl            Allocated to stack - sp +1 +4 
;e             Allocated to stack - sp +9 +4 
;sloc0         Allocated to stack - sp +15 +2 
;sloc1         Allocated to stack - sp +13 +2 
;sloc2         Allocated to stack - sp +9 +4 
;sloc3         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../ldexpf.c: 34: float ldexpf(float x, int pw2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ldexpf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_ldexpf:
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../ldexpf.c: 39: fl.f = x;
;	genAddrOf
	inx
	txa
	sta	0x10e,x
	lda	#0x01
	sta	0x10f,x
;	Raw cost for generated ic 2 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10f,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10c,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10d,x
	sta	*(DPTR+1)
	lda	0x112,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x113,x
	iny
	sta	[DPTR],y
	lda	0x114,x
	iny
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (32, 58.000000) count=1.000000
;	../ldexpf.c: 41: e=(fl.l >> 23) & 0x000000ff;
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10e,x
	sta	*(DPTR+0)
	lda	0x10f,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x108,x
	iny
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
;	Raw cost for generated ic 7 : (35, 62.000000) count=1.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=23
	lda	0x10a,x
	rol	a
	lda	0x10b,x
	rol	a
	sta	0x108,x
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
;	Raw cost for generated ic 8 : (26, 38.000000) count=1.000000
;	genAnd
	lda	#0x00
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
;	Raw cost for generated ic 9 : (11, 17.000000) count=1.000000
;	../ldexpf.c: 42: e+=pw2;
;	genCast
	lda	0x116,x
	sta	0x104,x
	lda	0x117,x
	sta	0x105,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x106,x
	sta	0x107,x
;	Raw cost for generated ic 11 : (25, 36.000000) count=1.000000
;	genPlus
	lda	0x108,x
	clc
	adc	0x104,x
	sta	0x104,x
	lda	0x109,x
	adc	0x105,x
	sta	0x105,x
	lda	0x10a,x
	adc	0x106,x
	sta	0x106,x
	lda	0x10b,x
	adc	0x107,x
	sta	0x107,x
;	Raw cost for generated ic 12 : (37, 54.000000) count=1.000000
;	../ldexpf.c: 43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
;	genAnd
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
;	Raw cost for generated ic 16 : (11, 17.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=23
	lda	0x105,x
	lsr	a
	lda	0x104,x
	ror	a
	sta	0x107,x
	lda	#0x00
	sta	0x105,x
	sta	0x104,x
	ror	a
	sta	0x106,x
;	Raw cost for generated ic 17 : (23, 36.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	lda	[DPTR],y
	sta	0x108,x
	iny
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
;	Raw cost for generated ic 20 : (25, 48.000000) count=1.000000
;	genAnd
	lda	0x10a,x
	and	#0x7f
	sta	0x10a,x
	lda	0x10b,x
	and	#0x80
	sta	0x10b,x
;	Raw cost for generated ic 21 : (16, 22.000000) count=1.000000
;	genOr
	lda	0x104,x
	ora	0x108,x
	sta	0x104,x
	lda	0x105,x
	ora	0x109,x
	sta	0x105,x
	lda	0x106,x
	ora	0x10a,x
	sta	0x106,x
	lda	0x107,x
	ora	0x10b,x
	sta	0x107,x
;	Raw cost for generated ic 22 : (36, 52.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x104,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x105,x
	iny
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 23 : (25, 48.000000) count=1.000000
;	../ldexpf.c: 45: return(fl.f);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10c,x
	sta	*(DPTR+0)
	lda	0x10d,x
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
;	Raw cost for generated ic 26 : (35, 62.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x106,x
	sta	*___SDCC_m6502_ret2
	lda	0x105,x
	sta	*(REGTEMP+0)
	lda	0x104,x
;	Raw cost for generated ic 27 : (17, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	../ldexpf.c: 46: }
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 29 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
