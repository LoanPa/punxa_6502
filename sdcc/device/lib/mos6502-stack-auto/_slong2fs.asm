;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slong2fs
	
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
	.globl ___ulong2fs
	.globl ___slong2fs
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
;Allocation info for local variables in function '__slong2fs'
;------------------------------------------------------------
;sl            Allocated to stack - sp +7 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___slong2fs:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../_slong2fs.c: 81: if (sl<0) 
;	genCmp
	tsx
	lda	0x10a,x
	sec
	sbc	#0x00
	bvc	00113$
	bpl	00112$
	bmi	00102$
00113$:
	bpl	00102$
00112$:
;	Raw cost for generated ic 2 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 82: return -__ulong2fs(-sl);
;	genUminus
	lda	#0x00
	sec
	sbc	0x107,x
	sta	0x101,x
	lda	#0x00
	sbc	0x108,x
	sta	0x102,x
	lda	#0x00
	sbc	0x109,x
	sta	0x103,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x104,x
;	Raw cost for generated ic 6 : (33, 46.000000) count=0.750000
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 7 : (13, 24.000000) count=0.750000
;	genCall
	jsr	___ulong2fs
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
;	Raw cost for generated ic 8 : (29, 50.000000) count=0.750000
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 9 : (8, 11.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00104$
;	Raw cost for generated ic 10 : (20, 27.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 84: return __ulong2fs(sl);
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 13 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___ulong2fs
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
;	Raw cost for generated ic 14 : (29, 50.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 15 : (17, 24.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 85: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 18 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
