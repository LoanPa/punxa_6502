;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module free
	
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
	.globl _free
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_free_sloc0_1_0:
	.ds 2
_free_sloc1_1_0:
	.ds 2
_free_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_free_ptr_10000_43:
	.ds 2
_free_h_10000_44:
	.ds 2
_free_next_free_10000_44:
	.ds 2
_free_prev_free_10000_44:
	.ds 2
_free_f_10000_44:
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
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;ptr           Allocated with name '_free_ptr_10000_43'
;h             Allocated with name '_free_h_10000_44'
;next_free     Allocated with name '_free_next_free_10000_44'
;prev_free     Allocated with name '_free_prev_free_10000_44'
;f             Allocated with name '_free_f_10000_44'
;sloc0         Allocated with name '_free_sloc0_1_0'
;sloc1         Allocated with name '_free_sloc1_1_0'
;sloc2         Allocated with name '_free_sloc2_1_0'
;------------------------------------------------------------
;	../free.c: 50: void free(void *ptr)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_free:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_free_ptr_10000_43
	stx	(_free_ptr_10000_43 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../free.c: 55: if(!ptr)
;	genIfx
	txa
	ora	_free_ptr_10000_43
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (9, 11.600000) count=1.000000
;	../free.c: 56: return;
;	genRet
	rts
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../free.c: 58: prev_free = 0;
;	genAssign
;	genAssignLit
	stz	_free_prev_free_10000_44
	stz	(_free_prev_free_10000_44 + 1)
;	Raw cost for generated ic 9 : (6, 8.000000) count=1.000000
;	../free.c: 59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
;	genAssign
;	genCopy
	ldx	(___sdcc_heap_free + 1)
	lda	___sdcc_heap_free
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>___sdcc_heap_free
	sty	(_free_f_10000_44 + 1)
	ldy	#___sdcc_heap_free
	sty	_free_f_10000_44
;	Raw cost for generated ic 12 : (10, 12.000000) count=1.000000
;	genLabel
00111$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.285713
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00167$
	cpx	#0x00
	beq	00103$
00167$:
;	Raw cost for generated ic 15 : (11, 12.200000) count=2.285713
;	genCast
;	genCopy
	ldy	(_free_ptr_10000_43 + 1)
	sty	*(_free_sloc0_1_0 + 1)
	ldy	_free_ptr_10000_43
	sty	*_free_sloc0_1_0
;	Raw cost for generated ic 18 : (10, 14.000000) count=1.714284
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	*_free_sloc0_1_0
	txa
	sbc	*(_free_sloc0_1_0 + 1)
	lda	*(REGTEMP+0)
	bcs	00103$
;	Raw cost for generated ic 19 : (15, 21.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.714284
;	genAssign
;	genCopy
	sta	_free_prev_free_10000_44
	stx	(_free_prev_free_10000_44 + 1)
;	Raw cost for generated ic 24 : (6, 8.000000) count=1.285713
;	genPlus
;	  genPlusInc
	clc
	adc	#0x02
	bcc	00169$
	inx
00169$:
;	Raw cost for generated ic 26 : (6, 8.600000) count=1.285713
;	genAssign
;	genCopy
	sta	_free_f_10000_44
	stx	(_free_f_10000_44 + 1)
;	Raw cost for generated ic 27 : (6, 8.000000) count=1.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 30 : (12, 22.000000) count=1.285713
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 32 : (3, 3.000000) count=1.285713
;	genLabel
00103$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999999
;	../free.c: 60: next_free = h;
;	genAssign
;	genCopy
	sta	_free_next_free_10000_44
	stx	(_free_next_free_10000_44 + 1)
;	Raw cost for generated ic 34 : (6, 8.000000) count=0.999999
;	../free.c: 62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
;	genCast
;	genCopy
	ldx	(_free_ptr_10000_43 + 1)
	lda	_free_ptr_10000_43
;	Raw cost for generated ic 35 : (6, 8.000000) count=0.999999
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00170$
	dex
00170$:
;	Raw cost for generated ic 36 : (6, 8.600000) count=0.999999
;	genCast
;	genCopy
	sta	_free_h_10000_44
	stx	(_free_h_10000_44 + 1)
;	Raw cost for generated ic 38 : (6, 8.000000) count=0.999999
;	../free.c: 65: h->next_free = next_free;
;	genAssign
;	genCopy
	sta	*_free_sloc0_1_0
	stx	*(_free_sloc0_1_0 + 1)
;	Raw cost for generated ic 41 : (4, 6.000000) count=0.999999
;	genPointerSet
	lda	_free_next_free_10000_44
	ldy	#0x02
	sta	[*_free_sloc0_1_0],y
	lda	(_free_next_free_10000_44 + 1)
	iny
	sta	[*_free_sloc0_1_0],y
;	Raw cost for generated ic 42 : (13, 24.000000) count=0.999999
;	../free.c: 66: *f = h;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_free_f_10000_44
	stx	*(DPTR+0)
	ldx	(_free_f_10000_44 + 1)
	stx	*(DPTR+1)
	lda	_free_h_10000_44
	ldy	#0x00
	sta	[DPTR],y
	lda	(_free_h_10000_44 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 44 : (23, 38.000000) count=0.999999
;	../free.c: 68: if(next_free == h->next) // Merge with next block
;	genCast
;	genCopy
	sta	*(_free_sloc1_1_0 + 1)
	lda	_free_h_10000_44
	sta	*_free_sloc1_1_0
;	Raw cost for generated ic 46 : (7, 10.000000) count=0.999999
;	genPointerGet
	lda	[*_free_sloc1_1_0],y
	tax
	dey
	lda	[*_free_sloc1_1_0],y
;	Raw cost for generated ic 47 : (6, 14.000000) count=0.999999
;	genCmpEQorNE
	cmp	_free_next_free_10000_44
	bne	00105$
	cpx	(_free_next_free_10000_44 + 1)
	bne	00105$
;	Raw cost for generated ic 48 : (16, 19.200001) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.999999
;	../free.c: 70: h->next_free = h->next->next_free;
;	genAssign
;	genCopy
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749999
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 58 : (12, 22.000000) count=0.749999
;	genPointerSet
	sta	[*_free_sloc0_1_0],y
	txa
	iny
	sta	[*_free_sloc0_1_0],y
;	Raw cost for generated ic 59 : (6, 16.000000) count=0.749999
;	../free.c: 71: h->next = h->next->next;
;	genPointerGet
	ldy	#0x00
	lda	[*_free_sloc1_1_0],y
	sta	*_free_sloc2_1_0
	iny
	lda	[*_free_sloc1_1_0],y
	sta	*(_free_sloc2_1_0 + 1)
;	Raw cost for generated ic 64 : (11, 20.000000) count=0.749999
;	genPointerGet
	lda	[*_free_sloc2_1_0],y
	tax
	dey
	lda	[*_free_sloc2_1_0],y
;	Raw cost for generated ic 66 : (6, 14.000000) count=0.749999
;	genPointerSet
	sta	[*_free_sloc1_1_0],y
	txa
	iny
	sta	[*_free_sloc1_1_0],y
;	Raw cost for generated ic 67 : (6, 16.000000) count=0.749999
;	genLabel
00105$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999998
;	../free.c: 74: if (prev_free && prev_free->next == h) // Merge with previous block
;	genIfx
	lda	(_free_prev_free_10000_44 + 1)
	ora	_free_prev_free_10000_44
;	genIfxJump : z
	beq	00113$
;	Raw cost for generated ic 69 : (11, 13.600000) count=0.999998
;	genCast
;	genCopy
	lda	(_free_prev_free_10000_44 + 1)
	sta	*(_free_sloc2_1_0 + 1)
	lda	_free_prev_free_10000_44
	sta	*_free_sloc2_1_0
;	Raw cost for generated ic 73 : (10, 14.000000) count=0.749999
;	genPointerGet
	ldy	#0x01
	lda	[*_free_sloc2_1_0],y
	tax
	dey
	lda	[*_free_sloc2_1_0],y
;	Raw cost for generated ic 74 : (8, 16.000000) count=0.749999
;	genCmpEQorNE
	cmp	_free_h_10000_44
	bne	00113$
	cpx	(_free_h_10000_44 + 1)
	beq	00178$
	rts
00178$:
;	Raw cost for generated ic 75 : (16, 19.200001) count=0.749999
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.749999
;	../free.c: 76: prev_free->next = h->next;
;	genPointerGet
	iny
	lda	[*_free_sloc1_1_0],y
	tax
	dey
	lda	[*_free_sloc1_1_0],y
;	Raw cost for generated ic 83 : (7, 16.000000) count=0.562498
;	genPointerSet
	sta	[*_free_sloc2_1_0],y
	txa
	iny
	sta	[*_free_sloc2_1_0],y
;	Raw cost for generated ic 84 : (6, 16.000000) count=0.562498
;	../free.c: 77: prev_free->next_free = h->next_free;
;	genAssign
;	genCopy
	lda	(_free_prev_free_10000_44 + 1)
	sta	*(_free_sloc2_1_0 + 1)
	lda	_free_prev_free_10000_44
	sta	*_free_sloc2_1_0
;	Raw cost for generated ic 86 : (10, 14.000000) count=0.562498
;	genPointerGet
	ldy	#0x03
	lda	[*_free_sloc0_1_0],y
	tax
	dey
	lda	[*_free_sloc0_1_0],y
;	Raw cost for generated ic 89 : (8, 16.000000) count=0.562498
;	genPointerSet
	sta	[*_free_sloc2_1_0],y
	txa
	iny
	sta	[*_free_sloc2_1_0],y
;	Raw cost for generated ic 90 : (6, 16.000000) count=0.562498
;	genLabel
00113$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.999997
;	../free.c: 79: }
;	genEndFunction
	rts
;	Raw cost for generated ic 93 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
