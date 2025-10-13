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
	.globl _mblen_PARM_2
	.globl _mblen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mblen_sloc0_1_0:
	.ds 2
_mblen_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mblen_PARM_2:
	.ds 2
_mblen_s_10000_42:
	.ds 2
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
;n             Allocated with name '_mblen_PARM_2'
;s             Allocated with name '_mblen_s_10000_42'
;m             Allocated to registers 
;c             Allocated to registers a 
;sloc0         Allocated with name '_mblen_sloc0_1_0'
;sloc1         Allocated with name '_mblen_sloc1_1_0'
;------------------------------------------------------------
;	../mblen.c: 31: int mblen(const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mblen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mblen:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mblen_s_10000_42
	stx	(_mblen_s_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mblen.c: 36: if(!s)
;	genIfx
	txa
	ora	_mblen_s_10000_42
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 4 : (9, 11.600000) count=1.000000
;	../mblen.c: 37: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 7 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../mblen.c: 39: if(!n)
;	genIfx
	lda	(_mblen_PARM_2 + 1)
	ora	_mblen_PARM_2
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 9 : (11, 13.600000) count=1.000000
;	../mblen.c: 40: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 12 : (6, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../mblen.c: 42: c = *s;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mblen_s_10000_42
	stx	*(DPTR+0)
	ldx	(_mblen_s_10000_42 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 15 : (14, 21.000000) count=1.000000
;	../mblen.c: 44: if(!c)
;	genIfx
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 17 : (5, 5.600000) count=1.000000
;	../mblen.c: 45: return(0);
;	genRet
	tya
	tax
	rts
;	Raw cost for generated ic 20 : (5, 7.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../mblen.c: 47: if(c <= 0x7f)
;	genCmp
	cmp	#0x7f
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
	rts
;	Raw cost for generated ic 26 : (7, 7.000000) count=0.750000
;	../mblen.c: 50: while(c & 0x80)
;	genLabel
00126$:
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 75 : (2, 2.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999997
;	genAnd
	cmp	#0x00
;	genIfxJump : n
	bpl	00111$
;	Raw cost for generated ic 30 : (7, 7.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999997
;	../mblen.c: 52: c <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=1
	asl	a
;	Raw cost for generated ic 34 : (1, 2.000000) count=2.999997
;	../mblen.c: 53: m++;
;	genPlus
;	  genPlusInc
	inx
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
	ldy	#0x00
	sty	*(_mblen_sloc0_1_0 + 1)
	stx	*_mblen_sloc0_1_0
;	Raw cost for generated ic 41 : (6, 8.000000) count=0.999999
;	genCmp
	lda	_mblen_PARM_2
	sec
	sbc	*_mblen_sloc0_1_0
	lda	(_mblen_PARM_2 + 1)
	sbc	*(_mblen_sloc0_1_0 + 1)
	bcs	00129$
;	Raw cost for generated ic 42 : (16, 21.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999999
;	../mblen.c: 57: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.749999
;	../mblen.c: 60: while(--m)
;	genLabel
00129$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.999998
;	genAssign
;	genCopy
	lda	(_mblen_s_10000_42 + 1)
	sta	*(_mblen_sloc1_1_0 + 1)
	lda	_mblen_s_10000_42
	sta	*_mblen_sloc1_1_0
;	Raw cost for generated ic 78 : (10, 14.000000) count=0.999998
;	genAssign
;	genCopy
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.999998
;	genLabel
00116$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=2.285708
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 51 : (1, 2.000000) count=2.285708
;	genIfx
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 53 : (5, 5.600000) count=2.285708
;	../mblen.c: 61: if((*++s & 0xc0) != 0x80)
;	genPlus
;	  genPlusInc
	inc	*_mblen_sloc1_1_0
	bne	00194$
	inc	*(_mblen_sloc1_1_0 + 1)
00194$:
;	Raw cost for generated ic 56 : (6, 12.600000) count=1.714281
;	genPointerGet
	ldy	#0x00
	lda	[*_mblen_sloc1_1_0],y
;	Raw cost for generated ic 59 : (4, 7.000000) count=1.714281
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
	rts
;	Raw cost for generated ic 66 : (6, 7.000000) count=0.428570
;	genLabel
00118$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999996
;	../mblen.c: 64: return(n);
;	genRet
	ldx	*(_mblen_sloc0_1_0 + 1)
	lda	*_mblen_sloc0_1_0
;	Raw cost for generated ic 70 : (4, 6.000000) count=0.999996
;	genLabel
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.999996
;	../mblen.c: 65: }
;	genEndFunction
	rts
;	Raw cost for generated ic 72 : (1, 6.000000) count=0.999996
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
