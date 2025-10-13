;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strndup
	
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
	.globl _malloc
	.globl ___memcpy
	.globl _strnlen
	.globl _strndup
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
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;n             Allocated to stack - sp +13 +2 
;s             Allocated to stack - sp +9 +2 
;l             Allocated to stack - sp +7 +2 
;r             Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../strndup.c: 33: char *strndup (const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_strndup:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strndup.c: 35: size_t l = strnlen (s, n);
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 3 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
	jsr	_strnlen
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
;	Raw cost for generated ic 5 : (26, 44.000000) count=1.000000
;	../strndup.c: 36: char *r = malloc (l + 1);
;	genPlus
;	  genPlusInc
	lda	0x107,x
	tay
	lda	0x108,x
	tax
	tya
	clc
	adc	#0x01
	bcc	00111$
	inx
00111$:
;	Raw cost for generated ic 7 : (15, 22.600000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_malloc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x103,x
	lda	*(REGTEMP+0)
	sta	0x104,x
;	Raw cost for generated ic 9 : (14, 24.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x106,x
	lda	0x103,x
	sta	0x105,x
;	Raw cost for generated ic 10 : (9, 14.000000) count=1.000000
;	../strndup.c: 37: if (r)
;	genIfx
	lda	0x106,x
	ora	0x105,x
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 12 : (11, 13.600000) count=1.000000
;	../strndup.c: 39: memcpy (r, s, l);
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x104,x
	lda	0x109,x
	sta	0x103,x
;	Raw cost for generated ic 15 : (12, 18.000000) count=0.750000
;	genCast
;	genCopy
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 16 : (12, 18.000000) count=0.750000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 17 : (8, 14.000000) count=0.750000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 18 : (8, 14.000000) count=0.750000
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.750000
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
;	Raw cost for generated ic 20 : (22, 38.000000) count=0.750000
;	../strndup.c: 40: r[l] = 0;
;	genPlus
	tsx
	lda	0x105,x
	clc
	adc	0x107,x
	pha
	lda	0x106,x
	adc	0x108,x
	tax
	pla
;	Raw cost for generated ic 21 : (17, 29.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (9, 16.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	../strndup.c: 42: return (r);
;	genRet
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 24 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../strndup.c: 43: }
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 26 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
