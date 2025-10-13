;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2slonglong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slonglong
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
;	../_fs2slonglong.c: 34: signed long long __fs2slonglong (float f) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2slonglong
;	-----------------------------------------
___fs2slonglong:
	addw	sp, #-8
;	../_fs2slonglong.c: 37: if (!f)
	ld	xl, (15, sp)
	sll	xl
	or	xl, (12, sp)
	or	xl, (13, sp)
	or	xl, (14, sp)
	jrnz	#00102$
;	../_fs2slonglong.c: 38: return 0;
	ldw	y, (0x0a, sp)
	clr	xl
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	clr	xl
	incw	y
	ld	(y), xl
	jp	#00106$
00102$:
;	../_fs2slonglong.c: 40: if (f<0) {
	clrw	y
	pushw	y
	pushw	y
	pushw	(18, sp)
	pushw	(18, sp)
	call	#___fslt
	addw	sp, #8
	tst	xl
	jrz	#00104$
;	../_fs2slonglong.c: 41: return -__fs2ulonglong(-f);
	ld	xh, (12, sp)
	ldw	y, (13, sp)
	ld	xl, (15, sp)
	xor	xl, #0x80
	push	xl
	pushw	y
	push	xh
	ldw	x, sp
	addw	x, #4
	pushw	x
	call	#___fs2ulonglong
	addw	sp, #6
	clr	xl
	sub	xl, (0, sp)
	ld	(0, sp), xl
	clr	xl
	sbc	xl, (1, sp)
	ld	(1, sp), xl
	clr	xl
	sbc	xl, (2, sp)
	ld	(2, sp), xl
	clr	xl
	sbc	xl, (3, sp)
	ld	(3, sp), xl
	clr	xl
	sbc	xl, (4, sp)
	ld	(4, sp), xl
	clr	xl
	sbc	xl, (5, sp)
	ld	(5, sp), xl
	clr	xl
	sbc	xl, (6, sp)
	ld	(6, sp), xl
	clr	xl
	sbc	xl, (7, sp)
	ld	(7, sp), xl
	ldw	y, (0x0a, sp)
	ldw	x, (0, sp)
	ldw	(y), x
	ldw	x, (2, sp)
	addw	y, #2
	ldw	(y), x
	ldw	x, (4, sp)
	addw	y, #2
	ldw	(y), x
	ldw	x, (6, sp)
	addw	y, #2
	ldw	(y), x
	jr	#00106$
00104$:
;	../_fs2slonglong.c: 43: return __fs2ulonglong(f);
	pushw	(14, sp)
	pushw	(14, sp)
	ldw	x, sp
	addw	x, #4
	pushw	x
	call	#___fs2ulonglong
	addw	sp, #6
	ldw	y, (0x0a, sp)
	ldw	x, (0, sp)
	ldw	(y), x
	ldw	x, (2, sp)
	addw	y, #2
	ldw	(y), x
	ldw	x, (4, sp)
	addw	y, #2
	ldw	(y), x
	ldw	x, (6, sp)
	addw	y, #2
	ldw	(y), x
00106$:
;	../_fs2slonglong.c: 45: }
	addw	sp, #8
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
