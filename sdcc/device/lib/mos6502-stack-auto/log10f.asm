;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module log10f
	
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
	.globl _logf
	.globl _log10f
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
;Allocation info for local variables in function 'log10f'
;------------------------------------------------------------
;x             Allocated to stack - sp +7 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../log10f.c: 34: float log10f(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function log10f
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_log10f:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../log10f.c: 36: return logf(x)*0.4342944819;
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
	jsr	_logf
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
;	genIpush
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 8 : (13, 24.000000) count=1.000000
;	genIpush
	lda	#0x3e
	pha
	lda	#0xde
	pha
	lda	#0x5b
	pha
	lda	#0xd9
	pha
;	Raw cost for generated ic 9 : (12, 20.000000) count=1.000000
;	genCall
	jsr	___fsmul
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
;	Raw cost for generated ic 10 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 5 : (20, 28.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../log10f.c: 37: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 7 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
