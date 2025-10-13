;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module malloc
	
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
	.globl ___sdcc_heap_init
	.globl ___sdcc_heap_free
	.globl _malloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___sdcc_heap_free::
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
;size          Allocated to stack - sp +19 +2 
;h             Allocated to stack - sp +17 +2 
;f             Allocated to stack - sp +15 +2 
;blocksize     Allocated to stack - sp +13 +2 
;newheader     Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;sloc3         Allocated to stack - sp +3 +2 
;sloc4         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../malloc.c: 75: void *malloc(size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_malloc:
;	  adjustStack : cycles stk:60  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
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
	tsx
	lda	0x109,x
	clc
	adc	#0x02
	sta	0x107,x
	lda	0x10a,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 8 : (18, 26.000000) count=1.000000
;	genCmp
	lda	0x107,x
	sec
	sbc	0x109,x
	lda	0x108,x
	sbc	0x10a,x
	bcs	00104$
;	Raw cost for generated ic 9 : (18, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../malloc.c: 87: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00116$
;	Raw cost for generated ic 13 : (6, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../malloc.c: 88: size += offsetof(struct header, next_free);
;	genPlus
;	  genPlusInc
	tsx
	lda	0x109,x
	clc
	adc	#0x02
	sta	0x113,x
	lda	0x10a,x
	adc	#0x00
	sta	0x114,x
;	Raw cost for generated ic 15 : (18, 26.000000) count=1.000000
;	../malloc.c: 89: if(size < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
;	genCmp
	lda	0x113,x
	sec
	sbc	#0x04
	lda	0x114,x
	sbc	#0x00
	bcs	00106$
;	Raw cost for generated ic 17 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../malloc.c: 90: size = sizeof(struct header);
;	genAssign
;	genAssignLit
	lda	#0x04
	sta	0x113,x
	lda	#0x00
	sta	0x114,x
;	Raw cost for generated ic 21 : (10, 14.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
;	genAssign
;	genCopy
	lda	(___sdcc_heap_free + 1)
	tsx
	sta	0x112,x
	lda	___sdcc_heap_free
	sta	0x111,x
;	Raw cost for generated ic 23 : (13, 20.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___sdcc_heap_free
	sta	0x108,x
	lda	#___sdcc_heap_free
	sta	0x107,x
;	Raw cost for generated ic 25 : (10, 14.000000) count=1.000000
;	genLabel
00114$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=3.999942
;	genIfx
	tsx
	lda	0x112,x
	ora	0x111,x
;	genIfxJump : z
	bne	00172$
	jmp	00112$
00172$:
;	Raw cost for generated ic 28 : (12, 15.600000) count=3.999942
;	../malloc.c: 94: size_t blocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x10a,x
	lda	0x111,x
	sta	0x109,x
;	Raw cost for generated ic 32 : (12, 18.000000) count=2.999957
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
;	Raw cost for generated ic 33 : (20, 34.000000) count=2.999957
;	genCast
;	genCopy
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 34 : (9, 14.000000) count=2.999957
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x102,x
	lda	0x111,x
	sta	0x101,x
;	Raw cost for generated ic 35 : (12, 18.000000) count=2.999957
;	genMinus
	lda	0x103,x
	sec
	sbc	0x101,x
	sta	0x10d,x
	lda	0x104,x
	sbc	0x102,x
	sta	0x10e,x
;	Raw cost for generated ic 36 : (19, 28.000000) count=2.999957
;	../malloc.c: 95: if(blocksize >= size) // Found free block of sufficient size.
;	genCmp
	lda	0x10d,x
	sec
	sbc	0x113,x
	lda	0x10e,x
	sbc	0x114,x
	bcs	00173$
	jmp	00115$
00173$:
;	Raw cost for generated ic 39 : (18, 23.600000) count=2.999957
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.999957
;	../malloc.c: 97: if(blocksize >= size + sizeof(struct header)) // It is worth creating a new free block
;	genPlus
;	  genPlusInc
	lda	0x113,x
	clc
	adc	#0x04
	sta	0x101,x
	lda	0x114,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 43 : (17, 24.000000) count=2.249967
;	genCmp
	lda	0x10d,x
	sec
	sbc	0x101,x
	lda	0x10e,x
	sbc	0x102,x
	bcs	00174$
	jmp	00108$
00174$:
;	Raw cost for generated ic 44 : (18, 23.600000) count=2.249967
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=2.249967
;	../malloc.c: 99: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + size);
;	genPlus
	lda	0x111,x
	clc
	adc	0x113,x
	sta	0x10b,x
	lda	0x112,x
	adc	0x114,x
	sta	0x10c,x
;	Raw cost for generated ic 49 : (19, 28.000000) count=1.687469
;	../malloc.c: 100: newheader->next = h->next;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x105,x
	dey
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 57 : (19, 34.000000) count=1.687469
;	../malloc.c: 101: newheader->next_free = h->next_free;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 59 : (12, 18.000000) count=1.687469
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
;	Raw cost for generated ic 61 : (12, 18.000000) count=1.687469
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 62 : (22, 38.000000) count=1.687469
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	0x103,x
	dey
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 63 : (22, 38.000000) count=1.687469
;	../malloc.c: 102: *f = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	lda	0x10b,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 65 : (23, 38.000000) count=1.687469
;	../malloc.c: 103: h->next = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	0x10b,x
	dey
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 68 : (22, 38.000000) count=1.687469
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 69 : (3, 3.000000) count=1.687469
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.562486
;	../malloc.c: 106: *f = h->next_free;
;	genAssign
;	genCopy
	tsx
	lda	0x112,x
	sta	0x102,x
	lda	0x111,x
	sta	0x101,x
;	Raw cost for generated ic 73 : (13, 20.000000) count=0.562486
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 74 : (15, 26.000000) count=0.562486
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 75 : (29, 49.000000) count=0.562486
;	genLabel
00109$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=2.249956
;	../malloc.c: 108: return(&(h->next_free));
;	genPlus
;	  genPlusInc
	tsx
	lda	0x111,x
	tay
	lda	0x112,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00116$
	inx
;	Raw cost for generated ic 78 : (16, 24.600000) count=2.249956
;	genRet
	jmp	00116$
;	Raw cost for generated ic 80 : (3, 3.000000) count=2.249956
;	genLabel
00115$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=2.999943
;	../malloc.c: 92: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h; f = &(h->next_free), h = h->next_free)
;	genPlus
;	  genPlusInc
	tsx
	lda	0x111,x
	clc
	adc	#0x02
	sta	0x10f,x
	lda	0x112,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 84 : (18, 26.000000) count=2.999943
;	genAssign
;	genCopy
	sta	0x108,x
;	Raw cost for generated ic 85 : (9, 14.000000) count=2.999943
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10f,x
	sta	0x107,x
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
;	Raw cost for generated ic 88 : (23, 38.000000) count=2.999943
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
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 94 : (16, 30.000000) count=0.999982
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
