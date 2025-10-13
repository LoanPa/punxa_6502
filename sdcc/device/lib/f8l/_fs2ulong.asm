;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2ulong
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;	../_fs2ulong.c: 103: unsigned long __fs2ulong (float a1) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
	addw	sp, #-15
;	../_fs2ulong.c: 109: fl1.f = a1;
	ldw	y, (17, sp)
	ldw	(4, sp), y
	ldw	y, (19, sp)
	ldw	(6, sp), y
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
	ldw	y, (4, sp)
	ldw	(11, sp), y
	ldw	y, (6, sp)
	ldw	(13, sp), y
	ld	xl, (11, sp)
	or	xl, (12, sp)
	or	xl, (13, sp)
	or	xl, (14, sp)
	jrz	#00101$
	ldw	y, (4, sp)
	ldw	(11, sp), y
	ldw	y, (6, sp)
	ldw	(13, sp), y
	tst	(14, sp)
	jrnn	#00102$
00101$:
;	../_fs2ulong.c: 112: return (0);
	clrw	y
	ldw	x, y
	jp	#00109$
00102$:
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
	ldw	y, (4, sp)
	ldw	(11, sp), y
	ldw	y, (6, sp)
	ldw	(13, sp), y
	ldw	(0, sp), y
	clrw	(2, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	srl	(1, sp)
	rrc	(0, sp)
	ldw	y, (0, sp)
	ldw	(11, sp), y
	ld	xl, (11, sp)
	ld	(13, sp), xl
	clr	(14, sp)
	ldw	y, (13, sp)
	add	yl, #0x6a
	adc	yh, #0xff
	ldw	(8, sp), y
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
	ldw	y, (4, sp)
	ldw	(11, sp), y
	ldw	y, (6, sp)
	ldw	(13, sp), y
	ldw	y, (11, sp)
	ldw	(0, sp), y
	ld	xl, (13, sp)
	ld	(2, sp), xl
	clr	(3, sp)
	ldw	y, (0, sp)
	ldw	(11, sp), y
	ld	xl, (2, sp)
	or	xl, #0x80
	ld	(13, sp), xl
	ld	xl, (3, sp)
	ld	(14, sp), xl
;	../_fs2ulong.c: 117: if (exp > 8)
	ld	xl, #0x08
	sub	xl, (8, sp)
	clr	xl
	sbc	xl, (9, sp)
	jrsge	#00105$
;	../_fs2ulong.c: 118: return 0xfffffffful;
	ldw	y, #0xffff
	ldw	x, y
	jr	#00109$
00105$:
;	../_fs2ulong.c: 120: if (exp < 0)
	tst	(9, sp)
	jrnn	#00107$
;	../_fs2ulong.c: 121: l >>= -exp;
	ld	xh, (8, sp)
	clr	xl
	sub	xl, xh
	jrz	#00108$
00136$:
	srl	(14, sp)
	rrc	(13, sp)
	rrc	(12, sp)
	rrc	(11, sp)
	dec	xl
	jrnz	#00136$
	jr	#00108$
00107$:
;	../_fs2ulong.c: 123: l <<= exp;
	ld	xl, (8, sp)
	jrz	#00139$
00138$:
	sll	(11, sp)
	rlc	(12, sp)
	rlc	(13, sp)
	rlc	(14, sp)
	dec	xl
	jrnz	#00138$
00139$:
00108$:
;	../_fs2ulong.c: 125: return l;
	ldw	y, (11, sp)
	ldw	x, (13, sp)
00109$:
;	../_fs2ulong.c: 126: }
	addw	sp, #15
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
