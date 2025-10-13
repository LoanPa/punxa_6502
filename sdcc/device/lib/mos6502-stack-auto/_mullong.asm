;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _mullong
	
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
	.globl __mullong
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;a             Allocated to stack - sp +39 +4 
;b             Allocated to stack - sp +43 +4 
;t             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +35 +2 
;sloc1         Allocated to stack - sp +33 +2 
;sloc2         Allocated to stack - sp +31 +2 
;sloc3         Allocated to stack - sp +29 +2 
;sloc4         Allocated to stack - sp +28 +1 
;sloc5         Allocated to stack - sp +26 +2 
;sloc6         Allocated to stack - sp +24 +2 
;sloc7         Allocated to stack - sp +22 +2 
;sloc8         Allocated to stack - sp +20 +2 
;sloc9         Allocated to stack - sp +18 +2 
;sloc10        Allocated to stack - sp +16 +2 
;sloc11        Allocated to stack - sp +15 +1 
;sloc12        Allocated to stack - sp +13 +2 
;sloc13        Allocated to stack - sp +9 +4 
;sloc14        Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../_mullong.c: 739: _mullong (long a, long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 36 bytes.
__mullong:
;	  adjustStack : cycles stk:108  incdec:76  adc:12
	tsx
	txa
	clc
	adc	#0xdc
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_mullong.c: 743: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
;	genAddrOf
	inx
	txa
	sta	0x122,x
	lda	#0x01
	sta	0x123,x
;	Raw cost for generated ic 2 : (10, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x123,x
	sta	0x121,x
	lda	0x122,x
	sta	0x120,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x26
	sta	0x11e,x
	lda	#0x01
	sta	0x11f,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x11f,x
	sta	0x11d,x
	lda	0x11e,x
	sta	0x11c,x
;	Raw cost for generated ic 8 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x11d,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11b,x
;	Raw cost for generated ic 9 : (14, 22.000000) count=1.000000
;	genAddrOf
	txa
	clc
	adc	#0x2a
	sta	0x119,x
	lda	#0x01
	sta	0x11a,x
;	Raw cost for generated ic 10 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x11a,x
	sta	0x118,x
	lda	0x119,x
	sta	0x117,x
;	Raw cost for generated ic 13 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x118,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 14 : (12, 19.000000) count=1.000000
;	Raw cost for generated ic 212 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 213 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x11b,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 214 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x02
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 17 : (29, 49.000000) count=1.000000
;	../_mullong.c: 744: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
;	genCast
;	genCopy
	tsx
	lda	0x124,x
	sta	0x117,x
	lda	0x123,x
	sta	0x116,x
;	Raw cost for generated ic 20 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11c,x
;	Raw cost for generated ic 25 : (17, 26.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x11b,x
	sta	0x115,x
	lda	0x11a,x
	sta	0x114,x
;	Raw cost for generated ic 29 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 30 : (10, 17.000000) count=1.000000
;	Raw cost for generated ic 215 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 216 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x11c,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 217 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x116,x
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 33 : (29, 49.000000) count=1.000000
;	../_mullong.c: 745: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
;	genAssign
;	genCopy
	tsx
	lda	0x124,x
	sta	0x117,x
	lda	0x123,x
	sta	0x116,x
;	Raw cost for generated ic 36 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	sta	0x11c,x
;	Raw cost for generated ic 40 : (14, 22.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x113,x
	lda	0x11f,x
	sta	0x112,x
;	Raw cost for generated ic 44 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x113,x
	sta	*(DPTR+1)
	lda	[DPTR],y
;	Raw cost for generated ic 45 : (9, 15.000000) count=1.000000
;	genPointerGet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 50 : (19, 29.000000) count=1.000000
;	Raw cost for generated ic 218 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 219 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 220 : (7, 12.000000) count=1.000000
;	genPlus
	clc
	tsx
	adc	0x11c,x
	sta	0x11c,x
;	Raw cost for generated ic 52 : (8, 13.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=3 remat=(null) savea=0
	lda	0x116,x
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	lda	0x11c,x
	ldy	#0x03
	sta	[DPTR],y
;	Raw cost for generated ic 53 : (17, 26.000000) count=1.000000
;	../_mullong.c: 746: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x111,x
	lda	0x11f,x
	sta	0x110,x
;	Raw cost for generated ic 64 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 65 : (13, 22.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x11b,x
	sta	0x10e,x
	lda	0x11a,x
	sta	0x10d,x
;	Raw cost for generated ic 69 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 70 : (11, 19.000000) count=1.000000
;	Raw cost for generated ic 221 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 222 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 223 : (10, 16.000000) count=1.000000
;	genPlus
	clc
	tsx
	adc	0x11c,x
	sta	0x10f,x
;	Raw cost for generated ic 72 : (8, 13.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=3 remat=(null) savea=0
	lda	0x116,x
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	lda	0x10f,x
	ldy	#0x03
	sta	[DPTR],y
;	Raw cost for generated ic 73 : (17, 26.000000) count=1.000000
;	../_mullong.c: 747: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
;	Raw cost for generated ic 80 : (22, 38.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x110,x
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 85 : (16, 26.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 90 : (15, 23.000000) count=1.000000
;	Raw cost for generated ic 224 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 225 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 226 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x117,x
	sta	0x111,x
	lda	0x116,x
	sta	0x110,x
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 92 : (21, 32.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.000000
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x110,x
	sta	0x110,x
	lda	*(REGTEMP+0)
	adc	0x111,x
	sta	0x111,x
;	Raw cost for generated ic 94 : (18, 28.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 95 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	lda	0x110,x
	ldy	#0x02
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 96 : (23, 38.000000) count=1.000000
;	../_mullong.c: 749: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x117,x
	lda	0x11f,x
	sta	0x116,x
;	Raw cost for generated ic 107 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 108 : (14, 22.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 113 : (13, 21.000000) count=1.000000
;	Raw cost for generated ic 227 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 228 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 229 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x111,x
	sta	0x10e,x
	lda	0x110,x
	sta	0x10d,x
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 115 : (21, 32.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10d,x
	pha
	lda	*(REGTEMP+0)
	adc	0x10e,x
	tax
	pla
;	Raw cost for generated ic 117 : (15, 27.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x02
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 119 : (29, 49.000000) count=1.000000
;	../_mullong.c: 751: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x116,x
	sta	*(DPTR+0)
	lda	0x117,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
;	Raw cost for generated ic 128 : (15, 23.000000) count=1.000000
;	genPointerGet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 133 : (18, 29.000000) count=1.000000
;	Raw cost for generated ic 230 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 231 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 232 : (7, 12.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=3 remat=(null) savea=0
	tsx
	lda	0x112,x
	sta	*(DPTR+0)
	lda	0x113,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x03
	sta	[DPTR],y
;	Raw cost for generated ic 135 : (19, 30.000000) count=1.000000
;	../_mullong.c: 752: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x10e,x
	lda	0x11f,x
	sta	0x10d,x
;	Raw cost for generated ic 139 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x120,x
	sta	0x111,x
	lda	0x11f,x
	sta	0x110,x
;	Raw cost for generated ic 143 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 144 : (14, 22.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 149 : (14, 23.000000) count=1.000000
;	Raw cost for generated ic 233 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 234 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 235 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 151 : (0, 0.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x01
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 152 : (29, 49.000000) count=1.000000
;	../_mullong.c: 754: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
;	genAssign
;	genCopy
	tsx
	lda	0x11b,x
	sta	0x10e,x
	lda	0x11a,x
	sta	0x10d,x
;	Raw cost for generated ic 156 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 161 : (17, 26.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 166 : (15, 23.000000) count=1.000000
;	Raw cost for generated ic 236 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 237 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 238 : (10, 16.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=3 remat=(null) savea=0
	tsx
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x03
	sta	[DPTR],y
;	Raw cost for generated ic 168 : (19, 30.000000) count=1.000000
;	../_mullong.c: 755: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
;	genAssign
;	genCopy
	lda	0x11b,x
	sta	0x10e,x
	lda	0x11a,x
	sta	0x10d,x
;	Raw cost for generated ic 172 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 177 : (17, 26.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x11b,x
	sta	0x111,x
	lda	0x11a,x
	sta	0x110,x
;	Raw cost for generated ic 181 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 182 : (11, 19.000000) count=1.000000
;	Raw cost for generated ic 239 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 240 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 241 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 184 : (0, 0.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x01
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 185 : (29, 49.000000) count=1.000000
;	../_mullong.c: 757: bcast(b)->bi.b0 = 0;                                // B
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x114,x
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 190 : (16, 26.000000) count=1.000000
;	../_mullong.c: 758: bcast(a)->bi.b0 = 0;                                // C
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11d,x
	sta	*(DPTR+0)
	lda	0x11e,x
	sta	*(DPTR+1)
	tya
	sta	[DPTR],y
;	Raw cost for generated ic 195 : (13, 22.000000) count=1.000000
;	../_mullong.c: 759: t.l += a;
;	genCast
;	genCopy
	lda	0x124,x
	sta	0x10e,x
	lda	0x123,x
	sta	0x10d,x
;	Raw cost for generated ic 197 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
	iny
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 200 : (30, 56.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x12a,x
	sta	0x108,x
	lda	0x129,x
	sta	0x107,x
	lda	0x128,x
	sta	0x106,x
	lda	0x127,x
	sta	0x105,x
;	Raw cost for generated ic 201 : (24, 36.000000) count=1.000000
;	genPlus
	lda	0x109,x
	clc
	adc	0x105,x
	sta	0x105,x
	lda	0x10a,x
	adc	0x106,x
	sta	0x106,x
	lda	0x10b,x
	adc	0x107,x
	sta	0x107,x
	lda	0x10c,x
	adc	0x108,x
	sta	0x108,x
;	Raw cost for generated ic 202 : (37, 54.000000) count=1.000000
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
;	Raw cost for generated ic 203 : (25, 48.000000) count=1.000000
;	../_mullong.c: 761: return t.l + b;
;	genCast
;	genCopy
	lda	0x12e,x
	sta	0x10c,x
	lda	0x12d,x
	sta	0x10b,x
	lda	0x12c,x
	sta	0x10a,x
	lda	0x12b,x
	sta	0x109,x
;	Raw cost for generated ic 207 : (24, 36.000000) count=1.000000
;	genPlus
	lda	0x105,x
	clc
	adc	0x109,x
	sta	0x105,x
	lda	0x106,x
	adc	0x10a,x
	sta	0x106,x
	lda	0x107,x
	adc	0x10b,x
	sta	0x107,x
	lda	0x108,x
	adc	0x10c,x
	sta	0x108,x
;	Raw cost for generated ic 208 : (37, 54.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 209 : (17, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 210 : (0, 0.000000) count=1.000000
;	../_mullong.c: 762: }
;	genEndFunction
;	  adjustStack : cycles stk:150  incdec:82  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x24
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 211 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
