;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module free
	
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
	.globl _free
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
;Allocation info for local variables in function 'free'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +17 +2 
;h             Allocated to stack - sp +15 +2 
;next_free     Allocated to stack - sp +13 +2 
;prev_free     Allocated to stack - sp +11 +2 
;f             Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;sloc3         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../free.c: 50: void free(void *ptr)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function free
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_free:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../free.c: 55: if(!ptr)
;	genIfx
	lda	0x112,x
	ora	0x111,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../free.c: 56: return;
;	genRet
	jmp	00113$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../free.c: 58: prev_free = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 9 : (9, 14.000000) count=1.000000
;	../free.c: 59: for(h = __sdcc_heap_free, f = &__sdcc_heap_free; h && h < ptr; prev_free = h, f = &(h->next_free), h = h->next_free); // Find adjacent blocks in free list
;	genAssign
;	genCopy
	lda	(___sdcc_heap_free + 1)
	sta	0x108,x
	lda	___sdcc_heap_free
	sta	0x107,x
;	Raw cost for generated ic 10 : (12, 18.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>___sdcc_heap_free
	sta	0x106,x
	lda	#___sdcc_heap_free
	sta	0x105,x
;	Raw cost for generated ic 12 : (10, 14.000000) count=1.000000
;	genLabel
00111$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.285713
;	genIfx
	tsx
	lda	0x108,x
	ora	0x107,x
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 15 : (12, 15.600000) count=2.285713
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
;	Raw cost for generated ic 18 : (12, 18.000000) count=1.714284
;	genCmp
	lda	0x107,x
	sec
	sbc	0x103,x
	lda	0x108,x
	sbc	0x104,x
	bcs	00103$
;	Raw cost for generated ic 19 : (18, 23.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.714284
;	genAssign
;	genCopy
	lda	0x108,x
	sta	0x10c,x
;	Raw cost for generated ic 24 : (12, 18.000000) count=1.285713
;	genPlus
;	  genPlusInc
	lda	0x107,x
	sta	0x10b,x
	clc
	adc	#0x02
	sta	0x109,x
	lda	0x108,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 26 : (17, 24.000000) count=1.285713
;	genAssign
;	genCopy
	sta	0x106,x
;	Raw cost for generated ic 27 : (9, 14.000000) count=1.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	0x105,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 30 : (23, 38.000000) count=1.285713
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 32 : (3, 3.000000) count=1.285713
;	genLabel
00103$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999999
;	../free.c: 60: next_free = h;
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x10e,x
	lda	0x107,x
	sta	0x10d,x
;	Raw cost for generated ic 34 : (13, 20.000000) count=0.999999
;	../free.c: 62: h = (void HEAPSPACE *)((char HEAPSPACE *)(ptr) - offsetof(struct header, next_free));
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
;	Raw cost for generated ic 35 : (12, 18.000000) count=0.999999
;	genMinus
;	  genMinusDec - size=2  icount=2
	sta	0x103,x
	sec
	sbc	#0x02
	sta	0x103,x
	lda	0x104,x
	sbc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 36 : (17, 24.000000) count=0.999999
;	genCast
;	genCopy
	sta	0x110,x
	lda	0x103,x
	sta	0x10f,x
;	Raw cost for generated ic 38 : (9, 14.000000) count=0.999999
;	../free.c: 65: h->next_free = next_free;
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
;	Raw cost for generated ic 41 : (12, 18.000000) count=0.999999
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	0x10d,x
	ldy	#0x02
	sta	[DPTR],y
	lda	0x10e,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 42 : (20, 34.000000) count=0.999999
;	../free.c: 66: *f = h;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	0x10f,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 44 : (23, 38.000000) count=0.999999
;	../free.c: 68: if(next_free == h->next) // Merge with next block
;	genCast
;	genCopy
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 46 : (9, 14.000000) count=0.999999
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 47 : (19, 34.000000) count=0.999999
;	genCmpEQorNE
	lda	0x10d,x
	cmp	0x107,x
	bne	00105$
	lda	0x10e,x
	cmp	0x108,x
	bne	00105$
;	Raw cost for generated ic 48 : (22, 27.200001) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.999999
;	../free.c: 70: h->next_free = h->next->next_free;
;	genAssign
;	genCopy
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749999
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 58 : (18, 30.000000) count=0.749999
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 59 : (27, 47.000000) count=0.749999
;	../free.c: 71: h->next = h->next->next;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 64 : (19, 32.000000) count=0.749999
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 66 : (11, 22.000000) count=0.749999
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
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 67 : (27, 47.000000) count=0.749999
;	genLabel
00105$:
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999998
;	../free.c: 74: if (prev_free && prev_free->next == h) // Merge with previous block
;	genIfx
	tsx
	lda	0x10c,x
	ora	0x10b,x
;	genIfxJump : z
	bne	00173$
	jmp	00113$
00173$:
;	Raw cost for generated ic 69 : (12, 15.600000) count=0.999998
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
;	Raw cost for generated ic 73 : (12, 18.000000) count=0.749999
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
;	Raw cost for generated ic 74 : (20, 34.000000) count=0.749999
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x10f,x
	bne	00113$
	lda	0x102,x
	cmp	0x110,x
	bne	00113$
;	Raw cost for generated ic 75 : (22, 27.200001) count=0.749999
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.749999
;	../free.c: 76: prev_free->next = h->next;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
;	Raw cost for generated ic 83 : (22, 38.000000) count=0.562498
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	lda	0x101,x
	dey
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 84 : (22, 38.000000) count=0.562498
;	../free.c: 77: prev_free->next_free = h->next_free;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 86 : (12, 18.000000) count=0.562498
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 89 : (22, 38.000000) count=0.562498
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
;	Raw cost for generated ic 90 : (22, 38.000000) count=0.562498
;	genLabel
00113$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.999997
;	../free.c: 79: }
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 93 : (16, 30.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
