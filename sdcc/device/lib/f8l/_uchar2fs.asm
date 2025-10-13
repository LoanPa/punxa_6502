;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _uchar2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uchar2fs
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
;	../_uchar2fs.c: 55: float __uchar2fs (unsigned char uc) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __uchar2fs
;	-----------------------------------------
___uchar2fs:
;	../_uchar2fs.c: 57: return __ulong2fs(uc);
	clr	xh
	clrw	y
	pushw	y
	pushw	x
	call	#___ulong2fs
	addw	sp, #4
;	../_uchar2fs.c: 58: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
