;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2uchar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uchar
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
;	../_fs2uchar.c: 51: unsigned char __fs2uchar (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2uchar
;	-----------------------------------------
___fs2uchar:
;	../_fs2uchar.c: 53: unsigned long ul=__fs2ulong(f);
	pushw	(4, sp)
	pushw	(4, sp)
	call	#___fs2ulong
	addw	sp, #4
	ldw	z, x
;	../_fs2uchar.c: 54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
	cp	yl, #0xff
	ld	xl, yh
	adc	xl, #0xff
	ld	xl, zl
	adc	xl, #0xff
	ld	xl, xh
	adc	xl, #0xff
	jrnc	#00102$
	ld	xl, #0xff
	ret
00102$:
;	../_fs2uchar.c: 55: return ul;
	ld	xl, yl
;	../_fs2uchar.c: 56: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
