;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2uchar
	
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
	.globl ___fs2ulong
	.globl ___fs2uchar
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
;Allocation info for local variables in function '__fs2uchar'
;------------------------------------------------------------
;f             Allocated to stack - sp +7 +4 
;ul            Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_fs2uchar.c: 51: unsigned char __fs2uchar (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2uchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
___fs2uchar:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../_fs2uchar.c: 53: unsigned long ul=__fs2ulong(f);
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
;	Raw cost for generated ic 2 : (17, 30.000000) count=1.000000
;	genCall
	jsr	___fs2ulong
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
;	Raw cost for generated ic 3 : (29, 50.000000) count=1.000000
;	../_fs2uchar.c: 54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
;	genCmp
	lda	0x101,x
	sec
	sbc	#0xff
	lda	0x102,x
	sbc	#0x00
	lda	0x103,x
	sbc	#0x00
	lda	0x104,x
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 5 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genRet
	lda	#0xff
	jmp	00103$
;	Raw cost for generated ic 9 : (5, 5.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fs2uchar.c: 55: return ul;
;	genCast
;	genCopy
	tsx
	lda	0x101,x
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../_fs2uchar.c: 56: }
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
;	Raw cost for generated ic 14 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
