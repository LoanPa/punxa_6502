;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _atof
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
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
;	../_atof.c: 33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
_atof:
	addw	sp, #-13
	ldw	z, y
;	../_atof.c: 40: while (isspace(*s)) s++;
00101$:
	ld	yl, (0, z)
	clr	yh
	pushw	z
	call	#_isspace
	ldw	x, y
	popw	z
	ldw	y, z
	incw	y
	or	xl, xh
	jrz	#00155$
	ldw	z, y
	jr	#00101$
00155$:
	ldw	(11, sp), z
;	../_atof.c: 43: if (*s == '-')
	ld	xl, (0, z)
	cp	xl, #0x2d
	jrnz	#00107$
;	../_atof.c: 45: sign=1;
	ld	xl, #0x01
	ld	(0, sp), xl
;	../_atof.c: 46: s++;
	ldw	(11, sp), y
	jr	#00108$
00107$:
;	../_atof.c: 50: sign=0;
	clr	(0, sp)
;	../_atof.c: 51: if (*s == '+') s++;
	cp	xl, #0x2b
	jrnz	#00108$
	ldw	(11, sp), y
00108$:
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	clrw	(7, sp)
	clrw	(9, sp)
00126$:
	ldw	y, (11, sp)
	ld	xl, (y)
	ld	(4, sp), xl
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	(6, sp), xl
	ld	(3, sp), xl
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	ldw	y, (11, sp)
	incw	y
	ldw	(5, sp), y
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	xl, (3, sp)
	add	xl, #0xd0
	jrnc	#00156$
	ld	xl, #0x39
	sub	xl, (3, sp)
	jrnc	#00156$
;	../_atof.c: 57: value=10.0*value+(*s-'0');
	pushw	(9, sp)
	pushw	(9, sp)
	pushw	#0x4120
	clrw	y
	pushw	y
	call	#___fsmul
	addw	sp, #8
	ldw	(9, sp), y
	ldw	(11, sp), x
	clrw	y
	ld	yl, (4, sp)
	add	yl, #0xd0
	adc	yh, #0xff
	call	#___sint2fs
	pushw	x
	pushw	y
	pushw	(15, sp)
	pushw	(15, sp)
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
	call	#___fsadd
	addw	sp, #8
	ldw	(7, sp), y
	ldw	(9, sp), x
	ldw	y, (5, sp)
	ldw	(11, sp), y
	jr	#00126$
00156$:
;	../_atof.c: 61: if (*s == '.')
	ld	xl, (4, sp)
	cp	xl, #0x2e
	jrnz	#00112$
;	../_atof.c: 63: s++;
	ldw	y, (5, sp)
	ldw	(11, sp), y
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	ldw	y, #0xcccd
	ldw	(1, sp), y
	ldw	y, #0x3dcc
	ldw	(3, sp), y
00129$:
	ldw	y, (11, sp)
	ld	xl, (y)
	ld	(5, sp), xl
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	(6, sp), xl
	add	xl, #0xd0
	jrnc	#00157$
	ld	xl, #0x39
	sub	xl, (6, sp)
	jrnc	#00157$
;	../_atof.c: 66: value+=(*s-'0')*fraction;
	clrw	y
	ld	yl, (5, sp)
	add	yl, #0xd0
	adc	yh, #0xff
	call	#___sint2fs
	pushw	(3, sp)
	pushw	(3, sp)
	pushw	x
	pushw	y
	call	#___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	pushw	(13, sp)
	pushw	(13, sp)
;	../_atof.c: 67: fraction*=0.1;
	call	#___fsadd
	addw	sp, #8
	ldw	(7, sp), y
	ldw	(9, sp), x
	pushw	(3, sp)
	pushw	(3, sp)
	pushw	#0x3dcc
	pushw	#0xcccd
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
	call	#___fsmul
	addw	sp, #8
	ldw	(1, sp), y
	ldw	(3, sp), x
	incw	(11, sp)
	jr	#00129$
00157$:
00112$:
;	../_atof.c: 72: if (toupper(*s)=='E')
	ldw	y, (11, sp)
	ld	xl, (y)
	clr	xh
	ldw	y, x
	call	#_toupper
	cp	yl, #0x45
	jrnz	#00120$
	cp	yh, #0x00
	jrnz	#00120$
;	../_atof.c: 74: s++;
	ldw	y, (11, sp)
	incw	y
;	../_atof.c: 75: iexp=(signed char)atoi(s);
	call	#_atoi
	ldw	x, y
;	../_atof.c: 77: while(iexp!=0)
00116$:
	tst	xl
	jrz	#00120$
;	../_atof.c: 79: if(iexp<0)
	tst	xl
	jrnn	#00114$
;	../_atof.c: 81: value*=0.1;
	push	xl
	pushw	(10, sp)
	pushw	(10, sp)
	pushw	#0x3dcc
	pushw	#0xcccd
;	../_atof.c: 82: iexp++;
	call	#___fsmul
	addw	sp, #8
	ldw	(8, sp), y
	ldw	(10, sp), x
	pop	xl
	inc	xl
	jr	#00116$
00114$:
;	../_atof.c: 86: value*=10.0;
	push	xl
	pushw	(10, sp)
	pushw	(10, sp)
	pushw	#0x4120
	clrw	y
	pushw	y
;	../_atof.c: 87: iexp--;
	call	#___fsmul
	addw	sp, #8
	ldw	(8, sp), y
	ldw	(10, sp), x
	pop	xl
	dec	xl
	jr	#00116$
00120$:
;	../_atof.c: 93: if(sign) value*=-1.0;
	tst	(0, sp)
	jrz	#00122$
	ld	xl, (10, sp)
	xor	xl, #0x80
	ld	(10, sp), xl
00122$:
;	../_atof.c: 94: return (value);
	ldw	y, (7, sp)
	ldw	x, (9, sp)
;	../_atof.c: 95: }
	addw	sp, #13
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
