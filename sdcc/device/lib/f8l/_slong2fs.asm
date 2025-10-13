;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slong2fs
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs
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
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) __SDCC_FLOAT_NONBANKED
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
___slong2fs:
	addw	sp, #-4
;	../_slong2fs.c: 81: if (sl<0) 
	tst	(9, sp)
	jrnn	#00102$
;	../_slong2fs.c: 82: return -__ulong2fs(-sl);
	clr	xl
	sub	xl, (6, sp)
	ld	xh, xl
	clr	xl
	sbc	xl, (7, sp)
	ld	(1, sp), xl
	clr	xl
	sbc	xl, (8, sp)
	ld	(2, sp), xl
	clr	xl
	sbc	xl, (9, sp)
	push	xl
	pushw	(2, sp)
	push	xh
	call	#___ulong2fs
	addw	sp, #4
	xor	xh, #0x80
	jr	#00104$
00102$:
;	../_slong2fs.c: 84: return __ulong2fs(sl);
	pushw	(8, sp)
	pushw	(8, sp)
	call	#___ulong2fs
	addw	sp, #4
00104$:
;	../_slong2fs.c: 85: }
	addw	sp, #4
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
