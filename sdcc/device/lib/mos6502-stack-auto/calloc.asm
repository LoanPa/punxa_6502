;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module calloc
	
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
	.globl _memset
	.globl _malloc
	.globl _calloc
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;size          Allocated to stack - sp +15 +2 
;nmemb         Allocated to stack - sp +11 +2 
;ptr           Allocated to stack - sp +9 +2 
;msize         Allocated to stack - sp +5 +4 
;sloc0         Allocated to stack - sp +5 +4 
;sloc1         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../calloc.c: 44: void *calloc (size_t nmemb, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_calloc:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../calloc.c: 49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	lda	0x10c,x
	sta	0x106,x
	lda	0x10b,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (20, 30.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x104,x
	sta	0x103,x
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (20, 30.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 29 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 30 : (16, 28.000000) count=1.000000
;	../calloc.c: 54: if (msize > SIZE_MAX)
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 31 : (30, 50.000000) count=1.000000
;	genCmp
	lda	#0xff
	sec
	sbc	0x101,x
	lda	#0xff
	sbc	0x102,x
	lda	#0x00
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	bcs	00102$
;	Raw cost for generated ic 7 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../calloc.c: 55: return(0);
;	genRet
	lda	#0x00
	tax
	jmp	00105$
;	Raw cost for generated ic 11 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../calloc.c: 57: if (ptr = malloc(msize))
;	genCast
;	genCopy
	tsx
	lda	0x101,x
;	Raw cost for generated ic 13 : (13, 20.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tay
	lda	0x102,x
	tax
	tya
	jsr	_malloc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
;	Raw cost for generated ic 15 : (20, 34.000000) count=1.000000
;	genAssign
;	genCopy
	sta	0x106,x
	lda	0x109,x
	sta	0x105,x
;	Raw cost for generated ic 16 : (9, 14.000000) count=1.000000
;	genIfx
	lda	0x10a,x
	ora	0x109,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 17 : (11, 13.600000) count=1.000000
;	../calloc.c: 58: memset(ptr, 0, msize);
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 21 : (8, 14.000000) count=0.750000
;	genIpush
	lda	#0x00
	pha
;	Raw cost for generated ic 22 : (3, 5.000000) count=0.750000
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
	jsr	_memset
;	  adjustStack : cycles stk:18  incdec:16  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 24 : (21, 36.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../calloc.c: 60: return(ptr);
;	genRet
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 26 : (11, 16.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	../calloc.c: 61: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 28 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
