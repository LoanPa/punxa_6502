;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memset
	
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
	.globl _memset
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c             Allocated to stack - sp +11 +1 
;n             Allocated to stack - sp +12 +2 
;s             Allocated to stack - sp +7 +2 
;sz            Allocated to stack - sp +5 +2 
;dst           Allocated to registers 
;data          Allocated to registers y 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_memset.c: 42: void *memset (void *s, unsigned char c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_memset:
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
;	../_memset.c: 144: register size_t sz = n;
;	genAssign
;	genCopy
	lda	0x10d,x
	sta	0x106,x
	lda	0x10c,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../_memset.c: 145: if (sz != 0)
;	genIfx
	lda	0x10d,x
	ora	0x10c,x
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 4 : (11, 13.600000) count=1.000000
;	../_memset.c: 147: register char *dst = s;
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x104,x
	lda	0x107,x
	sta	0x103,x
;	Raw cost for generated ic 7 : (12, 18.000000) count=0.750000
;	../_memset.c: 148: register char data = (char)c;
;	genAssign
;	genCopy
	lda	0x10b,x
	tay
;	Raw cost for generated ic 9 : (4, 6.000000) count=0.750000
;	../_memset.c: 149: do {
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 29 : (12, 18.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=2.999997
;	../_memset.c: 150: *dst++ = data;
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 14 : (22, 35.000000) count=2.999997
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 12 : (17, 24.000000) count=2.999997
;	../_memset.c: 151: } while (--sz);
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x101,x
	sec
	sbc	#0x01
	sta	0x101,x
	lda	0x102,x
	sbc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 16 : (17, 24.000000) count=2.999997
;	genIfx
	ora	0x101,x
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 18 : (8, 9.600000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.999999
;	../_memset.c: 153: return s;
;	genRet
	tsx
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
;	Raw cost for generated ic 22 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999999
;	../_memset.c: 154: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 24 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
