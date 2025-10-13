;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_memreverse8
	
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
	.globl _stdc_memreverse8_PARM_2
	.globl _stdc_memreverse8
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_stdc_memreverse8_sloc0_1_0:
	.ds 2
_stdc_memreverse8_sloc1_1_0:
	.ds 2
_stdc_memreverse8_sloc2_1_0:
	.ds 2
_stdc_memreverse8_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_stdc_memreverse8_PARM_2:
	.ds 2
_stdc_memreverse8_n_10000_162:
	.ds 2
_stdc_memreverse8_c_30000_165:
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
;Allocation info for local variables in function 'stdc_memreverse8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_memreverse8_PARM_2'
;n             Allocated with name '_stdc_memreverse8_n_10000_162'
;i             Allocated to registers 
;c             Allocated with name '_stdc_memreverse8_c_30000_165'
;sloc0         Allocated with name '_stdc_memreverse8_sloc0_1_0'
;sloc1         Allocated with name '_stdc_memreverse8_sloc1_1_0'
;sloc2         Allocated with name '_stdc_memreverse8_sloc2_1_0'
;sloc3         Allocated with name '_stdc_memreverse8_sloc3_1_0'
;------------------------------------------------------------
;	../stdc_memreverse8.c: 31: void stdc_memreverse8(size_t n, unsigned char ptr[static n])
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_memreverse8_n_10000_162
	stx	(_stdc_memreverse8_n_10000_162 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../stdc_memreverse8.c: 33: for(size_t i = 0; i < n / 2; i++)
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=1
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
	sta	*_stdc_memreverse8_sloc0_1_0
	stx	*(_stdc_memreverse8_sloc0_1_0 + 1)
;	Raw cost for generated ic 5 : (11, 19.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*_stdc_memreverse8_sloc1_1_0
	sty	*(_stdc_memreverse8_sloc1_1_0 + 1)
;	Raw cost for generated ic 32 : (6, 8.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genCmp
	lda	*_stdc_memreverse8_sloc1_1_0
	sec
	sbc	*_stdc_memreverse8_sloc0_1_0
	lda	*(_stdc_memreverse8_sloc1_1_0 + 1)
	sbc	*(_stdc_memreverse8_sloc0_1_0 + 1)
	bcs	00105$
;	Raw cost for generated ic 6 : (14, 19.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	../stdc_memreverse8.c: 35: unsigned char c = ptr[i];
;	genPlus
	lda	_stdc_memreverse8_PARM_2
	clc
	adc	*_stdc_memreverse8_sloc1_1_0
	sta	*_stdc_memreverse8_sloc2_1_0
	lda	(_stdc_memreverse8_PARM_2 + 1)
	adc	*(_stdc_memreverse8_sloc1_1_0 + 1)
	sta	*(_stdc_memreverse8_sloc2_1_0 + 1)
;	Raw cost for generated ic 10 : (15, 22.000000) count=2.999997
;	genPointerGet
	ldy	#0x00
	lda	[*_stdc_memreverse8_sloc2_1_0],y
	sta	_stdc_memreverse8_c_30000_165
;	Raw cost for generated ic 11 : (7, 11.000000) count=2.999997
;	../stdc_memreverse8.c: 36: ptr[i] = ptr[n - i - 1];
;	genMinus
	lda	_stdc_memreverse8_n_10000_162
	sec
	sbc	*_stdc_memreverse8_sloc1_1_0
	pha
	lda	(_stdc_memreverse8_n_10000_162 + 1)
	sbc	*(_stdc_memreverse8_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 14 : (14, 25.000000) count=2.999997
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00121$
	dex
00121$:
;	Raw cost for generated ic 15 : (6, 8.600000) count=2.999997
;	genPlus
	clc
	adc	_stdc_memreverse8_PARM_2
	sta	*_stdc_memreverse8_sloc3_1_0
	txa
	adc	(_stdc_memreverse8_PARM_2 + 1)
	sta	*(_stdc_memreverse8_sloc3_1_0 + 1)
;	Raw cost for generated ic 16 : (12, 18.000000) count=2.999997
;	genPointerGet
	lda	[*_stdc_memreverse8_sloc3_1_0],y
;	Raw cost for generated ic 17 : (2, 5.000000) count=2.999997
;	genPointerSet
	sta	[*_stdc_memreverse8_sloc2_1_0],y
;	Raw cost for generated ic 18 : (2, 6.000000) count=2.999997
;	../stdc_memreverse8.c: 37: ptr[n - i - 1] = c;
;	genPointerSet
	lda	_stdc_memreverse8_c_30000_165
	sta	[*_stdc_memreverse8_sloc3_1_0],y
;	Raw cost for generated ic 22 : (5, 10.000000) count=2.999997
;	../stdc_memreverse8.c: 33: for(size_t i = 0; i < n / 2; i++)
;	genPlus
;	  genPlusInc
	inc	*_stdc_memreverse8_sloc1_1_0
	bne	00103$
	inc	*(_stdc_memreverse8_sloc1_1_0 + 1)
;	Raw cost for generated ic 25 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 27 : (3, 3.000000) count=2.999997
;	genLabel
00105$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.999999
;	../stdc_memreverse8.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 30 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
