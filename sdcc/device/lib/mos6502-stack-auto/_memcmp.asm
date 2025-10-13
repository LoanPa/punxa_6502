;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memcmp
	
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
	.globl _memcmp
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2          Allocated to stack - sp +10 +2 
;count         Allocated to stack - sp +12 +2 
;buf1          Allocated to stack - sp +6 +2 
;sloc0         Allocated to stack - sp +4 +2 
;sloc1         Allocated to stack - sp +2 +2 
;sloc2         Allocated to stack - sp +1 +1 
;------------------------------------------------------------
;	../_memcmp.c: 31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_memcmp:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_memcmp.c: 33: if (!count)
;	genIfx
	lda	0x10d,x
	ora	0x10c,x
;	genIfxJump : z
	bne	00112$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../_memcmp.c: 34: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00107$
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	../_memcmp.c: 36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
;	genLabel
00112$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10b,x
	sta	0x105,x
	lda	0x10a,x
	sta	0x104,x
;	Raw cost for generated ic 43 : (13, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10d,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x102,x
;	Raw cost for generated ic 46 : (12, 18.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=2.285585
;	genMinus
;	  genMinusDec - size=2  icount=1
	tsx
	lda	0x102,x
	sec
	sbc	#0x01
	sta	0x102,x
	lda	0x103,x
	sbc	#0x00
	sta	0x103,x
;	Raw cost for generated ic 9 : (18, 26.000000) count=2.285585
;	genIfx
	ora	0x102,x
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 11 : (8, 9.600000) count=2.285585
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x106,x
	sta	*(DPTR+0)
	lda	0x107,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
;	Raw cost for generated ic 15 : (17, 26.000000) count=1.714114
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x104,x
	sta	*(DPTR+0)
	lda	0x105,x
	sta	*(DPTR+1)
	lda	[DPTR],y
;	Raw cost for generated ic 17 : (12, 19.000000) count=1.714114
;	genCmpEQorNE
	cmp	0x101,x
	bne	00113$
;	Raw cost for generated ic 18 : (8, 9.600000) count=1.714114
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.714114
;	../_memcmp.c: 37: buf1 = (char *)buf1 + 1;
;	genPlus
;	  genPlusInc
	lda	0x106,x
	clc
	adc	#0x01
	sta	0x106,x
	lda	0x107,x
	adc	#0x00
	sta	0x107,x
;	Raw cost for generated ic 23 : (17, 24.000000) count=1.285585
;	../_memcmp.c: 38: buf2 = (char *)buf2 + 1;
;	genPlus
;	  genPlusInc
	lda	0x104,x
	clc
	adc	#0x01
	sta	0x104,x
	lda	0x105,x
	adc	#0x00
	sta	0x105,x
;	Raw cost for generated ic 27 : (17, 24.000000) count=1.285585
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 30 : (3, 3.000000) count=1.285585
;	genLabel
00113$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999925
;	genAssign
;	genCopy
	tsx
	lda	0x105,x
	sta	0x10b,x
	lda	0x104,x
	sta	0x10a,x
;	Raw cost for generated ic 45 : (13, 20.000000) count=0.999925
;	../_memcmp.c: 41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x106,x
	sta	*(DPTR+0)
	lda	0x107,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 33 : (15, 23.000000) count=0.999925
;	genCast
;	genCopy
	lda	#0x00
	sta	0x103,x
	tya
	sta	0x102,x
;	Raw cost for generated ic 34 : (9, 14.000000) count=0.999925
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 36 : (14, 21.000000) count=0.999925
;	genCast
	sta	0x104,x
	tya
	sta	0x105,x
;	Raw cost for generated ic 37 : (7, 12.000000) count=0.999925
;	genMinus
	lda	0x102,x
	sec
	sbc	0x104,x
	pha
	lda	0x103,x
	sbc	0x105,x
	tax
	pla
;	Raw cost for generated ic 38 : (16, 27.000000) count=0.999925
;	genRet
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.999925
;	genLabel
00107$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999925
;	../_memcmp.c: 42: }
;	genEndFunction
;	  adjustStack : cycles stk:34  incdec:24  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 41 : (14, 30.000000) count=0.999925
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
