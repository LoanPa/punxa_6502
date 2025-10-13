;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoimax
	
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
	.globl _wcstoimax
	.globl _wcstoll
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
;Allocation info for local variables in function 'wcstoimax'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +13 +2 
;base          Allocated to stack - sp +15 +2 
;nptr          Allocated to stack - sp +9 +2 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../wcstoimax.c: 32: intmax_t wcstoimax(const wchar_t * restrict nptr, wchar_t ** restrict endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoimax
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_wcstoimax:
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
;	../wcstoimax.c: 35: return wcstoll(nptr, endptr, base);
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 3 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 4 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
	jsr	_wcstoll
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
	lda	*___SDCC_m6502_ret4
	sta	0x109,x
	lda	*___SDCC_m6502_ret5
	sta	0x10a,x
	lda	*___SDCC_m6502_ret6
	sta	0x10b,x
	lda	*___SDCC_m6502_ret7
	sta	0x10c,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 6 : (58, 96.000000) count=1.000000
;	genRet
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
;	Raw cost for generated ic 7 : (37, 52.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../wcstoimax.c: 39: }
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
;	Raw cost for generated ic 9 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
