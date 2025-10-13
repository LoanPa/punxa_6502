;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divschar
	
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
	.globl __divschar
	.globl __divuschar
	.globl __divsuchar
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
;Allocation info for local variables in function '_divschar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 31: _divschar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divschar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	phx
	ply
;	Raw cost for generated ic 3 : (2, 7.000000) count=1.000000
;	../_divschar.c: 33: return ((int)x / (int)y);
;	genCast
;	genCopy
	ldx	#0x00
	cmp	#0x00
	bpl	00103$
	dex
00103$:
;	Raw cost for generated ic 4 : (7, 8.600000) count=1.000000
;	genCast
	pha
	tya
	sta	__divsint_PARM_2
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__divsint_PARM_2 + 1)
	pla
;	Raw cost for generated ic 5 : (16, 25.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 12 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../_divschar.c: 34: }
;	genEndFunction
	jmp	__divsint
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_divuschar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 37: _divuschar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divuschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divuschar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	phx
	ply
;	Raw cost for generated ic 3 : (2, 7.000000) count=1.000000
;	../_divschar.c: 39: return ((int)((signed char)x) / (int)y);
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
	cmp	#0x00
	bpl	00103$
	dex
00103$:
;	Raw cost for generated ic 5 : (7, 8.600000) count=1.000000
;	genCast
;	genCopy
	stz	(__divsint_PARM_2 + 1)
	sty	__divsint_PARM_2
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_divschar.c: 40: }
;	genEndFunction
	jmp	__divsint
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_divsuchar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_divschar.c: 43: _divsuchar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divsuchar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	phx
	ply
;	Raw cost for generated ic 3 : (2, 7.000000) count=1.000000
;	../_divschar.c: 45: return ((int)((unsigned char)x) / (int)y);
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 5 : (2, 2.000000) count=1.000000
;	genCast
	pha
	tya
	sta	__divsint_PARM_2
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	(__divsint_PARM_2 + 1)
	pla
;	Raw cost for generated ic 6 : (15, 25.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_divschar.c: 46: }
;	genEndFunction
	jmp	__divsint
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
