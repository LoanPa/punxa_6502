;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module realloc
	
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
	.globl ___memcpy
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc
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
;size          Allocated to stack - sp +35 +2 
;ptr           Allocated to stack - sp +31 +2 
;ret           Allocated to stack - sp +29 +2 
;h             Allocated to stack - sp +27 +2 
;next_free     Allocated to stack - sp +25 +2 
;prev_free     Allocated to stack - sp +23 +2 
;f             Allocated to stack - sp +21 +2 
;pf            Allocated to stack - sp +19 +2 
;blocksize     Allocated to stack - sp +17 +2 
;oldblocksize  Allocated to stack - sp +15 +2 
;maxblocksize  Allocated to stack - sp +13 +2 
;newheader     Allocated to stack - sp +11 +2 
;oldsize       Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../realloc.c: 60: void *realloc(void *ptr, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 32 bytes.
_realloc:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:90  incdec:64  adc:12
	tsx
	txa
	clc
	adc	#0xe2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../realloc.c: 73: if(!ptr)
;	genIfx
	lda	0x120,x
	ora	0x11f,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../realloc.c: 74: return(malloc(size));
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	0x123,x
	tay
	lda	0x124,x
	tax
	tya
	jsr	_malloc
;	assignResultValue
;	Raw cost for generated ic 7 : (12, 20.000000) count=0.750000
;	genRet
	jmp	00129$
;	Raw cost for generated ic 8 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../realloc.c: 84: prev_free = 0, pf = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x117,x
	sta	0x118,x
;	Raw cost for generated ic 11 : (9, 14.000000) count=1.000000
;	genAssign
;	genAssignLit
	sta	0x113,x
	sta	0x114,x
;	Raw cost for generated ic 13 : (6, 10.000000) count=1.000000
;	../realloc.c: 85: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, pf = f, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
;	genAssign
;	genCopy
	lda	(___sdcc_heap_free + 1)
	sta	0x108,x
	lda	___sdcc_heap_free
	sta	0x107,x
;	Raw cost for generated ic 14 : (12, 18.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___sdcc_heap_free
	sta	0x106,x
	lda	#___sdcc_heap_free
	sta	0x105,x
;	Raw cost for generated ic 16 : (10, 14.000000) count=1.000000
;	genLabel
00127$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.285713
;	genIfx
	tsx
	lda	0x108,x
	ora	0x107,x
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 19 : (12, 15.600000) count=2.285713
;	genCast
;	genCopy
	lda	0x120,x
	sta	0x104,x
	lda	0x11f,x
	sta	0x103,x
;	Raw cost for generated ic 22 : (12, 18.000000) count=1.714284
;	genCmp
	lda	0x107,x
	sec
	sbc	0x103,x
	lda	0x108,x
	sbc	0x104,x
	bcs	00103$
;	Raw cost for generated ic 23 : (18, 23.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x118,x
	lda	0x107,x
	sta	0x117,x
;	Raw cost for generated ic 28 : (12, 18.000000) count=1.285713
;	genAssign
;	genCopy
	lda	0x106,x
	sta	0x114,x
	lda	0x105,x
	sta	0x113,x
;	Raw cost for generated ic 29 : (12, 18.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x02
	sta	0x115,x
	lda	0x108,x
	adc	#0x00
	sta	0x116,x
;	Raw cost for generated ic 31 : (17, 24.000000) count=1.285713
;	genAssign
;	genCopy
	sta	0x106,x
;	Raw cost for generated ic 32 : (9, 14.000000) count=1.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	0x105,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 35 : (23, 38.000000) count=1.285713
;	genGoto
	jmp	00127$
;	Raw cost for generated ic 37 : (3, 3.000000) count=1.285713
;	genLabel
00103$:
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../realloc.c: 86: next_free = h;
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x11a,x
	lda	0x107,x
	sta	0x119,x
;	Raw cost for generated ic 39 : (13, 20.000000) count=0.999999
;	../realloc.c: 88: if(size + offsetof(struct header, next_free) < size) // Handle overflow
;	genPlus
;	  genPlusInc
	lda	0x123,x
	clc
	adc	#0x02
	sta	0x103,x
	lda	0x124,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 40 : (17, 24.000000) count=0.999999
;	genCmp
	lda	0x103,x
	sec
	sbc	0x123,x
	lda	0x104,x
	sbc	0x124,x
	bcs	00105$
;	Raw cost for generated ic 41 : (18, 23.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999999
;	../realloc.c: 89: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00129$
;	Raw cost for generated ic 45 : (6, 7.000000) count=0.749999
;	genLabel
00105$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	../realloc.c: 90: blocksize = size + offsetof(struct header, next_free);
;	genPlus
;	  genPlusInc
	tsx
	lda	0x123,x
	clc
	adc	#0x02
	sta	0x111,x
	lda	0x124,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 47 : (18, 26.000000) count=0.999998
;	../realloc.c: 91: if(blocksize < sizeof(struct header)) // Requiring a minimum size makes it easier to implement free(), and avoid memory leaks.
;	genCmp
	lda	0x111,x
	sec
	sbc	#0x04
	lda	0x112,x
	sbc	#0x00
	bcs	00107$
;	Raw cost for generated ic 49 : (16, 19.600000) count=0.999998
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.999998
;	../realloc.c: 92: blocksize = sizeof(struct header);
;	genAssign
;	genAssignLit
	lda	#0x04
	sta	0x111,x
	lda	#0x00
	sta	0x112,x
;	Raw cost for generated ic 53 : (10, 14.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.999998
;	../realloc.c: 94: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
;	genCast
;	genCopy
	tsx
	lda	0x120,x
	sta	0x104,x
	lda	0x11f,x
;	Raw cost for generated ic 55 : (13, 20.000000) count=0.999998
;	genMinus
;	  genMinusDec - size=2  icount=2
	sta	0x103,x
	sec
	sbc	#0x02
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 56 : (17, 24.000000) count=0.999998
;	genCast
;	genCopy
	sta	0x11c,x
	lda	0x103,x
	sta	0x11b,x
;	Raw cost for generated ic 58 : (9, 14.000000) count=0.999998
;	../realloc.c: 95: oldblocksize = (char HEAPSPACE *)(h->next) - (char HEAPSPACE *)h;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x11c,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 62 : (20, 34.000000) count=0.999998
;	genCast
;	genCopy
	sta	0x108,x
	lda	0x103,x
	sta	0x107,x
;	Raw cost for generated ic 63 : (9, 14.000000) count=0.999998
;	genCast
;	genCopy
	lda	0x11c,x
	sta	0x102,x
	lda	0x11b,x
	sta	0x101,x
;	Raw cost for generated ic 64 : (12, 18.000000) count=0.999998
;	genMinus
	lda	0x107,x
	sec
	sbc	0x101,x
	sta	0x10f,x
	lda	0x108,x
	sbc	0x102,x
	sta	0x110,x
;	Raw cost for generated ic 65 : (19, 28.000000) count=0.999998
;	../realloc.c: 97: maxblocksize = oldblocksize;
;	genAssign
;	genCopy
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 68 : (9, 14.000000) count=0.999998
;	../realloc.c: 98: if(prev_free && prev_free->next == h) // Can merge with previous block
;	genIfx
	lda	0x118,x
	ora	0x117,x
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 69 : (11, 13.600000) count=0.999998
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x117,x
	sta	*(DPTR+0)
	lda	0x118,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 74 : (22, 38.000000) count=0.749999
;	genCmpEQorNE
	lda	0x107,x
	cmp	0x11b,x
	bne	00109$
	lda	0x108,x
	cmp	0x11c,x
	bne	00109$
;	Raw cost for generated ic 75 : (22, 27.200001) count=0.749999
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.749999
;	../realloc.c: 99: maxblocksize += (char HEAPSPACE *)h - (char HEAPSPACE *)prev_free;
;	genCast
;	genCopy
	lda	0x118,x
	sta	0x108,x
	lda	0x117,x
	sta	0x107,x
;	Raw cost for generated ic 80 : (12, 18.000000) count=0.562498
;	genMinus
	lda	0x101,x
	sec
	sbc	0x107,x
	pha
	lda	0x102,x
	sbc	0x108,x
	tax
	pla
;	Raw cost for generated ic 81 : (16, 27.000000) count=0.562498
;	genCast
;	genCopy
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.562498
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10f,x
	sta	0x10d,x
	lda	*(REGTEMP+0)
	adc	0x110,x
	sta	0x10e,x
;	Raw cost for generated ic 84 : (18, 28.000000) count=0.562498
;	genLabel
00109$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.999997
;	../realloc.c: 100: if(next_free == h->next) // Can merge with next block
;	genCmpEQorNE
	tsx
	lda	0x119,x
	cmp	0x103,x
	bne	00112$
	lda	0x11a,x
	cmp	0x104,x
	bne	00112$
;	Raw cost for generated ic 90 : (23, 29.200001) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.999997
;	../realloc.c: 101: maxblocksize += (char HEAPSPACE *)(next_free->next) - (char HEAPSPACE *)next_free;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x119,x
	sta	*(DPTR+0)
	lda	0x11a,x
	sta	*(DPTR+1)
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
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x11a,x
	sta	0x102,x
	lda	0x119,x
	sta	0x101,x
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 98 : (21, 32.000000) count=0.749997
;	genMinus
	stx	*(REGTEMP+0)
	sec
	tsx
	sbc	0x101,x
	sta	0x101,x
	lda	*(REGTEMP+0)
	sbc	0x102,x
	sta	0x102,x
;	Raw cost for generated ic 99 : (18, 28.000000) count=0.749997
;	genCast
;	genCopy
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.749997
;	genPlus
	lda	0x10d,x
	clc
	adc	0x101,x
	sta	0x10d,x
	lda	0x10e,x
	adc	0x102,x
	sta	0x10e,x
;	Raw cost for generated ic 102 : (19, 28.000000) count=0.749997
;	genLabel
00112$:
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.999997
;	../realloc.c: 103: if(blocksize <= maxblocksize) // Can resize in place.
;	genCmp
	tsx
	lda	0x10d,x
	sec
	sbc	0x111,x
	lda	0x10e,x
	sbc	0x112,x
	bcs	00276$
	jmp	00122$
00276$:
;	Raw cost for generated ic 105 : (19, 25.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 106 : (0, 0.000000) count=0.999997
;	../realloc.c: 105: if(prev_free && prev_free->next == h) // Always move into previous block to defragment
;	genIfx
	lda	0x118,x
	ora	0x117,x
;	genIfxJump : z
	bne	00278$
	jmp	00114$
00278$:
;	Raw cost for generated ic 109 : (11, 13.600000) count=0.749997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x117,x
	sta	*(DPTR+0)
	lda	0x118,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
;	Raw cost for generated ic 114 : (23, 38.000000) count=0.562498
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x11b,x
	bne	00280$
	lda	0x102,x
	cmp	0x11c,x
	beq	00281$
00280$:
	jmp	00114$
00281$:
;	Raw cost for generated ic 115 : (22, 27.200001) count=0.562498
;	skipping generated iCode
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.562498
;	../realloc.c: 107: memmove(prev_free, h, blocksize <= oldblocksize ? blocksize : oldblocksize);
;	genCmp
	lda	0x10f,x
	sec
	sbc	0x111,x
	lda	0x110,x
	sbc	0x112,x
	bcc	00131$
;	Raw cost for generated ic 119 : (18, 23.600000) count=0.421874
;	skipping generated iCode
;	Raw cost for generated ic 121 : (0, 0.000000) count=0.421874
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x102,x
	lda	0x111,x
	sta	0x101,x
;	Raw cost for generated ic 122 : (12, 18.000000) count=0.316404
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 123 : (3, 3.000000) count=0.316404
;	genLabel
00131$:
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.105468
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 125 : (13, 20.000000) count=0.105468
;	genLabel
00132$:
;	Raw cost for generated ic 126 : (0, 0.000000) count=0.421873
;	genCast
;	genCopy
	tsx
	lda	0x11c,x
	sta	0x104,x
	lda	0x11b,x
	sta	0x103,x
;	Raw cost for generated ic 127 : (13, 20.000000) count=0.421873
;	genCast
;	genCopy
	lda	0x118,x
	sta	0x108,x
	lda	0x117,x
	sta	0x107,x
;	Raw cost for generated ic 128 : (12, 18.000000) count=0.421873
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 129 : (8, 14.000000) count=0.421873
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 130 : (8, 14.000000) count=0.421873
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.421873
;	genCall
;	genSend
	lda	0x107,x
	tay
	lda	0x108,x
	tax
	tya
	jsr	_memmove
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 132 : (22, 38.000000) count=0.421873
;	../realloc.c: 108: h = prev_free;
;	genAssign
;	genCopy
	tsx
	lda	0x118,x
	sta	0x11c,x
	lda	0x117,x
	sta	0x11b,x
;	Raw cost for generated ic 133 : (13, 20.000000) count=0.421873
;	../realloc.c: 109: *pf = next_free;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	0x119,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x11a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 135 : (23, 38.000000) count=0.421873
;	../realloc.c: 110: f = pf;
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x106,x
	lda	0x113,x
	sta	0x105,x
;	Raw cost for generated ic 136 : (12, 18.000000) count=0.421873
;	genLabel
00114$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.749996
;	../realloc.c: 113: if(next_free && next_free == h->next) // Merge with following block
;	genIfx
	tsx
	lda	0x11a,x
	ora	0x119,x
;	genIfxJump : z
	bne	00284$
	jmp	00117$
00284$:
;	Raw cost for generated ic 138 : (12, 15.600000) count=0.749996
;	genCast
;	genCopy
	lda	0x11c,x
	sta	0x102,x
	lda	0x11b,x
	sta	0x101,x
;	Raw cost for generated ic 142 : (12, 18.000000) count=0.562497
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 143 : (20, 34.000000) count=0.562497
;	genCmpEQorNE
	lda	0x119,x
	cmp	0x103,x
	bne	00117$
	lda	0x11a,x
	cmp	0x104,x
	bne	00117$
;	Raw cost for generated ic 144 : (22, 27.200001) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.562497
;	../realloc.c: 115: h->next = next_free->next;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x119,x
	sta	*(DPTR+0)
	lda	0x11a,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 152 : (22, 38.000000) count=0.421873
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
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
;	Raw cost for generated ic 153 : (22, 38.000000) count=0.421873
;	../realloc.c: 116: *f = next_free->next_free;
;	genAssign
;	genCopy
	lda	0x11a,x
	sta	0x102,x
	lda	0x119,x
	sta	0x101,x
;	Raw cost for generated ic 156 : (12, 18.000000) count=0.421873
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
;	Raw cost for generated ic 157 : (15, 26.000000) count=0.421873
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 158 : (29, 49.000000) count=0.421873
;	genLabel
00117$:
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.749996
;	../realloc.c: 119: if(maxblocksize >= blocksize + sizeof(struct header)) // Create new block from free space
;	genPlus
;	  genPlusInc
	tsx
	lda	0x111,x
	clc
	adc	#0x04
	sta	0x101,x
	lda	0x112,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 160 : (18, 26.000000) count=0.749996
;	genCmp
	lda	0x10d,x
	sec
	sbc	0x101,x
	lda	0x10e,x
	sbc	0x102,x
	bcs	00288$
	jmp	00120$
00288$:
;	Raw cost for generated ic 161 : (18, 23.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.749996
;	../realloc.c: 121: header_t *const newheader = (header_t *const)((char HEAPSPACE *)h + blocksize);
;	genPlus
	lda	0x11b,x
	clc
	adc	0x111,x
	sta	0x10b,x
	lda	0x11c,x
	adc	0x112,x
	sta	0x10c,x
;	Raw cost for generated ic 166 : (19, 28.000000) count=0.562497
;	../realloc.c: 122: newheader->next = h->next;
;	genCast
;	genCopy
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 170 : (9, 14.000000) count=0.562497
;	genCast
;	genCopy
	lda	0x11c,x
	sta	0x104,x
	lda	0x11b,x
	sta	0x103,x
;	Raw cost for generated ic 172 : (12, 18.000000) count=0.562497
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (15, 26.000000) count=0.562497
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 174 : (27, 47.000000) count=0.562497
;	../realloc.c: 123: newheader->next_free = *f;
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 176 : (13, 20.000000) count=0.562497
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 178 : (22, 38.000000) count=0.562497
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	0x107,x
	iny
	sta	[DPTR],y
	lda	0x108,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 179 : (22, 38.000000) count=0.562497
;	../realloc.c: 124: *f = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	0x10b,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 181 : (23, 38.000000) count=0.562497
;	../realloc.c: 125: h->next = newheader;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	0x10b,x
	dey
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 184 : (22, 38.000000) count=0.562497
;	genLabel
00120$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.749996
;	../realloc.c: 128: return(&(h->next_free));
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11b,x
	tay
	lda	0x11c,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00289$
	inx
00289$:
;	Raw cost for generated ic 187 : (16, 24.600000) count=0.749996
;	genRet
	jmp	00129$
;	Raw cost for generated ic 189 : (3, 3.000000) count=0.749996
;	genLabel
00122$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=0.999994
;	../realloc.c: 131: if(ret = malloc(size))
;	Raw cost for generated ic 191 : (0, 0.000000) count=0.999994
;	genCall
;	genSend
	tsx
	lda	0x123,x
	tay
	lda	0x124,x
	tax
	tya
	jsr	_malloc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
;	Raw cost for generated ic 192 : (24, 40.000000) count=0.999994
;	genAssign
;	genCopy
	sta	0x102,x
	lda	0x11d,x
	sta	0x101,x
;	Raw cost for generated ic 193 : (9, 14.000000) count=0.999994
;	genIfx
	lda	0x11e,x
	ora	0x11d,x
;	genIfxJump : z
	bne	00291$
	jmp	00124$
00291$:
;	Raw cost for generated ic 194 : (11, 13.600000) count=0.999994
;	../realloc.c: 133: size_t oldsize = oldblocksize - offsetof(struct header, next_free);
;	genMinus
;	  genMinusDec - size=2  icount=2
	lda	0x10f,x
	sec
	sbc	#0x02
	sta	0x109,x
	lda	0x110,x
	sbc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 197 : (17, 24.000000) count=0.749996
;	../realloc.c: 134: memcpy(ret, ptr, size <= oldsize ? size : oldsize);
;	genCmp
	lda	0x109,x
	sec
	sbc	0x123,x
	lda	0x10a,x
	sbc	0x124,x
	bcc	00133$
;	Raw cost for generated ic 199 : (18, 23.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 201 : (0, 0.000000) count=0.749996
;	genAssign
;	genCopy
	lda	0x124,x
	sta	0x104,x
	lda	0x123,x
	sta	0x103,x
;	Raw cost for generated ic 202 : (12, 18.000000) count=0.562497
;	genGoto
	jmp	00134$
;	Raw cost for generated ic 203 : (3, 3.000000) count=0.562497
;	genLabel
00133$:
;	Raw cost for generated ic 204 : (0, 0.000000) count=0.187498
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x104,x
	lda	0x109,x
	sta	0x103,x
;	Raw cost for generated ic 205 : (13, 20.000000) count=0.187498
;	genLabel
00134$:
;	Raw cost for generated ic 206 : (0, 0.000000) count=0.749995
;	genIpush
	tsx
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 207 : (9, 16.000000) count=0.749995
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 208 : (8, 14.000000) count=0.749995
;	Raw cost for generated ic 209 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 210 : (22, 38.000000) count=0.749995
;	../realloc.c: 135: free(ptr);
;	Raw cost for generated ic 211 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	tsx
	lda	0x11f,x
	tay
	lda	0x120,x
	tax
	tya
	jsr	_free
;	Raw cost for generated ic 212 : (13, 22.000000) count=0.749995
;	../realloc.c: 136: return(ret);
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00129$
;	Raw cost for generated ic 213 : (14, 19.000000) count=0.749995
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
;	  adjustStack : cycles stk:134  incdec:74  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x20
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 217 : (16, 30.000000) count=0.999993
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
