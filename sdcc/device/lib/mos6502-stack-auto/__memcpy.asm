;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __memcpy
	
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
	.globl ___memcpy
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
;Allocation info for local variables in function '__memcpy'
;------------------------------------------------------------
;src           Allocated to stack - sp +15 +2 
;n             Allocated to stack - sp +17 +2 
;dst           Allocated to stack - sp +11 +2 
;ret           Allocated to stack - sp +9 +2 
;d             Allocated to registers 
;s             Allocated to registers 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../__memcpy.c: 31: void *__memcpy (void *dst, const void *src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
___memcpy:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../__memcpy.c: 33: void *ret = dst;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../__memcpy.c: 34: char *d = dst;
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	../__memcpy.c: 35: const char *s = src;
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	../__memcpy.c: 37: while (n--)
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
;	Raw cost for generated ic 34 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=3.999997
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 9 : (13, 20.000000) count=3.999997
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
;	Raw cost for generated ic 10 : (17, 24.000000) count=3.999997
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 12 : (11, 13.600000) count=3.999997
;	../__memcpy.c: 38: *d++ = *s++;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 21 : (14, 21.000000) count=2.999997
;	genPlus
;	  genPlusInc
	pha
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
	pla
;	Raw cost for generated ic 19 : (19, 31.000000) count=2.999997
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (16, 26.000000) count=2.999997
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 16 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 23 : (3, 3.000000) count=2.999997
;	genLabel
00103$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	../__memcpy.c: 40: return(ret);
;	genRet
	tsx
	lda	0x10a,x
	sta	*(REGTEMP+0)
	lda	0x109,x
;	Raw cost for generated ic 25 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999999
;	../__memcpy.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 27 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
