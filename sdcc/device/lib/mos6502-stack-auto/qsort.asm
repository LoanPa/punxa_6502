;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module qsort
	
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
	.globl _qsort
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src           Allocated to stack - sp +13 +2 
;n             Allocated to stack - sp +15 +2 
;dst           Allocated to stack - sp +9 +2 
;d             Allocated to registers 
;s             Allocated to registers 
;tmp           Allocated to registers a 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../qsort.c: 33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_swap:
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
;	../qsort.c: 35: unsigned char *restrict d = dst;
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../qsort.c: 36: unsigned char *restrict s = src;
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	../qsort.c: 38: while(n--)
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
;	Raw cost for generated ic 39 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 8 : (13, 20.000000) count=3.999997
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
;	Raw cost for generated ic 9 : (17, 24.000000) count=3.999997
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 11 : (11, 13.600000) count=3.999997
;	../qsort.c: 40: unsigned char tmp = *d;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 15 : (14, 21.000000) count=2.999997
;	../qsort.c: 41: *d = *s;
;	genPointerGet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 19 : (17, 27.000000) count=2.999997
;	genPointerSet
	lda	*(REGTEMP+0)
	sty	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+1)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+1)
;	Raw cost for generated ic 20 : (25, 39.000000) count=2.999997
;	../qsort.c: 42: *s = tmp;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (18, 28.000000) count=2.999997
;	../qsort.c: 43: d++;
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 24 : (17, 24.000000) count=2.999997
;	../qsort.c: 44: s++;
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 27 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 29 : (3, 3.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999999
;	../qsort.c: 46: }
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
;	Raw cost for generated ic 32 : (16, 30.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;nmemb         Allocated to stack - sp +21 +2 
;size          Allocated to stack - sp +23 +2 
;compar        Allocated to stack - sp +25 +2 
;base          Allocated to stack - sp +17 +2 
;b             Allocated to stack - sp +15 +2 
;i             Allocated to stack - sp +13 +2 
;j             Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;sloc3         Allocated to stack - sp +3 +2 
;sloc4         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../qsort.c: 48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_qsort:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../qsort.c: 50: unsigned char *b = base;
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x110,x
	lda	0x109,x
	sta	0x10f,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	../qsort.c: 52: if(nmemb <= 1)
;	genCmp
	lda	#0x01
	sec
	sbc	0x115,x
	lda	#0x00
	sbc	0x116,x
	bcc	00102$
;	Raw cost for generated ic 5 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../qsort.c: 53: return;
;	genRet
	jmp	00112$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x10e,x
	lda	0x109,x
	sta	0x10d,x
;	Raw cost for generated ic 12 : (13, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x118,x
	sta	0x10a,x
	lda	0x117,x
	sta	0x109,x
;	Raw cost for generated ic 26 : (12, 18.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 66 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x115,x
	tay
	lda	0x116,x
	tax
	tya
	jsr	__mulint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 68 : (18, 34.000000) count=1.000000
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10f,x
	sta	0x107,x
	lda	*(REGTEMP+0)
	adc	0x110,x
	sta	0x108,x
;	Raw cost for generated ic 15 : (18, 28.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=3.999196
;	genCmp
	tsx
	lda	0x10d,x
	sec
	sbc	0x107,x
	lda	0x10e,x
	sbc	0x108,x
	bcc	00151$
	jmp	00112$
00151$:
;	Raw cost for generated ic 16 : (19, 25.600000) count=3.999196
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=3.999196
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 20 : (12, 18.000000) count=2.999397
;	genLabel
00107$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=6.855505
;	genCmp
	tsx
	lda	0x10f,x
	sec
	sbc	0x10b,x
	lda	0x110,x
	sbc	0x10c,x
	bcc	00152$
	jmp	00111$
00152$:
;	Raw cost for generated ic 22 : (19, 25.600000) count=6.855505
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=6.855505
;	genMinus
	lda	0x10b,x
	sec
	sbc	0x109,x
	sta	0x105,x
	lda	0x10c,x
	sbc	0x10a,x
	sta	0x106,x
;	Raw cost for generated ic 27 : (19, 28.000000) count=5.141629
;	genCast
;	genCopy
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 28 : (9, 14.000000) count=5.141629
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 29 : (12, 18.000000) count=5.141629
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 30 : (8, 14.000000) count=5.141629
;	Raw cost for generated ic 31 : (0, 0.000000) count=5.141629
;	genPcall
	lda	0x119,x
	sta	*(REGTEMP+0)
	lda	0x11a,x
	sta	*(REGTEMP+1)
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	__sdcc_indirect_jsr
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 32 : (28, 48.000000) count=5.141629
;	genCmp
	txa
	sec
	sbc	#0x00
	bvc	00154$
	bpl	00153$
	bmi	00111$
00154$:
	bpl	00111$
00153$:
;	Raw cost for generated ic 33 : (15, 19.400002) count=5.141629
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=5.141629
;	../qsort.c: 58: swap(j, j - size, size);
;	genCast
;	genCopy
	tsx
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 39 : (13, 20.000000) count=3.856222
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
;	Raw cost for generated ic 40 : (12, 18.000000) count=3.856222
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 41 : (8, 14.000000) count=3.856222
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 42 : (8, 14.000000) count=3.856222
;	Raw cost for generated ic 43 : (0, 0.000000) count=3.856222
;	genCall
;	genSend
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
	jsr	_swap
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 44 : (22, 38.000000) count=3.856222
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
;	genAssign
;	genCopy
	tsx
	lda	0x106,x
	sta	0x10c,x
	lda	0x105,x
	sta	0x10b,x
;	Raw cost for generated ic 47 : (13, 20.000000) count=3.856222
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 49 : (3, 3.000000) count=3.856222
;	genLabel
00111$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=2.999284
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
;	genPlus
	tsx
	lda	0x10d,x
	clc
	adc	0x109,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x10a,x
	sta	0x10e,x
;	Raw cost for generated ic 52 : (20, 30.000000) count=2.999284
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 54 : (3, 3.000000) count=2.999284
;	genLabel
00112$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999799
;	../qsort.c: 60: }
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 57 : (16, 30.000000) count=0.999799
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
