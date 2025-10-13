;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcrtomb
	
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
	.globl _wcrtomb_PARM_3
	.globl _wcrtomb_PARM_2
	.globl _wcrtomb
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
_wcrtomb_PARM_2:
	.ds 4
_wcrtomb_PARM_3:
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
;Allocation info for local variables in function 'wcrtomb'
;------------------------------------------------------------
;wc            Allocated with name '_wcrtomb_PARM_2'
;ps            Allocated with name '_wcrtomb_PARM_3'
;s             Allocated to registers a x 
;ret           Allocated to registers a x 
;------------------------------------------------------------
;	../wcrtomb.c: 34: size_t wcrtomb(char *restrict s, wchar_t wc, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcrtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcrtomb:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 40: ret = wctomb(s, wc);
;	genAssign
;	genCopy
	ldy	(_wcrtomb_PARM_2 + 3)
	sty	(_wctomb_PARM_2 + 3)
	ldy	(_wcrtomb_PARM_2 + 2)
	sty	(_wctomb_PARM_2 + 2)
	ldy	(_wcrtomb_PARM_2 + 1)
	sty	(_wctomb_PARM_2 + 1)
	ldy	_wcrtomb_PARM_2
	sty	_wctomb_PARM_2
;	Raw cost for generated ic 4 : (24, 32.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_wctomb
;	assignResultValue
;	Raw cost for generated ic 5 : (3, 6.000000) count=1.000000
;	../wcrtomb.c: 42: if(ret == (size_t)(-1))
;	genCmpEQorNE
	cmp	#0xff
	bne	00102$
	cpx	#0xff
	beq	00113$
	rts
00113$:
;	Raw cost for generated ic 7 : (14, 15.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 43: errno = EILSEQ;
;	genAssign
;	genAssignLit
	ldy	#0x54
	sty	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 12 : (8, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 45: return(ret);
;	genRet
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 46: }
;	genEndFunction
	rts
;	Raw cost for generated ic 16 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
