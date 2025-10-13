;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modschar
	
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
	.globl __modschar
	.globl __moduschar
	.globl __modsuchar
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
__modschar_y_10000_1:
	.ds 1
__moduschar_y_10000_3:
	.ds 1
__modsuchar_y_10000_5:
	.ds 1
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
;Allocation info for local variables in function '_modschar'
;------------------------------------------------------------
;y             Allocated with name '__modschar_y_10000_1'
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 31: _modschar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modschar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	__modschar_y_10000_1
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../_modschar.c: 33: return ((int)x % (int)y);
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
	lda	__modschar_y_10000_1
	sta	__modsint_PARM_2
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(__modsint_PARM_2 + 1)
	pla
;	Raw cost for generated ic 5 : (18, 27.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 12 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../_modschar.c: 34: }
;	genEndFunction
	jmp	__modsint
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_moduschar'
;------------------------------------------------------------
;y             Allocated with name '__moduschar_y_10000_3'
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 37: _moduschar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _moduschar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduschar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	__moduschar_y_10000_3
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../_modschar.c: 39: return ((int)((signed char)x) % (int)y);
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
	ldy	#0x00
	sty	(__modsint_PARM_2 + 1)
	ldy	__moduschar_y_10000_3
	sty	__modsint_PARM_2
;	Raw cost for generated ic 6 : (11, 14.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_modschar.c: 40: }
;	genEndFunction
	jmp	__modsint
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '_modsuchar'
;------------------------------------------------------------
;y             Allocated with name '__modsuchar_y_10000_5'
;x             Allocated to registers a 
;------------------------------------------------------------
;	../_modschar.c: 43: _modsuchar (signed char x, signed char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modsuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modsuchar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	__modsuchar_y_10000_5
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../_modschar.c: 45: return ((int)((unsigned char)x) % (int)y);
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 5 : (2, 2.000000) count=1.000000
;	genCast
	pha
	lda	__modsuchar_y_10000_5
	sta	__modsint_PARM_2
	asl	a
	txa
	adc	#0xff
	eor	#0xff
	sta	(__modsint_PARM_2 + 1)
	pla
;	Raw cost for generated ic 6 : (17, 27.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_modschar.c: 46: }
;	genEndFunction
	jmp	__modsint
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
