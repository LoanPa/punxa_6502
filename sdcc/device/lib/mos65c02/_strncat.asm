;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncat
	
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
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncat_sloc0_1_0:
	.ds 2
_strncat_sloc1_1_0:
	.ds 2
_strncat_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncat_PARM_2:
	.ds 2
_strncat_PARM_3:
	.ds 2
_strncat_front_10000_27:
	.ds 2
_strncat_start_10000_28:
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back          Allocated with name '_strncat_PARM_2'
;count         Allocated with name '_strncat_PARM_3'
;front         Allocated with name '_strncat_front_10000_27'
;start         Allocated with name '_strncat_start_10000_28'
;sloc0         Allocated with name '_strncat_sloc0_1_0'
;sloc1         Allocated with name '_strncat_sloc1_1_0'
;sloc2         Allocated with name '_strncat_sloc2_1_0'
;------------------------------------------------------------
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncat:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncat.c: 33: char *start = front;
;	genAssign
;	genCopy
	sta	_strncat_start_10000_28
	stx	(_strncat_start_10000_28 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../_strncat.c: 35: while (*front++);
;	genAssign
;	genCopy
	sta	*_strncat_sloc0_1_0
	stx	*(_strncat_sloc0_1_0 + 1)
;	Raw cost for generated ic 46 : (4, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999999
;	genPointerGet
	ldy	#0x00
	lda	[*_strncat_sloc0_1_0],y
;	Raw cost for generated ic 8 : (4, 7.000000) count=3.999999
;	genPlus
;	  genPlusInc
	inc	*_strncat_sloc0_1_0
	bne	00147$
	inc	*(_strncat_sloc0_1_0 + 1)
00147$:
;	Raw cost for generated ic 6 : (6, 12.600000) count=3.999999
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999999
;	../_strncat.c: 37: front--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_strncat_sloc0_1_0
	sec
	sbc	#0x01
	sta	_strncat_front_10000_27
	lda	*(_strncat_sloc0_1_0 + 1)
	sbc	#0x00
	sta	(_strncat_front_10000_27 + 1)
;	Raw cost for generated ic 15 : (15, 20.000000) count=1.000000
;	../_strncat.c: 39: while (count--)
;	genAssign
;	genCopy
	lda	(_strncat_PARM_2 + 1)
	sta	*(_strncat_sloc0_1_0 + 1)
	lda	_strncat_PARM_2
	sta	*_strncat_sloc0_1_0
;	Raw cost for generated ic 49 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_strncat_front_10000_27 + 1)
	sta	*(_strncat_sloc1_1_0 + 1)
	lda	_strncat_front_10000_27
	sta	*_strncat_sloc1_1_0
;	Raw cost for generated ic 50 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_strncat_PARM_3 + 1)
	sta	*(_strncat_sloc2_1_0 + 1)
	lda	_strncat_PARM_3
	sta	*_strncat_sloc2_1_0
;	Raw cost for generated ic 51 : (10, 14.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.285712
;	genAssign
;	genCopy
	ldx	*(_strncat_sloc2_1_0 + 1)
	lda	*_strncat_sloc2_1_0
;	Raw cost for generated ic 18 : (4, 6.000000) count=2.285712
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_strncat_sloc2_1_0
	bne	00150$
	dec	*(_strncat_sloc2_1_0 + 1)
00150$:
	dec	*_strncat_sloc2_1_0
;	Raw cost for generated ic 19 : (8, 15.600000) count=2.285712
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00152$
	cpx	#0x00
	beq	00108$
00152$:
;	Raw cost for generated ic 21 : (11, 12.200000) count=2.285712
;	../_strncat.c: 40: if (!(*front++ = *back++))
;	genPointerGet
	ldy	#0x00
	lda	[*_strncat_sloc0_1_0],y
	tax
;	Raw cost for generated ic 30 : (5, 9.000000) count=1.714284
;	genPlus
;	  genPlusInc
	inc	*_strncat_sloc0_1_0
	bne	00153$
	inc	*(_strncat_sloc0_1_0 + 1)
00153$:
;	Raw cost for generated ic 28 : (6, 12.600000) count=1.714284
;	genPointerSet
	txa
	sta	[*_strncat_sloc1_1_0],y
;	Raw cost for generated ic 31 : (3, 8.000000) count=1.714284
;	genPlus
;	  genPlusInc
	inc	*_strncat_sloc1_1_0
	bne	00154$
	inc	*(_strncat_sloc1_1_0 + 1)
00154$:
;	Raw cost for generated ic 25 : (6, 12.600000) count=1.714284
;	genAssign
;	genCopy
	lda	*(_strncat_sloc1_1_0 + 1)
	sta	(_strncat_front_10000_27 + 1)
	lda	*_strncat_sloc1_1_0
	sta	_strncat_front_10000_27
;	Raw cost for generated ic 26 : (10, 14.000000) count=1.714284
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00106$
;	Raw cost for generated ic 32 : (7, 7.600000) count=1.714284
;	../_strncat.c: 41: return(start);
;	genRet
	ldx	(_strncat_start_10000_28 + 1)
	lda	_strncat_start_10000_28
	rts
;	Raw cost for generated ic 35 : (9, 11.000000) count=0.428571
;	genLabel
00108$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../_strncat.c: 43: *front = '\0';
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strncat_front_10000_27
	stx	*(DPTR+0)
	ldx	(_strncat_front_10000_27 + 1)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 40 : (15, 24.000000) count=0.999999
;	../_strncat.c: 44: return(start);
;	genRet
	ldx	(_strncat_start_10000_28 + 1)
	lda	_strncat_start_10000_28
;	Raw cost for generated ic 41 : (6, 8.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999999
;	../_strncat.c: 45: }
;	genEndFunction
	rts
;	Raw cost for generated ic 43 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
