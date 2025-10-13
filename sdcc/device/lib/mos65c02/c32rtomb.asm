;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module c32rtomb
	
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
	.globl _wctomb
	.globl _c32rtomb_PARM_3
	.globl _c32rtomb_PARM_2
	.globl _c32rtomb
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
_c32rtomb_PARM_2:
	.ds 4
_c32rtomb_PARM_3:
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
;Allocation info for local variables in function 'c32rtomb'
;------------------------------------------------------------
;c32           Allocated with name '_c32rtomb_PARM_2'
;ps            Allocated with name '_c32rtomb_PARM_3'
;s             Allocated to registers a x 
;------------------------------------------------------------
;	../c32rtomb.c: 33: size_t c32rtomb(char *restrict s, char32_t c32, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function c32rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c32rtomb:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../c32rtomb.c: 36: return(wctomb(s, c32));
;	genAssign
;	genCopy
	ldy	(_c32rtomb_PARM_2 + 3)
	sty	(_wctomb_PARM_2 + 3)
	ldy	(_c32rtomb_PARM_2 + 2)
	sty	(_wctomb_PARM_2 + 2)
	ldy	(_c32rtomb_PARM_2 + 1)
	sty	(_wctomb_PARM_2 + 1)
	ldy	_c32rtomb_PARM_2
	sty	_wctomb_PARM_2
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 5 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../c32rtomb.c: 37: }
;	genEndFunction
	jmp	_wctomb
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
