;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memmove
	
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
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 2
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memmove_PARM_2:
	.ds 2
_memmove_PARM_3:
	.ds 2
_memmove_dst_10000_27:
	.ds 2
_memmove_c_10000_28:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src           Allocated with name '_memmove_PARM_2'
;size          Allocated with name '_memmove_PARM_3'
;dst           Allocated with name '_memmove_dst_10000_27'
;c             Allocated with name '_memmove_c_10000_28'
;d             Allocated to registers 
;s             Allocated to registers a x 
;sloc0         Allocated with name '_memmove_sloc0_1_0'
;sloc1         Allocated with name '_memmove_sloc1_1_0'
;sloc2         Allocated with name '_memmove_sloc2_1_0'
;sloc3         Allocated with name '_memmove_sloc3_1_0'
;------------------------------------------------------------
;	../_memmove.c: 35: void *memmove (void *dst, const void *src, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memmove:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_memmove_dst_10000_27
	stx	(_memmove_dst_10000_27 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_memmove.c: 37: size_t c = size;
;	genAssign
;	genCopy
	lda	(_memmove_PARM_3 + 1)
	sta	(_memmove_c_10000_28 + 1)
	lda	_memmove_PARM_3
	sta	_memmove_c_10000_28
;	Raw cost for generated ic 3 : (12, 16.000000) count=1.000000
;	../_memmove.c: 38: if (c == 0 || dst == src)
;	genIfx
	lda	(_memmove_c_10000_28 + 1)
	ora	_memmove_c_10000_28
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 4 : (11, 13.600000) count=1.000000
;	genCmpEQorNE
	lda	_memmove_dst_10000_27
	cmp	_memmove_PARM_2
	bne	00102$
	cpx	(_memmove_PARM_2 + 1)
	bne	00102$
;	Raw cost for generated ic 7 : (19, 23.200001) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genLabel
00101$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.812500
;	../_memmove.c: 39: return dst;
;	genRet
	ldx	(_memmove_dst_10000_27 + 1)
	lda	_memmove_dst_10000_27
	rts
;	Raw cost for generated ic 11 : (9, 11.000000) count=0.812500
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_memmove.c: 41: char *d = dst;
;	genCast
;	genCopy
	lda	(_memmove_dst_10000_27 + 1)
	sta	*(_memmove_sloc0_1_0 + 1)
	lda	_memmove_dst_10000_27
	sta	*_memmove_sloc0_1_0
;	Raw cost for generated ic 13 : (10, 14.000000) count=1.000000
;	../_memmove.c: 42: const char *s = src;
;	genCast
;	genCopy
	ldx	(_memmove_PARM_2 + 1)
	lda	_memmove_PARM_2
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	../_memmove.c: 43: if (s < d) {
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	*_memmove_sloc0_1_0
	txa
	sbc	*(_memmove_sloc0_1_0 + 1)
	lda	*(REGTEMP+0)
	bcs	00119$
;	Raw cost for generated ic 17 : (15, 21.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../_memmove.c: 50: s += c;
;	genPlus
	clc
	adc	_memmove_c_10000_28
	pha
	txa
	adc	(_memmove_c_10000_28 + 1)
	tax
;	Raw cost for generated ic 21 : (11, 21.000000) count=0.750000
;	../_memmove.c: 51: d += c;
;	genPlus
	lda	*_memmove_sloc0_1_0
	clc
	adc	_memmove_c_10000_28
	sta	*_memmove_sloc1_1_0
	lda	*(_memmove_sloc0_1_0 + 1)
	adc	(_memmove_c_10000_28 + 1)
	sta	*(_memmove_sloc1_1_0 + 1)
	pla
;	Raw cost for generated ic 23 : (17, 29.000000) count=0.750000
;	../_memmove.c: 52: do {
;	genAssign
;	genCopy
	sta	*_memmove_sloc2_1_0
	stx	*(_memmove_sloc2_1_0 + 1)
;	Raw cost for generated ic 66 : (4, 6.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_memmove_c_10000_28 + 1)
	sta	*(_memmove_sloc3_1_0 + 1)
	lda	_memmove_c_10000_28
	sta	*_memmove_sloc3_1_0
;	Raw cost for generated ic 68 : (10, 14.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=2.999997
;	../_memmove.c: 53: *--d = *--s;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_memmove_sloc1_1_0
	bne	00158$
	dec	*(_memmove_sloc1_1_0 + 1)
00158$:
	dec	*_memmove_sloc1_1_0
;	Raw cost for generated ic 26 : (8, 15.600000) count=2.999997
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_memmove_sloc2_1_0
	bne	00159$
	dec	*(_memmove_sloc2_1_0 + 1)
00159$:
	dec	*_memmove_sloc2_1_0
;	Raw cost for generated ic 29 : (8, 15.600000) count=2.999997
;	genPointerGet
	ldy	#0x00
	lda	[*_memmove_sloc2_1_0],y
;	Raw cost for generated ic 32 : (4, 7.000000) count=2.999997
;	genPointerSet
	sta	[*_memmove_sloc1_1_0],y
;	Raw cost for generated ic 33 : (2, 6.000000) count=2.999997
;	../_memmove.c: 54: } while (--c);
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_memmove_sloc3_1_0
	bne	00160$
	dec	*(_memmove_sloc3_1_0 + 1)
00160$:
	dec	*_memmove_sloc3_1_0
;	Raw cost for generated ic 35 : (8, 15.600000) count=2.999997
;	genIfx
	lda	*(_memmove_sloc3_1_0 + 1)
	ora	*_memmove_sloc3_1_0
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 37 : (9, 11.600000) count=2.999997
;	genGoto
	jmp	00112$
;	Raw cost for generated ic 40 : (3, 3.000000) count=0.749999
;	../_memmove.c: 59: do {
;	genLabel
00119$:
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	sta	*_memmove_sloc3_1_0
	stx	*(_memmove_sloc3_1_0 + 1)
;	Raw cost for generated ic 70 : (4, 6.000000) count=0.250000
;	genAssign
;	genCopy
	lda	*(_memmove_sloc0_1_0 + 1)
	sta	*(_memmove_sloc2_1_0 + 1)
	lda	*_memmove_sloc0_1_0
	sta	*_memmove_sloc2_1_0
;	Raw cost for generated ic 73 : (8, 12.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_memmove_c_10000_28 + 1)
	sta	*(_memmove_sloc1_1_0 + 1)
	lda	_memmove_c_10000_28
	sta	*_memmove_sloc1_1_0
;	Raw cost for generated ic 75 : (10, 14.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999968
;	../_memmove.c: 60: *d++ = *s++;
;	genPointerGet
	ldy	#0x00
	lda	[*_memmove_sloc3_1_0],y
;	Raw cost for generated ic 49 : (4, 7.000000) count=0.999968
;	genPlus
;	  genPlusInc
	inc	*_memmove_sloc3_1_0
	bne	00163$
	inc	*(_memmove_sloc3_1_0 + 1)
00163$:
;	Raw cost for generated ic 47 : (6, 12.600000) count=0.999968
;	genPointerSet
	sta	[*_memmove_sloc2_1_0],y
;	Raw cost for generated ic 50 : (2, 6.000000) count=0.999968
;	genPlus
;	  genPlusInc
	inc	*_memmove_sloc2_1_0
	bne	00164$
	inc	*(_memmove_sloc2_1_0 + 1)
00164$:
;	Raw cost for generated ic 44 : (6, 12.600000) count=0.999968
;	../_memmove.c: 61: } while (--c);
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_memmove_sloc1_1_0
	bne	00165$
	dec	*(_memmove_sloc1_1_0 + 1)
00165$:
	dec	*_memmove_sloc1_1_0
;	Raw cost for generated ic 52 : (8, 15.600000) count=0.999968
;	genIfx
	lda	*(_memmove_sloc1_1_0 + 1)
	ora	*_memmove_sloc1_1_0
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 54 : (9, 11.600000) count=0.999968
;	genLabel
00112$:
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.999991
;	../_memmove.c: 65: return dst;
;	genRet
	ldx	(_memmove_dst_10000_27 + 1)
	lda	_memmove_dst_10000_27
;	Raw cost for generated ic 58 : (6, 8.000000) count=0.999991
;	genLabel
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.999991
;	../_memmove.c: 66: }
;	genEndFunction
	rts
;	Raw cost for generated ic 60 : (1, 6.000000) count=0.999991
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
