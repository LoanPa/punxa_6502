;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;	../_ulong2fs.c: 84: float __ulong2fs (unsigned long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
	addw	sp, #-4
;	../_ulong2fs.c: 89: if (!a)
	ld	xl, (6, sp)
	or	xl, (7, sp)
	or	xl, (8, sp)
	or	xl, (9, sp)
	jrnz	#00102$
;	../_ulong2fs.c: 91: return 0.0;
	clrw	y
	ldw	x, y
	jp	#00113$
00102$:
;	../_ulong2fs.c: 94: if (a == 0xfffffffful)
	ld	xl, (6, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (7, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (8, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (9, sp)
	cp	xl, #0xff
	jrnz	#00118$
;	../_ulong2fs.c: 96: return 4294967296.0f;
	clrw	y
	ldw	x, #0x4f80
	jr	#00113$
;	../_ulong2fs.c: 99: while (a < HIDDEN)
00118$:
	ld	zl, #0x96
00105$:
	ld	xl, (8, sp)
	add	xl, #0x80
	ld	xl, (9, sp)
	adc	xl, #0xff
	jrc	#00121$
;	../_ulong2fs.c: 101: a <<= 1;
	sll	(6, sp)
	rlc	(7, sp)
	rlc	(8, sp)
	rlc	(9, sp)
;	../_ulong2fs.c: 102: exp--;
	dec	zl
	jr	#00105$
;	../_ulong2fs.c: 105: while (a & NORM)
00121$:
00110$:
	tst	(9, sp)
	jrz	#00112$
;	../_ulong2fs.c: 108: if (a & 1)
	ld	xl, (6, sp)
	and	xl, #0x01
	jrz	#00109$
;	../_ulong2fs.c: 109: a += 2;
	ldw	x, (6, sp)
	add	xl, #0x02
	adc	xh, #0x00
	ldw	y, (8, sp)
	adc	yl, #0x00
	adc	yh, #0x00
	ldw	(6, sp), x
	ldw	(8, sp), y
00109$:
;	../_ulong2fs.c: 110: a >>= 1;
	srl	(9, sp)
	rrc	(8, sp)
	rrc	(7, sp)
	rrc	(6, sp)
;	../_ulong2fs.c: 111: exp++;
	inc	zl
	jr	#00110$
00112$:
;	../_ulong2fs.c: 114: a &= ~HIDDEN ;
	ldw	y, (6, sp)
	ld	xl, (8, sp)
	and	xl, #0x7f
	ld	xh, (9, sp)
	ldw	(6, sp), y
	ldw	(8, sp), x
;	../_ulong2fs.c: 116: fl.l = PACK(0,(unsigned long)exp, a);
	ld	xh, zl
	clr	xl
	srl	xl
	clr	xl
	rrc	xh
	rrc	xl
	ldw	y, (6, sp)
	or	xl, (8, sp)
	or	xh, (9, sp)
	ldw	(0, sp), y
	ldw	(2, sp), x
;	../_ulong2fs.c: 118: return (fl.f);
	ldw	y, (0, sp)
	ldw	x, (2, sp)
00113$:
;	../_ulong2fs.c: 119: }
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
