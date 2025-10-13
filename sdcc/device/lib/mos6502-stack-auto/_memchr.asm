;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memchr
	
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
	.globl _memchr
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c             Allocated to stack - sp +11 +2 
;n             Allocated to stack - sp +13 +2 
;s             Allocated to stack - sp +7 +2 
;p             Allocated to stack - sp +5 +2 
;end           Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_memchr:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../_memchr.c: 34: unsigned char *end = p + n;
;	genPlus
	clc
	adc	0x10d,x
	sta	0x103,x
	lda	0x106,x
	adc	0x10e,x
	sta	0x104,x
;	Raw cost for generated ic 5 : (16, 24.000000) count=1.000000
;	../_memchr.c: 38: return(0);
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 32 : (12, 18.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999993
;	../_memchr.c: 35: for(; p != end; p++)
;	genCmpEQorNE
	tsx
	lda	0x101,x
	cmp	0x103,x
	bne	00128$
	lda	0x102,x
	cmp	0x104,x
	beq	00103$
00128$:
;	Raw cost for generated ic 8 : (23, 29.200001) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=3.999993
;	../_memchr.c: 36: if(*p == (unsigned char)c)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 13 : (15, 23.000000) count=2.999995
;	genCast
;	genCopy
	lda	0x10b,x
;	Raw cost for generated ic 14 : (3, 4.000000) count=2.999995
;	genCmpEQorNE
	sty	*(REGTEMP+0)
	cmp	*(REGTEMP+0)
	bne	00106$
;	Raw cost for generated ic 15 : (9, 11.600000) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=2.999995
;	../_memchr.c: 37: return((void *)p);
;	genCast
;	genCopy
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
;	Raw cost for generated ic 19 : (9, 14.000000) count=2.249995
;	genRet
	jmp	00107$
;	Raw cost for generated ic 20 : (3, 3.000000) count=2.249995
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=2.999993
;	../_memchr.c: 35: for(; p != end; p++)
;	genPlus
;	  genPlusInc
	tsx
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 24 : (18, 26.000000) count=2.999993
;	genAssign
;	genCopy
	sta	0x106,x
	lda	0x101,x
	sta	0x105,x
;	Raw cost for generated ic 25 : (9, 14.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 26 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999997
;	../_memchr.c: 38: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 28 : (3, 4.000000) count=0.999997
;	genLabel
00107$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999997
;	../_memchr.c: 39: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 30 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
