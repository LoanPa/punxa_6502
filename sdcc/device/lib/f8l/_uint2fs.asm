;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _uint2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uint2fs
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
;	../_uint2fs.c: 54: float __uint2fs (unsigned int ui) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __uint2fs
;	-----------------------------------------
___uint2fs:
	ldw	x, y
;	../_uint2fs.c: 56: return __ulong2fs(ui);
	clrw	y
	pushw	y
	pushw	x
	call	#___ulong2fs
	addw	sp, #4
;	../_uint2fs.c: 57: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
