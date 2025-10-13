;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _moduchar
	
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
	.globl __moduchar
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
__moduchar_tx_10000_2:
	.ds 2
__moduchar_ty_10000_2:
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
;Allocation info for local variables in function '_moduchar'
;------------------------------------------------------------
;y             Allocated to registers x 
;x             Allocated to registers a 
;tx            Allocated with name '__moduchar_tx_10000_2'
;ty            Allocated with name '__moduchar_ty_10000_2'
;------------------------------------------------------------
;	../_moduchar.c: 30: _moduchar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _moduchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduchar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_moduchar.c: 33: volatile unsigned int tx = x;
;	genCast
	sta	__moduchar_tx_10000_2
	ldy	#0x00
	sty	(__moduchar_tx_10000_2 + 1)
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	../_moduchar.c: 34: volatile unsigned int ty = y;
;	genCast
;	genCopy
	sty	(__moduchar_ty_10000_2 + 1)
	stx	__moduchar_ty_10000_2
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	../_moduchar.c: 35: return (tx % ty);
;	genAssign
;	genCopy
	lda	(__moduchar_ty_10000_2 + 1)
	sta	(__moduint_PARM_2 + 1)
	lda	__moduchar_ty_10000_2
	sta	__moduint_PARM_2
;	Raw cost for generated ic 13 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	__moduchar_tx_10000_2
	ldx	(__moduchar_tx_10000_2 + 1)
;	assignResultValue
;	Raw cost for generated ic 14 : (9, 14.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_moduchar.c: 36: }
;	genEndFunction
	jmp	__moduint
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
