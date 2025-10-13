;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module memccpy
	
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
	.globl _memccpy
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src           Allocated to stack - sp +15 +2 
;c             Allocated to stack - sp +17 +2 
;n             Allocated to stack - sp +19 +2 
;dst           Allocated to stack - sp +11 +2 
;d             Allocated to stack - sp +9 +2 
;s             Allocated to registers 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../memccpy.c: 31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_memccpy:
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
;	../memccpy.c: 33: char *d = dst;
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../memccpy.c: 34: const char *s = src;
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	../memccpy.c: 36: while (n--)
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x104,x
	lda	0x113,x
	sta	0x103,x
;	Raw cost for generated ic 38 : (12, 18.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=2.285713
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 8 : (13, 20.000000) count=2.285713
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
;	Raw cost for generated ic 9 : (17, 24.000000) count=2.285713
;	genIfx
	lda	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 11 : (11, 13.600000) count=2.285713
;	../memccpy.c: 37: if ((*d++ = *s++) == (unsigned char)c)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 20 : (15, 23.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 18 : (17, 24.000000) count=1.714284
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	*(REGTEMP+0)
	tya
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 21 : (21, 33.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 15 : (17, 24.000000) count=1.714284
;	genAssign
;	genCopy
	sta	0x10a,x
	lda	0x107,x
	sta	0x109,x
;	Raw cost for generated ic 16 : (9, 14.000000) count=1.714284
;	genCast
;	genCopy
	lda	0x111,x
;	Raw cost for generated ic 22 : (3, 4.000000) count=1.714284
;	genCmpEQorNE
	sty	*(REGTEMP+0)
	cmp	*(REGTEMP+0)
	bne	00103$
;	Raw cost for generated ic 23 : (9, 11.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	../memccpy.c: 38: return (d);
;	genCast
;	genCopy
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
;	Raw cost for generated ic 27 : (9, 14.000000) count=0.428570
;	genRet
	jmp	00106$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.428570
;	genLabel
00105$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999998
;	../memccpy.c: 40: return (0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 32 : (3, 4.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999998
;	../memccpy.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 34 : (16, 30.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
