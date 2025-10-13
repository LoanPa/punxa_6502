;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcspn
	
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
	.globl _strchr
	.globl _strcspn_PARM_2
	.globl _strcspn
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strcspn_count_10000_28:
	.ds 2
_strcspn_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strcspn_PARM_2:
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;count         Allocated with name '_strcspn_count_10000_28'
;ch            Allocated to registers x 
;sloc0         Allocated with name '_strcspn_sloc0_1_0'
;control       Allocated with name '_strcspn_PARM_2'
;string        Allocated to registers 
;------------------------------------------------------------
;	../_strcspn.c: 31: size_t strcspn ( const char * string, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strcspn:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_strcspn_sloc0_1_0
	stx	*(_strcspn_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../_strcspn.c: 36: while (ch = *string) {
;	genAssign
;	genAssignLit
	stz	*_strcspn_count_10000_28
	stz	*(_strcspn_count_10000_28 + 1)
;	Raw cost for generated ic 33 : (6, 8.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_strcspn_sloc0_1_0],y
;	Raw cost for generated ic 6 : (4, 7.000000) count=2.285713
;	genAssign
;	genCopy
	tax
;	Raw cost for generated ic 7 : (1, 2.000000) count=2.285713
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 8 : (7, 7.600000) count=2.285713
;	../_strcspn.c: 37: if (strchr(control,ch))
;	genAssign
;	genCopy
	stx	_strchr_PARM_2
;	Raw cost for generated ic 12 : (3, 4.000000) count=1.714284
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	ldx	(_strcspn_PARM_2 + 1)
	lda	_strcspn_PARM_2
	jsr	_strchr
;	assignResultValue
;	Raw cost for generated ic 13 : (9, 14.000000) count=1.714284
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00106$
	cpx	#0x00
	bne	00106$
;	Raw cost for generated ic 14 : (11, 12.200000) count=1.714284
;	../_strcspn.c: 40: count++;
;	genPlus
;	  genPlusInc
	inc	*_strcspn_count_10000_28
	bne	00132$
	inc	*(_strcspn_count_10000_28 + 1)
00132$:
;	Raw cost for generated ic 21 : (6, 12.600000) count=1.285713
;	../_strcspn.c: 41: string++;
;	genPlus
;	  genPlusInc
	inc	*_strcspn_sloc0_1_0
	bne	00104$
	inc	*(_strcspn_sloc0_1_0 + 1)
;	Raw cost for generated ic 25 : (6, 12.600000) count=1.285713
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 27 : (3, 3.000000) count=1.285713
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	../_strcspn.c: 44: return count;
;	genRet
	ldx	*(_strcspn_count_10000_28 + 1)
	lda	*_strcspn_count_10000_28
;	Raw cost for generated ic 29 : (4, 6.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999999
;	../_strcspn.c: 45: }  
;	genEndFunction
	rts
;	Raw cost for generated ic 31 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
