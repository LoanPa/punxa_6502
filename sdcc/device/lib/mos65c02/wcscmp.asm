;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcscmp
	
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
	.globl _wcscmp_PARM_2
	.globl _wcscmp
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcscmp_sloc0_1_0:
	.ds 2
_wcscmp_sloc1_1_0:
	.ds 2
_wcscmp_sloc2_1_0:
	.ds 4
_wcscmp_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcscmp_PARM_2:
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
;Allocation info for local variables in function 'wcscmp'
;------------------------------------------------------------
;s2            Allocated with name '_wcscmp_PARM_2'
;s1            Allocated to registers 
;sloc0         Allocated with name '_wcscmp_sloc0_1_0'
;sloc1         Allocated with name '_wcscmp_sloc1_1_0'
;sloc2         Allocated with name '_wcscmp_sloc2_1_0'
;sloc3         Allocated with name '_wcscmp_sloc3_1_0'
;------------------------------------------------------------
;	../wcscmp.c: 31: int wcscmp(const wchar_t *s1, const wchar_t *s2)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcscmp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcscmp:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_wcscmp_sloc0_1_0
	stx	*(_wcscmp_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../wcscmp.c: 33: while(*s1 == *s2 && *s1)
;	genAssign
;	genCopy
	lda	(_wcscmp_PARM_2 + 1)
	sta	*(_wcscmp_sloc1_1_0 + 1)
	lda	_wcscmp_PARM_2
	sta	*_wcscmp_sloc1_1_0
;	Raw cost for generated ic 52 : (10, 14.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*_wcscmp_sloc2_1_0
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 3)
;	Raw cost for generated ic 5 : (21, 40.000000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*_wcscmp_sloc3_1_0
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 3)
;	Raw cost for generated ic 7 : (21, 40.000000) count=2.285713
;	genCmpEQorNE
	lda	*_wcscmp_sloc2_1_0
	cmp	*_wcscmp_sloc3_1_0
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 1)
	cmp	*(_wcscmp_sloc3_1_0 + 1)
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 2)
	cmp	*(_wcscmp_sloc3_1_0 + 2)
	bne	00104$
	lda	*(_wcscmp_sloc2_1_0 + 3)
	cmp	*(_wcscmp_sloc3_1_0 + 3)
	bne	00104$
;	Raw cost for generated ic 8 : (36, 46.400002) count=2.285713
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=2.285713
;	genIfx
	lda	*(_wcscmp_sloc2_1_0 + 3)
	ora	*(_wcscmp_sloc2_1_0 + 2)
	ora	*(_wcscmp_sloc2_1_0 + 1)
	ora	*_wcscmp_sloc2_1_0
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 14 : (13, 17.600000) count=1.714284
;	../wcscmp.c: 34: s1++, s2++;
;	genPlus
;	  genPlusInc
	lda	*_wcscmp_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcscmp_sloc0_1_0
	bcc	00149$
	inc	*(_wcscmp_sloc0_1_0 + 1)
00149$:
;	Raw cost for generated ic 18 : (11, 17.600000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	*_wcscmp_sloc1_1_0
	clc
	adc	#0x04
	sta	*_wcscmp_sloc1_1_0
	bcc	00102$
	inc	*(_wcscmp_sloc1_1_0 + 1)
;	Raw cost for generated ic 21 : (11, 17.600000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 23 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	../wcscmp.c: 36: if(*s1 < *s2)
;	genPointerGet
	ldy	#0x00
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*_wcscmp_sloc3_1_0
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc0_1_0],y
	sta	*(_wcscmp_sloc3_1_0 + 3)
;	Raw cost for generated ic 26 : (21, 40.000000) count=0.999999
;	genPointerGet
	ldy	#0x00
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*_wcscmp_sloc2_1_0
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 1)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 2)
	iny
	lda	[*_wcscmp_sloc1_1_0],y
	sta	*(_wcscmp_sloc2_1_0 + 3)
;	Raw cost for generated ic 28 : (21, 40.000000) count=0.999999
;	genCmp
	lda	*_wcscmp_sloc3_1_0
	sec
	sbc	*_wcscmp_sloc2_1_0
	lda	*(_wcscmp_sloc3_1_0 + 1)
	sbc	*(_wcscmp_sloc2_1_0 + 1)
	lda	*(_wcscmp_sloc3_1_0 + 2)
	sbc	*(_wcscmp_sloc2_1_0 + 2)
	lda	*(_wcscmp_sloc3_1_0 + 3)
	sbc	*(_wcscmp_sloc2_1_0 + 3)
	bcs	00106$
;	Raw cost for generated ic 29 : (22, 31.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999999
;	../wcscmp.c: 37: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 33 : (6, 7.000000) count=0.749999
;	genLabel
00106$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 38: if(*s1 > *s2)
;	genCmp
	lda	*_wcscmp_sloc2_1_0
	sec
	sbc	*_wcscmp_sloc3_1_0
	lda	*(_wcscmp_sloc2_1_0 + 1)
	sbc	*(_wcscmp_sloc3_1_0 + 1)
	lda	*(_wcscmp_sloc2_1_0 + 2)
	sbc	*(_wcscmp_sloc3_1_0 + 2)
	lda	*(_wcscmp_sloc2_1_0 + 3)
	sbc	*(_wcscmp_sloc3_1_0 + 3)
	bcs	00108$
;	Raw cost for generated ic 39 : (22, 31.600000) count=0.999998
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 39: return(1);
;	genRet
	lda	#0x01
	ldx	#0x00
	rts
;	Raw cost for generated ic 43 : (7, 7.000000) count=0.749999
;	genLabel
00108$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 40: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 45 : (3, 4.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	../wcscmp.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 47 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
