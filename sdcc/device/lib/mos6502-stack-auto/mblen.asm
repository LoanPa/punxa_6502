;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mblen
	
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
	.globl _mblen
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
;Allocation info for local variables in function 'mblen'
;------------------------------------------------------------
;n             Allocated to stack - sp +10 +2 
;s             Allocated to stack - sp +6 +2 
;m             Allocated to stack - sp +5 +1 
;c             Allocated to registers x 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../mblen.c: 31: int mblen(const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_mblen:
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
;	../mblen.c: 36: if(!s)
;	genIfx
	lda	0x107,x
	ora	0x106,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 4 : (11, 13.600000) count=1.000000
;	../mblen.c: 37: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00119$
;	Raw cost for generated ic 7 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../mblen.c: 39: if(!n)
;	genIfx
	tsx
	lda	0x10b,x
	ora	0x10a,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 9 : (12, 15.600000) count=1.000000
;	../mblen.c: 40: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00119$
;	Raw cost for generated ic 12 : (6, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../mblen.c: 42: c = *s;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x106,x
	sta	*(DPTR+0)
	lda	0x107,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 15 : (16, 25.000000) count=1.000000
;	../mblen.c: 44: if(!c)
;	genIfx
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 17 : (5, 5.600000) count=1.000000
;	../mblen.c: 45: return(0);
;	genRet
	tya
	tax
	jmp	00119$
;	Raw cost for generated ic 20 : (5, 7.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../mblen.c: 47: if(c <= 0x7f)
;	genCmp
	cpx	#0x7f
	beq	00188$
	bcs	00126$
00188$:
;	Raw cost for generated ic 22 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	../mblen.c: 48: return(1);
;	genRet
	lda	#0x01
	ldx	#0x00
	jmp	00119$
;	Raw cost for generated ic 26 : (7, 7.000000) count=0.750000
;	../mblen.c: 50: while(c & 0x80)
;	genLabel
00126$:
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 75 : (2, 2.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999997
;	genAnd
	txa
	and	#0x80
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 30 : (8, 9.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999997
;	../mblen.c: 52: c <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=1
	txa
	asl	a
	tax
;	Raw cost for generated ic 34 : (3, 6.000000) count=2.999997
;	../mblen.c: 53: m++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 37 : (1, 2.000000) count=2.999997
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 39 : (3, 3.000000) count=2.999997
;	genLabel
00111$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999999
;	../mblen.c: 56: if(m > n)
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x104,x
	tya
	sta	0x103,x
;	Raw cost for generated ic 41 : (10, 16.000000) count=0.999999
;	genCmp
	lda	0x10a,x
	sec
	sbc	0x103,x
	lda	0x10b,x
	sbc	0x104,x
	bcs	00129$
;	Raw cost for generated ic 42 : (18, 23.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999999
;	../mblen.c: 57: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00119$
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.749999
;	../mblen.c: 60: while(--m)
;	genLabel
00129$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.999998
;	genAssign
;	genCopy
	tsx
	lda	0x107,x
	sta	0x102,x
	lda	0x106,x
	sta	0x101,x
;	Raw cost for generated ic 78 : (13, 20.000000) count=0.999998
;	genAssign
;	genCopy
	tya
	sta	0x105,x
;	Raw cost for generated ic 79 : (4, 7.000000) count=0.999998
;	genLabel
00116$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=2.285708
;	genMinus
;	  genMinusDec - size=1  icount=1
	tsx
	lda	0x105,x
	sec
	sbc	#0x01
	sta	0x105,x
;	Raw cost for generated ic 51 : (10, 15.000000) count=2.285708
;	genIfx
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 53 : (5, 5.600000) count=2.285708
;	../mblen.c: 61: if((*++s & 0xc0) != 0x80)
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 56 : (17, 24.000000) count=1.714281
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x101,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 59 : (11, 17.000000) count=1.714281
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.714281
;	genAnd
	and	#0xc0
;	Raw cost for generated ic 61 : (2, 2.000000) count=1.714281
;	genCmpEQorNE
	cmp	#0x80
	beq	00116$
;	Raw cost for generated ic 62 : (7, 7.600000) count=1.714281
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.714281
;	../mblen.c: 62: return(-1);
;	genRet
	lda	#0xff
	tax
	jmp	00119$
;	Raw cost for generated ic 66 : (6, 7.000000) count=0.428570
;	genLabel
00118$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999996
;	../mblen.c: 64: return(n);
;	genRet
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 70 : (11, 16.000000) count=0.999996
;	genLabel
00119$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.999996
;	../mblen.c: 65: }
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
;	Raw cost for generated ic 72 : (14, 30.000000) count=0.999996
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
