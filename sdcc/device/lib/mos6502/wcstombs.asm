;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstombs
	
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
	.globl _wctomb
	.globl _wcstombs_PARM_3
	.globl _wcstombs_PARM_2
	.globl _wcstombs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstombs_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcstombs_PARM_2:
	.ds 2
_wcstombs_PARM_3:
	.ds 2
_wcstombs_s_10000_42:
	.ds 2
_wcstombs_m_10000_43:
	.ds 2
_wcstombs_buffer_10000_43:
	.ds 4
_wcstombs_b_20000_44:
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
;Allocation info for local variables in function 'wcstombs'
;------------------------------------------------------------
;sloc0         Allocated with name '_wcstombs_sloc0_1_0'
;pwcs          Allocated with name '_wcstombs_PARM_2'
;n             Allocated with name '_wcstombs_PARM_3'
;s             Allocated with name '_wcstombs_s_10000_42'
;m             Allocated with name '_wcstombs_m_10000_43'
;buffer        Allocated with name '_wcstombs_buffer_10000_43'
;b             Allocated with name '_wcstombs_b_20000_44'
;------------------------------------------------------------
;	../wcstombs.c: 33: size_t wcstombs(char *restrict s, const wchar_t *restrict pwcs, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcstombs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_wcstombs_s_10000_42
	stx	(_wcstombs_s_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../wcstombs.c: 35: size_t m = 0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_wcstombs_m_10000_43
	sty	(_wcstombs_m_10000_43 + 1)
;	Raw cost for generated ic 3 : (8, 10.000000) count=1.000000
;	../wcstombs.c: 38: while(n > MB_LEN_MAX || n >= wctomb(buffer, *pwcs))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_wcstombs_PARM_2 + 1)
	sta	*(_wcstombs_sloc0_1_0 + 1)
	lda	_wcstombs_PARM_2
	sta	*_wcstombs_sloc0_1_0
;	Raw cost for generated ic 61 : (10, 14.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.942521
;	genCmp
	lda	#0x04
	sec
	sbc	_wcstombs_PARM_3
	lda	#0x00
	sbc	(_wcstombs_PARM_3 + 1)
	bcc	00108$
;	Raw cost for generated ic 5 : (16, 19.600000) count=2.942521
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.942521
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 10 : (0, 0.000000) count=2.206891
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstombs_sloc0_1_0],y
	sta	_wctomb_PARM_2
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 1)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 2)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 3)
;	Raw cost for generated ic 12 : (25, 44.000000) count=2.206891
;	Raw cost for generated ic 13 : (0, 0.000000) count=2.206891
;	genCall
;	genSend
	ldx	#>_wcstombs_buffer_10000_43
	lda	#_wcstombs_buffer_10000_43
	jsr	_wctomb
;	assignResultValue
;	Raw cost for generated ic 15 : (7, 10.000000) count=2.206891
;	genCast
;	genCopy
;	Raw cost for generated ic 16 : (0, 0.000000) count=2.206891
;	genCmp
	sta	*(REGTEMP+0)
	lda	_wcstombs_PARM_3
	sec
	sbc	*(REGTEMP+0)
	lda	(_wcstombs_PARM_3 + 1)
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	bcs	00137$
	jmp	00109$
00137$:
;	Raw cost for generated ic 17 : (20, 27.600000) count=2.206891
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.206891
;	genLabel
00108$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=2.390799
;	../wcstombs.c: 40: int b = wctomb(s, *pwcs);
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstombs_sloc0_1_0],y
	sta	_wctomb_PARM_2
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 1)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 2)
	iny
	lda	[*_wcstombs_sloc0_1_0],y
	sta	(_wctomb_PARM_2 + 3)
;	Raw cost for generated ic 22 : (25, 44.000000) count=2.390799
;	Raw cost for generated ic 23 : (0, 0.000000) count=2.390799
;	genCall
;	genSend
	ldx	(_wcstombs_s_10000_42 + 1)
	lda	_wcstombs_s_10000_42
	jsr	_wctomb
;	assignResultValue
	sta	_wcstombs_b_20000_44
	stx	(_wcstombs_b_20000_44 + 1)
;	Raw cost for generated ic 25 : (15, 22.000000) count=2.390799
;	../wcstombs.c: 42: if(b == 1 && !*s)
;	genCmpEQorNE
	cmp	#0x01
	bne	00102$
	cpx	#0x00
	bne	00102$
;	Raw cost for generated ic 27 : (14, 15.200001) count=2.390799
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=2.390799
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wcstombs_s_10000_42
	stx	*(DPTR+0)
	ldx	(_wcstombs_s_10000_42 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 32 : (14, 21.000000) count=1.793097
;	genIfx
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 33 : (5, 5.600000) count=1.793097
;	../wcstombs.c: 43: break;
;	genLabel
00102$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 44: if(b < 0)
;	genCmp
	bit	(_wcstombs_b_20000_44 + 1)
	bpl	00105$
;	Raw cost for generated ic 38 : (8, 9.600000) count=1.942521
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 45: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 42 : (6, 7.000000) count=1.456891
;	genLabel
00105$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.942521
;	../wcstombs.c: 47: n -= b;
;	genCast
;	genCopy
	ldx	(_wcstombs_b_20000_44 + 1)
	lda	_wcstombs_b_20000_44
;	Raw cost for generated ic 44 : (6, 8.000000) count=1.942521
;	genMinus
	sta	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	lda	_wcstombs_PARM_3
	sec
	sbc	*(REGTEMP+1)
	sta	_wcstombs_PARM_3
	lda	(_wcstombs_PARM_3 + 1)
	stx	*(REGTEMP+1)
	sbc	*(REGTEMP+1)
	sta	(_wcstombs_PARM_3 + 1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 45 : (25, 36.000000) count=1.942521
;	../wcstombs.c: 48: m += b;
;	genPlus
	clc
	adc	_wcstombs_m_10000_43
	sta	_wcstombs_m_10000_43
	txa
	adc	(_wcstombs_m_10000_43 + 1)
	sta	(_wcstombs_m_10000_43 + 1)
;	Raw cost for generated ic 48 : (14, 20.000000) count=1.942521
;	../wcstombs.c: 49: s += b;
;	genPlus
	lda	_wcstombs_s_10000_42
	clc
	adc	_wcstombs_b_20000_44
	sta	_wcstombs_s_10000_42
	lda	(_wcstombs_s_10000_42 + 1)
	adc	(_wcstombs_b_20000_44 + 1)
	sta	(_wcstombs_s_10000_42 + 1)
;	Raw cost for generated ic 50 : (19, 26.000000) count=1.942521
;	../wcstombs.c: 50: pwcs++;
;	genPlus
;	  genPlusInc
	lda	*_wcstombs_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcstombs_sloc0_1_0
	bcc	00144$
	inc	*(_wcstombs_sloc0_1_0 + 1)
00144$:
;	Raw cost for generated ic 53 : (11, 17.600000) count=1.942521
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 55 : (3, 3.000000) count=1.942521
;	genLabel
00109$:
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999997
;	../wcstombs.c: 53: return(m);
;	genRet
	ldx	(_wcstombs_m_10000_43 + 1)
	lda	_wcstombs_m_10000_43
;	Raw cost for generated ic 57 : (6, 8.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.999997
;	../wcstombs.c: 54: }
;	genEndFunction
	rts
;	Raw cost for generated ic 59 : (1, 6.000000) count=0.999997
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
