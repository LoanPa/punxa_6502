;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module imaxabs
	
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
	.globl _imaxabs
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
;Allocation info for local variables in function 'imaxabs'
;------------------------------------------------------------
;j             Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	../imaxabs.c: 31: intmax_t imaxabs(intmax_t j)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function imaxabs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_imaxabs:
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../imaxabs.c: 33: return (j < 0) ? -j : j;
;	genCmp
	lda	0x112,x
	sec
	sbc	#0x00
	bvc	00112$
	bpl	00111$
	bmi	00103$
00112$:
	bpl	00103$
00111$:
;	Raw cost for generated ic 2 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 4 : (65, 90.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
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
;	Raw cost for generated ic 8 : (49, 74.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genRet
	tsx
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
;	Raw cost for generated ic 10 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../imaxabs.c: 34: }
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
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
