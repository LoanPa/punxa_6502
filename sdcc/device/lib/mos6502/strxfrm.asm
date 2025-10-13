;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strxfrm
	
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
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm_PARM_3
	.globl _strxfrm_PARM_2
	.globl _strxfrm
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
_strxfrm_PARM_2:
	.ds 2
_strxfrm_PARM_3:
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
;Allocation info for local variables in function 'strxfrm'
;------------------------------------------------------------
;src           Allocated with name '_strxfrm_PARM_2'
;n             Allocated with name '_strxfrm_PARM_3'
;dest          Allocated to registers a x 
;------------------------------------------------------------
;	../strxfrm.c: 31: size_t strxfrm(char *dest, const char *src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strxfrm:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strxfrm.c: 33: strncpy(dest, src, n);
;	genAssign
;	genCopy
	ldy	(_strxfrm_PARM_2 + 1)
	sty	(_strncpy_PARM_2 + 1)
	ldy	_strxfrm_PARM_2
	sty	_strncpy_PARM_2
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_strxfrm_PARM_3 + 1)
	sty	(_strncpy_PARM_3 + 1)
	ldy	_strxfrm_PARM_3
	sty	_strncpy_PARM_3
;	Raw cost for generated ic 5 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_strncpy
;	Raw cost for generated ic 6 : (3, 6.000000) count=1.000000
;	../strxfrm.c: 34: return(strlen(src) + 1);
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_strxfrm_PARM_2 + 1)
	lda	_strxfrm_PARM_2
	jsr	_strlen
;	assignResultValue
;	Raw cost for generated ic 8 : (9, 14.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00103$
	inx
00103$:
;	Raw cost for generated ic 9 : (6, 8.600000) count=1.000000
;	genRet
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../strxfrm.c: 35: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
