;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ispunct
	
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
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct
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
_ispunct_c_10000_21:
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;c             Allocated with name '_ispunct_c_10000_21'
;------------------------------------------------------------
;	../ispunct.c: 33: int ispunct (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ispunct:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_ispunct_c_10000_21
	stx	(_ispunct_c_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../ispunct.c: 35: return (isprint (c) && !isspace (c) && !isalnum (c));
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_isprint
;	assignResultValue
;	Raw cost for generated ic 4 : (3, 6.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00121$
	cpx	#0x00
	beq	00103$
00121$:
;	Raw cost for generated ic 5 : (11, 12.200000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	(_ispunct_c_10000_21 + 1)
	lda	_ispunct_c_10000_21
	jsr	_isspace
;	assignResultValue
;	Raw cost for generated ic 7 : (9, 14.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00103$
	cpx	#0x00
	bne	00103$
;	Raw cost for generated ic 9 : (11, 12.200000) count=0.750000
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	ldx	(_ispunct_c_10000_21 + 1)
	lda	_ispunct_c_10000_21
	jsr	_isalnum
;	assignResultValue
;	Raw cost for generated ic 18 : (9, 14.000000) count=0.562500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00125$
	cpx	#0x00
	beq	00104$
00125$:
;	Raw cost for generated ic 20 : (11, 12.200000) count=0.562500
;	genLabel
00103$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.859375
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 22 : (2, 2.000000) count=0.859375
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.859375
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.140625
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 25 : (2, 2.000000) count=0.140625
;	genLabel
00105$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../ispunct.c: 36: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
