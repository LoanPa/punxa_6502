;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modulong
	
	.r65c02
	.optsdcc -mmos65c02

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
	.globl __modulong_PARM_2
	.globl __modulong_PARM_1
	.globl __modulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__modulong_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__modulong_PARM_1:
	.ds 4
__modulong_PARM_2:
	.ds 4
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;a             Allocated with name '__modulong_PARM_1'
;b             Allocated with name '__modulong_PARM_2'
;count         Allocated to registers x 
;sloc0         Allocated with name '__modulong_sloc0_1_0'
;------------------------------------------------------------
;	../_modulong.c: 342: _modulong (unsigned long a, unsigned long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_modulong.c: 344: unsigned char count = 0;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 2 : (2, 2.000000) count=1.000000
;	../_modulong.c: 346: while (!MSB_SET(b))
;	genAssign
;	genCopy
	ldy	#0x00
;	Raw cost for generated ic 46 : (2, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.230759
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	(__modulong_PARM_2 + 3)
	asl	a
	lda	#0x00
	sta	*(__modulong_sloc0_1_0 + 3)
	sta	*(__modulong_sloc0_1_0 + 2)
	sta	*(__modulong_sloc0_1_0 + 1)
	rol	a
	sta	*__modulong_sloc0_1_0
;	Raw cost for generated ic 4 : (15, 22.000000) count=1.230759
;	genAnd
	and	#0x01
;	genIfxJump : z
	bne	00117$
;	Raw cost for generated ic 5 : (9, 10.200000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230759
;	../_modulong.c: 348: b <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	__modulong_PARM_2
	rol	(__modulong_PARM_2 + 1)
	rol	(__modulong_PARM_2 + 2)
	rol	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 9 : (12, 24.000000) count=0.923069
;	../_modulong.c: 349: if (b > a)
;	genCmp
	lda	__modulong_PARM_1
	sec
	sbc	__modulong_PARM_2
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	lda	(__modulong_PARM_1 + 3)
	sbc	(__modulong_PARM_2 + 3)
	bcs	00102$
;	Raw cost for generated ic 11 : (30, 39.599998) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.923069
;	../_modulong.c: 351: b >>=1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	(__modulong_PARM_2 + 3)
	lsr	a
	ror	(__modulong_PARM_2 + 2)
	ror	(__modulong_PARM_2 + 1)
	ror	__modulong_PARM_2
	sta	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 15 : (16, 28.000000) count=0.692302
;	../_modulong.c: 352: break;
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 17 : (3, 3.000000) count=0.692302
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.230759
;	../_modulong.c: 354: count++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 20 : (1, 2.000000) count=0.230759
;	genAssign
;	genCopy
	tya
	tax
;	Raw cost for generated ic 21 : (2, 4.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=0.230759
;	../_modulong.c: 356: do
;	genLabel
00117$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=3.999952
;	../_modulong.c: 358: if (a >= b)
;	genCmp
	lda	__modulong_PARM_1
	sec
	sbc	__modulong_PARM_2
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	lda	(__modulong_PARM_1 + 3)
	sbc	(__modulong_PARM_2 + 3)
	bcc	00107$
;	Raw cost for generated ic 25 : (30, 39.599998) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999952
;	../_modulong.c: 359: a -= b;
;	genMinus
	lda	__modulong_PARM_1
	sec
	sbc	__modulong_PARM_2
	sta	__modulong_PARM_1
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	(__modulong_PARM_1 + 3)
	sbc	(__modulong_PARM_2 + 3)
	sta	(__modulong_PARM_1 + 3)
;	Raw cost for generated ic 29 : (37, 50.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999947
;	../_modulong.c: 360: b >>= 1;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=1
	lda	(__modulong_PARM_2 + 3)
	lsr	a
	ror	(__modulong_PARM_2 + 2)
	ror	(__modulong_PARM_2 + 1)
	ror	__modulong_PARM_2
	sta	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 32 : (16, 28.000000) count=3.999947
;	../_modulong.c: 362: while (count--);
;	genAssign
;	genCopy
	txa
;	Raw cost for generated ic 35 : (1, 2.000000) count=3.999947
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 36 : (1, 2.000000) count=3.999947
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 38 : (7, 7.600000) count=3.999947
;	../_modulong.c: 364: return a;
;	genRet
	lda	(__modulong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__modulong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__modulong_PARM_1 + 1)
	lda	__modulong_PARM_1
;	Raw cost for generated ic 41 : (16, 22.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999983
;	../_modulong.c: 365: }
;	genEndFunction
	rts
;	Raw cost for generated ic 43 : (1, 6.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
