;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _mulschar
	
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
	.globl __mulschar
	.globl __muluschar
	.globl __mulsuchar
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
;Allocation info for local variables in function '_mulschar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_mulschar.c: 31: _mulschar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mulschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__mulschar:
;	  adjustStack : cycles stk:6  incdec:8  adc:18
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../_mulschar.c: 33: return ((int)x * (int)y);
;	genCast
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
;	Raw cost for generated ic 4 : (14, 20.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	tya
	bpl	00103$
	dex
00103$:
;	Raw cost for generated ic 5 : (6, 8.600000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 10 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
	jsr	__mulint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 12 : (19, 36.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../_mulschar.c: 34: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 9 : (7, 20.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_muluschar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_mulschar.c: 37: _muluschar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _muluschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__muluschar:
;	  adjustStack : cycles stk:6  incdec:8  adc:18
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../_mulschar.c: 39: return ((int)((signed char)x) * (int)y);
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
;	Raw cost for generated ic 5 : (14, 20.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 6 : (3, 4.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 11 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
	jsr	__mulint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 13 : (19, 36.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_mulschar.c: 40: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 10 : (7, 20.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_mulsuchar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_mulschar.c: 43: _mulsuchar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _mulsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
__mulsuchar:
;	  adjustStack : cycles stk:6  incdec:8  adc:18
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../_mulschar.c: 45: return ((int)((unsigned char)x) * (int)y);
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
	tsx
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
;	Raw cost for generated ic 5 : (9, 14.000000) count=1.000000
;	genCast
;	genCopy
	tax
	tya
	bpl	00103$
	dex
00103$:
;	Raw cost for generated ic 6 : (5, 8.600000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 11 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
	jsr	__mulint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 13 : (19, 36.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_mulschar.c: 46: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 10 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
