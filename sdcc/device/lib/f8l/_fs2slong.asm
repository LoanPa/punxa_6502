;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2slong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2slong
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
;	../_fs2slong.c: 108: signed long __fs2slong (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2slong
;	-----------------------------------------
___fs2slong:
;	../_fs2slong.c: 111: if (!f)
	ld	xl, (5, sp)
	sll	xl
	or	xl, (2, sp)
	or	xl, (3, sp)
	or	xl, (4, sp)
	jrnz	#00102$
;	../_fs2slong.c: 112: return 0;
	clrw	y
	ldw	x, y
	ret
00102$:
;	../_fs2slong.c: 114: if (f<0) {
	clrw	y
	pushw	y
	pushw	y
	pushw	(8, sp)
	pushw	(8, sp)
	call	#___fslt
	addw	sp, #8
	tst	xl
	jrz	#00104$
;	../_fs2slong.c: 115: return -__fs2ulong(-f);
	ld	xh, (2, sp)
	ldw	y, (3, sp)
	ld	xl, (5, sp)
	xor	xl, #0x80
	push	xl
	pushw	y
	push	xh
	call	#___fs2ulong
	addw	sp, #4
	ldw	z, x
	clr	xl
	sub	xl, yl
	ld	yl, xl
	clr	xl
	sbc	xl, yh
	ld	yh, xl
	clr	xl
	sbc	xl, zl
	push	xl
	clr	xl
	sbc	xl, xh
	ld	xh, xl
	pop	xl
	ret
00104$:
;	../_fs2slong.c: 117: return __fs2ulong(f);
	pushw	(4, sp)
	pushw	(4, sp)
	call	#___fs2ulong
	addw	sp, #4
;	../_fs2slong.c: 119: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
