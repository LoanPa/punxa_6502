;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strncmp
	
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
	.globl _strncmp_PARM_3
	.globl _strncmp_PARM_2
	.globl _strncmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncmp_sloc0_1_0:
	.ds 2
_strncmp_sloc1_1_0:
	.ds 2
_strncmp_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strncmp_PARM_2:
	.ds 2
_strncmp_PARM_3:
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
;Allocation info for local variables in function 'strncmp'
;------------------------------------------------------------
;last          Allocated with name '_strncmp_PARM_2'
;count         Allocated with name '_strncmp_PARM_3'
;first         Allocated to registers a x 
;sloc0         Allocated with name '_strncmp_sloc0_1_0'
;sloc1         Allocated with name '_strncmp_sloc1_1_0'
;sloc2         Allocated with name '_strncmp_sloc2_1_0'
;------------------------------------------------------------
;	../_strncmp.c: 31: int strncmp ( const char * first, const char * last, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncmp:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strncmp.c: 33: if (!count)
;	genIfx
	sta	*(REGTEMP+0)
	lda	(_strncmp_PARM_3 + 1)
	ora	_strncmp_PARM_3
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 3 : (17, 26.600000) count=1.000000
;	../_strncmp.c: 34: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	../_strncmp.c: 36: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*_strncmp_sloc0_1_0
	stx	*(_strncmp_sloc0_1_0 + 1)
;	Raw cost for generated ic 46 : (4, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_strncmp_PARM_2 + 1)
	sta	*(_strncmp_sloc1_1_0 + 1)
	lda	_strncmp_PARM_2
	sta	*_strncmp_sloc1_1_0
;	Raw cost for generated ic 49 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_strncmp_PARM_3 + 1)
	sta	*(_strncmp_sloc2_1_0 + 1)
	lda	_strncmp_PARM_3
	sta	*_strncmp_sloc2_1_0
;	Raw cost for generated ic 51 : (10, 14.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.729728
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_strncmp_sloc2_1_0
	bne	00143$
	dec	*(_strncmp_sloc2_1_0 + 1)
00143$:
	dec	*_strncmp_sloc2_1_0
;	Raw cost for generated ic 9 : (8, 15.600000) count=1.729728
;	genIfx
	lda	*(_strncmp_sloc2_1_0 + 1)
	ora	*_strncmp_sloc2_1_0
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 11 : (9, 11.600000) count=1.729728
;	genPointerGet
	ldy	#0x00
	lda	[*_strncmp_sloc0_1_0],y
	tax
;	Raw cost for generated ic 15 : (5, 9.000000) count=1.297296
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 16 : (5, 5.600000) count=1.297296
;	genPointerGet
	lda	[*_strncmp_sloc1_1_0],y
;	Raw cost for generated ic 22 : (2, 5.000000) count=0.972971
;	genCmpEQorNE
	stx	*(REGTEMP+0)
	cmp	*(REGTEMP+0)
	bne	00107$
;	Raw cost for generated ic 23 : (9, 11.600000) count=0.972971
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.972971
;	../_strncmp.c: 37: first++;
;	genPlus
;	  genPlusInc
	inc	*_strncmp_sloc0_1_0
	bne	00149$
	inc	*(_strncmp_sloc0_1_0 + 1)
00149$:
;	Raw cost for generated ic 28 : (6, 12.600000) count=0.729728
;	../_strncmp.c: 38: last++;
;	genPlus
;	  genPlusInc
	inc	*_strncmp_sloc1_1_0
	bne	00105$
	inc	*(_strncmp_sloc1_1_0 + 1)
;	Raw cost for generated ic 31 : (6, 12.600000) count=0.729728
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 33 : (3, 3.000000) count=0.729728
;	genLabel
00107$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../_strncmp.c: 41: return( *first - *last );
;	genPointerGet
	ldy	#0x00
	lda	[*_strncmp_sloc0_1_0],y
;	Raw cost for generated ic 36 : (4, 7.000000) count=0.999998
;	genCast
	sta	*_strncmp_sloc2_1_0
	sty	*(_strncmp_sloc2_1_0 + 1)
;	Raw cost for generated ic 37 : (4, 6.000000) count=0.999998
;	genPointerGet
	lda	[*_strncmp_sloc1_1_0],y
;	Raw cost for generated ic 39 : (2, 5.000000) count=0.999998
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 40 : (2, 2.000000) count=0.999998
;	genMinus
	sta	*(REGTEMP+0)
	lda	*_strncmp_sloc2_1_0
	sec
	sbc	*(REGTEMP+0)
	pha
	lda	*(_strncmp_sloc2_1_0 + 1)
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 41 : (14, 25.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.999998
;	../_strncmp.c: 42: }
;	genEndFunction
	rts
;	Raw cost for generated ic 44 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
