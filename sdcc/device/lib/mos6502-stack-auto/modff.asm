;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module modff
	
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
	.globl _modff
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;x             Allocated to stack - sp +9 +4 
;y             Allocated to stack - sp +13 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../modff.c: 33: float modff(float x, float * y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_modff:
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../modff.c: 35: *y=(long)x;
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x106,x
	lda	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 2 : (12, 18.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fs2slong
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
;	Raw cost for generated ic 13 : (29, 50.000000) count=1.000000
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
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
;	Raw cost for generated ic 15 : (29, 50.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 5 : (35, 62.000000) count=1.000000
;	../modff.c: 36: return (x-*y);
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 16 : (13, 24.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 17 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fssub
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
;	Raw cost for generated ic 18 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 9 : (20, 28.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../modff.c: 37: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (13, 28.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
