;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _mulint
	
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
	.globl __mulint
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
;Allocation info for local variables in function '_mulint'
;------------------------------------------------------------
;b             Allocated to stack - sp +20 +2 
;a             Allocated to stack - sp +16 +2 
;x             Allocated to stack - sp +14 +2 
;y             Allocated to stack - sp +12 +2 
;t             Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +10 +2 
;sloc1         Allocated to stack - sp +8 +2 
;sloc2         Allocated to stack - sp +7 +1 
;sloc3         Allocated to stack - sp +5 +2 
;sloc4         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	../_mulint.c: 228: _mulint (int a, int b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 17 bytes.
__mulint:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:45  incdec:34  adc:12
	tsx
	txa
	clc
	adc	#0xf1
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_mulint.c: 240: x = (union uu *)&a;
;	genAddrOf
	txa
	clc
	adc	#0x10
	sta	0x10a,x
	lda	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10b,x
	sta	0x10f,x
	lda	0x10a,x
	sta	0x10e,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	../_mulint.c: 241: y = (union uu *)&b;
;	genAddrOf
	txa
	clc
	adc	#0x14
	sta	0x10a,x
	lda	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10b,x
	sta	0x10d,x
	lda	0x10a,x
	sta	0x10c,x
;	Raw cost for generated ic 7 : (12, 18.000000) count=1.000000
;	../_mulint.c: 245: t.t = (unsigned char)a * (unsigned char)b;
;	genAddrOf
	inx
	txa
	sta	0x109,x
	lda	#0x01
	sta	0x10a,x
;	Raw cost for generated ic 9 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 10 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10f,x
	tay
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x113,x
;	Raw cost for generated ic 12 : (3, 4.000000) count=1.000000
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	tya
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 45 : (5, 10.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x108,x
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 14 : (29, 49.000000) count=1.000000
;	../_mulint.c: 246: t.s.hi += ((unsigned char)a * y->s.hi) + (x->s.hi * (unsigned char)b);
;	genAssign
;	genCopy
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	tsx
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 21 : (16, 26.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
;	Raw cost for generated ic 22 : (3, 4.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*(REGTEMP+0)
	lda	0x10d,x
	sta	0x106,x
	lda	0x10c,x
	sta	0x105,x
;	Raw cost for generated ic 25 : (16, 24.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 26 : (17, 27.000000) count=1.000000
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	sty	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
	jsr	__muluchar
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
;	Raw cost for generated ic 48 : (15, 25.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10f,x
	sta	0x104,x
	lda	0x10e,x
	sta	0x103,x
;	Raw cost for generated ic 30 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 31 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x114,x
;	Raw cost for generated ic 32 : (3, 4.000000) count=1.000000
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tax
	tya
	jsr	__muluchar
;	assignResultValue
;	Raw cost for generated ic 51 : (5, 10.000000) count=1.000000
;	genPlus
	clc
	tsx
	adc	0x105,x
;	Raw cost for generated ic 34 : (5, 8.000000) count=1.000000
;	genPlus
	clc
	adc	0x107,x
;	Raw cost for generated ic 35 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x01
	sta	[DPTR],y
;	Raw cost for generated ic 36 : (18, 28.000000) count=1.000000
;	../_mulint.c: 248: return t.t;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x108,x
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 39 : (16, 28.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	../_mulint.c: 249: }
;	genEndFunction
;	  adjustStack : cycles stk:74  incdec:44  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x11
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 42 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
