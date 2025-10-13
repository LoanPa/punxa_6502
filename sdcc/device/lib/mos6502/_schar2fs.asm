;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _schar2fs
	
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
	.globl ___slong2fs
	.globl ___schar2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___schar2fs_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function '__schar2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___schar2fs_sloc0_1_0'
;sc            Allocated to registers a 
;------------------------------------------------------------
;	../_schar2fs.c: 55: float __schar2fs (signed char sc) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___schar2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_schar2fs.c: 57: return __slong2fs(sc);
;	genCast
	sta	___slong2fs_PARM_1
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	(___slong2fs_PARM_1 + 1)
	sta	(___slong2fs_PARM_1 + 2)
	sta	(___slong2fs_PARM_1 + 3)
;	Raw cost for generated ic 3 : (19, 24.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*___schar2fs_sloc0_1_0
	stx	*(___schar2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___schar2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___schar2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 5 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___schar2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___schar2fs_sloc0_1_0
;	Raw cost for generated ic 6 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_schar2fs.c: 58: }
;	genEndFunction
	rts
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
