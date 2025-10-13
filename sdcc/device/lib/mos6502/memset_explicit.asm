;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module memset_explicit
	
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
	.globl _memset_explcit
	.globl _memset
	.globl _memset_explcit_PARM_3
	.globl _memset_explcit_PARM_2
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
_memset_explcit_PARM_2:
	.ds 2
_memset_explcit_PARM_3:
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
;Allocation info for local variables in function 'memset_explcit'
;------------------------------------------------------------
;c             Allocated with name '_memset_explcit_PARM_2'
;n             Allocated with name '_memset_explcit_PARM_3'
;s             Allocated to registers a x 
;------------------------------------------------------------
;	../memset_explicit.c: 32: void *memset_explcit (void *s, int c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memset_explcit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memset_explcit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../memset_explicit.c: 34: return(memset(s, c, n));
;	genCast
;	genCopy
	ldy	_memset_explcit_PARM_2
	sty	*_memset_PARM_2
;	Raw cost for generated ic 3 : (5, 7.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_memset_explcit_PARM_3 + 1)
	sty	*(_memset_PARM_3 + 1)
	ldy	_memset_explcit_PARM_3
	sty	*_memset_PARM_3
;	Raw cost for generated ic 6 : (10, 14.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 7 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../memset_explicit.c: 35: }
;	genEndFunction
	jmp	_memset
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
