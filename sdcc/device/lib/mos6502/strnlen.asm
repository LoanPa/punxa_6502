;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strnlen
	
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
	.globl _strnlen_PARM_2
	.globl _strnlen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strnlen_i_10000_28:
	.ds 2
_strnlen_sloc0_1_0:
	.ds 2
_strnlen_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strnlen_PARM_2:
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
;Allocation info for local variables in function 'strnlen'
;------------------------------------------------------------
;n             Allocated with name '_strnlen_PARM_2'
;s             Allocated to registers 
;i             Allocated with name '_strnlen_i_10000_28'
;sloc0         Allocated with name '_strnlen_sloc0_1_0'
;sloc1         Allocated with name '_strnlen_sloc1_1_0'
;------------------------------------------------------------
;	../strnlen.c: 32: size_t strnlen (const char *s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strnlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strnlen:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_strnlen_sloc0_1_0
	stx	*(_strnlen_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../strnlen.c: 36: while (n-- && *s++)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*_strnlen_i_10000_28
	sty	*(_strnlen_i_10000_28 + 1)
;	Raw cost for generated ic 30 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_strnlen_PARM_2 + 1)
	sta	*(_strnlen_sloc1_1_0 + 1)
	lda	_strnlen_PARM_2
	sta	*_strnlen_sloc1_1_0
;	Raw cost for generated ic 32 : (10, 14.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genAssign
;	genCopy
	ldx	*(_strnlen_sloc1_1_0 + 1)
	lda	*_strnlen_sloc1_1_0
;	Raw cost for generated ic 5 : (4, 6.000000) count=2.285713
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_strnlen_sloc1_1_0
	bne	00126$
	dec	*(_strnlen_sloc1_1_0 + 1)
00126$:
	dec	*_strnlen_sloc1_1_0
;	Raw cost for generated ic 6 : (8, 15.600000) count=2.285713
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00128$
	cpx	#0x00
	beq	00104$
00128$:
;	Raw cost for generated ic 8 : (11, 12.200000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_strnlen_sloc0_1_0],y
;	Raw cost for generated ic 14 : (4, 7.000000) count=1.714284
;	genPlus
;	  genPlusInc
	inc	*_strnlen_sloc0_1_0
	bne	00129$
	inc	*(_strnlen_sloc0_1_0 + 1)
00129$:
;	Raw cost for generated ic 12 : (6, 12.600000) count=1.714284
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.714284
;	../strnlen.c: 37: i++ ;
;	genPlus
;	  genPlusInc
	inc	*_strnlen_i_10000_28
	bne	00102$
	inc	*(_strnlen_i_10000_28 + 1)
;	Raw cost for generated ic 19 : (6, 12.600000) count=1.285713
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 21 : (3, 3.000000) count=1.285713
;	genLabel
00104$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.999999
;	../strnlen.c: 39: return i;
;	genRet
	ldx	*(_strnlen_i_10000_28 + 1)
	lda	*_strnlen_i_10000_28
;	Raw cost for generated ic 23 : (4, 6.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999999
;	../strnlen.c: 40: }
;	genEndFunction
	rts
;	Raw cost for generated ic 25 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
