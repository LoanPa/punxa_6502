;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isnan
	
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
	.globl _isnan_PARM_1
	.globl _isnan
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isnan_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isnan_PARM_1:
	.ds 4
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
;Allocation info for local variables in function 'isnan'
;------------------------------------------------------------
;f             Allocated with name '_isnan_PARM_1'
;pl            Allocated to registers 
;sloc0         Allocated with name '_isnan_sloc0_1_0'
;------------------------------------------------------------
;	../isnan.c: 33: int isnan (float f)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isnan:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../isnan.c: 35: unsigned long *pl = (unsigned long *) &f;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../isnan.c: 37: return (*pl & 0x7fffffff) > 0x7f800000;
;	genPointerGet
;	genDataPointerGet
	lda	(_isnan_PARM_1 + 3)
	sta	*(_isnan_sloc0_1_0 + 3)
	lda	(_isnan_PARM_1 + 2)
	sta	*(_isnan_sloc0_1_0 + 2)
	lda	(_isnan_PARM_1 + 1)
	sta	*(_isnan_sloc0_1_0 + 1)
	lda	_isnan_PARM_1
	sta	*_isnan_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genAnd
	lda	*(_isnan_sloc0_1_0 + 3)
	and	#0x7f
	sta	*(_isnan_sloc0_1_0 + 3)
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
;	genCmp
	lda	#0x00
	sec
	sbc	*_isnan_sloc0_1_0
	lda	#0x00
	sbc	*(_isnan_sloc0_1_0 + 1)
	lda	#0x80
	sbc	*(_isnan_sloc0_1_0 + 2)
	lda	#0x7f
	sbc	*(_isnan_sloc0_1_0 + 3)
	bcc	00103$
	lda	#0x00
	bra	00104$
00103$:
	lda	#0x01
00104$:
;	Raw cost for generated ic 9 : (25, 31.200001) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 10 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../isnan.c: 38: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
