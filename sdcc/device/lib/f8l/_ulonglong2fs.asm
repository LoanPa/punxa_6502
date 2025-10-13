;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _ulonglong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulonglong2fs
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
;	../_ulonglong2fs.c: 61: float __ulonglong2fs (unsigned long long a ) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __ulonglong2fs
;	-----------------------------------------
___ulonglong2fs:
	addw	sp, #-13
;	../_ulonglong2fs.c: 66: if (!a)
	ld	xl, (15, sp)
	or	xl, (16, sp)
	or	xl, (17, sp)
	or	xl, (18, sp)
	or	xl, (19, sp)
	or	xl, (20, sp)
	or	xl, (21, sp)
	or	xl, (22, sp)
	jrnz	#00102$
;	../_ulonglong2fs.c: 68: return 0.0;
	clrw	y
	ldw	x, y
	jp	#00113$
00102$:
;	../_ulonglong2fs.c: 71: if (a == 0xffffffffffffffffull)
	ld	xl, (15, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (16, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (17, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (18, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (19, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (20, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (21, sp)
	cp	xl, #0xff
	jrnz	#00118$
	ld	xl, (22, sp)
	cp	xl, #0xff
	jrnz	#00118$
;	../_ulonglong2fs.c: 73: return 18446744073709551616.0f;
	clrw	y
	ldw	x, #0x5f80
	jp	#00113$
;	../_ulonglong2fs.c: 76: while (a < HIDDEN)
00118$:
	ld	xh, #0x96
00105$:
	ld	xl, (17, sp)
	add	xl, #0x80
	ld	xl, (18, sp)
	adc	xl, #0xff
	ld	xl, (19, sp)
	adc	xl, #0xff
	ld	xl, (20, sp)
	adc	xl, #0xff
	ld	xl, (21, sp)
	adc	xl, #0xff
	ld	xl, (22, sp)
	adc	xl, #0xff
	jrc	#00121$
;	../_ulonglong2fs.c: 78: a <<= 1;
	sll	(15, sp)
	rlc	(16, sp)
	rlc	(17, sp)
	rlc	(18, sp)
	rlc	(19, sp)
	rlc	(20, sp)
	rlc	(21, sp)
	rlc	(22, sp)
;	../_ulonglong2fs.c: 79: exp--;
	dec	xh
	jr	#00105$
;	../_ulonglong2fs.c: 82: while (a & NORM)
00121$:
	ld	(12, sp), xh
00110$:
	tst	(18, sp)
	jrz	#00112$
;	../_ulonglong2fs.c: 85: if (a & 1)
	ld	xl, (15, sp)
	and	xl, #0x01
	jrz	#00109$
;	../_ulonglong2fs.c: 86: a += 2;
	ldw	x, (15, sp)
	add	xl, #0x02
	adc	xh, #0x00
	ldw	y, (17, sp)
	adc	yl, #0x00
	adc	yh, #0x00
	ldw	(6, sp), y
	ldw	y, (19, sp)
	adc	yl, #0x00
	adc	yh, #0x00
	ldw	(8, sp), y
	ldw	y, (21, sp)
	adc	yl, #0x00
	adc	yh, #0x00
	ldw	(15, sp), x
	ldw	(21, sp), y
	ldw	y, (6, sp)
	ldw	(17, sp), y
	ldw	y, (8, sp)
	ldw	(19, sp), y
00109$:
;	../_ulonglong2fs.c: 87: a >>= 1;
	srl	(22, sp)
	rrc	(21, sp)
	rrc	(20, sp)
	rrc	(19, sp)
	rrc	(18, sp)
	rrc	(17, sp)
	rrc	(16, sp)
	rrc	(15, sp)
;	../_ulonglong2fs.c: 88: exp++;
	inc	(12, sp)
	jr	#00110$
00112$:
;	../_ulonglong2fs.c: 91: a &= ~HIDDEN ;
	ldw	y, (15, sp)
	ld	xl, (17, sp)
	and	xl, #0x7f
	ld	xh, (18, sp)
	clrw	z
	clrw	(10, sp)
	ldw	(15, sp), y
	ldw	(17, sp), x
	ldw	(19, sp), z
	ldw	y, (10, sp)
	ldw	(21, sp), y
;	../_ulonglong2fs.c: 93: fl.l = PACK(0,(unsigned long)exp, a);
	ld	xh, (12, sp)
	clr	xl
	srl	xl
	clrw	y
	clr	xl
	rrc	xh
	rrc	xl
	ldw	(9, sp), y
	ldw	y, (15, sp)
	ldw	z, (17, sp)
	or	zl, xl
	or	zh, xh
	ldw	(0, sp), y
	ldw	(2, sp), z
;	../_ulonglong2fs.c: 95: return (fl.f);
	ldw	y, (0, sp)
	ldw	x, (2, sp)
00113$:
;	../_ulonglong2fs.c: 96: }
	addw	sp, #13
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
