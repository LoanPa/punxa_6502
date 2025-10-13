;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2sint
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2sint
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
;	../_fs2sint.c: 81: signed int __fs2sint (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2sint
;	-----------------------------------------
___fs2sint:
;	../_fs2sint.c: 83: signed long sl=__fs2slong(f);
	pushw	(4, sp)
	pushw	(4, sp)
	call	#___fs2slong
	addw	sp, #4
	ldw	z, x
;	../_fs2sint.c: 84: if (sl>=INT_MAX)
	cp	yl, #0xff
	ld	xl, yh
	adc	xl, #0x80
	ld	xl, zl
	adc	xl, #0xff
	ld	xl, xh
	adc	xl, #0xff
	jrslt	#00102$
;	../_fs2sint.c: 85: return INT_MAX;
	ldw	y, #0x7fff
	ret
00102$:
;	../_fs2sint.c: 86: if (sl<=INT_MIN)
	clr	xl
	sub	xl, yl
	ld	xl, #0x80
	sbc	xl, yh
	ld	xl, #0xff
	sbc	xl, zl
	ld	xl, #0xff
	sbc	xl, xh
	jrslt	#00104$
;	../_fs2sint.c: 87: return -INT_MIN;
	ldw	y, #0x8000
;	../_fs2sint.c: 88: return sl;
00104$:
;	../_fs2sint.c: 89: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
