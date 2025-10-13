;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcsncmp
	
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
	.globl _wcsncmp_PARM_3
	.globl _wcsncmp_PARM_2
	.globl _wcsncmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcsncmp_sloc0_1_0:
	.ds 2
_wcsncmp_sloc1_1_0:
	.ds 2
_wcsncmp_sloc2_1_0:
	.ds 2
_wcsncmp_sloc3_1_0:
	.ds 4
_wcsncmp_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcsncmp_PARM_2:
	.ds 2
_wcsncmp_PARM_3:
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
;Allocation info for local variables in function 'wcsncmp'
;------------------------------------------------------------
;last          Allocated with name '_wcsncmp_PARM_2'
;count         Allocated with name '_wcsncmp_PARM_3'
;first         Allocated to registers a x 
;sloc0         Allocated with name '_wcsncmp_sloc0_1_0'
;sloc1         Allocated with name '_wcsncmp_sloc1_1_0'
;sloc2         Allocated with name '_wcsncmp_sloc2_1_0'
;sloc3         Allocated with name '_wcsncmp_sloc3_1_0'
;sloc4         Allocated with name '_wcsncmp_sloc4_1_0'
;------------------------------------------------------------
;	../wcsncmp.c: 32: int wcsncmp ( const wchar_t * first, const wchar_t * last, size_t count )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcsncmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcsncmp:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcsncmp.c: 34: if (!count)
;	genIfx
	sta	*(REGTEMP+0)
	lda	(_wcsncmp_PARM_3 + 1)
	ora	_wcsncmp_PARM_3
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 3 : (17, 26.600000) count=1.000000
;	../wcsncmp.c: 35: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	../wcsncmp.c: 37: while (--count && *first && *first == *last) {
;	genLabel
00114$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*_wcsncmp_sloc0_1_0
	stx	*(_wcsncmp_sloc0_1_0 + 1)
;	Raw cost for generated ic 47 : (4, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_wcsncmp_PARM_2 + 1)
	sta	*(_wcsncmp_sloc1_1_0 + 1)
	lda	_wcsncmp_PARM_2
	sta	*_wcsncmp_sloc1_1_0
;	Raw cost for generated ic 50 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_wcsncmp_PARM_3 + 1)
	sta	*(_wcsncmp_sloc2_1_0 + 1)
	lda	_wcsncmp_PARM_3
	sta	*_wcsncmp_sloc2_1_0
;	Raw cost for generated ic 52 : (10, 14.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.729728
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*_wcsncmp_sloc2_1_0
	bne	00143$
	dec	*(_wcsncmp_sloc2_1_0 + 1)
00143$:
	dec	*_wcsncmp_sloc2_1_0
;	Raw cost for generated ic 9 : (8, 15.600000) count=1.729728
;	genIfx
	lda	*(_wcsncmp_sloc2_1_0 + 1)
	ora	*_wcsncmp_sloc2_1_0
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 11 : (9, 11.600000) count=1.729728
;	genPointerGet
	ldy	#0x00
	lda	[*_wcsncmp_sloc0_1_0],y
	sta	*_wcsncmp_sloc3_1_0
	iny
	lda	[*_wcsncmp_sloc0_1_0],y
	sta	*(_wcsncmp_sloc3_1_0 + 1)
	iny
	lda	[*_wcsncmp_sloc0_1_0],y
	sta	*(_wcsncmp_sloc3_1_0 + 2)
	iny
	lda	[*_wcsncmp_sloc0_1_0],y
	sta	*(_wcsncmp_sloc3_1_0 + 3)
;	Raw cost for generated ic 15 : (21, 40.000000) count=1.297296
;	genIfx
	ora	*(_wcsncmp_sloc3_1_0 + 2)
	ora	*(_wcsncmp_sloc3_1_0 + 1)
	ora	*_wcsncmp_sloc3_1_0
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 16 : (11, 14.600000) count=1.297296
;	genPointerGet
	ldy	#0x00
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*_wcsncmp_sloc4_1_0
	iny
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*(_wcsncmp_sloc4_1_0 + 1)
	iny
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*(_wcsncmp_sloc4_1_0 + 2)
	iny
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*(_wcsncmp_sloc4_1_0 + 3)
;	Raw cost for generated ic 22 : (21, 40.000000) count=0.972971
;	genCmpEQorNE
	lda	*_wcsncmp_sloc3_1_0
	cmp	*_wcsncmp_sloc4_1_0
	bne	00107$
	lda	*(_wcsncmp_sloc3_1_0 + 1)
	cmp	*(_wcsncmp_sloc4_1_0 + 1)
	bne	00107$
	lda	*(_wcsncmp_sloc3_1_0 + 2)
	cmp	*(_wcsncmp_sloc4_1_0 + 2)
	bne	00107$
	lda	*(_wcsncmp_sloc3_1_0 + 3)
	cmp	*(_wcsncmp_sloc4_1_0 + 3)
	bne	00107$
;	Raw cost for generated ic 23 : (36, 46.400002) count=0.972971
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.972971
;	../wcsncmp.c: 38: first++;
;	genPlus
;	  genPlusInc
	lda	*_wcsncmp_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcsncmp_sloc0_1_0
	bcc	00153$
	inc	*(_wcsncmp_sloc0_1_0 + 1)
00153$:
;	Raw cost for generated ic 28 : (11, 17.600000) count=0.729728
;	../wcsncmp.c: 39: last++;
;	genPlus
;	  genPlusInc
	lda	*_wcsncmp_sloc1_1_0
	clc
	adc	#0x04
	sta	*_wcsncmp_sloc1_1_0
	bcc	00105$
	inc	*(_wcsncmp_sloc1_1_0 + 1)
;	Raw cost for generated ic 31 : (11, 17.600000) count=0.729728
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 33 : (3, 3.000000) count=0.729728
;	genLabel
00107$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../wcsncmp.c: 42: return( *first - *last );
;	genPointerGet
	ldy	#0x01
	lda	[*_wcsncmp_sloc0_1_0],y
	tax
	dey
	lda	[*_wcsncmp_sloc0_1_0],y
;	Raw cost for generated ic 36 : (8, 16.000000) count=0.999998
;	genPointerGet
	sta	*(REGTEMP+0)
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*_wcsncmp_sloc4_1_0
	iny
	lda	[*_wcsncmp_sloc1_1_0],y
	sta	*(_wcsncmp_sloc4_1_0 + 1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 38 : (13, 24.000000) count=0.999998
;	genMinus
	sec
	sbc	*_wcsncmp_sloc4_1_0
	pha
	txa
	sbc	*(_wcsncmp_sloc4_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 39 : (9, 19.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999998
;	../wcsncmp.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 43 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
