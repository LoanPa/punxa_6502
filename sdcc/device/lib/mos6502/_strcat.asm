;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcat
	
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
	.globl _strcat_PARM_2
	.globl _strcat
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strcat_sloc0_1_0:
	.ds 2
_strcat_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strcat_PARM_2:
	.ds 2
_strcat_dst_10000_27:
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
;Allocation info for local variables in function 'strcat'
;------------------------------------------------------------
;src           Allocated with name '_strcat_PARM_2'
;dst           Allocated with name '_strcat_dst_10000_27'
;cp            Allocated to registers 
;sloc0         Allocated with name '_strcat_sloc0_1_0'
;sloc1         Allocated with name '_strcat_sloc1_1_0'
;------------------------------------------------------------
;	../_strcat.c: 31: char * strcat ( char * dst, const char * src )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcat
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcat:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strcat_dst_10000_27
	stx	(_strcat_dst_10000_27 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_strcat.c: 35: while( *cp )
;	genAssign
;	genCopy
	sta	*_strcat_sloc0_1_0
	stx	*(_strcat_sloc0_1_0 + 1)
;	Raw cost for generated ic 34 : (4, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genPointerGet
	ldy	#0x00
	lda	[*_strcat_sloc0_1_0],y
;	Raw cost for generated ic 6 : (4, 7.000000) count=3.999997
;	genIfx
;	genIfxJump : z
	beq	00111$
;	Raw cost for generated ic 7 : (5, 5.600000) count=3.999997
;	../_strcat.c: 36: cp++;                   /* find end of dst */
;	genPlus
;	  genPlusInc
	inc	*_strcat_sloc0_1_0
	bne	00101$
	inc	*(_strcat_sloc0_1_0 + 1)
;	Raw cost for generated ic 11 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 13 : (3, 3.000000) count=2.999997
;	../_strcat.c: 38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
;	genLabel
00111$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	lda	(_strcat_PARM_2 + 1)
	sta	*(_strcat_sloc1_1_0 + 1)
	lda	_strcat_PARM_2
	sta	*_strcat_sloc1_1_0
;	Raw cost for generated ic 37 : (10, 14.000000) count=0.999999
;	genAssign
;	genCopy
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999999
;	genLabel
00104$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999994
;	genPointerGet
	ldy	#0x00
	lda	[*_strcat_sloc1_1_0],y
	tax
;	Raw cost for generated ic 22 : (5, 9.000000) count=3.999994
;	genPlus
;	  genPlusInc
	inc	*_strcat_sloc1_1_0
	bne	00138$
	inc	*(_strcat_sloc1_1_0 + 1)
00138$:
;	Raw cost for generated ic 20 : (6, 12.600000) count=3.999994
;	genPointerSet
	txa
	sta	[*_strcat_sloc0_1_0],y
;	Raw cost for generated ic 23 : (3, 8.000000) count=3.999994
;	genPlus
;	  genPlusInc
	inc	*_strcat_sloc0_1_0
	bne	00139$
	inc	*(_strcat_sloc0_1_0 + 1)
00139$:
;	Raw cost for generated ic 17 : (6, 12.600000) count=3.999994
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 24 : (7, 7.600000) count=3.999994
;	../_strcat.c: 40: return( dst );                  /* return dst */
;	genRet
	ldx	(_strcat_dst_10000_27 + 1)
	lda	_strcat_dst_10000_27
;	Raw cost for generated ic 29 : (6, 8.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999998
;	../_strcat.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 31 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
