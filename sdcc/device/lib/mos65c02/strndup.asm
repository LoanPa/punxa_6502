;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strndup
	
	.r65c02
	.optsdcc -mmos65c02

;--------------------------------------------------------
;  Ordering of segments for the linker.
;--------------------------------------------------------
	.area ZP      (PAG)
	.area OSEG    (PAG, OVR)
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area CODE
	.area RODATA
	.area XINIT
	.area _DATA
	.area DATA
	.area BSS
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl ___memcpy
	.globl _strnlen
	.globl _strndup_PARM_2
	.globl _strndup
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strndup_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strndup_PARM_2:
	.ds 2
_strndup_s_10000_68:
	.ds 2
_strndup_l_10000_69:
	.ds 2
_strndup_r_10000_69:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;------------------------------------------------------------
;Allocation info for local variables in function 'strndup'
;------------------------------------------------------------
;sloc0         Allocated with name '_strndup_sloc0_1_0'
;n             Allocated with name '_strndup_PARM_2'
;s             Allocated with name '_strndup_s_10000_68'
;l             Allocated with name '_strndup_l_10000_69'
;r             Allocated with name '_strndup_r_10000_69'
;------------------------------------------------------------
;	../strndup.c: 33: char *strndup (const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strndup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strndup:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strndup_s_10000_68
	stx	(_strndup_s_10000_68 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../strndup.c: 35: size_t l = strnlen (s, n);
;	genAssign
;	genCopy
	lda	(_strndup_PARM_2 + 1)
	sta	(_strnlen_PARM_2 + 1)
	lda	_strndup_PARM_2
	sta	_strnlen_PARM_2
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	_strndup_s_10000_68
	jsr	_strnlen
;	assignResultValue
	sta	_strndup_l_10000_69
	stx	(_strndup_l_10000_69 + 1)
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	../strndup.c: 36: char *r = malloc (l + 1);
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00111$
	inx
00111$:
;	Raw cost for generated ic 7 : (6, 8.600000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_malloc
;	assignResultValue
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genCast
;	genCopy
	sta	_strndup_r_10000_69
	stx	(_strndup_r_10000_69 + 1)
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	../strndup.c: 37: if (r)
;	genIfx
	txa
	ora	_strndup_r_10000_69
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 12 : (9, 11.600000) count=1.000000
;	../strndup.c: 39: memcpy (r, s, l);
;	genCast
;	genCopy
	lda	_strndup_r_10000_69
;	Raw cost for generated ic 15 : (3, 4.000000) count=0.750000
;	genCast
;	genCopy
	ldy	(_strndup_s_10000_68 + 1)
	sty	(___memcpy_PARM_2 + 1)
	ldy	_strndup_s_10000_68
	sty	___memcpy_PARM_2
;	Raw cost for generated ic 16 : (12, 16.000000) count=0.750000
;	genAssign
;	genCopy
	ldy	(_strndup_l_10000_69 + 1)
	sty	(___memcpy_PARM_3 + 1)
	ldy	_strndup_l_10000_69
	sty	___memcpy_PARM_3
;	Raw cost for generated ic 19 : (12, 16.000000) count=0.750000
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 20 : (3, 6.000000) count=0.750000
;	../strndup.c: 40: r[l] = 0;
;	genPlus
	lda	_strndup_r_10000_69
	clc
	adc	_strndup_l_10000_69
	sta	*_strndup_sloc0_1_0
	lda	(_strndup_r_10000_69 + 1)
	adc	(_strndup_l_10000_69 + 1)
	sta	*(_strndup_sloc0_1_0 + 1)
;	Raw cost for generated ic 21 : (17, 24.000000) count=0.750000
;	genPointerSet
	lda	#0x00
	tay
	sta	[*_strndup_sloc0_1_0],y
;	Raw cost for generated ic 22 : (5, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	../strndup.c: 42: return (r);
;	genRet
	ldx	(_strndup_r_10000_69 + 1)
	lda	_strndup_r_10000_69
;	Raw cost for generated ic 24 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../strndup.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
