;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module bsearch
	
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
	.globl _bsearch
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
;Allocation info for local variables in function 'bsearch'
;------------------------------------------------------------
;base          Allocated to stack - sp +13 +2 
;nmemb         Allocated to stack - sp +15 +2 
;size          Allocated to stack - sp +17 +2 
;compar        Allocated to stack - sp +19 +2 
;key           Allocated to stack - sp +9 +2 
;left          Allocated to stack - sp +5 +2 
;middle        Allocated to stack - sp +7 +2 
;c             Allocated to registers a x 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../bsearch.c: 31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_bsearch:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../bsearch.c: 33: for(const char *left = base; nmemb;)
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.369007
;	genIfx
	tsx
	lda	0x110,x
	ora	0x10f,x
;	genIfxJump : z
	bne	00138$
	jmp	00107$
00138$:
;	Raw cost for generated ic 6 : (12, 15.600000) count=3.369007
;	../bsearch.c: 35: const char *middle = left + nmemb / 2 * size;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x104,x
	lda	*(REGTEMP+1)
	sta	0x103,x
;	Raw cost for generated ic 9 : (32, 53.000000) count=2.526755
;	genIpush
	tsx
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 51 : (9, 16.000000) count=2.526755
;	Raw cost for generated ic 52 : (0, 0.000000) count=2.526755
;	genCall
;	genSend
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
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 53 : (18, 34.000000) count=2.526755
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x105,x
	sta	0x107,x
	lda	*(REGTEMP+0)
	adc	0x106,x
	sta	0x108,x
;	Raw cost for generated ic 11 : (18, 28.000000) count=2.526755
;	../bsearch.c: 36: int c = (*compar)(key, middle);
;	genCast
;	genCopy
	sta	0x102,x
	lda	0x107,x
	sta	0x101,x
;	Raw cost for generated ic 13 : (9, 14.000000) count=2.526755
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 14 : (8, 14.000000) count=2.526755
;	Raw cost for generated ic 15 : (0, 0.000000) count=2.526755
;	genPcall
	lda	0x113,x
	sta	*(REGTEMP+0)
	lda	0x114,x
	sta	*(REGTEMP+1)
;	genSend
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
	jsr	__sdcc_indirect_jsr
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 16 : (28, 48.000000) count=2.526755
;	../bsearch.c: 38: if(c < 0)
;	genCmp
	txa
	sec
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00140$
	bpl	00139$
	bmi	00105$
00140$:
	bpl	00105$
00139$:
;	Raw cost for generated ic 18 : (21, 32.400002) count=2.526755
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=2.526755
;	../bsearch.c: 39: nmemb = nmemb / 2;	
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x110,x
	lda	0x103,x
	sta	0x10f,x
;	Raw cost for generated ic 23 : (13, 20.000000) count=1.895169
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 24 : (3, 3.000000) count=1.895169
;	genLabel
00105$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.631784
;	../bsearch.c: 40: else if(c > 0)
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x00
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00143$
	bpl	00142$
	bmi	00102$
00143$:
	bpl	00102$
00142$:
;	Raw cost for generated ic 26 : (24, 31.400002) count=0.631784
;	skipping generated iCode
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.631784
;	../bsearch.c: 42: left = middle + size;
;	genPlus
	tsx
	lda	0x107,x
	clc
	adc	0x111,x
	sta	0x105,x
	lda	0x108,x
	adc	0x112,x
	sta	0x106,x
;	Raw cost for generated ic 30 : (20, 30.000000) count=0.473838
;	../bsearch.c: 43: nmemb = (nmemb - 1) / 2;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
	sec
	sbc	#0x01
	bcs	00145$
	dex
00145$:
;	Raw cost for generated ic 32 : (15, 22.600000) count=0.473838
;	genRightShift
;	genRightShiftLiteral
	stx	*(REGTEMP+0)
;	  genrsh16 - shift=1
	stx	*(REGTEMP+1)
	lsr	*(REGTEMP+1)
	ror	a
	ldx	*(REGTEMP+1)
	sta	*(REGTEMP+2)
	txa
	tsx
	sta	0x110,x
	lda	*(REGTEMP+2)
	sta	0x10f,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 33 : (27, 45.000000) count=0.473838
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 35 : (3, 3.000000) count=0.473838
;	genLabel
00102$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.158059
;	../bsearch.c: 46: return(middle);
;	genCast
;	genCopy
	tsx
	lda	0x107,x
	tay
	lda	0x108,x
	tax
	tya
;	Raw cost for generated ic 37 : (10, 16.000000) count=0.158059
;	genRet
	jmp	00111$
;	Raw cost for generated ic 38 : (3, 3.000000) count=0.158059
;	genLabel
00107$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000311
;	../bsearch.c: 49: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 44 : (3, 4.000000) count=1.000311
;	genLabel
00111$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000311
;	../bsearch.c: 50: }
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
;	Raw cost for generated ic 46 : (16, 30.000000) count=1.000311
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
