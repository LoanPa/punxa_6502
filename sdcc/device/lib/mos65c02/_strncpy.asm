;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncpy
	
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
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncpy_sloc0_1_0:
	.ds 2
_strncpy_sloc1_1_0:
	.ds 2
_strncpy_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncpy_PARM_2:
	.ds 2
_strncpy_PARM_3:
	.ds 2
_strncpy_d1_10000_28:
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s             Allocated with name '_strncpy_PARM_2'
;n             Allocated with name '_strncpy_PARM_3'
;d             Allocated to registers a x 
;d1            Allocated with name '_strncpy_d1_10000_28'
;sloc0         Allocated with name '_strncpy_sloc0_1_0'
;sloc1         Allocated with name '_strncpy_sloc1_1_0'
;sloc2         Allocated with name '_strncpy_sloc2_1_0'
;------------------------------------------------------------
;	../_strncpy.c: 33: char *strncpy ( char * d, const char * s, size_t n )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncpy:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncpy.c: 35: register char * d1 =  d;
;	genAssign
;	genCopy
	sta	_strncpy_d1_10000_28
	stx	(_strncpy_d1_10000_28 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../_strncpy.c: 37: while ( n && *s )
;	genAssign
;	genCopy
	ldy	(_strncpy_PARM_3 + 1)
	sty	*(_strncpy_sloc0_1_0 + 1)
	ldy	_strncpy_PARM_3
	sty	*_strncpy_sloc0_1_0
;	Raw cost for generated ic 44 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_strncpy_PARM_2 + 1)
	sty	*(_strncpy_sloc1_1_0 + 1)
	ldy	_strncpy_PARM_2
	sty	*_strncpy_sloc1_1_0
;	Raw cost for generated ic 47 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*_strncpy_sloc2_1_0
	stx	*(_strncpy_sloc2_1_0 + 1)
;	Raw cost for generated ic 49 : (4, 6.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genIfx
	lda	*(_strncpy_sloc0_1_0 + 1)
	ora	*_strncpy_sloc0_1_0
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 5 : (9, 11.600000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_strncpy_sloc1_1_0],y
;	Raw cost for generated ic 9 : (4, 7.000000) count=1.714284
;	genIfx
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 10 : (5, 5.600000) count=1.714284
;	../_strncpy.c: 39: n-- ;
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldx	*_strncpy_sloc0_1_0
	bne	00146$
	dec	*(_strncpy_sloc0_1_0 + 1)
00146$:
	dec	*_strncpy_sloc0_1_0
;	Raw cost for generated ic 14 : (8, 15.600000) count=1.285713
;	../_strncpy.c: 40: *d++ = *s++ ;
;	genAssign
;	genCopy
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.285713
;	genPlus
;	  genPlusInc
	inc	*_strncpy_sloc1_1_0
	bne	00147$
	inc	*(_strncpy_sloc1_1_0 + 1)
00147$:
;	Raw cost for generated ic 20 : (6, 12.600000) count=1.285713
;	genPointerSet
	sta	[*_strncpy_sloc2_1_0],y
;	Raw cost for generated ic 23 : (2, 6.000000) count=1.285713
;	genPlus
;	  genPlusInc
	inc	*_strncpy_sloc2_1_0
	bne	00102$
	inc	*(_strncpy_sloc2_1_0 + 1)
;	Raw cost for generated ic 17 : (6, 12.600000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 24 : (3, 3.000000) count=1.285713
;	../_strncpy.c: 42: while ( n-- )
;	genLabel
00114$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	lda	*(_strncpy_sloc0_1_0 + 1)
	sta	*(_strncpy_sloc1_1_0 + 1)
	lda	*_strncpy_sloc0_1_0
	sta	*_strncpy_sloc1_1_0
;	Raw cost for generated ic 54 : (8, 12.000000) count=0.999999
;	genLabel
00105$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999990
;	genAssign
;	genCopy
	ldx	*(_strncpy_sloc1_1_0 + 1)
	lda	*_strncpy_sloc1_1_0
;	Raw cost for generated ic 27 : (4, 6.000000) count=3.999990
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_strncpy_sloc1_1_0
	bne	00149$
	dec	*(_strncpy_sloc1_1_0 + 1)
00149$:
	dec	*_strncpy_sloc1_1_0
;	Raw cost for generated ic 28 : (8, 15.600000) count=3.999990
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00151$
	cpx	#0x00
	beq	00107$
00151$:
;	Raw cost for generated ic 30 : (11, 12.200000) count=3.999990
;	../_strncpy.c: 44: *d++ = '\0' ;
;	genPointerSet
	lda	#0x00
	tay
	sta	[*_strncpy_sloc2_1_0],y
;	Raw cost for generated ic 36 : (5, 10.000000) count=2.999990
;	genPlus
;	  genPlusInc
	inc	*_strncpy_sloc2_1_0
	bne	00105$
	inc	*(_strncpy_sloc2_1_0 + 1)
;	Raw cost for generated ic 34 : (6, 12.600000) count=2.999990
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 37 : (3, 3.000000) count=2.999990
;	genLabel
00107$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	../_strncpy.c: 46: return d1;
;	genRet
	ldx	(_strncpy_d1_10000_28 + 1)
	lda	_strncpy_d1_10000_28
;	Raw cost for generated ic 39 : (6, 8.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999997
;	../_strncpy.c: 47: }
;	genEndFunction
	rts
;	Raw cost for generated ic 41 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
