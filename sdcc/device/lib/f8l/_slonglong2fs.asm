;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slonglong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slonglong2fs
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
;	../_slonglong2fs.c: 35: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
___slonglong2fs:
	addw	sp, #-8
;	../_slonglong2fs.c: 37: if (sll<0)
	tst	(17, sp)
	jrnn	#00102$
;	../_slonglong2fs.c: 38: return -__ulonglong2fs(-sll);
	clr	xl
	sub	xl, (10, sp)
	ld	(0, sp), xl
	clr	xl
	sbc	xl, (11, sp)
	ld	(1, sp), xl
	clr	xl
	sbc	xl, (12, sp)
	ld	(2, sp), xl
	clr	xl
	sbc	xl, (13, sp)
	ld	(3, sp), xl
	clr	xl
	sbc	xl, (14, sp)
	ld	(4, sp), xl
	clr	xl
	sbc	xl, (15, sp)
	ld	(5, sp), xl
	clr	xl
	sbc	xl, (16, sp)
	push	xl
	clr	xl
	sbc	xl, (18, sp)
	ld	xh, xl
	pop	xl
	pushw	x
	pushw	(6, sp)
	pushw	(6, sp)
	pushw	(6, sp)
	call	#___ulonglong2fs
	addw	sp, #8
	xor	xh, #0x80
	jr	#00104$
00102$:
;	../_slonglong2fs.c: 40: return __ulonglong2fs(sll);
	pushw	(16, sp)
	pushw	(16, sp)
	pushw	(16, sp)
	pushw	(16, sp)
	call	#___ulonglong2fs
	addw	sp, #8
00104$:
;	../_slonglong2fs.c: 41: }
	addw	sp, #8
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
