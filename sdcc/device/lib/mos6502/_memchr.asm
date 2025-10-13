;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _memchr
	
	.optsdcc -mmos6502

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
	.globl _memchr_PARM_3
	.globl _memchr_PARM_2
	.globl _memchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memchr_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_p_10000_28:
	.ds 2
_memchr_end_10000_28:
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c             Allocated with name '_memchr_PARM_2'
;n             Allocated with name '_memchr_PARM_3'
;s             Allocated to registers a x 
;p             Allocated with name '_memchr_p_10000_28'
;end           Allocated with name '_memchr_end_10000_28'
;sloc0         Allocated with name '_memchr_sloc0_1_0'
;------------------------------------------------------------
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memchr:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
;	genCast
;	genCopy
	sta	_memchr_p_10000_28
	stx	(_memchr_p_10000_28 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../_memchr.c: 34: unsigned char *end = p + n;
;	genPlus
	clc
	adc	_memchr_PARM_3
	sta	_memchr_end_10000_28
	txa
	adc	(_memchr_PARM_3 + 1)
	sta	(_memchr_end_10000_28 + 1)
;	Raw cost for generated ic 5 : (14, 20.000000) count=1.000000
;	../_memchr.c: 38: return(0);
;	genAssign
;	genCopy
	lda	_memchr_p_10000_28
;	Raw cost for generated ic 32 : (3, 4.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999993
;	../_memchr.c: 35: for(; p != end; p++)
;	genCmpEQorNE
	cmp	_memchr_end_10000_28
	bne	00128$
	cpx	(_memchr_end_10000_28 + 1)
	beq	00103$
00128$:
;	Raw cost for generated ic 8 : (16, 19.200001) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=3.999993
;	../_memchr.c: 36: if(*p == (unsigned char)c)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_memchr_sloc0_1_0
	lda	*(DPTR+0)
;	Raw cost for generated ic 13 : (12, 19.000000) count=2.999995
;	genCast
;	genCopy
	ldy	_memchr_PARM_2
;	Raw cost for generated ic 14 : (3, 4.000000) count=2.999995
;	genCmpEQorNE
	cpy	*_memchr_sloc0_1_0
	bne	00106$
;	Raw cost for generated ic 15 : (7, 8.600000) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=2.999995
;	../_memchr.c: 37: return((void *)p);
;	genCast
;	genCopy
	ldx	(_memchr_p_10000_28 + 1)
	lda	_memchr_p_10000_28
;	Raw cost for generated ic 19 : (6, 8.000000) count=2.249995
;	genRet
	rts
;	Raw cost for generated ic 20 : (3, 3.000000) count=2.249995
;	genLabel
00106$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=2.999993
;	../_memchr.c: 35: for(; p != end; p++)
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00130$
	inx
00130$:
;	Raw cost for generated ic 24 : (6, 8.600000) count=2.999993
;	genAssign
;	genCopy
	sta	_memchr_p_10000_28
	stx	(_memchr_p_10000_28 + 1)
;	Raw cost for generated ic 25 : (6, 8.000000) count=2.999993
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 26 : (3, 3.000000) count=2.999993
;	genLabel
00103$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999997
;	../_memchr.c: 38: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 28 : (3, 4.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999997
;	../_memchr.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
