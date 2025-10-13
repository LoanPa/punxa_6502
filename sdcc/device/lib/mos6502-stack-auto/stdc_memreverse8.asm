;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_memreverse8
	
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
	.globl _stdc_memreverse8
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
;Allocation info for local variables in function 'stdc_memreverse8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +14 +2 
;n             Allocated to stack - sp +10 +2 
;i             Allocated to stack - sp +8 +2 
;c             Allocated to stack - sp +7 +1 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../stdc_memreverse8.c: 31: void stdc_memreverse8(size_t n, unsigned char ptr[static n])
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 11 bytes.
_stdc_memreverse8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:27  incdec:22  adc:12
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../stdc_memreverse8.c: 33: for(size_t i = 0; i < n / 2; i++)
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	lda	0x10a,x
	tay
	lda	0x10b,x
	tax
	tya
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x106,x
	lda	*(REGTEMP+1)
	sta	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 5 : (32, 53.000000) count=1.000000
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x108,x
	sta	0x109,x
;	Raw cost for generated ic 32 : (9, 14.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	0x105,x
	lda	0x109,x
	sbc	0x106,x
	bcc	00120$
	jmp	00105$
00120$:
;	Raw cost for generated ic 6 : (19, 25.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	../stdc_memreverse8.c: 35: unsigned char c = ptr[i];
;	genPlus
	lda	0x10e,x
	clc
	adc	0x108,x
	sta	0x103,x
	lda	0x10f,x
	adc	0x109,x
	sta	0x104,x
;	Raw cost for generated ic 10 : (19, 28.000000) count=2.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x103,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 11 : (14, 22.000000) count=2.999997
;	../stdc_memreverse8.c: 36: ptr[i] = ptr[n - i - 1];
;	genMinus
	lda	0x10a,x
	sec
	sbc	0x108,x
	pha
	lda	0x10b,x
	sbc	0x109,x
	tax
	pla
;	Raw cost for generated ic 14 : (16, 27.000000) count=2.999997
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00121$
	dex
00121$:
;	Raw cost for generated ic 15 : (6, 8.600000) count=2.999997
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10e,x
	sta	0x101,x
	lda	*(REGTEMP+0)
	adc	0x10f,x
	sta	0x102,x
;	Raw cost for generated ic 16 : (18, 28.000000) count=2.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x101,x
	sta	*(DPTR+0)
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 17 : (10, 17.000000) count=2.999997
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	sta	[DPTR],y
;	Raw cost for generated ic 18 : (20, 33.000000) count=2.999997
;	../stdc_memreverse8.c: 37: ptr[n - i - 1] = c;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	0x107,x
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (16, 26.000000) count=2.999997
;	../stdc_memreverse8.c: 33: for(size_t i = 0; i < n / 2; i++)
;	genPlus
;	  genPlusInc
	lda	0x108,x
	clc
	adc	#0x01
	sta	0x108,x
	lda	0x109,x
	adc	#0x00
	sta	0x109,x
;	Raw cost for generated ic 25 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 27 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999999
;	../stdc_memreverse8.c: 39: }
;	genEndFunction
;	  adjustStack : cycles stk:50  incdec:32  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0b
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 30 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
