;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slonglong2fs
	
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
	.globl ___slonglong2fs
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
;Allocation info for local variables in function '__slonglong2fs'
;------------------------------------------------------------
;sll           Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../_slonglong2fs.c: 35: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
___slonglong2fs:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_slonglong2fs.c: 37: if (sll<0)
;	genCmp
	lda	0x112,x
	sec
	sbc	#0x00
	bvc	00113$
	bpl	00112$
	bmi	00114$
00113$:
	bmi	00112$
00114$:
	jmp	00102$
00112$:
;	Raw cost for generated ic 2 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 38: return -__ulonglong2fs(-sll);
;	genUminus
	lda	#0x00
	sec
	sbc	0x10b,x
	sta	0x101,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x102,x
	lda	#0x00
	sbc	0x10d,x
	sta	0x103,x
	lda	#0x00
	sbc	0x10e,x
	sta	0x104,x
	lda	#0x00
	sbc	0x10f,x
	sta	0x105,x
	lda	#0x00
	sbc	0x110,x
	sta	0x106,x
	lda	#0x00
	sbc	0x111,x
	sta	0x107,x
	lda	#0x00
	sbc	0x112,x
	sta	0x108,x
;	Raw cost for generated ic 6 : (65, 90.000000) count=0.750000
;	genIpush
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 7 : (29, 52.000000) count=0.750000
;	genCall
	jsr	___ulonglong2fs
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
;	Raw cost for generated ic 8 : (30, 50.000000) count=0.750000
;	genUminus
;	genUminusFloat
	lda	0x104,x
	eor	#0x80
	sta	0x104,x
;	Raw cost for generated ic 9 : (26, 38.000000) count=0.750000
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
;	../_slonglong2fs.c: 40: return __ulonglong2fs(sll);
;	genIpush
	tsx
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 13 : (33, 58.000000) count=1.000000
;	genCall
	jsr	___ulonglong2fs
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
;	Raw cost for generated ic 14 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 15 : (20, 28.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 41: }
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
;	Raw cost for generated ic 18 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
