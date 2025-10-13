;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module qsort
	
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
	.globl _qsort_PARM_4
	.globl _qsort_PARM_3
	.globl _qsort_PARM_2
	.globl _qsort
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_qsort_sloc0_1_0:
	.ds 2
_qsort_sloc1_1_0:
	.ds 2
_qsort_sloc2_1_0:
	.ds 2
_qsort_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_swap_sloc0_1_0:
	.ds 2
_swap_sloc1_1_0:
	.ds 2
_swap_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_swap_PARM_2:
	.ds 2
_swap_PARM_3:
	.ds 2
_qsort_PARM_2:
	.ds 2
_qsort_PARM_3:
	.ds 2
_qsort_PARM_4:
	.ds 2
_qsort_b_10000_47:
	.ds 2
_qsort_i_20000_49:
	.ds 2
_qsort_j_40000_51:
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
;Allocation info for local variables in function 'swap'
;------------------------------------------------------------
;src           Allocated with name '_swap_PARM_2'
;n             Allocated with name '_swap_PARM_3'
;dst           Allocated to registers a x 
;d             Allocated to registers 
;s             Allocated to registers 
;tmp           Allocated to registers x 
;sloc0         Allocated with name '_swap_sloc0_1_0'
;sloc1         Allocated with name '_swap_sloc1_1_0'
;sloc2         Allocated with name '_swap_sloc2_1_0'
;------------------------------------------------------------
;	../qsort.c: 33: static void swap(void *restrict dst, void *restrict src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function swap
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_swap:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../qsort.c: 35: unsigned char *restrict d = dst;
;	genCast
;	genCopy
	sta	*_swap_sloc0_1_0
	stx	*(_swap_sloc0_1_0 + 1)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../qsort.c: 36: unsigned char *restrict s = src;
;	genCast
;	genCopy
	lda	(_swap_PARM_2 + 1)
	sta	*(_swap_sloc1_1_0 + 1)
	lda	_swap_PARM_2
	sta	*_swap_sloc1_1_0
;	Raw cost for generated ic 5 : (10, 14.000000) count=1.000000
;	../qsort.c: 38: while(n--)
;	genAssign
;	genCopy
	lda	(_swap_PARM_3 + 1)
	sta	*(_swap_sloc2_1_0 + 1)
	lda	_swap_PARM_3
	sta	*_swap_sloc2_1_0
;	Raw cost for generated ic 39 : (10, 14.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genAssign
;	genCopy
	ldx	*(_swap_sloc2_1_0 + 1)
	lda	*_swap_sloc2_1_0
;	Raw cost for generated ic 8 : (4, 6.000000) count=3.999997
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_swap_sloc2_1_0
	bne	00119$
	dec	*(_swap_sloc2_1_0 + 1)
00119$:
	dec	*_swap_sloc2_1_0
;	Raw cost for generated ic 9 : (8, 15.600000) count=3.999997
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00121$
	cpx	#0x00
	beq	00104$
00121$:
;	Raw cost for generated ic 11 : (11, 12.200000) count=3.999997
;	../qsort.c: 40: unsigned char tmp = *d;
;	genPointerGet
	ldy	#0x00
	lda	[*_swap_sloc0_1_0],y
	tax
;	Raw cost for generated ic 15 : (5, 9.000000) count=2.999997
;	../qsort.c: 41: *d = *s;
;	genPointerGet
	lda	[*_swap_sloc1_1_0],y
;	Raw cost for generated ic 19 : (2, 5.000000) count=2.999997
;	genPointerSet
	sta	[*_swap_sloc0_1_0],y
;	Raw cost for generated ic 20 : (2, 6.000000) count=2.999997
;	../qsort.c: 42: *s = tmp;
;	genPointerSet
	txa
	sta	[*_swap_sloc1_1_0],y
;	Raw cost for generated ic 22 : (3, 8.000000) count=2.999997
;	../qsort.c: 43: d++;
;	genPlus
;	  genPlusInc
	inc	*_swap_sloc0_1_0
	bne	00122$
	inc	*(_swap_sloc0_1_0 + 1)
00122$:
;	Raw cost for generated ic 24 : (6, 12.600000) count=2.999997
;	../qsort.c: 44: s++;
;	genPlus
;	  genPlusInc
	inc	*_swap_sloc1_1_0
	bne	00101$
	inc	*(_swap_sloc1_1_0 + 1)
;	Raw cost for generated ic 27 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 29 : (3, 3.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999999
;	../qsort.c: 46: }
;	genEndFunction
	rts
;	Raw cost for generated ic 32 : (1, 6.000000) count=0.999999
;------------------------------------------------------------
;Allocation info for local variables in function 'qsort'
;------------------------------------------------------------
;sloc0         Allocated with name '_qsort_sloc0_1_0'
;sloc1         Allocated with name '_qsort_sloc1_1_0'
;sloc2         Allocated with name '_qsort_sloc2_1_0'
;sloc3         Allocated with name '_qsort_sloc3_1_0'
;nmemb         Allocated with name '_qsort_PARM_2'
;size          Allocated with name '_qsort_PARM_3'
;compar        Allocated with name '_qsort_PARM_4'
;base          Allocated to registers a x 
;b             Allocated with name '_qsort_b_10000_47'
;i             Allocated with name '_qsort_i_20000_49'
;j             Allocated with name '_qsort_j_40000_51'
;------------------------------------------------------------
;	../qsort.c: 48: void qsort(void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function qsort
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_qsort:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../qsort.c: 50: unsigned char *b = base;
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	_qsort_b_10000_47
	stx	(_qsort_b_10000_47 + 1)
;	Raw cost for generated ic 4 : (6, 8.000000) count=1.000000
;	../qsort.c: 52: if(nmemb <= 1)
;	genCmp
	lda	#0x01
	sec
	sbc	_qsort_PARM_2
	lda	#0x00
	sbc	(_qsort_PARM_2 + 1)
	lda	(_qsort_b_10000_47+0)
	bcc	00102$
;	Raw cost for generated ic 5 : (19, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../qsort.c: 53: return;
;	genRet
	rts
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
;	genAssign
;	genCopy
	sta	_qsort_i_20000_49
	stx	(_qsort_i_20000_49 + 1)
;	Raw cost for generated ic 12 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_qsort_PARM_3 + 1)
	sta	*(_qsort_sloc0_1_0 + 1)
	lda	_qsort_PARM_3
	sta	*_qsort_sloc0_1_0
;	Raw cost for generated ic 26 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_qsort_sloc0_1_0 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	*_qsort_sloc0_1_0
	sta	__mulint_PARM_2
;	Raw cost for generated ic 67 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 66 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_qsort_PARM_2 + 1)
	lda	_qsort_PARM_2
	jsr	__mulint
;	assignResultValue
;	Raw cost for generated ic 68 : (9, 14.000000) count=1.000000
;	genPlus
	clc
	adc	_qsort_b_10000_47
	sta	*_qsort_sloc1_1_0
	txa
	adc	(_qsort_b_10000_47 + 1)
	sta	*(_qsort_sloc1_1_0 + 1)
;	Raw cost for generated ic 15 : (12, 18.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=3.999196
;	genCmp
	lda	_qsort_i_20000_49
	sec
	sbc	*_qsort_sloc1_1_0
	lda	(_qsort_i_20000_49 + 1)
	sbc	*(_qsort_sloc1_1_0 + 1)
	bcc	00151$
	rts
00151$:
;	Raw cost for generated ic 16 : (16, 21.600000) count=3.999196
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=3.999196
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
;	genAssign
;	genCopy
	lda	(_qsort_i_20000_49 + 1)
	sta	(_qsort_j_40000_51 + 1)
	lda	_qsort_i_20000_49
	sta	_qsort_j_40000_51
;	Raw cost for generated ic 20 : (12, 16.000000) count=2.999397
;	genLabel
00107$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=6.855505
;	genCmp
	lda	_qsort_b_10000_47
	sec
	sbc	_qsort_j_40000_51
	lda	(_qsort_b_10000_47 + 1)
	sbc	(_qsort_j_40000_51 + 1)
	bcs	00111$
;	Raw cost for generated ic 22 : (18, 23.600000) count=6.855505
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=6.855505
;	genMinus
	lda	_qsort_j_40000_51
	sec
	sbc	*_qsort_sloc0_1_0
	sta	*_qsort_sloc2_1_0
	lda	(_qsort_j_40000_51 + 1)
	sbc	*(_qsort_sloc0_1_0 + 1)
	sta	*(_qsort_sloc2_1_0 + 1)
;	Raw cost for generated ic 27 : (15, 22.000000) count=5.141629
;	genCast
;	genCopy
	tax
	lda	*_qsort_sloc2_1_0
;	Raw cost for generated ic 28 : (3, 5.000000) count=5.141629
;	genCast
;	genCopy
	ldy	(_qsort_j_40000_51 + 1)
	sty	*(_qsort_sloc3_1_0 + 1)
	ldy	_qsort_j_40000_51
	sty	*_qsort_sloc3_1_0
;	Raw cost for generated ic 29 : (10, 14.000000) count=5.141629
;	genIpush
	phx
	pha
;	Raw cost for generated ic 30 : (2, 6.000000) count=5.141629
;	Raw cost for generated ic 31 : (0, 0.000000) count=5.141629
;	genPcall
	lda	_qsort_PARM_4
	sta	*(REGTEMP+0)
	lda	(_qsort_PARM_4 + 1)
	sta	*(REGTEMP+1)
;	genSend
	ldx	*(_qsort_sloc3_1_0 + 1)
	tya
	jsr	__sdcc_indirect_jsr
;	assignResultValue
	sta	*_qsort_sloc3_1_0
	stx	*(_qsort_sloc3_1_0 + 1)
;	  adjustStack : cycles stk:8  incdec:8  adc:12
	pla
	pla
;	Raw cost for generated ic 32 : (22, 39.000000) count=5.141629
;	genCmp
	bit	*(_qsort_sloc3_1_0 + 1)
	bpl	00111$
;	Raw cost for generated ic 33 : (7, 8.600000) count=5.141629
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=5.141629
;	../qsort.c: 58: swap(j, j - size, size);
;	genCast
;	genCopy
	ldx	(_qsort_j_40000_51 + 1)
	lda	_qsort_j_40000_51
;	Raw cost for generated ic 37 : (6, 8.000000) count=3.856222
;	genCast
;	genCopy
	ldy	*(_qsort_sloc2_1_0 + 1)
	sty	(_swap_PARM_2 + 1)
	ldy	*_qsort_sloc2_1_0
	sty	_swap_PARM_2
;	Raw cost for generated ic 40 : (10, 14.000000) count=3.856222
;	genAssign
;	genCopy
	ldy	*(_qsort_sloc0_1_0 + 1)
	sty	(_swap_PARM_3 + 1)
	ldy	*_qsort_sloc0_1_0
	sty	_swap_PARM_3
;	Raw cost for generated ic 43 : (10, 14.000000) count=3.856222
;	Raw cost for generated ic 41 : (0, 0.000000) count=3.856222
;	genCall
;	genSend
	jsr	_swap
;	Raw cost for generated ic 44 : (3, 6.000000) count=3.856222
;	../qsort.c: 57: for(unsigned char *j = i; (j > b) && (*compar)(j, j - size) < 0; j -= size)
;	genAssign
;	genCopy
	lda	*(_qsort_sloc2_1_0 + 1)
	sta	(_qsort_j_40000_51 + 1)
	lda	*_qsort_sloc2_1_0
	sta	_qsort_j_40000_51
;	Raw cost for generated ic 48 : (10, 14.000000) count=3.856222
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 49 : (3, 3.000000) count=3.856222
;	genLabel
00111$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=2.999284
;	../qsort.c: 55: for(unsigned char *i = base; i < b + nmemb * size; i += size)
;	genPlus
	lda	_qsort_i_20000_49
	clc
	adc	*_qsort_sloc0_1_0
	sta	_qsort_i_20000_49
	lda	(_qsort_i_20000_49 + 1)
	adc	*(_qsort_sloc0_1_0 + 1)
	sta	(_qsort_i_20000_49 + 1)
;	Raw cost for generated ic 52 : (17, 24.000000) count=2.999284
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 54 : (3, 3.000000) count=2.999284
;	genLabel
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999799
;	../qsort.c: 60: }
;	genEndFunction
	rts
;	Raw cost for generated ic 57 : (1, 6.000000) count=0.999799
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
