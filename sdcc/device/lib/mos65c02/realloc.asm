;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module realloc
	
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
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_realloc_PARM_2:
	.ds 2
_realloc_ptr_10000_70:
	.ds 2
_realloc_ret_10000_71:
	.ds 2
_realloc_h_10000_71:
	.ds 2
_realloc_next_free_10000_71:
	.ds 2
_realloc_prev_free_10000_71:
	.ds 2
_realloc_f_10000_71:
	.ds 2
_realloc_pf_10000_71:
	.ds 2
_realloc_blocksize_10000_71:
	.ds 2
_realloc_oldblocksize_10000_71:
	.ds 2
_realloc_maxblocksize_10000_71:
	.ds 2
_realloc_newheader_50000_85:
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;sloc0         Allocated with name '_realloc_sloc0_1_0'
;sloc1         Allocated with name '_realloc_sloc1_1_0'
;size          Allocated with name '_realloc_PARM_2'
;ptr           Allocated with name '_realloc_ptr_10000_70'
;ret           Allocated with name '_realloc_ret_10000_71'
;h             Allocated with name '_realloc_h_10000_71'
;next_free     Allocated with name '_realloc_next_free_10000_71'
;prev_free     Allocated with name '_realloc_prev_free_10000_71'
;f             Allocated with name '_realloc_f_10000_71'
;pf            Allocated with name '_realloc_pf_10000_71'
;blocksize     Allocated with name '_realloc_blocksize_10000_71'
;oldblocksize  Allocated with name '_realloc_oldblocksize_10000_71'
;maxblocksize  Allocated with name '_realloc_maxblocksize_10000_71'
;newheader     Allocated with name '_realloc_newheader_50000_85'
;oldsize       Allocated to registers a x 
;------------------------------------------------------------
;	../realloc.c: 60: void *realloc(void *ptr, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_realloc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_realloc_ptr_10000_70
	stx	(_realloc_ptr_10000_70 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../realloc.c: 73: if(!ptr)
;	genIfx
	txa
	ora	_realloc_ptr_10000_70
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (9, 11.600000) count=1.000000
;	../realloc.c: 74: return(malloc(size));
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
;	assignResultValue
;	Raw cost for generated ic 7 : (9, 14.000000) count=0.750000
;	genRet
	jmp	_malloc
;	Raw cost for generated ic 8 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../realloc.c: 84: prev_free = 0, pf = 0;
;	genAssign
;	genAssignLit
	stz	_realloc_prev_free_10000_71
	stz	(_realloc_prev_free_10000_71 + 1)
;	Raw cost for generated ic 11 : (6, 8.000000) count=1.000000
;	genAssign
;	genAssignLit
	stz	_realloc_pf_10000_71
	stz	(_realloc_pf_10000_71 + 1)
;	Raw cost for generated ic 13 : (6, 8.000000) count=1.000000
;	../realloc.c: 85: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
;	genAssign
;	genCopy
	ldx	(___sdcc_heap_free + 1)
	lda	___sdcc_heap_free
;	Raw cost for generated ic 14 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>___sdcc_heap_free
	sty	(_realloc_f_10000_71 + 1)
	ldy	#___sdcc_heap_free
	sty	_realloc_f_10000_71
;	Raw cost for generated ic 16 : (10, 12.000000) count=1.000000
;	genLabel
00127$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.285713
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00264$
	cpx	#0x00
	beq	00103$
00264$:
;	Raw cost for generated ic 19 : (11, 12.200000) count=2.285713
;	genCast
;	genCopy
	ldy	(_realloc_ptr_10000_70 + 1)
	sty	*(_realloc_sloc0_1_0 + 1)
	ldy	_realloc_ptr_10000_70
	sty	*_realloc_sloc0_1_0
;	Raw cost for generated ic 22 : (10, 14.000000) count=1.714284
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	*_realloc_sloc0_1_0
	txa
	sbc	*(_realloc_sloc0_1_0 + 1)
	lda	*(REGTEMP+0)
	bcs	00103$
;	Raw cost for generated ic 23 : (15, 21.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	genAssign
;	genCopy
	sta	_realloc_prev_free_10000_71
	stx	(_realloc_prev_free_10000_71 + 1)
;	Raw cost for generated ic 28 : (6, 8.000000) count=1.285713
;	genAssign
;	genCopy
	ldy	(_realloc_f_10000_71 + 1)
	sty	(_realloc_pf_10000_71 + 1)
	ldy	_realloc_f_10000_71
	sty	_realloc_pf_10000_71
;	Raw cost for generated ic 29 : (12, 16.000000) count=1.285713
;	genPlus
;	  genPlusInc
	clc
	adc	#0x02
	bcc	00266$
	inx
00266$:
;	Raw cost for generated ic 31 : (6, 8.600000) count=1.285713
;	genAssign
;	genCopy
	sta	_realloc_f_10000_71
	stx	(_realloc_f_10000_71 + 1)
;	Raw cost for generated ic 32 : (6, 8.000000) count=1.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 35 : (12, 22.000000) count=1.285713
;	genGoto
	jmp	00127$
;	Raw cost for generated ic 37 : (3, 3.000000) count=1.285713
;	genLabel
00103$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../realloc.c: 86: next_free = h;
;	genAssign
;	genCopy
	sta	_realloc_next_free_10000_71
	stx	(_realloc_next_free_10000_71 + 1)
;	Raw cost for generated ic 39 : (6, 8.000000) count=0.999999
;	../realloc.c: 88: if(size + offsetof(struct header, next_free) < size) // Handle overflow
;	genPlus
;	  genPlusInc
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
	clc
	adc	#0x02
	bcc	00267$
	inx
00267$:
;	Raw cost for generated ic 40 : (12, 16.600000) count=0.999999
;	genCmp
	sec
	sbc	_realloc_PARM_2
	txa
	sbc	(_realloc_PARM_2 + 1)
	bcs	00105$
;	Raw cost for generated ic 41 : (13, 17.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999999
;	../realloc.c: 89: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 45 : (6, 7.000000) count=0.749999
;	genLabel
00105$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	../realloc.c: 90: blocksize = size + offsetof(struct header, next_free);
;	genPlus
;	  genPlusInc
	lda	_realloc_PARM_2
	clc
	adc	#0x02
	sta	_realloc_blocksize_10000_71
	lda	(_realloc_PARM_2 + 1)
	adc	#0x00
	sta	(_realloc_blocksize_10000_71 + 1)
;	Raw cost for generated ic 47 : (17, 22.000000) count=0.999998
;	../realloc.c: 91: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
;	genCmp
	lda	_realloc_blocksize_10000_71
	sec
	sbc	#0x04
	lda	(_realloc_blocksize_10000_71 + 1)
	sbc	#0x00
	bcs	00107$
;	Raw cost for generated ic 49 : (16, 19.600000) count=0.999998
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.999998
;	../realloc.c: 92: blocksize = sizeof(struct header);
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	_realloc_blocksize_10000_71
	stz	(_realloc_blocksize_10000_71 + 1)
;	Raw cost for generated ic 53 : (8, 10.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.999998
;	../realloc.c: 94: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
;	genCast
;	genCopy
	ldx	(_realloc_ptr_10000_70 + 1)
	lda	_realloc_ptr_10000_70
;	Raw cost for generated ic 55 : (6, 8.000000) count=0.999998
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00270$
	dex
00270$:
;	Raw cost for generated ic 56 : (6, 8.600000) count=0.999998
;	genCast
;	genCopy
	sta	_realloc_h_10000_71
	stx	(_realloc_h_10000_71 + 1)
;	Raw cost for generated ic 58 : (6, 8.000000) count=0.999998
;	../realloc.c: 95: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_realloc_sloc0_1_0
	iny
	lda	[DPTR],y
	sta	*(_realloc_sloc0_1_0 + 1)
;	Raw cost for generated ic 62 : (15, 26.000000) count=0.999998
;	genCast
;	genCopy
	tax
	lda	*_realloc_sloc0_1_0
;	Raw cost for generated ic 63 : (3, 5.000000) count=0.999998
;	genCast
;	genCopy
	ldy	(_realloc_h_10000_71 + 1)
	sty	*(_realloc_sloc1_1_0 + 1)
	ldy	_realloc_h_10000_71
	sty	*_realloc_sloc1_1_0
;	Raw cost for generated ic 64 : (10, 14.000000) count=0.999998
;	genMinus
	sec
	sbc	*_realloc_sloc1_1_0
	sta	_realloc_oldblocksize_10000_71
	txa
	sbc	*(_realloc_sloc1_1_0 + 1)
	sta	(_realloc_oldblocksize_10000_71 + 1)
;	Raw cost for generated ic 65 : (12, 18.000000) count=0.999998
;	../realloc.c: 97: maxblocksize = oldblocksize;
;	genAssign
;	genCopy
	sta	(_realloc_maxblocksize_10000_71 + 1)
	lda	_realloc_oldblocksize_10000_71
	sta	_realloc_maxblocksize_10000_71
;	Raw cost for generated ic 68 : (9, 12.000000) count=0.999998
;	../realloc.c: 98: if(prev_free && prev_free->next == h) // Can merge with previous block
;	genIfx
	lda	(_realloc_prev_free_10000_71 + 1)
	ora	_realloc_prev_free_10000_71
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 69 : (11, 13.600000) count=0.999998
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_prev_free_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_prev_free_10000_71 + 1)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 74 : (18, 30.000000) count=0.749999
;	genCmpEQorNE
	cmp	_realloc_h_10000_71
	bne	00109$
	cpx	(_realloc_h_10000_71 + 1)
	bne	00109$
;	Raw cost for generated ic 75 : (16, 19.200001) count=0.749999
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.749999
;	../realloc.c: 99: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
;	genCast
;	genCopy
	ldx	(_realloc_prev_free_10000_71 + 1)
	lda	_realloc_prev_free_10000_71
;	Raw cost for generated ic 80 : (6, 8.000000) count=0.562498
;	genMinus
	sta	*(REGTEMP+0)
	lda	*_realloc_sloc1_1_0
	sec
	sbc	*(REGTEMP+0)
	pha
	lda	*(_realloc_sloc1_1_0 + 1)
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	tax
	pla
;	Raw cost for generated ic 81 : (16, 29.000000) count=0.562498
;	genCast
;	genCopy
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.562498
;	genPlus
	clc
	adc	_realloc_oldblocksize_10000_71
	sta	_realloc_maxblocksize_10000_71
	txa
	adc	(_realloc_oldblocksize_10000_71 + 1)
	sta	(_realloc_maxblocksize_10000_71 + 1)
;	Raw cost for generated ic 84 : (14, 20.000000) count=0.562498
;	genLabel
00109$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.999997
;	../realloc.c: 100: if(next_free == h->next) // Can merge with next block
;	genCmpEQorNE
	lda	_realloc_next_free_10000_71
	cmp	*_realloc_sloc0_1_0
	bne	00112$
	lda	(_realloc_next_free_10000_71 + 1)
	cmp	*(_realloc_sloc0_1_0 + 1)
	bne	00112$
;	Raw cost for generated ic 90 : (20, 25.200001) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.999997
;	../realloc.c: 101: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_next_free_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_next_free_10000_71 + 1)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 96 : (18, 30.000000) count=0.749997
;	genCast
;	genCopy
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.749997
;	genCast
;	genCopy
	ldy	(_realloc_next_free_10000_71 + 1)
	sty	*(_realloc_sloc1_1_0 + 1)
	ldy	_realloc_next_free_10000_71
	sty	*_realloc_sloc1_1_0
;	Raw cost for generated ic 98 : (10, 14.000000) count=0.749997
;	genMinus
	sec
	sbc	*_realloc_sloc1_1_0
	pha
	txa
	sbc	*(_realloc_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 99 : (9, 19.000000) count=0.749997
;	genCast
;	genCopy
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.749997
;	genPlus
	clc
	adc	_realloc_maxblocksize_10000_71
	sta	_realloc_maxblocksize_10000_71
	txa
	adc	(_realloc_maxblocksize_10000_71 + 1)
	sta	(_realloc_maxblocksize_10000_71 + 1)
;	Raw cost for generated ic 102 : (14, 20.000000) count=0.749997
;	genLabel
00112$:
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.999997
;	../realloc.c: 103: if(blocksize <= maxblocksize) // Can resize in place.
;	genCmp
	lda	_realloc_maxblocksize_10000_71
	sec
	sbc	_realloc_blocksize_10000_71
	lda	(_realloc_maxblocksize_10000_71 + 1)
	sbc	(_realloc_blocksize_10000_71 + 1)
	bcs	00279$
	jmp	00122$
00279$:
;	Raw cost for generated ic 105 : (18, 23.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 106 : (0, 0.000000) count=0.999997
;	../realloc.c: 105: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
;	genIfx
	lda	(_realloc_prev_free_10000_71 + 1)
	ora	_realloc_prev_free_10000_71
;	genIfxJump : z
	bne	00281$
	jmp	00114$
00281$:
;	Raw cost for generated ic 109 : (11, 13.600000) count=0.749997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_prev_free_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_prev_free_10000_71 + 1)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 114 : (18, 30.000000) count=0.562498
;	genCmpEQorNE
	cmp	_realloc_h_10000_71
	bne	00283$
	cpx	(_realloc_h_10000_71 + 1)
	beq	00284$
00283$:
	jmp	00114$
00284$:
;	Raw cost for generated ic 115 : (16, 19.200001) count=0.562498
;	skipping generated iCode
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.562498
;	../realloc.c: 107: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
;	genCast
;	genCopy
	lda	(_realloc_prev_free_10000_71 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_prev_free_10000_71
	sta	*_realloc_sloc1_1_0
;	Raw cost for generated ic 119 : (10, 14.000000) count=0.421874
;	genCast
;	genCopy
	lda	(_realloc_h_10000_71 + 1)
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	_realloc_h_10000_71
	sta	*_realloc_sloc0_1_0
;	Raw cost for generated ic 120 : (10, 14.000000) count=0.421874
;	genCmp
	lda	_realloc_oldblocksize_10000_71
	sec
	sbc	_realloc_blocksize_10000_71
	lda	(_realloc_oldblocksize_10000_71 + 1)
	sbc	(_realloc_blocksize_10000_71 + 1)
	bcc	00131$
;	Raw cost for generated ic 121 : (18, 23.600000) count=0.421874
;	skipping generated iCode
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.421874
;	genAssign
;	genCopy
	ldx	(_realloc_blocksize_10000_71 + 1)
	lda	_realloc_blocksize_10000_71
;	Raw cost for generated ic 124 : (6, 8.000000) count=0.316404
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 125 : (3, 3.000000) count=0.316404
;	genLabel
00131$:
;	Raw cost for generated ic 126 : (0, 0.000000) count=0.105468
;	genAssign
;	genCopy
	ldx	(_realloc_oldblocksize_10000_71 + 1)
	lda	_realloc_oldblocksize_10000_71
;	Raw cost for generated ic 127 : (6, 8.000000) count=0.105468
;	genLabel
00132$:
;	Raw cost for generated ic 128 : (0, 0.000000) count=0.421873
;	genAssign
;	genCopy
	ldy	*(_realloc_sloc0_1_0 + 1)
	sty	(_memmove_PARM_2 + 1)
	ldy	*_realloc_sloc0_1_0
	sty	_memmove_PARM_2
;	Raw cost for generated ic 130 : (10, 14.000000) count=0.421873
;	genAssign
;	genCopy
	sta	_memmove_PARM_3
	stx	(_memmove_PARM_3 + 1)
;	Raw cost for generated ic 131 : (6, 8.000000) count=0.421873
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.421873
;	genCall
;	genSend
	ldx	*(_realloc_sloc1_1_0 + 1)
	lda	*_realloc_sloc1_1_0
	jsr	_memmove
;	Raw cost for generated ic 132 : (7, 12.000000) count=0.421873
;	../realloc.c: 108: h = prev_free;
;	genAssign
;	genCopy
	lda	(_realloc_prev_free_10000_71 + 1)
	sta	(_realloc_h_10000_71 + 1)
	lda	_realloc_prev_free_10000_71
	sta	_realloc_h_10000_71
;	Raw cost for generated ic 133 : (12, 16.000000) count=0.421873
;	../realloc.c: 109: *pf = next_free;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_pf_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_pf_10000_71 + 1)
	stx	*(DPTR+1)
	lda	_realloc_next_free_10000_71
	ldy	#0x00
	sta	[DPTR],y
	lda	(_realloc_next_free_10000_71 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 135 : (23, 38.000000) count=0.421873
;	../realloc.c: 110: f = pf;
;	genAssign
;	genCopy
	txa
	sta	(_realloc_f_10000_71 + 1)
	lda	_realloc_pf_10000_71
	sta	_realloc_f_10000_71
;	Raw cost for generated ic 136 : (10, 14.000000) count=0.421873
;	genLabel
00114$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.749996
;	../realloc.c: 113: if(next_free && next_free == h->next) // Merge with following block
;	genIfx
	lda	(_realloc_next_free_10000_71 + 1)
	ora	_realloc_next_free_10000_71
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 138 : (11, 13.600000) count=0.749996
;	genCast
;	genCopy
	lda	(_realloc_h_10000_71 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_h_10000_71
	sta	*_realloc_sloc1_1_0
;	Raw cost for generated ic 142 : (10, 14.000000) count=0.562497
;	genPointerGet
	ldy	#0x01
	lda	[*_realloc_sloc1_1_0],y
	tax
	dey
	lda	[*_realloc_sloc1_1_0],y
;	Raw cost for generated ic 143 : (8, 16.000000) count=0.562497
;	genCmpEQorNE
	cmp	_realloc_next_free_10000_71
	bne	00117$
	cpx	(_realloc_next_free_10000_71 + 1)
	bne	00117$
;	Raw cost for generated ic 144 : (16, 19.200001) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.562497
;	../realloc.c: 115: h->next = next_free->next;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_next_free_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_next_free_10000_71 + 1)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 152 : (17, 30.000000) count=0.421873
;	genPointerSet
	sta	[*_realloc_sloc1_1_0],y
	txa
	iny
	sta	[*_realloc_sloc1_1_0],y
;	Raw cost for generated ic 153 : (6, 16.000000) count=0.421873
;	../realloc.c: 116: *f = next_free->next_free;
;	genAssign
;	genCopy
	ldx	(_realloc_next_free_10000_71 + 1)
	lda	_realloc_next_free_10000_71
;	Raw cost for generated ic 156 : (6, 8.000000) count=0.421873
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 157 : (12, 22.000000) count=0.421873
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_realloc_f_10000_71
	sta	*(DPTR+0)
	lda	(_realloc_f_10000_71 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 158 : (22, 38.000000) count=0.421873
;	genLabel
00117$:
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.749996
;	../realloc.c: 119: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
;	genPlus
;	  genPlusInc
	ldx	(_realloc_blocksize_10000_71 + 1)
	lda	_realloc_blocksize_10000_71
	clc
	adc	#0x04
	bcc	00291$
	inx
00291$:
;	Raw cost for generated ic 160 : (12, 16.600000) count=0.749996
;	genCmp
	sta	*(REGTEMP+0)
	lda	_realloc_maxblocksize_10000_71
	sec
	sbc	*(REGTEMP+0)
	lda	(_realloc_maxblocksize_10000_71 + 1)
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcc	00120$
;	Raw cost for generated ic 161 : (20, 27.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.749996
;	../realloc.c: 121: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
;	genPlus
	lda	_realloc_h_10000_71
	clc
	adc	_realloc_blocksize_10000_71
	sta	_realloc_newheader_50000_85
	lda	(_realloc_h_10000_71 + 1)
	adc	(_realloc_blocksize_10000_71 + 1)
	sta	(_realloc_newheader_50000_85 + 1)
;	Raw cost for generated ic 166 : (19, 26.000000) count=0.562497
;	../realloc.c: 122: newheader->next = h->next;
;	genCast
;	genCopy
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_newheader_50000_85
	sta	*_realloc_sloc1_1_0
;	Raw cost for generated ic 170 : (7, 10.000000) count=0.562497
;	genCast
;	genCopy
	lda	(_realloc_h_10000_71 + 1)
	sta	*(_realloc_sloc0_1_0 + 1)
	lda	_realloc_h_10000_71
	sta	*_realloc_sloc0_1_0
;	Raw cost for generated ic 172 : (10, 14.000000) count=0.562497
;	genPointerGet
	ldy	#0x01
	lda	[*_realloc_sloc0_1_0],y
	tax
	dey
	lda	[*_realloc_sloc0_1_0],y
;	Raw cost for generated ic 173 : (8, 16.000000) count=0.562497
;	genPointerSet
	sta	[*_realloc_sloc1_1_0],y
	txa
	iny
	sta	[*_realloc_sloc1_1_0],y
;	Raw cost for generated ic 174 : (6, 16.000000) count=0.562497
;	../realloc.c: 123: newheader->next_free = *f;
;	genAssign
;	genCopy
	lda	(_realloc_newheader_50000_85 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	_realloc_newheader_50000_85
	sta	*_realloc_sloc1_1_0
;	Raw cost for generated ic 176 : (10, 14.000000) count=0.562497
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_realloc_f_10000_71
	stx	*(DPTR+0)
	ldx	(_realloc_f_10000_71 + 1)
	stx	*(DPTR+1)
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 178 : (16, 28.000000) count=0.562497
;	genPointerSet
	ldy	#0x02
	sta	[*_realloc_sloc1_1_0],y
	txa
	iny
	sta	[*_realloc_sloc1_1_0],y
;	Raw cost for generated ic 179 : (8, 18.000000) count=0.562497
;	../realloc.c: 124: *f = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_realloc_newheader_50000_85
	ldy	#0x00
	sta	[DPTR],y
	lda	(_realloc_newheader_50000_85 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 181 : (13, 24.000000) count=0.562497
;	../realloc.c: 125: h->next = newheader;
;	genPointerSet
	lda	_realloc_newheader_50000_85
	dey
	sta	[*_realloc_sloc0_1_0],y
	lda	(_realloc_newheader_50000_85 + 1)
	iny
	sta	[*_realloc_sloc0_1_0],y
;	Raw cost for generated ic 184 : (12, 24.000000) count=0.562497
;	genLabel
00120$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.749996
;	../realloc.c: 128: return(&(h->next_free));
;	genPlus
;	  genPlusInc
	ldx	(_realloc_h_10000_71 + 1)
	lda	_realloc_h_10000_71
	clc
	adc	#0x02
	bcc	00129$
	inx
;	Raw cost for generated ic 187 : (12, 16.600000) count=0.749996
;	genRet
	rts
;	Raw cost for generated ic 189 : (3, 3.000000) count=0.749996
;	genLabel
00122$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=0.999994
;	../realloc.c: 131: if(ret = malloc(size))
;	Raw cost for generated ic 191 : (0, 0.000000) count=0.999994
;	genCall
;	genSend
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
	jsr	_malloc
;	assignResultValue
;	Raw cost for generated ic 192 : (9, 14.000000) count=0.999994
;	genAssign
;	genCopy
	sta	_realloc_ret_10000_71
	stx	(_realloc_ret_10000_71 + 1)
;	Raw cost for generated ic 193 : (6, 8.000000) count=0.999994
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00295$
	cpx	#0x00
	beq	00124$
00295$:
;	Raw cost for generated ic 194 : (11, 12.200000) count=0.999994
;	../realloc.c: 133: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
;	genMinus
;	  genMinusDec - size=2  icount=2
	ldx	(_realloc_oldblocksize_10000_71 + 1)
	lda	_realloc_oldblocksize_10000_71
	sec
	sbc	#0x02
	bcs	00296$
	dex
00296$:
;	Raw cost for generated ic 197 : (12, 16.600000) count=0.749996
;	../realloc.c: 134: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	_realloc_PARM_2
	txa
	sbc	(_realloc_PARM_2 + 1)
	lda	*(REGTEMP+0)
	bcc	00133$
;	Raw cost for generated ic 199 : (17, 23.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 201 : (0, 0.000000) count=0.749996
;	genAssign
;	genCopy
	ldx	(_realloc_PARM_2 + 1)
	lda	_realloc_PARM_2
;	Raw cost for generated ic 202 : (6, 8.000000) count=0.562497
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 203 : (3, 3.000000) count=0.562497
;	genLabel
00133$:
;	Raw cost for generated ic 204 : (0, 0.000000) count=0.187498
;	genAssign
;	genCopy
;	Raw cost for generated ic 205 : (0, 0.000000) count=0.187498
;	genLabel
00134$:
;	Raw cost for generated ic 206 : (0, 0.000000) count=0.749995
;	genAssign
;	genCopy
	ldy	(_realloc_ptr_10000_70 + 1)
	sty	(___memcpy_PARM_2 + 1)
	ldy	_realloc_ptr_10000_70
	sty	___memcpy_PARM_2
;	Raw cost for generated ic 208 : (12, 16.000000) count=0.749995
;	genAssign
;	genCopy
	sta	___memcpy_PARM_3
	stx	(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 209 : (6, 8.000000) count=0.749995
;	Raw cost for generated ic 207 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_realloc_ret_10000_71 + 1)
	lda	_realloc_ret_10000_71
	jsr	___memcpy
;	Raw cost for generated ic 210 : (9, 14.000000) count=0.749995
;	../realloc.c: 135: free(ptr);
;	Raw cost for generated ic 211 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_realloc_ptr_10000_70 + 1)
	lda	_realloc_ptr_10000_70
	jsr	_free
;	Raw cost for generated ic 212 : (9, 14.000000) count=0.749995
;	../realloc.c: 136: return(ret);
;	genRet
	ldx	(_realloc_ret_10000_71 + 1)
	lda	_realloc_ret_10000_71
	rts
;	Raw cost for generated ic 213 : (9, 11.000000) count=0.749995
;	genLabel
00124$:
;	Raw cost for generated ic 214 : (0, 0.000000) count=0.999993
;	../realloc.c: 139: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 215 : (3, 4.000000) count=0.999993
;	genLabel
00129$:
;	Raw cost for generated ic 216 : (0, 0.000000) count=0.999993
;	../realloc.c: 140: }
;	genEndFunction
	rts
;	Raw cost for generated ic 217 : (1, 6.000000) count=0.999993
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
