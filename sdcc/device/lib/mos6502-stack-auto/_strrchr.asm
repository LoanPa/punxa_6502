;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strrchr
	
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
	.globl _strrchr
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch            Allocated to stack - sp +9 +1 
;string        Allocated to stack - sp +5 +2 
;start         Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strrchr.c: 32: char * strrchr ( const char * string, char ch )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_strrchr:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strrchr.c: 37: const char * start = string;
;	genAssign
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	../_strrchr.c: 39: while (*string++)                       /* find end of string */
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 42 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999999
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
;	Raw cost for generated ic 8 : (16, 25.000000) count=3.999999
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 6 : (17, 24.000000) count=3.999999
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999999
;	../_strrchr.c: 42: while (--string != start && *string != ch)
;	genAssign
;	genCopy
	sta	0x106,x
	lda	0x101,x
	sta	0x105,x
;	Raw cost for generated ic 45 : (9, 14.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.285712
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
;	Raw cost for generated ic 15 : (18, 26.000000) count=2.285712
;	genCmpEQorNE
	lda	0x105,x
	cmp	0x103,x
	bne	00146$
	lda	0x106,x
	cmp	0x104,x
	beq	00107$
00146$:
;	Raw cost for generated ic 17 : (22, 27.200001) count=2.285712
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.285712
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 22 : (15, 23.000000) count=1.714284
;	genCmpEQorNE
	tay
	cmp	0x109,x
	bne	00105$
;	Raw cost for generated ic 23 : (9, 11.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	genLabel
00107$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 45: if (*string == ch)                      /* char found ? */
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 30 : (16, 25.000000) count=0.999999
;	genCmpEQorNE
	tay
	cmp	0x109,x
	bne	00109$
;	Raw cost for generated ic 31 : (9, 11.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 46: return( (char *)string );
;	genRet
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
	jmp	00110$
;	Raw cost for generated ic 35 : (13, 17.000000) count=0.749999
;	genLabel
00109$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 48: return (NULL) ;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.999999
;	genLabel
00110$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 49: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 39 : (13, 28.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
