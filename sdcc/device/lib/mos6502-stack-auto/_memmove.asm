;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memmove
	
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
	.globl _memmove
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src           Allocated to stack - sp +17 +2 
;size          Allocated to stack - sp +19 +2 
;dst           Allocated to stack - sp +13 +2 
;c             Allocated to stack - sp +11 +2 
;d             Allocated to registers 
;s             Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_memmove.c: 35: void *memmove (void *dst, const void *src, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_memmove:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_memmove.c: 37: size_t c = size;
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x10c,x
	lda	0x113,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../_memmove.c: 38: if (c == 0 || dst == src)
;	genIfx
	lda	0x10c,x
	ora	0x10b,x
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 4 : (11, 13.600000) count=1.000000
;	genCmpEQorNE
	lda	0x10d,x
	cmp	0x111,x
	bne	00102$
	lda	0x10e,x
	cmp	0x112,x
	bne	00102$
;	Raw cost for generated ic 7 : (22, 27.200001) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.812500
;	../_memmove.c: 39: return dst;
;	genRet
	tsx
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
	jmp	00113$
;	Raw cost for generated ic 11 : (14, 19.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_memmove.c: 41: char *d = dst;
;	genCast
;	genCopy
	tsx
	lda	0x10e,x
	sta	0x108,x
	lda	0x10d,x
	sta	0x107,x
;	Raw cost for generated ic 13 : (13, 20.000000) count=1.000000
;	../_memmove.c: 42: const char *s = src;
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x109,x
;	Raw cost for generated ic 15 : (12, 18.000000) count=1.000000
;	../_memmove.c: 43: if (s < d) {
;	genCmp
	sec
	sbc	0x107,x
	lda	0x10a,x
	sbc	0x108,x
	bcc	00157$
	jmp	00119$
00157$:
;	Raw cost for generated ic 17 : (15, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../_memmove.c: 50: s += c;
;	genPlus
	lda	0x109,x
	clc
	adc	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	adc	0x10c,x
	sta	0x10a,x
;	Raw cost for generated ic 21 : (19, 28.000000) count=0.750000
;	../_memmove.c: 51: d += c;
;	genPlus
	lda	0x107,x
	clc
	adc	0x10b,x
	sta	0x105,x
	lda	0x108,x
	adc	0x10c,x
	sta	0x106,x
;	Raw cost for generated ic 23 : (19, 28.000000) count=0.750000
;	../_memmove.c: 52: do {
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x104,x
	lda	0x109,x
	sta	0x103,x
;	Raw cost for generated ic 66 : (12, 18.000000) count=0.750000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 68 : (12, 18.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=2.999997
;	../_memmove.c: 53: *--d = *--s;
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 26 : (18, 26.000000) count=2.999997
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x103,x
	sec
	sbc	#0x01
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 29 : (17, 24.000000) count=2.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x103,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 32 : (12, 19.000000) count=2.999997
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	sta	[DPTR],y
;	Raw cost for generated ic 33 : (20, 33.000000) count=2.999997
;	../_memmove.c: 54: } while (--c);
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 35 : (18, 26.000000) count=2.999997
;	genIfx
	ora	0x101,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 37 : (8, 9.600000) count=2.999997
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 40 : (3, 3.000000) count=0.749999
;	../_memmove.c: 59: do {
;	genLabel
00119$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 70 : (13, 20.000000) count=0.250000
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
;	Raw cost for generated ic 73 : (12, 18.000000) count=0.250000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 75 : (12, 18.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999968
;	../_memmove.c: 60: *d++ = *s++;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 49 : (16, 25.000000) count=0.999968
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 47 : (17, 24.000000) count=0.999968
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 50 : (21, 33.000000) count=0.999968
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 44 : (17, 24.000000) count=0.999968
;	../_memmove.c: 61: } while (--c);
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
	lda	0x106,x
	sbc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 52 : (17, 24.000000) count=0.999968
;	genIfx
	ora	0x105,x
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 54 : (8, 9.600000) count=0.999968
;	genLabel
00112$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.999991
;	../_memmove.c: 65: return dst;
;	genRet
	tsx
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 58 : (11, 16.000000) count=0.999991
;	genLabel
00113$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.999991
;	../_memmove.c: 66: }
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 60 : (16, 30.000000) count=0.999991
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
