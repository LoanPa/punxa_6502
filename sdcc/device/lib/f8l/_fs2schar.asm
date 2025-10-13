;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2schar
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar
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
;	../_fs2schar.c: 87: signed char __fs2schar (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2schar
;	-----------------------------------------
___fs2schar:
;	../_fs2schar.c: 89: signed long sl=__fs2slong(f);
	pushw	(4, sp)
	pushw	(4, sp)
	call	#___fs2slong
	addw	sp, #4
	ldw	z, x
;	../_fs2schar.c: 90: if (sl>=SCHAR_MAX)
	cp	yl, #0x7f
	ld	xl, yh
	adc	xl, #0xff
	ld	xl, zl
	adc	xl, #0xff
	ld	xl, xh
	adc	xl, #0xff
	jrslt	#00102$
;	../_fs2schar.c: 91: return SCHAR_MAX;
	ld	xl, #0x7f
	ret
00102$:
;	../_fs2schar.c: 92: if (sl<=SCHAR_MIN)
	ld	xl, #0x80
	sub	xl, yl
	ld	xl, #0xff
	sbc	xl, yh
	ld	xl, #0xff
	sbc	xl, zl
	ld	xl, #0xff
	sbc	xl, xh
	jrslt	#00104$
;	../_fs2schar.c: 93: return -SCHAR_MIN;
	ld	xl, #0x80
	ret
00104$:
;	../_fs2schar.c: 94: return sl;
	ld	xl, yl
;	../_fs2schar.c: 95: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
