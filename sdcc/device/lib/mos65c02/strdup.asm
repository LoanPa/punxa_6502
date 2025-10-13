;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strdup
	
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
	.globl _strlen
	.globl _strcpy
	.globl _strdup
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strdup_s_10000_68:
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
;Allocation info for local variables in function 'strdup'
;------------------------------------------------------------
;s             Allocated with name '_strdup_s_10000_68'
;r             Allocated to registers a x 
;------------------------------------------------------------
;	../strdup.c: 33: char *strdup (const char *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strdup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strdup:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strdup_s_10000_68
	stx	(_strdup_s_10000_68 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../strdup.c: 35: char *r = malloc(strlen(s) + 1);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_strlen
;	assignResultValue
;	Raw cost for generated ic 4 : (3, 6.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00111$
	inx
00111$:
;	Raw cost for generated ic 5 : (6, 8.600000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_malloc
;	assignResultValue
;	Raw cost for generated ic 7 : (3, 6.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../strdup.c: 36: if (r)
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00113$
	cpx	#0x00
	beq	00102$
00113$:
;	Raw cost for generated ic 10 : (11, 12.200000) count=1.000000
;	../strdup.c: 37: strcpy(r, s);
;	genAssign
;	genCopy
	ldy	(_strdup_s_10000_68 + 1)
	sty	(_strcpy_PARM_2 + 1)
	ldy	_strdup_s_10000_68
	sty	_strcpy_PARM_2
;	Raw cost for generated ic 14 : (12, 16.000000) count=0.750000
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCall
	pha
	phx
;	genSend
	jsr	_strcpy
	plx
	pla
;	Raw cost for generated ic 15 : (7, 20.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../strdup.c: 38: return (r);
;	genRet
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../strdup.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 19 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
