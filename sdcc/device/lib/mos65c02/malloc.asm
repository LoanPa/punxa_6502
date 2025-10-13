;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module malloc
	
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
	.globl ___sdcc_heap_init
	.globl ___sdcc_heap_free
	.globl _malloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_malloc_sloc0_1_0:
	.ds 2
_malloc_sloc1_1_0:
	.ds 2
_malloc_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___sdcc_heap_free::
	.ds 2
_malloc_size_10000_45:
	.ds 2
_malloc_h_10000_46:
	.ds 2
_malloc_f_10000_46:
	.ds 2
_malloc_blocksize_30000_51:
	.ds 2
_malloc_newheader_70000_55:
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
;Allocation info for local variables in function '__sdcc_heap_init'
;------------------------------------------------------------
;	../malloc.c: 65: void __sdcc_heap_init(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __sdcc_heap_init
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___sdcc_heap_init:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../malloc.c: 67: __sdcc_heap_free = HEAP_START;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	#>___sdcc_heap
	sta	(___sdcc_heap_free + 1)
	lda	#___sdcc_heap
	sta	___sdcc_heap_free
;	Raw cost for generated ic 5 : (10, 12.000000) count=1.000000
;	../malloc.c: 68: __sdcc_heap_free->next = HEAP_END;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldx	(___sdcc_heap_size + 1)
	lda	___sdcc_heap_size
	sec
	sbc	#0x01
	bcs	00103$
	dex
00103$:
;	Raw cost for generated ic 10 : (12, 16.600000) count=1.000000
;	genPlus
	clc
	adc	#___sdcc_heap
	pha
	txa
	adc	#>___sdcc_heap
	tax
	pla
;	Raw cost for generated ic 11 : (9, 17.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	stx	(___sdcc_heap + 1)
	sta	___sdcc_heap
;	Raw cost for generated ic 13 : (6, 8.000000) count=1.000000
;	../malloc.c: 69: __sdcc_heap_free->next_free = 0;
;	genAssign
;	genCopy
	ldx	(___sdcc_heap_free + 1)
	lda	___sdcc_heap_free
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x00
	ldy	#0x02
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 17 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../malloc.c: 70: }
;	genEndFunction
	rts
;	Raw cost for generated ic 19 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'malloc'
;------------------------------------------------------------
;sloc0         Allocated with name '_malloc_sloc0_1_0'
;sloc1         Allocated with name '_malloc_sloc1_1_0'
;sloc2         Allocated with name '_malloc_sloc2_1_0'
;size          Allocated with name '_malloc_size_10000_45'
;h             Allocated with name '_malloc_h_10000_46'
;f             Allocated with name '_malloc_f_10000_46'
;blocksize     Allocated with name '_malloc_blocksize_30000_51'
;newheader     Allocated with name '_malloc_newheader_70000_55'
;------------------------------------------------------------
;	../malloc.c: 75: void *malloc(size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_malloc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_malloc_sloc0_1_0
	stx	*(_malloc_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../malloc.c: 82: if(!__sdcc_heap_free)
;	genIfx
	lda	(___sdcc_heap_free + 1)
	ora	___sdcc_heap_free
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../malloc.c: 83: __sdcc_heap_init();
;	genCall
	jsr	___sdcc_heap_init
;	Raw cost for generated ic 6 : (3, 6.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../malloc.c: 86: if(/*!size || implementation choice - allow 0-sized allocations - makes it easier to have consitency between malloc and realloc */ size + offsetof(struct header, next_free) < size)
;	genPlus
;	  genPlusInc
	ldx	*(_malloc_sloc0_1_0 + 1)
	lda	*_malloc_sloc0_1_0
	clc
	adc	#0x02
	bcc	00169$
	inx
00169$:
;	Raw cost for generated ic 8 : (10, 14.600000) count=1.000000
;	genCmp
	sec
	sbc	*_malloc_sloc0_1_0
	txa
	sbc	*(_malloc_sloc0_1_0 + 1)
	bcs	00104$
;	Raw cost for generated ic 9 : (11, 15.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../malloc.c: 87: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 13 : (6, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../malloc.c: 88: size += offsetof(struct header, next_free);
;	genPlus
;	  genPlusInc
	lda	*_malloc_sloc0_1_0
	clc
	adc	#0x02
	sta	_malloc_size_10000_45
	lda	*(_malloc_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_malloc_size_10000_45 + 1)
;	Raw cost for generated ic 15 : (15, 20.000000) count=1.000000
;	../malloc.c: 89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
;	genCmp
	lda	_malloc_size_10000_45
	sec
	sbc	#0x04
	lda	(_malloc_size_10000_45 + 1)
	sbc	#0x00
	bcs	00106$
;	Raw cost for generated ic 17 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../malloc.c: 90: size = sizeof(struct header);
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	_malloc_size_10000_45
	stz	(_malloc_size_10000_45 + 1)
;	Raw cost for generated ic 21 : (8, 10.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
;	genAssign
;	genCopy
	lda	(___sdcc_heap_free + 1)
	sta	(_malloc_h_10000_46 + 1)
	lda	___sdcc_heap_free
	sta	_malloc_h_10000_46
;	Raw cost for generated ic 23 : (12, 16.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___sdcc_heap_free
	sta	(_malloc_f_10000_46 + 1)
	lda	#___sdcc_heap_free
	sta	_malloc_f_10000_46
;	Raw cost for generated ic 25 : (10, 12.000000) count=1.000000
;	genLabel
00114$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=3.999942
;	genIfx
	lda	(_malloc_h_10000_46 + 1)
	ora	_malloc_h_10000_46
;	genIfxJump : z
	bne	00173$
	jmp	00112$
00173$:
;	Raw cost for generated ic 28 : (11, 13.600000) count=3.999942
;	../malloc.c: 94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
;	genCast
;	genCopy
	lda	(_malloc_h_10000_46 + 1)
	sta	*(_malloc_sloc0_1_0 + 1)
	lda	_malloc_h_10000_46
	sta	*_malloc_sloc0_1_0
;	Raw cost for generated ic 32 : (10, 14.000000) count=2.999957
;	genPointerGet
	ldy	#0x00
	lda	[*_malloc_sloc0_1_0],y
	sta	*_malloc_sloc1_1_0
	iny
	lda	[*_malloc_sloc0_1_0],y
	sta	*(_malloc_sloc1_1_0 + 1)
;	Raw cost for generated ic 33 : (11, 20.000000) count=2.999957
;	genCast
;	genCopy
	tax
	lda	*_malloc_sloc1_1_0
;	Raw cost for generated ic 34 : (3, 5.000000) count=2.999957
;	genCast
;	genCopy
	ldy	(_malloc_h_10000_46 + 1)
	sty	*(_malloc_sloc2_1_0 + 1)
	ldy	_malloc_h_10000_46
	sty	*_malloc_sloc2_1_0
;	Raw cost for generated ic 35 : (10, 14.000000) count=2.999957
;	genMinus
	sec
	sbc	*_malloc_sloc2_1_0
	sta	_malloc_blocksize_30000_51
	txa
	sbc	*(_malloc_sloc2_1_0 + 1)
	sta	(_malloc_blocksize_30000_51 + 1)
;	Raw cost for generated ic 36 : (12, 18.000000) count=2.999957
;	../malloc.c: 95: if(blocksize >= size) // Found free block of sufficient size.
;	genCmp
	lda	_malloc_blocksize_30000_51
	sec
	sbc	_malloc_size_10000_45
	lda	(_malloc_blocksize_30000_51 + 1)
	sbc	(_malloc_size_10000_45 + 1)
	bcs	00174$
	jmp	00115$
00174$:
;	Raw cost for generated ic 39 : (18, 23.600000) count=2.999957
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.999957
;	../malloc.c: 97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
;	genPlus
;	  genPlusInc
	ldx	(_malloc_size_10000_45 + 1)
	lda	_malloc_size_10000_45
	clc
	adc	#0x04
	bcc	00175$
	inx
00175$:
;	Raw cost for generated ic 43 : (12, 16.600000) count=2.249967
;	genCmp
	sta	*(REGTEMP+0)
	lda	_malloc_blocksize_30000_51
	sec
	sbc	*(REGTEMP+0)
	lda	(_malloc_blocksize_30000_51 + 1)
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcc	00108$
;	Raw cost for generated ic 44 : (20, 27.600000) count=2.249967
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=2.249967
;	../malloc.c: 99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
;	genPlus
	lda	_malloc_h_10000_46
	clc
	adc	_malloc_size_10000_45
	sta	_malloc_newheader_70000_55
	lda	(_malloc_h_10000_46 + 1)
	adc	(_malloc_size_10000_45 + 1)
	sta	(_malloc_newheader_70000_55 + 1)
;	Raw cost for generated ic 49 : (19, 26.000000) count=1.687469
;	../malloc.c: 100: newheader->next = h->next;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	ldx	_malloc_newheader_70000_55
	stx	*(DPTR+0)
	lda	*_malloc_sloc1_1_0
	ldy	#0x00
	sta	[DPTR],y
	lda	*(_malloc_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 57 : (18, 32.000000) count=1.687469
;	../malloc.c: 101: newheader->next_free = h->next_free;
;	genAssign
;	genCopy
	lda	(_malloc_newheader_70000_55 + 1)
	sta	*(_malloc_sloc2_1_0 + 1)
	txa
	sta	*_malloc_sloc2_1_0
;	Raw cost for generated ic 59 : (8, 12.000000) count=1.687469
;	genAssign
;	genCopy
	ldx	(_malloc_h_10000_46 + 1)
	lda	_malloc_h_10000_46
;	Raw cost for generated ic 61 : (6, 8.000000) count=1.687469
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 62 : (12, 22.000000) count=1.687469
;	genPointerSet
	sta	[*_malloc_sloc2_1_0],y
	txa
	iny
	sta	[*_malloc_sloc2_1_0],y
;	Raw cost for generated ic 63 : (6, 16.000000) count=1.687469
;	../malloc.c: 102: *f = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_malloc_f_10000_46
	stx	*(DPTR+0)
	ldx	(_malloc_f_10000_46 + 1)
	stx	*(DPTR+1)
	lda	_malloc_newheader_70000_55
	ldy	#0x00
	sta	[DPTR],y
	lda	(_malloc_newheader_70000_55 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 65 : (23, 38.000000) count=1.687469
;	../malloc.c: 103: h->next = newheader;
;	genPointerSet
	lda	_malloc_newheader_70000_55
	dey
	sta	[*_malloc_sloc0_1_0],y
	lda	(_malloc_newheader_70000_55 + 1)
	iny
	sta	[*_malloc_sloc0_1_0],y
;	Raw cost for generated ic 68 : (12, 24.000000) count=1.687469
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 69 : (3, 3.000000) count=1.687469
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.562486
;	../malloc.c: 106: *f = h->next_free;
;	genAssign
;	genCopy
	ldx	(_malloc_h_10000_46 + 1)
	lda	_malloc_h_10000_46
;	Raw cost for generated ic 73 : (6, 8.000000) count=0.562486
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 74 : (12, 22.000000) count=0.562486
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_malloc_f_10000_46
	sta	*(DPTR+0)
	lda	(_malloc_f_10000_46 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 75 : (22, 38.000000) count=0.562486
;	genLabel
00109$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=2.249956
;	../malloc.c: 108: return(&(h->next_free));
;	genPlus
;	  genPlusInc
	ldx	(_malloc_h_10000_46 + 1)
	lda	_malloc_h_10000_46
	clc
	adc	#0x02
	bcc	00116$
	inx
;	Raw cost for generated ic 78 : (12, 16.600000) count=2.249956
;	genRet
	rts
;	Raw cost for generated ic 80 : (3, 3.000000) count=2.249956
;	genLabel
00115$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=2.999943
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
;	genPlus
;	  genPlusInc
	ldx	(_malloc_h_10000_46 + 1)
	lda	_malloc_h_10000_46
	clc
	adc	#0x02
	bcc	00178$
	inx
00178$:
;	Raw cost for generated ic 84 : (12, 16.600000) count=2.999943
;	genAssign
;	genCopy
	sta	_malloc_f_10000_46
	stx	(_malloc_f_10000_46 + 1)
;	Raw cost for generated ic 85 : (6, 8.000000) count=2.999943
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	_malloc_h_10000_46
	iny
	lda	[DPTR],y
	sta	(_malloc_h_10000_46 + 1)
;	Raw cost for generated ic 88 : (17, 28.000000) count=2.999943
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 90 : (3, 3.000000) count=2.999943
;	genLabel
00112$:
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.999982
;	../malloc.c: 112: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 92 : (3, 4.000000) count=0.999982
;	genLabel
00116$:
;	Raw cost for generated ic 93 : (0, 0.000000) count=0.999982
;	../malloc.c: 113: }
;	genEndFunction
	rts
;	Raw cost for generated ic 94 : (1, 6.000000) count=0.999982
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
