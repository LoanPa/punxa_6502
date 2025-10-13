;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modsint
	
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
	.globl __modsint
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
;Allocation info for local variables in function '_modsint'
;------------------------------------------------------------
;b             Allocated to stack - sp +7 +2 
;a             Allocated to stack - sp +3 +2 
;r             Allocated to registers a x 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_modsint.c: 203: int _modsint (int a, int b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
__modsint:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:6  incdec:8  adc:12
	pha
	pha
;	Raw cost for generated ic 1 : (9, 20.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_modsint.c: 207: r = (unsigned)(a < 0 ? -a : a) % (unsigned)(b < 0 ? -b : b);
;	genCmp
	tsx
	lda	0x104,x
	sec
	sbc	#0x00
	bvc	00130$
	bpl	00128$
	bmi	00131$
00130$:
	bmi	00128$
00131$:
	lda	#0x00
	jmp	00129$
00128$:
	lda	#0x01
00129$:
	tay
;	Raw cost for generated ic 3 : (23, 29.400002) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 4 : (5, 5.600000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x103,x
	sta	0x101,x
	lda	#0x00
	sbc	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (17, 24.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 7 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 9 : (13, 20.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	#0x00
	bvc	00135$
	bpl	00134$
	bmi	00108$
00135$:
	bpl	00108$
00134$:
;	Raw cost for generated ic 12 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x107,x
	pha
	lda	#0x00
	sbc	0x108,x
	tax
	pla
;	Raw cost for generated ic 14 : (14, 23.000000) count=0.750000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x107,x
	sta	*(REGTEMP+0)
	lda	0x108,x
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 18 : (12, 18.000000) count=0.250000
;	genLabel
00109$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genIpush
	sta	*(REGTEMP+0)
	tya
	pha
	lda	*(REGTEMP+0)
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 35 : (11, 23.000000) count=1.000000
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	tax
	lda	*(REGTEMP+0)
	jsr	__moduint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 37 : (27, 50.000000) count=1.000000
;	../_modsint.c: 209: if (a < 0)
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 24 : (7, 7.600000) count=1.000000
;	../_modsint.c: 210: return -r;
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
	pha
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	tax
	pla
;	Raw cost for generated ic 27 : (14, 23.000000) count=0.750000
;	genRet
	jmp	00104$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	../_modsint.c: 212: return r;
;	genRet
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	../_modsint.c: 213: }
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
;	Raw cost for generated ic 34 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
