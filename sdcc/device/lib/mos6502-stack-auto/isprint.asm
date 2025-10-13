;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isprint
	
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
	.globl _isprint
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
;Allocation info for local variables in function 'isprint'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	../isprint.c: 33: int isprint (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isprint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isprint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../isprint.c: 35: return (c >= ' ' && c <= '~');
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	#0x20
	txa
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvs	00113$
	bpl	00112$
	bmi	00103$
00113$:
	bpl	00103$
00112$:
;	Raw cost for generated ic 3 : (23, 34.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x7e
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bvc	00116$
	bpl	00115$
	bmi	00104$
00116$:
	bpl	00104$
00115$:
;	Raw cost for generated ic 6 : (24, 31.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.812500
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 10 : (2, 2.000000) count=0.812500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 11 : (3, 3.000000) count=0.812500
;	genLabel
00104$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.187500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 13 : (2, 2.000000) count=0.187500
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 15 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../isprint.c: 36: }
;	genEndFunction
	rts
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
