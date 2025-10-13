;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module floorf
	
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
	.globl _floorf
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
;Allocation info for local variables in function 'floorf'
;------------------------------------------------------------
;x             Allocated to stack - sp +11 +4 
;r             Allocated to stack - sp +5 +4 
;sloc0         Allocated to stack - sp +5 +4 
;sloc1         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../floorf.c: 33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_floorf:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../floorf.c: 36: r=x;
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 27 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2slong
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
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 28 : (29, 50.000000) count=1.000000
;	../floorf.c: 37: if (r<=0)
;	genCmp
	lda	#0x00
	sec
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	lda	#0x00
	sbc	0x107,x
	lda	#0x00
	sbc	0x108,x
	bvs	00121$
	bpl	00120$
	bmi	00122$
00121$:
	bmi	00120$
00122$:
	jmp	00102$
00120$:
;	Raw cost for generated ic 4 : (32, 39.399998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	../floorf.c: 38: return (r+((r>x)?-1:0));
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 29 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 30 : (29, 50.000000) count=0.750000
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 31 : (13, 24.000000) count=0.750000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 32 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 33 : (11, 20.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 10 : (7, 7.600000) count=0.750000
;	genAssign
;	genCopy
	lda	#0xff
;	Raw cost for generated ic 11 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 12 : (3, 3.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.187500
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 14 : (2, 2.000000) count=0.187500
;	genLabel
00107$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.750000
;	genCast
	tsx
	sta	0x101,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 16 : (20, 30.000000) count=0.750000
;	genPlus
	lda	0x105,x
	clc
	adc	0x101,x
	sta	0x101,x
	lda	0x106,x
	adc	0x102,x
	sta	0x102,x
	lda	0x107,x
	adc	0x103,x
	sta	0x103,x
	lda	0x108,x
	adc	0x104,x
	sta	0x104,x
;	Raw cost for generated ic 17 : (37, 54.000000) count=0.750000
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 34 : (13, 24.000000) count=0.750000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 35 : (29, 50.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00104$
;	Raw cost for generated ic 19 : (20, 27.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../floorf.c: 40: return r;
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 36 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 37 : (29, 50.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (17, 24.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../floorf.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
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
