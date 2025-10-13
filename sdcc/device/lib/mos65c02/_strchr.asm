;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strchr
	
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
	.globl _strchr_PARM_2
	.globl _strchr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strchr_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strchr_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch            Allocated with name '_strchr_PARM_2'
;string        Allocated to registers 
;sloc0         Allocated with name '_strchr_sloc0_1_0'
;------------------------------------------------------------
;	../_strchr.c: 34: char * strchr ( const char * string, char ch )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strchr:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_strchr_sloc0_1_0
	stx	*(_strchr_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../_strchr.c: 39: while (*string && *string != (char)ch)
;	genLabel
00102$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_strchr_sloc0_1_0],y
;	Raw cost for generated ic 5 : (4, 7.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 6 : (5, 5.600000) count=2.285713
;	genCmpEQorNE
	cmp	_strchr_PARM_2
	beq	00104$
;	Raw cost for generated ic 11 : (8, 9.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.714284
;	../_strchr.c: 40: string++;
;	genPlus
;	  genPlusInc
	inc	*_strchr_sloc0_1_0
	bne	00102$
	inc	*(_strchr_sloc0_1_0 + 1)
;	Raw cost for generated ic 16 : (6, 12.600000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 18 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	../_strchr.c: 42: if (*string == (char)ch)
;	genPointerGet
	ldy	#0x00
	lda	[*_strchr_sloc0_1_0],y
;	Raw cost for generated ic 21 : (4, 7.000000) count=0.999999
;	genCmpEQorNE
	cmp	_strchr_PARM_2
	bne	00106$
;	Raw cost for generated ic 22 : (8, 9.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999999
;	../_strchr.c: 43: return((char *)string);
;	genRet
	ldx	*(_strchr_sloc0_1_0 + 1)
	lda	*_strchr_sloc0_1_0
	rts
;	Raw cost for generated ic 26 : (7, 9.000000) count=0.749999
;	genLabel
00106$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999998
;	../_strchr.c: 44: return ( NULL );
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 28 : (3, 4.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999998
;	../_strchr.c: 45: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
