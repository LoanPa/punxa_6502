;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _schar2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___schar2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_schar2fs.c: 55: float __schar2fs (signed char sc) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __schar2fs
;	-----------------------------------------
___schar2fs:
	ldw	y, x
;	../_schar2fs.c: 57: return __slong2fs(sc);
	ld	xl, yl
	rlc	xl
	clr	xl
	adc	xl, #0xff
	xor	xl, #0xff
	ld	yh, xl
	ld	xh, xl
	pushw	x
	pushw	y
	call	#___slong2fs
	addw	sp, #4
;	../_schar2fs.c: 58: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
