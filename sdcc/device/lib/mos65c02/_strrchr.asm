;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strrchr
	
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
	.globl _strrchr_PARM_2
	.globl _strrchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strrchr_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strrchr_PARM_2:
	.ds 1
_strrchr_start_10000_28:
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
;Allocation info for local variables in function 'strrchr'
;------------------------------------------------------------
;ch            Allocated with name '_strrchr_PARM_2'
;string        Allocated to registers a x 
;start         Allocated with name '_strrchr_start_10000_28'
;sloc0         Allocated with name '_strrchr_sloc0_1_0'
;------------------------------------------------------------
;	../_strrchr.c: 32: char * strrchr ( const char * string, char ch )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strrchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strrchr:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strrchr.c: 37: const char * start = string;
;	genAssign
;	genCopy
	sta	_strrchr_start_10000_28
	stx	(_strrchr_start_10000_28 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../_strrchr.c: 39: while (*string++)                       /* find end of string */
;	genAssign
;	genCopy
	sta	*_strrchr_sloc0_1_0
	stx	*(_strrchr_sloc0_1_0 + 1)
;	Raw cost for generated ic 42 : (4, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999999
;	genPointerGet
	ldy	#0x00
	lda	[*_strrchr_sloc0_1_0],y
;	Raw cost for generated ic 8 : (4, 7.000000) count=3.999999
;	genPlus
;	  genPlusInc
	inc	*_strrchr_sloc0_1_0
	bne	00143$
	inc	*(_strrchr_sloc0_1_0 + 1)
00143$:
;	Raw cost for generated ic 6 : (6, 12.600000) count=3.999999
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999999
;	../_strrchr.c: 42: while (--string != start && *string != ch)
;	genAssign
;	genCopy
	ldx	*(_strrchr_sloc0_1_0 + 1)
	lda	*_strrchr_sloc0_1_0
;	Raw cost for generated ic 45 : (4, 6.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.285712
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00146$
	dex
00146$:
;	Raw cost for generated ic 15 : (6, 8.600000) count=2.285712
;	genCmpEQorNE
	cmp	_strrchr_start_10000_28
	bne	00148$
	cpx	(_strrchr_start_10000_28 + 1)
	beq	00107$
00148$:
;	Raw cost for generated ic 17 : (16, 19.200001) count=2.285712
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.285712
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 22 : (11, 18.000000) count=1.714284
;	genCmpEQorNE
	cpy	_strrchr_PARM_2
	bne	00105$
;	Raw cost for generated ic 23 : (8, 9.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	genLabel
00107$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 45: if (*string == ch)                      /* char found ? */
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 30 : (11, 18.000000) count=0.999999
;	genCmpEQorNE
	cpy	_strrchr_PARM_2
	bne	00109$
;	Raw cost for generated ic 31 : (8, 9.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 46: return( (char *)string );
;	genRet
	rts
;	Raw cost for generated ic 35 : (3, 3.000000) count=0.749999
;	genLabel
00109$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 48: return (NULL) ;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999999
;	../_strrchr.c: 49: }
;	genEndFunction
	rts
;	Raw cost for generated ic 39 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
