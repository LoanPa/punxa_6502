;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	
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
	.globl _mbtowc
	.globl _mbstowcs
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;s             Allocated to stack - sp +13 +2 
;n             Allocated to stack - sp +15 +2 
;pwcs          Allocated to registers 
;m             Allocated to stack - sp +9 +2 
;b             Allocated to registers a x 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../mbstowcs.c: 33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_mbstowcs:
;	  adjustStack : cycles stk:30  incdec:30  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x107,x
	lda	*(REGTEMP+0)
	sta	0x108,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../mbstowcs.c: 35: size_t m = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../mbstowcs.c: 36: while(n--)
;	genAssign
;	genAssignLit
	sta	0x109,x
	sta	0x10a,x
;	Raw cost for generated ic 42 : (6, 10.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
;	Raw cost for generated ic 43 : (12, 18.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285707
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (13, 20.000000) count=2.285707
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x103,x
	sta	0x101,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 6 : (17, 24.000000) count=2.285707
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	bne	00135$
	jmp	00107$
00135$:
;	Raw cost for generated ic 8 : (11, 13.600000) count=2.285707
;	../mbstowcs.c: 38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x102,x
;	Raw cost for generated ic 11 : (12, 18.000000) count=1.714280
;	genPlus
;	  genPlusInc
	lda	0x107,x
	sta	0x101,x
	clc
	adc	#0x04
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 12 : (17, 24.000000) count=1.714280
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 14 : (6, 10.000000) count=1.714280
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 15 : (8, 14.000000) count=1.714280
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.714280
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_mbtowc
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 17 : (22, 38.000000) count=1.714280
;	../mbstowcs.c: 39: if(!b)
;	genIfx
;	genIfxJump : z
	bne	00137$
	cmp	#0x00
	beq	00107$
00137$:
;	Raw cost for generated ic 19 : (9, 10.200000) count=1.714280
;	../mbstowcs.c: 41: if(b < 0)
;	genCmp
	sta	*(REGTEMP+0)
	txa
	sec
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00139$
	bpl	00138$
	bmi	00104$
00139$:
	bpl	00104$
00138$:
;	Raw cost for generated ic 24 : (21, 32.400002) count=1.285710
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.285710
;	../mbstowcs.c: 42: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00108$
;	Raw cost for generated ic 28 : (6, 7.000000) count=0.964280
;	genLabel
00104$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.285707
;	../mbstowcs.c: 43: s += b;
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10d,x
	sta	0x10d,x
	lda	*(REGTEMP+0)
	adc	0x10e,x
	sta	0x10e,x
;	Raw cost for generated ic 30 : (18, 28.000000) count=1.285707
;	../mbstowcs.c: 44: m++;
;	genPlus
;	  genPlusInc
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 33 : (17, 24.000000) count=1.285707
;	genAssign
;	genCopy
	sta	0x106,x
	lda	0x109,x
	sta	0x105,x
;	Raw cost for generated ic 34 : (9, 14.000000) count=1.285707
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 35 : (3, 3.000000) count=1.285707
;	genLabel
00107$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999994
;	../mbstowcs.c: 47: return(m);
;	genRet
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 37 : (11, 16.000000) count=0.999994
;	genLabel
00108$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999994
;	../mbstowcs.c: 48: }
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 39 : (16, 30.000000) count=0.999994
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
