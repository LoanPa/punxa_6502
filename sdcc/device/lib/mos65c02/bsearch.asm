;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module bsearch
	
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
	.globl _bsearch_PARM_5
	.globl _bsearch_PARM_4
	.globl _bsearch_PARM_3
	.globl _bsearch_PARM_2
	.globl _bsearch
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_bsearch_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_bsearch_PARM_2:
	.ds 2
_bsearch_PARM_3:
	.ds 2
_bsearch_PARM_4:
	.ds 2
_bsearch_PARM_5:
	.ds 2
_bsearch_key_10000_42:
	.ds 2
_bsearch_left_20000_45:
	.ds 2
_bsearch_middle_30000_46:
	.ds 2
_bsearch_c_30000_46:
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
;Allocation info for local variables in function 'bsearch'
;------------------------------------------------------------
;sloc0         Allocated with name '_bsearch_sloc0_1_0'
;base          Allocated with name '_bsearch_PARM_2'
;nmemb         Allocated with name '_bsearch_PARM_3'
;size          Allocated with name '_bsearch_PARM_4'
;compar        Allocated with name '_bsearch_PARM_5'
;key           Allocated with name '_bsearch_key_10000_42'
;left          Allocated with name '_bsearch_left_20000_45'
;middle        Allocated with name '_bsearch_middle_30000_46'
;c             Allocated with name '_bsearch_c_30000_46'
;------------------------------------------------------------
;	../bsearch.c: 31: void *bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (*compar)(const void *, const void *) __reentrant)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function bsearch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_bsearch:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_bsearch_key_10000_42
	stx	(_bsearch_key_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../bsearch.c: 33: for(const char *left = base; nmemb;)
;	genCast
;	genCopy
	lda	(_bsearch_PARM_2 + 1)
	sta	(_bsearch_left_20000_45 + 1)
	lda	_bsearch_PARM_2
	sta	_bsearch_left_20000_45
;	Raw cost for generated ic 3 : (12, 16.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.369007
;	genIfx
	lda	(_bsearch_PARM_3 + 1)
	ora	_bsearch_PARM_3
;	genIfxJump : z
	bne	00138$
	jmp	00107$
00138$:
;	Raw cost for generated ic 6 : (11, 13.600000) count=3.369007
;	../bsearch.c: 35: const char *middle = left + nmemb / 2 * size;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	ldx	(_bsearch_PARM_3 + 1)
	lda	_bsearch_PARM_3
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_bsearch_sloc0_1_0
	stx	*(_bsearch_sloc0_1_0 + 1)
;	Raw cost for generated ic 9 : (17, 27.000000) count=2.526755
;	genAssign
;	genCopy
	lda	(_bsearch_PARM_4 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	_bsearch_PARM_4
	sta	__mulint_PARM_2
;	Raw cost for generated ic 52 : (12, 16.000000) count=2.526755
;	Raw cost for generated ic 51 : (0, 0.000000) count=2.526755
;	genCall
;	genSend
	lda	*_bsearch_sloc0_1_0
	jsr	__mulint
;	assignResultValue
;	Raw cost for generated ic 53 : (5, 9.000000) count=2.526755
;	genPlus
	clc
	adc	_bsearch_left_20000_45
	sta	_bsearch_middle_30000_46
	txa
	adc	(_bsearch_left_20000_45 + 1)
	sta	(_bsearch_middle_30000_46 + 1)
;	Raw cost for generated ic 11 : (14, 20.000000) count=2.526755
;	../bsearch.c: 36: int c = (*compar)(key, middle);
;	genCast
;	genCopy
	tax
	lda	_bsearch_middle_30000_46
;	Raw cost for generated ic 13 : (4, 6.000000) count=2.526755
;	genIpush
	phx
	pha
;	Raw cost for generated ic 14 : (2, 6.000000) count=2.526755
;	Raw cost for generated ic 15 : (0, 0.000000) count=2.526755
;	genPcall
	lda	_bsearch_PARM_5
	sta	*(REGTEMP+0)
	lda	(_bsearch_PARM_5 + 1)
	sta	*(REGTEMP+1)
;	genSend
	ldx	(_bsearch_key_10000_42 + 1)
	lda	_bsearch_key_10000_42
	jsr	__sdcc_indirect_jsr
;	assignResultValue
	sta	_bsearch_c_30000_46
	stx	(_bsearch_c_30000_46 + 1)
;	  adjustStack : cycles stk:8  incdec:8  adc:12
	pla
	pla
;	Raw cost for generated ic 16 : (27, 44.000000) count=2.526755
;	../bsearch.c: 38: if(c < 0)
;	genCmp
	bit	(_bsearch_c_30000_46 + 1)
	bpl	00105$
;	Raw cost for generated ic 18 : (8, 9.600000) count=2.526755
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=2.526755
;	../bsearch.c: 39: nmemb = nmemb / 2;	
;	genAssign
;	genCopy
	lda	*(_bsearch_sloc0_1_0 + 1)
	sta	(_bsearch_PARM_3 + 1)
	lda	*_bsearch_sloc0_1_0
	sta	_bsearch_PARM_3
;	Raw cost for generated ic 23 : (10, 14.000000) count=1.895169
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 24 : (3, 3.000000) count=1.895169
;	genLabel
00105$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.631784
;	../bsearch.c: 40: else if(c > 0)
;	genCmp
	lda	#0x00
	sec
	sbc	_bsearch_c_30000_46
	lda	#0x00
	sbc	(_bsearch_c_30000_46 + 1)
	bvc	00141$
	bpl	00140$
	bmi	00102$
00141$:
	bpl	00102$
00140$:
;	Raw cost for generated ic 26 : (22, 27.400002) count=0.631784
;	skipping generated iCode
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.631784
;	../bsearch.c: 42: left = middle + size;
;	genPlus
	lda	_bsearch_middle_30000_46
	clc
	adc	_bsearch_PARM_4
	sta	_bsearch_left_20000_45
	lda	(_bsearch_middle_30000_46 + 1)
	adc	(_bsearch_PARM_4 + 1)
	sta	(_bsearch_left_20000_45 + 1)
;	Raw cost for generated ic 30 : (19, 26.000000) count=0.473838
;	../bsearch.c: 43: nmemb = (nmemb - 1) / 2;
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldx	(_bsearch_PARM_3 + 1)
	lda	_bsearch_PARM_3
	sec
	sbc	#0x01
	bcs	00143$
	dex
00143$:
;	Raw cost for generated ic 32 : (12, 16.600000) count=0.473838
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	_bsearch_PARM_3
	stx	(_bsearch_PARM_3 + 1)
;	Raw cost for generated ic 33 : (13, 21.000000) count=0.473838
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 35 : (3, 3.000000) count=0.473838
;	genLabel
00102$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=0.158059
;	../bsearch.c: 46: return(middle);
;	genCast
;	genCopy
	ldx	(_bsearch_middle_30000_46 + 1)
	lda	_bsearch_middle_30000_46
;	Raw cost for generated ic 37 : (6, 8.000000) count=0.158059
;	genRet
	rts
;	Raw cost for generated ic 38 : (3, 3.000000) count=0.158059
;	genLabel
00107$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000311
;	../bsearch.c: 49: return(0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 44 : (3, 4.000000) count=1.000311
;	genLabel
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000311
;	../bsearch.c: 50: }
;	genEndFunction
	rts
;	Raw cost for generated ic 46 : (1, 6.000000) count=1.000311
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
