;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slslonglong
	
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
	.globl __slslonglong
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
;Allocation info for local variables in function '_slslonglong'
;------------------------------------------------------------
;l             Allocated to stack - sp +11 +8 
;s             Allocated to stack - sp +19 +1 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../_slslonglong.c: 35: long long _slslonglong(long long l, char s) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _slslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
__slslonglong:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_slslonglong.c: 37: return((unsigned long long)(l) << s);
;	genCast
;	genCopy
	lda	0x112,x
	sta	0x108,x
	lda	0x111,x
	sta	0x107,x
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
	lda	0x10e,x
	sta	0x104,x
	lda	0x10d,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 2 : (48, 72.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x113,x
;	Raw cost for generated ic 7 : (3, 4.000000) count=1.000000
;	genIpush
	pha
;	Raw cost for generated ic 8 : (1, 3.000000) count=1.000000
;	genIpush
	lda	0x108,x
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
;	Raw cost for generated ic 9 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__slulonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10a,x
	lda	*(REGTEMP+0)
	sta	0x10b,x
	lda	*___SDCC_m6502_ret2
	sta	0x10c,x
	lda	*___SDCC_m6502_ret3
	sta	0x10d,x
	lda	*___SDCC_m6502_ret4
	sta	0x10e,x
	lda	*___SDCC_m6502_ret5
	sta	0x10f,x
	lda	*___SDCC_m6502_ret6
	sta	0x110,x
	lda	*___SDCC_m6502_ret7
	sta	0x111,x
;	  adjustStack : cycles stk:36  incdec:20  adc:10
	txa
	clc
	adc	#0x09
	tax
	txs
;	Raw cost for generated ic 10 : (50, 82.000000) count=1.000000
;	genRet
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 4 : (40, 56.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	../_slslonglong.c: 38: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 6 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
