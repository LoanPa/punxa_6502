;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module abs
	
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
	.globl _abs
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
;Allocation info for local variables in function 'abs'
;------------------------------------------------------------
;j             Allocated to registers a x 
;------------------------------------------------------------
;	../abs.c: 54: int abs(int j)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function abs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_abs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../abs.c: 56: return (j < 0) ? -j : j;
;	genCmp
	sta	*(REGTEMP+0)
	txa
	sec
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00112$
	bpl	00111$
	bmi	00103$
00112$:
	bmi	00111$
	rts
00111$:
;	Raw cost for generated ic 3 : (21, 32.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
	pha
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	tax
	pla
;	Raw cost for generated ic 5 : (14, 23.000000) count=0.750000
;	genGoto
;	Raw cost for generated ic 7 : (3, 3.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.250000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../abs.c: 57: }
;	genEndFunction
00103$:
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
