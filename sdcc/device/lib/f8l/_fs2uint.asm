;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2uint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uint
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
;	../_fs2uint.c: 52: unsigned int __fs2uint (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2uint
;	-----------------------------------------
___fs2uint:
	addw	sp, #-4
;	../_fs2uint.c: 54: unsigned long ul=__fs2ulong(f);
	pushw	(8, sp)
	pushw	(8, sp)
	call	#___fs2ulong
	addw	sp, #4
	ld	(2, sp), xl
;	../_fs2uint.c: 55: if (ul>=UINT_MAX) return UINT_MAX;
	cp	yl, #0xff
	ld	xl, yh
	adc	xl, #0x00
	ld	xl, (2, sp)
	adc	xl, #0xff
	ld	xl, xh
	adc	xl, #0xff
	jrnc	#00102$
	ldw	y, #0xffff
;	../_fs2uint.c: 56: return ul;
00102$:
;	../_fs2uint.c: 57: }
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
