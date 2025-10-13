;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstombs
	
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
	.globl _wctomb
	.globl _wcstombs
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;pwcs          Allocated to stack - sp +23 +2 
;n             Allocated to stack - sp +25 +2 
;s             Allocated to stack - sp +19 +2 
;m             Allocated to stack - sp +17 +2 
;buffer        Allocated to stack - sp +1 +4 
;b             Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +7 +4 
;sloc3         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	../wcstombs.c: 33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_wcstombs:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcstombs.c: 35: size_t m = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x111,x
	sta	0x112,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../wcstombs.c: 38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
;	genAddrOf
	inx
	txa
	sta	0x10c,x
	lda	#0x01
	sta	0x10d,x
;	Raw cost for generated ic 11 : (10, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x117,x
	sta	0x10b,x
	lda	0x116,x
	sta	0x10a,x
;	Raw cost for generated ic 61 : (12, 18.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.942521
;	genCmp
	lda	#0x04
	sec
	tsx
	sbc	0x119,x
	lda	#0x00
	sbc	0x11a,x
	bcc	00108$
;	Raw cost for generated ic 5 : (17, 21.600000) count=2.942521
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.942521
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
	iny
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
;	Raw cost for generated ic 10 : (35, 62.000000) count=2.206891
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 12 : (12, 18.000000) count=2.206891
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 13 : (16, 28.000000) count=2.206891
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.206891
;	genCall
;	genSend
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
	jsr	_wctomb
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 15 : (28, 48.000000) count=2.206891
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=2.206891
;	genCmp
	lda	0x119,x
	sec
	sbc	0x105,x
	lda	0x11a,x
	sbc	0x106,x
	bcs	00137$
	jmp	00109$
00137$:
;	Raw cost for generated ic 17 : (18, 23.600000) count=2.206891
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.206891
;	genLabel
00108$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=2.390799
;	../wcstombs.c: 40: int b = wctomb(s, *pwcs);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
	iny
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
;	Raw cost for generated ic 22 : (36, 64.000000) count=2.390799
;	genIpush
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 23 : (13, 24.000000) count=2.390799
;	Raw cost for generated ic 24 : (0, 0.000000) count=2.390799
;	genCall
;	genSend
	lda	0x113,x
	tay
	lda	0x114,x
	tax
	tya
	jsr	_wctomb
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	sta	0x114,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 25 : (28, 48.000000) count=2.390799
;	../wcstombs.c: 42: if(b == 1 && !*s)
;	genCmpEQorNE
	lda	0x10f,x
	cmp	#0x01
	bne	00102$
	lda	0x110,x
	bne	00102$
;	Raw cost for generated ic 27 : (18, 21.200001) count=2.390799
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=2.390799
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 32 : (15, 23.000000) count=1.793097
;	genIfx
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 33 : (5, 5.600000) count=1.793097
;	../wcstombs.c: 43: break;
;	genLabel
00102$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 44: if(b < 0)
;	genCmp
	tsx
	lda	0x110,x
	sec
	sbc	#0x00
	bvc	00144$
	bpl	00143$
	bmi	00105$
00144$:
	bpl	00105$
00143$:
;	Raw cost for generated ic 38 : (18, 23.400002) count=1.942521
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 45: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00110$
;	Raw cost for generated ic 42 : (6, 7.000000) count=1.456891
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 47: n -= b;
;	genCast
;	genCopy
	tsx
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 44 : (13, 20.000000) count=1.942521
;	genMinus
	lda	0x119,x
	sec
	sbc	0x105,x
	sta	0x119,x
	lda	0x11a,x
	sbc	0x106,x
	sta	0x11a,x
;	Raw cost for generated ic 45 : (19, 28.000000) count=1.942521
;	../wcstombs.c: 48: m += b;
;	genPlus
	lda	0x111,x
	clc
	adc	0x105,x
	sta	0x111,x
	lda	0x112,x
	adc	0x106,x
	sta	0x112,x
;	Raw cost for generated ic 48 : (19, 28.000000) count=1.942521
;	../wcstombs.c: 49: s += b;
;	genPlus
	lda	0x113,x
	clc
	adc	0x10f,x
	sta	0x113,x
	lda	0x114,x
	adc	0x110,x
	sta	0x114,x
;	Raw cost for generated ic 50 : (19, 28.000000) count=1.942521
;	../wcstombs.c: 50: pwcs++;
;	genPlus
;	  genPlusInc
	lda	0x10b,x
	clc
	adc	#0x04
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 53 : (17, 24.000000) count=1.942521
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 55 : (3, 3.000000) count=1.942521
;	genLabel
00109$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999997
;	../wcstombs.c: 53: return(m);
;	genRet
	tsx
	lda	0x112,x
	sta	*(REGTEMP+0)
	lda	0x111,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 57 : (11, 16.000000) count=0.999997
;	genLabel
00110$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.999997
;	../wcstombs.c: 54: }
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 59 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
