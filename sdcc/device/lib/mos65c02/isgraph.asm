;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isgraph
	
	.r65c02
	.optsdcc -mmos65c02

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
	.globl _isgraph
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
_isgraph_c_10000_21:
	.ds 2
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
;Allocation info for local variables in function 'isgraph'
;------------------------------------------------------------
;c             Allocated with name '_isgraph_c_10000_21'
;------------------------------------------------------------
;	../isgraph.c: 33: int isgraph (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isgraph
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isgraph:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_isgraph_c_10000_21
	stx	(_isgraph_c_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../isgraph.c: 35: return (c > ' ' && c <= '~');
;	genCmp
	lda	#0x20
	sec
	sbc	_isgraph_c_10000_21
	lda	#0x00
	sbc	(_isgraph_c_10000_21 + 1)
	bvc	00113$
	bpl	00112$
	bmi	00103$
00113$:
	bpl	00103$
00112$:
;	Raw cost for generated ic 3 : (22, 27.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x7e
	sec
	sbc	_isgraph_c_10000_21
	lda	#0x00
	sbc	(_isgraph_c_10000_21 + 1)
	bvc	00116$
	bpl	00115$
	bmi	00104$
00116$:
	bpl	00104$
00115$:
;	Raw cost for generated ic 5 : (22, 27.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.812500
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 9 : (2, 2.000000) count=0.812500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 10 : (3, 3.000000) count=0.812500
;	genLabel
00104$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.187500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=0.187500
;	genLabel
00105$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 14 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../isgraph.c: 36: }
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
