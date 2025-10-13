;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _sint2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___sint2fs
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
;	../_sint2fs.c: 54: float __sint2fs (signed int si) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __sint2fs
;	-----------------------------------------
___sint2fs:
;	../_sint2fs.c: 56: return __slong2fs(si);
	ld	xl, yh
	rlc	xl
	clr	xl
	adc	xl, #0xff
	xor	xl, #0xff
	ld	xh, xl
	pushw	x
	pushw	y
	call	#___slong2fs
	addw	sp, #4
;	../_sint2fs.c: 57: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
