;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strpbrk
	
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
	.globl _strpbrk_PARM_2
	.globl _strpbrk
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strpbrk_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strpbrk_PARM_2:
	.ds 2
_strpbrk_string_10000_27:
	.ds 2
_strpbrk_ret_10000_28:
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;ch            Allocated to registers x 
;sloc0         Allocated with name '_strpbrk_sloc0_1_0'
;control       Allocated with name '_strpbrk_PARM_2'
;string        Allocated with name '_strpbrk_string_10000_27'
;ret           Allocated with name '_strpbrk_ret_10000_28'
;p             Allocated to registers a x 
;------------------------------------------------------------
;	../_strpbrk.c: 31: char * strpbrk ( const char * string, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strpbrk:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strpbrk_string_10000_27
	stx	(_strpbrk_string_10000_27 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_strpbrk.c: 33: char *ret = NULL;
;	genAssign
;	genAssignLit
	stz	_strpbrk_ret_10000_28
	stz	(_strpbrk_ret_10000_28 + 1)
;	Raw cost for generated ic 4 : (6, 8.000000) count=1.000000
;	../_strpbrk.c: 36: while (ch = *control) {
;	genAssign
;	genCopy
	lda	(_strpbrk_PARM_2 + 1)
	sta	*(_strpbrk_sloc0_1_0 + 1)
	lda	_strpbrk_PARM_2
	sta	*_strpbrk_sloc0_1_0
;	Raw cost for generated ic 37 : (10, 14.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999983
;	genPointerGet
	ldy	#0x00
	lda	[*_strpbrk_sloc0_1_0],y
;	Raw cost for generated ic 7 : (4, 7.000000) count=3.999983
;	genAssign
;	genCopy
	tax
;	Raw cost for generated ic 8 : (1, 2.000000) count=3.999983
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999983
;	../_strpbrk.c: 37: char * p = strchr(string, ch);
;	genAssign
;	genCopy
	stx	_strchr_PARM_2
;	Raw cost for generated ic 13 : (3, 4.000000) count=2.999987
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999987
;	genCall
;	genSend
	ldx	(_strpbrk_string_10000_27 + 1)
	lda	_strpbrk_string_10000_27
	jsr	_strchr
;	assignResultValue
;	Raw cost for generated ic 14 : (9, 14.000000) count=2.999987
;	../_strpbrk.c: 38: if (p != NULL && (ret == NULL || p < ret)) {
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00138$
	cpx	#0x00
	beq	00102$
00138$:
;	Raw cost for generated ic 16 : (11, 12.200000) count=2.999987
;	genIfx
	sta	*(REGTEMP+0)
	lda	(_strpbrk_ret_10000_28 + 1)
	ora	_strpbrk_ret_10000_28
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 19 : (17, 26.600000) count=2.249990
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	_strpbrk_ret_10000_28
	txa
	sbc	(_strpbrk_ret_10000_28 + 1)
	lda	*(REGTEMP+0)
	bcs	00102$
;	Raw cost for generated ic 22 : (17, 23.600000) count=1.687490
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.687490
;	genLabel
00101$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.828115
;	../_strpbrk.c: 39: ret = p;
;	genAssign
;	genCopy
	sta	_strpbrk_ret_10000_28
	stx	(_strpbrk_ret_10000_28 + 1)
;	Raw cost for generated ic 26 : (6, 8.000000) count=1.828115
;	genLabel
00102$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=2.999983
;	../_strpbrk.c: 41: control++;
;	genPlus
;	  genPlusInc
	inc	*_strpbrk_sloc0_1_0
	bne	00105$
	inc	*(_strpbrk_sloc0_1_0 + 1)
;	Raw cost for generated ic 29 : (6, 12.600000) count=2.999983
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 31 : (3, 3.000000) count=2.999983
;	genLabel
00107$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999994
;	../_strpbrk.c: 44: return (ret);
;	genRet
	ldx	(_strpbrk_ret_10000_28 + 1)
	lda	_strpbrk_ret_10000_28
;	Raw cost for generated ic 33 : (6, 8.000000) count=0.999994
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999994
;	../_strpbrk.c: 45: }
;	genEndFunction
	rts
;	Raw cost for generated ic 35 : (1, 6.000000) count=0.999994
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
