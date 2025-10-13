;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strstr
	
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
	.globl _strstr_PARM_2
	.globl _strstr
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strstr_sloc0_1_0:
	.ds 2
_strstr_sloc1_1_0:
	.ds 2
_strstr_sloc2_1_0:
	.ds 2
_strstr_sloc3_1_0:
	.ds 2
_strstr_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strstr_PARM_2:
	.ds 2
_strstr_cp_10000_28:
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2          Allocated with name '_strstr_PARM_2'
;str1          Allocated to registers a x 
;cp            Allocated with name '_strstr_cp_10000_28'
;s1            Allocated to registers 
;s2            Allocated to registers 
;sloc0         Allocated with name '_strstr_sloc0_1_0'
;sloc1         Allocated with name '_strstr_sloc1_1_0'
;sloc2         Allocated with name '_strstr_sloc2_1_0'
;sloc3         Allocated with name '_strstr_sloc3_1_0'
;sloc4         Allocated with name '_strstr_sloc4_1_0'
;------------------------------------------------------------
;	../_strstr.c: 31: char *strstr ( const char *str1, const char *str2 )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strstr:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strstr.c: 33: const char *cp = str1;
;	genAssign
;	genCopy
	sta	_strstr_cp_10000_28
	stx	(_strstr_cp_10000_28 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../_strstr.c: 37: if (!*str2)
;	genAssign
;	genCopy
	ldy	(_strstr_PARM_2 + 1)
	sty	*(_strstr_sloc0_1_0 + 1)
	ldy	_strstr_PARM_2
	sty	*_strstr_sloc0_1_0
;	Raw cost for generated ic 4 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_strstr_sloc0_1_0],y
	tay
	lda	(_strstr_cp_10000_28+0)
;	Raw cost for generated ic 5 : (8, 13.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00122$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	../_strstr.c: 38: return ((char*)str1);
;	genRet
	rts
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	../_strstr.c: 40: while (*cp)
;	genLabel
00122$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*_strstr_sloc1_1_0
	stx	*(_strstr_sloc1_1_0 + 1)
;	Raw cost for generated ic 70 : (4, 6.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999937
;	genPointerGet
	ldy	#0x00
	lda	[*_strstr_sloc1_1_0],y
;	Raw cost for generated ic 13 : (4, 7.000000) count=3.999937
;	genIfx
;	genIfxJump : z
	beq	00112$
;	Raw cost for generated ic 14 : (5, 5.600000) count=3.999937
;	../_strstr.c: 43: s2 = str2;
;	genAssign
;	genCopy
	lda	*(_strstr_sloc0_1_0 + 1)
	sta	*(_strstr_sloc2_1_0 + 1)
	lda	*_strstr_sloc0_1_0
	sta	*_strstr_sloc2_1_0
;	Raw cost for generated ic 18 : (8, 12.000000) count=2.999953
;	../_strstr.c: 45: while (*s1 && *s2 && !(*s1-*s2))
;	genAssign
;	genCopy
	lda	*(_strstr_sloc1_1_0 + 1)
	sta	*(_strstr_sloc3_1_0 + 1)
	lda	*_strstr_sloc1_1_0
	sta	*_strstr_sloc3_1_0
;	Raw cost for generated ic 65 : (8, 12.000000) count=2.999953
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=5.189096
;	genPointerGet
	ldy	#0x00
	lda	[*_strstr_sloc3_1_0],y
	tax
;	Raw cost for generated ic 21 : (5, 9.000000) count=5.189096
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 22 : (5, 5.600000) count=5.189096
;	genPointerGet
	lda	[*_strstr_sloc2_1_0],y
;	Raw cost for generated ic 26 : (2, 5.000000) count=3.891822
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 27 : (5, 5.600000) count=3.891822
;	genCast
;	genCopy
	sty	*(_strstr_sloc4_1_0 + 1)
	stx	*_strstr_sloc4_1_0
;	Raw cost for generated ic 32 : (4, 6.000000) count=2.918866
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 35 : (2, 2.000000) count=2.918866
;	genMinus
	sta	*(REGTEMP+0)
	lda	*_strstr_sloc4_1_0
	sec
	sbc	*(REGTEMP+0)
	pha
	lda	*(_strstr_sloc4_1_0 + 1)
	sbc	#0x00
	tax
	pla
;	Raw cost for generated ic 36 : (14, 25.000000) count=2.918866
;	genIfx
;	genIfxJump : z
	bne	00107$
	cpx	#0x00
	bne	00107$
;	Raw cost for generated ic 37 : (9, 10.200000) count=2.918866
;	../_strstr.c: 46: s1++, s2++;
;	genPlus
;	  genPlusInc
	inc	*_strstr_sloc3_1_0
	bne	00174$
	inc	*(_strstr_sloc3_1_0 + 1)
00174$:
;	Raw cost for generated ic 41 : (6, 12.600000) count=2.189143
;	genPlus
;	  genPlusInc
	inc	*_strstr_sloc2_1_0
	bne	00105$
	inc	*(_strstr_sloc2_1_0 + 1)
;	Raw cost for generated ic 44 : (6, 12.600000) count=2.189143
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 46 : (3, 3.000000) count=2.189143
;	genLabel
00107$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=2.999946
;	../_strstr.c: 48: if (!*s2)
;	genPointerGet
	ldy	#0x00
	lda	[*_strstr_sloc2_1_0],y
;	Raw cost for generated ic 49 : (4, 7.000000) count=2.999946
;	genIfx
;	genIfxJump : z
	bne	00109$
;	Raw cost for generated ic 50 : (5, 5.600000) count=2.999946
;	../_strstr.c: 49: return ((char*)cp);
;	genRet
	ldx	(_strstr_cp_10000_28 + 1)
	lda	_strstr_cp_10000_28
	rts
;	Raw cost for generated ic 53 : (9, 11.000000) count=2.249953
;	genLabel
00109$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=2.999937
;	../_strstr.c: 51: cp++;
;	genPlus
;	  genPlusInc
	inc	*_strstr_sloc1_1_0
	bne	00178$
	inc	*(_strstr_sloc1_1_0 + 1)
00178$:
;	Raw cost for generated ic 56 : (6, 12.600000) count=2.999937
;	genAssign
;	genCopy
	lda	*(_strstr_sloc1_1_0 + 1)
	sta	(_strstr_cp_10000_28 + 1)
	lda	*_strstr_sloc1_1_0
	sta	_strstr_cp_10000_28
;	Raw cost for generated ic 57 : (10, 14.000000) count=2.999937
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 58 : (3, 3.000000) count=2.999937
;	genLabel
00112$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.999984
;	../_strstr.c: 54: return (NULL) ;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 60 : (3, 4.000000) count=0.999984
;	genLabel
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.999984
;	../_strstr.c: 55: }
;	genEndFunction
	rts
;	Raw cost for generated ic 62 : (1, 6.000000) count=0.999984
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
