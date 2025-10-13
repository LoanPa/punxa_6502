;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbstowcs
	
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
	.globl _mbtowc
	.globl _mbstowcs_PARM_3
	.globl _mbstowcs_PARM_2
	.globl _mbstowcs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbstowcs_sloc0_1_0:
	.ds 2
_mbstowcs_sloc1_1_0:
	.ds 2
_mbstowcs_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbstowcs_PARM_2:
	.ds 2
_mbstowcs_PARM_3:
	.ds 2
_mbstowcs_m_10000_43:
	.ds 2
_mbstowcs_b_20000_44:
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
;Allocation info for local variables in function 'mbstowcs'
;------------------------------------------------------------
;sloc0         Allocated with name '_mbstowcs_sloc0_1_0'
;sloc1         Allocated with name '_mbstowcs_sloc1_1_0'
;sloc2         Allocated with name '_mbstowcs_sloc2_1_0'
;s             Allocated with name '_mbstowcs_PARM_2'
;n             Allocated with name '_mbstowcs_PARM_3'
;pwcs          Allocated to registers 
;m             Allocated with name '_mbstowcs_m_10000_43'
;b             Allocated with name '_mbstowcs_b_20000_44'
;------------------------------------------------------------
;	../mbstowcs.c: 33: size_t mbstowcs(wchar_t *restrict pwcs, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbstowcs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbstowcs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_mbstowcs_sloc0_1_0
	stx	*(_mbstowcs_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../mbstowcs.c: 35: size_t m = 0;
;	genAssign
;	genAssignLit
	stz	_mbstowcs_m_10000_43
	stz	(_mbstowcs_m_10000_43 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../mbstowcs.c: 36: while(n--)
;	genAssign
;	genAssignLit
	stz	*_mbstowcs_sloc1_1_0
	stz	*(_mbstowcs_sloc1_1_0 + 1)
;	Raw cost for generated ic 42 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbstowcs_PARM_3 + 1)
	sta	*(_mbstowcs_sloc2_1_0 + 1)
	lda	_mbstowcs_PARM_3
	sta	*_mbstowcs_sloc2_1_0
;	Raw cost for generated ic 43 : (10, 14.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285707
;	genAssign
;	genCopy
	ldx	*(_mbstowcs_sloc2_1_0 + 1)
	lda	*_mbstowcs_sloc2_1_0
;	Raw cost for generated ic 5 : (4, 6.000000) count=2.285707
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_mbstowcs_sloc2_1_0
	bne	00134$
	dec	*(_mbstowcs_sloc2_1_0 + 1)
00134$:
	dec	*_mbstowcs_sloc2_1_0
;	Raw cost for generated ic 6 : (8, 15.600000) count=2.285707
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00136$
	cpx	#0x00
	beq	00107$
00136$:
;	Raw cost for generated ic 8 : (11, 12.200000) count=2.285707
;	../mbstowcs.c: 38: int b = mbtowc(pwcs++, s, MB_LEN_MAX);
;	genAssign
;	genCopy
	ldx	*(_mbstowcs_sloc0_1_0 + 1)
	lda	*_mbstowcs_sloc0_1_0
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.714280
;	genPlus
;	  genPlusInc
	pha
	lda	*_mbstowcs_sloc0_1_0
	clc
	adc	#0x04
	sta	*_mbstowcs_sloc0_1_0
	bcc	00137$
	inc	*(_mbstowcs_sloc0_1_0 + 1)
00137$:
	pla
;	Raw cost for generated ic 12 : (13, 24.600000) count=1.714280
;	genAssign
;	genCopy
	ldy	(_mbstowcs_PARM_2 + 1)
	sty	(_mbtowc_PARM_2 + 1)
	ldy	_mbstowcs_PARM_2
	sty	_mbtowc_PARM_2
;	Raw cost for generated ic 15 : (12, 16.000000) count=1.714280
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	_mbtowc_PARM_3
	stz	(_mbtowc_PARM_3 + 1)
;	Raw cost for generated ic 16 : (8, 10.000000) count=1.714280
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.714280
;	genCall
;	genSend
	jsr	_mbtowc
;	assignResultValue
	sta	_mbstowcs_b_20000_44
	stx	(_mbstowcs_b_20000_44 + 1)
;	Raw cost for generated ic 17 : (9, 14.000000) count=1.714280
;	../mbstowcs.c: 39: if(!b)
;	genIfx
	txa
	ora	_mbstowcs_b_20000_44
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 19 : (9, 11.600000) count=1.714280
;	../mbstowcs.c: 41: if(b < 0)
;	genCmp
	bit	(_mbstowcs_b_20000_44 + 1)
	bpl	00104$
;	Raw cost for generated ic 24 : (8, 9.600000) count=1.285710
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.285710
;	../mbstowcs.c: 42: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 28 : (6, 7.000000) count=0.964280
;	genLabel
00104$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.285707
;	../mbstowcs.c: 43: s += b;
;	genPlus
	lda	_mbstowcs_PARM_2
	clc
	adc	_mbstowcs_b_20000_44
	sta	_mbstowcs_PARM_2
	lda	(_mbstowcs_PARM_2 + 1)
	adc	(_mbstowcs_b_20000_44 + 1)
	sta	(_mbstowcs_PARM_2 + 1)
;	Raw cost for generated ic 30 : (19, 26.000000) count=1.285707
;	../mbstowcs.c: 44: m++;
;	genPlus
;	  genPlusInc
	inc	*_mbstowcs_sloc1_1_0
	bne	00141$
	inc	*(_mbstowcs_sloc1_1_0 + 1)
00141$:
;	Raw cost for generated ic 33 : (6, 12.600000) count=1.285707
;	genAssign
;	genCopy
	lda	*(_mbstowcs_sloc1_1_0 + 1)
	sta	(_mbstowcs_m_10000_43 + 1)
	lda	*_mbstowcs_sloc1_1_0
	sta	_mbstowcs_m_10000_43
;	Raw cost for generated ic 34 : (10, 14.000000) count=1.285707
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 35 : (3, 3.000000) count=1.285707
;	genLabel
00107$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.999994
;	../mbstowcs.c: 47: return(m);
;	genRet
	ldx	(_mbstowcs_m_10000_43 + 1)
	lda	_mbstowcs_m_10000_43
;	Raw cost for generated ic 37 : (6, 8.000000) count=0.999994
;	genLabel
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999994
;	../mbstowcs.c: 48: }
;	genEndFunction
	rts
;	Raw cost for generated ic 39 : (1, 6.000000) count=0.999994
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
