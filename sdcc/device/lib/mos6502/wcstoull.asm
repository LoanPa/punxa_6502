;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoull
	
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
	.globl _wcsncmp
	.globl _wcstoull_PARM_3
	.globl _wcstoull_PARM_2
	.globl _wcstoull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstoull_sloc0_1_0:
	.ds 2
_wcstoull_sloc1_1_0:
	.ds 4
_wcstoull_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__isdigit_PARM_1:
	.ds 4
__isdigit_PARM_2:
	.ds 1
_wcstoull_PARM_2:
	.ds 2
_wcstoull_PARM_3:
	.ds 2
_wcstoull_nptr_10000_110:
	.ds 2
_wcstoull_ptr_10000_111:
	.ds 2
_wcstoull_ret_10000_111:
	.ds 8
_wcstoull_range_error_10000_111:
	.ds 1
_wcstoull_neg_10000_111:
	.ds 1
_wcstoull_b_10000_111:
	.ds 1
_wcstoull_digit_30000_128:
	.ds 1
_wcstoull_oldret_30001_130:
	.ds 8
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;c             Allocated with name '__isdigit_PARM_1'
;base          Allocated with name '__isdigit_PARM_2'
;v             Allocated to registers a 
;------------------------------------------------------------
;	../wcstoull.c: 43: static signed char _isdigit(const wchar_t c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 47: if (c >= L'0' && c <= L'9')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x30
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 2 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00110$
;	Raw cost for generated ic 6 : (26, 31.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../wcstoull.c: 48: v = c - L'0';
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 10 : (3, 4.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 11 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.437500
;	../wcstoull.c: 49: else if (c >= L'a' && c <= L'z')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x61
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00106$
;	Raw cost for generated ic 15 : (26, 31.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x7a
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00106$
;	Raw cost for generated ic 19 : (26, 31.600000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.328125
;	../wcstoull.c: 50: v = c - L'a' + 10;
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 23 : (3, 4.000000) count=0.246094
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 25 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.191406
;	../wcstoull.c: 51: else if (c >= L'A' && c <= L'Z')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x41
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 29 : (26, 31.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x5a
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00102$
;	Raw cost for generated ic 33 : (26, 31.600000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.143555
;	../wcstoull.c: 52: v = c - L'A' + 10;
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.107666
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.107666
;	genPlus
;	  genPlusInc
	clc
	adc	#0xc9
;	Raw cost for generated ic 39 : (3, 4.000000) count=0.107666
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 41 : (3, 3.000000) count=0.107666
;	genLabel
00102$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.083740
;	../wcstoull.c: 54: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 56: if (v >= base)
;	genCmp
	cmp	__isdigit_PARM_2
	bcc	00114$
;	Raw cost for generated ic 47 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 57: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 59: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../wcstoull.c: 60: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'wcstoull'
;------------------------------------------------------------
;sloc0         Allocated with name '_wcstoull_sloc0_1_0'
;sloc1         Allocated with name '_wcstoull_sloc1_1_0'
;sloc2         Allocated with name '_wcstoull_sloc2_1_0'
;endptr        Allocated with name '_wcstoull_PARM_2'
;base          Allocated with name '_wcstoull_PARM_3'
;nptr          Allocated with name '_wcstoull_nptr_10000_110'
;__200000005   Allocated to registers 
;ptr           Allocated with name '_wcstoull_ptr_10000_111'
;ret           Allocated with name '_wcstoull_ret_10000_111'
;range_error   Allocated with name '_wcstoull_range_error_10000_111'
;neg           Allocated with name '_wcstoull_neg_10000_111'
;b             Allocated with name '_wcstoull_b_10000_111'
;__200000006   Allocated with name '_wcstoull___200000006_20000_135'
;c             Allocated with name '_wcstoull_c_30000_136'
;digit         Allocated with name '_wcstoull_digit_30000_128'
;oldret        Allocated with name '_wcstoull_oldret_30001_130'
;------------------------------------------------------------
;	../wcstoull.c: 64: unsigned long long int wcstoull(const wchar_t *nptr, wchar_t **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoull
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_wcstoull:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_wcstoull_nptr_10000_110
	stx	(_wcstoull_nptr_10000_110 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../wcstoull.c: 68: bool range_error = false;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_wcstoull_range_error_10000_111
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	../wcstoull.c: 69: bool neg = false;
;	genAssign
;	genAssignLit
	sty	_wcstoull_neg_10000_111
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	../wcstoull.c: 70: unsigned char b = base;
;	genCast
;	genCopy
	lda	_wcstoull_PARM_3
	sta	_wcstoull_b_10000_111
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	../wcstoull.c: 72: while (iswblank (*ptr))
;	genAssign
;	genCopy
	txa
	sta	*(_wcstoull_sloc0_1_0 + 1)
	lda	_wcstoull_nptr_10000_110
	sta	*_wcstoull_sloc0_1_0
;	Raw cost for generated ic 246 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*_wcstoull_sloc1_1_0
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 1)
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 2)
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 3)
;	Raw cost for generated ic 10 : (21, 40.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	*_wcstoull_sloc1_1_0
	cmp	#0x20
	bne	00279$
	lda	*(_wcstoull_sloc1_1_0 + 1)
	bne	00279$
	lda	*(_wcstoull_sloc1_1_0 + 2)
	bne	00279$
	lda	*(_wcstoull_sloc1_1_0 + 3)
	beq	00149$
00279$:
;	Raw cost for generated ic 13 : (30, 36.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	*_wcstoull_sloc1_1_0
	cmp	#0x09
	bne	00175$
	lda	*(_wcstoull_sloc1_1_0 + 1)
	bne	00175$
	lda	*(_wcstoull_sloc1_1_0 + 2)
	bne	00175$
	lda	*(_wcstoull_sloc1_1_0 + 3)
	bne	00175$
;	Raw cost for generated ic 15 : (30, 36.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999992
;	genLabel
00149$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=4.333324
;	../wcstoull.c: 73: ptr++;
;	genPlus
;	  genPlusInc
	lda	*_wcstoull_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcstoull_sloc0_1_0
	bcc	00101$
	inc	*(_wcstoull_sloc0_1_0 + 1)
;	Raw cost for generated ic 31 : (11, 17.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 33 : (3, 3.000000) count=4.333324
;	genLabel
00175$:
;	Raw cost for generated ic 247 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_wcstoull_sloc0_1_0 + 1)
	sta	(_wcstoull_ptr_10000_111 + 1)
	lda	*_wcstoull_sloc0_1_0
	sta	_wcstoull_ptr_10000_111
;	Raw cost for generated ic 248 : (10, 14.000000) count=0.999997
;	../wcstoull.c: 76: switch(*ptr)
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*_wcstoull_sloc1_1_0
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 1)
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 2)
	iny
	lda	[*_wcstoull_sloc0_1_0],y
	sta	*(_wcstoull_sloc1_1_0 + 3)
;	Raw cost for generated ic 36 : (21, 40.000000) count=0.999997
;	genCmpEQorNE
	lda	*_wcstoull_sloc1_1_0
	cmp	#0x2b
	bne	00289$
	lda	*(_wcstoull_sloc1_1_0 + 1)
	bne	00289$
	lda	*(_wcstoull_sloc1_1_0 + 2)
	bne	00289$
	lda	*(_wcstoull_sloc1_1_0 + 3)
	beq	00105$
00289$:
;	Raw cost for generated ic 37 : (30, 36.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	lda	*_wcstoull_sloc1_1_0
	cmp	#0x2d
	bne	00106$
	lda	*(_wcstoull_sloc1_1_0 + 1)
	bne	00106$
	lda	*(_wcstoull_sloc1_1_0 + 2)
	bne	00106$
	lda	*(_wcstoull_sloc1_1_0 + 3)
	bne	00106$
;	Raw cost for generated ic 39 : (30, 36.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.749996
;	../wcstoull.c: 79: neg = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_wcstoull_neg_10000_111
;	Raw cost for generated ic 43 : (5, 6.000000) count=0.562496
;	../wcstoull.c: 80: case L'+':
;	genLabel
00105$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.812494
;	../wcstoull.c: 81: ptr++;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x04
	sta	_wcstoull_ptr_10000_111
	bcc	00297$
	inc	(_wcstoull_ptr_10000_111 + 1)
00297$:
;	Raw cost for generated ic 46 : (14, 20.600000) count=0.812494
;	../wcstoull.c: 82: }
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999993
;	../wcstoull.c: 85: if (!b)
;	genIfx
	lda	_wcstoull_b_10000_111
;	genIfxJump : z
	beq	00299$
	jmp	00128$
00299$:
;	Raw cost for generated ic 49 : (8, 9.600000) count=0.999993
;	../wcstoull.c: 87: if (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.749995
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 53 : (10, 12.000000) count=0.749995
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 56 : (10, 12.000000) count=0.749995
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 57 : (9, 14.000000) count=0.749995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00301$
	cpx	#0x00
	beq	00114$
00301$:
;	Raw cost for generated ic 58 : (11, 12.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.562496
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 62 : (10, 12.000000) count=0.562496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 65 : (10, 12.000000) count=0.562496
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 66 : (9, 14.000000) count=0.562496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00115$
	cpx	#0x00
	bne	00115$
;	Raw cost for generated ic 67 : (11, 12.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.609371
;	../wcstoull.c: 89: b = 16;
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_wcstoull_b_10000_111
;	Raw cost for generated ic 70 : (5, 6.000000) count=0.609371
;	../wcstoull.c: 90: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x08
	sta	_wcstoull_ptr_10000_111
	bcc	00304$
	inc	(_wcstoull_ptr_10000_111 + 1)
00304$:
;	Raw cost for generated ic 71 : (14, 20.600000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.140623
;	../wcstoull.c: 92: else if (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.140623
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 76 : (10, 12.000000) count=0.140623
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 79 : (10, 12.000000) count=0.140623
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 80 : (9, 14.000000) count=0.140623
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00306$
	cpx	#0x00
	beq	00110$
00306$:
;	Raw cost for generated ic 81 : (11, 12.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.105467
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 85 : (10, 12.000000) count=0.105467
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 88 : (10, 12.000000) count=0.105467
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 89 : (9, 14.000000) count=0.105467
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 90 : (11, 12.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.114256
;	../wcstoull.c: 94: b = 2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcstoull_b_10000_111
;	Raw cost for generated ic 93 : (5, 6.000000) count=0.114256
;	../wcstoull.c: 95: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x08
	sta	_wcstoull_ptr_10000_111
	bcc	00309$
	inc	(_wcstoull_ptr_10000_111 + 1)
00309$:
;	Raw cost for generated ic 94 : (14, 20.600000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.020970
;	../wcstoull.c: 97: else if (*ptr == L'0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wcstoull_ptr_10000_111
	stx	*(DPTR+0)
	ldx	(_wcstoull_ptr_10000_111 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_wcstoull_sloc1_1_0
	iny
	lda	[DPTR],y
	sta	*(_wcstoull_sloc1_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_wcstoull_sloc1_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_wcstoull_sloc1_1_0 + 3)
;	Raw cost for generated ic 99 : (31, 54.000000) count=0.020970
;	genCmpEQorNE
	lda	*_wcstoull_sloc1_1_0
	cmp	#0x30
	bne	00108$
	lda	*(_wcstoull_sloc1_1_0 + 1)
	bne	00108$
	lda	*(_wcstoull_sloc1_1_0 + 2)
	bne	00108$
	lda	*(_wcstoull_sloc1_1_0 + 3)
	bne	00108$
;	Raw cost for generated ic 100 : (30, 36.400002) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.020970
;	../wcstoull.c: 99: b = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	_wcstoull_b_10000_111
;	Raw cost for generated ic 104 : (5, 6.000000) count=0.015727
;	../wcstoull.c: 100: ptr++;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x04
	sta	_wcstoull_ptr_10000_111
	bcc	00315$
	inc	(_wcstoull_ptr_10000_111 + 1)
00315$:
;	Raw cost for generated ic 106 : (14, 20.600000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.000000
;	../wcstoull.c: 103: b = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_wcstoull_b_10000_111
;	Raw cost for generated ic 110 : (5, 6.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 114 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.249997
;	../wcstoull.c: 106: else if (b == 16 && (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2)))
;	genCmpEQorNE
	lda	_wcstoull_b_10000_111
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 116 : (10, 11.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.187496
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 121 : (10, 12.000000) count=0.187496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 124 : (10, 12.000000) count=0.187496
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 125 : (9, 14.000000) count=0.187496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00318$
	cpx	#0x00
	beq	00122$
00318$:
;	Raw cost for generated ic 126 : (11, 12.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.140622
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 130 : (10, 12.000000) count=0.140622
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 133 : (10, 12.000000) count=0.140622
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 134 : (9, 14.000000) count=0.140622
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	cpx	#0x00
	bne	00123$
;	Raw cost for generated ic 135 : (11, 12.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.152341
;	../wcstoull.c: 107: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x08
	sta	_wcstoull_ptr_10000_111
	bcc	00129$
	inc	(_wcstoull_ptr_10000_111 + 1)
;	Raw cost for generated ic 138 : (14, 20.600000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 140 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.097654
;	../wcstoull.c: 108: else if (b == 2 && (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2)))
;	genCmpEQorNE
	lda	_wcstoull_b_10000_111
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 142 : (10, 11.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.073241
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 147 : (10, 12.000000) count=0.073241
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 150 : (10, 12.000000) count=0.073241
;	Raw cost for generated ic 148 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 151 : (9, 14.000000) count=0.073241
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00324$
	cpx	#0x00
	beq	00118$
00324$:
;	Raw cost for generated ic 152 : (11, 12.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.054931
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 156 : (10, 12.000000) count=0.054931
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 159 : (10, 12.000000) count=0.054931
;	Raw cost for generated ic 157 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	ldx	(_wcstoull_ptr_10000_111 + 1)
	lda	_wcstoull_ptr_10000_111
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 160 : (9, 14.000000) count=0.054931
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00129$
	cpx	#0x00
	bne	00129$
;	Raw cost for generated ic 161 : (11, 12.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.059508
;	../wcstoull.c: 109: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoull_ptr_10000_111
	clc
	adc	#0x08
	sta	_wcstoull_ptr_10000_111
	bcc	00327$
	inc	(_wcstoull_ptr_10000_111 + 1)
00327$:
;	Raw cost for generated ic 164 : (14, 20.600000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 168 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 112: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wcstoull_ptr_10000_111
	stx	*(DPTR+0)
	ldx	(_wcstoull_ptr_10000_111 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	__isdigit_PARM_1
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 1)
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 2)
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 3)
;	Raw cost for generated ic 170 : (35, 58.000000) count=0.989349
;	genAssign
;	genCopy
	lda	_wcstoull_b_10000_111
	sta	__isdigit_PARM_2
;	Raw cost for generated ic 172 : (6, 8.000000) count=0.989349
;	genCall
	jsr	__isdigit
;	assignResultValue
	sta	*_wcstoull_sloc1_1_0
;	Raw cost for generated ic 173 : (5, 9.000000) count=0.989349
;	genCmp
	bit	*_wcstoull_sloc1_1_0
	bpl	00133$
;	Raw cost for generated ic 174 : (7, 8.600000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 114: if (endptr)
;	genIfx
	lda	(_wcstoull_PARM_2 + 1)
	ora	_wcstoull_PARM_2
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 178 : (11, 13.600000) count=0.742012
;	../wcstoull.c: 115: *endptr = (wchar_t*)nptr;
;	genAssign
;	genCopy
	ldx	(_wcstoull_PARM_2 + 1)
	lda	_wcstoull_PARM_2
;	Raw cost for generated ic 181 : (6, 8.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_wcstoull_nptr_10000_110
	ldy	#0x00
	sta	[DPTR],y
	lda	(_wcstoull_nptr_10000_110 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 182 : (17, 30.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 183 : (0, 0.000000) count=0.742012
;	../wcstoull.c: 116: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 184 : (18, 25.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.989349
;	../wcstoull.c: 119: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_wcstoull_ret_10000_111
	sty	(_wcstoull_ret_10000_111 + 1)
	sty	(_wcstoull_ret_10000_111 + 2)
	sty	(_wcstoull_ret_10000_111 + 3)
	sty	(_wcstoull_ret_10000_111 + 4)
	sty	(_wcstoull_ret_10000_111 + 5)
	sty	(_wcstoull_ret_10000_111 + 6)
	sty	(_wcstoull_ret_10000_111 + 7)
;	Raw cost for generated ic 186 : (26, 34.000000) count=0.989349
;	genAssign
;	genCopy
	lda	(_wcstoull_ptr_10000_111 + 1)
	sta	*(_wcstoull_sloc1_1_0 + 1)
	lda	_wcstoull_ptr_10000_111
	sta	*_wcstoull_sloc1_1_0
;	Raw cost for generated ic 249 : (10, 14.000000) count=0.989349
;	genLabel
00144$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=3.958165
;	../wcstoull.c: 121: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoull_sloc1_1_0],y
	sta	__isdigit_PARM_1
	iny
	lda	[*_wcstoull_sloc1_1_0],y
	sta	(__isdigit_PARM_1 + 1)
	iny
	lda	[*_wcstoull_sloc1_1_0],y
	sta	(__isdigit_PARM_1 + 2)
	iny
	lda	[*_wcstoull_sloc1_1_0],y
	sta	(__isdigit_PARM_1 + 3)
;	Raw cost for generated ic 189 : (25, 44.000000) count=3.958165
;	genAssign
;	genCopy
	lda	_wcstoull_b_10000_111
	sta	__isdigit_PARM_2
;	Raw cost for generated ic 191 : (6, 8.000000) count=3.958165
;	genCall
	jsr	__isdigit
;	assignResultValue
	sta	_wcstoull_digit_30000_128
;	Raw cost for generated ic 192 : (6, 10.000000) count=3.958165
;	../wcstoull.c: 123: if (digit < 0)
;	genCmp
	bit	_wcstoull_digit_30000_128
	bpl	00331$
	jmp	00138$
00331$:
;	Raw cost for generated ic 194 : (8, 9.600000) count=3.958165
;	skipping generated iCode
;	Raw cost for generated ic 195 : (0, 0.000000) count=3.958165
;	../wcstoull.c: 130: unsigned long long int oldret = ret;
;	genAssign
;	genCopy
	lda	(_wcstoull_ret_10000_111 + 7)
	sta	(_wcstoull_oldret_30001_130 + 7)
	lda	(_wcstoull_ret_10000_111 + 6)
	sta	(_wcstoull_oldret_30001_130 + 6)
	lda	(_wcstoull_ret_10000_111 + 5)
	sta	(_wcstoull_oldret_30001_130 + 5)
	lda	(_wcstoull_ret_10000_111 + 4)
	sta	(_wcstoull_oldret_30001_130 + 4)
	lda	(_wcstoull_ret_10000_111 + 3)
	sta	(_wcstoull_oldret_30001_130 + 3)
	lda	(_wcstoull_ret_10000_111 + 2)
	sta	(_wcstoull_oldret_30001_130 + 2)
	lda	(_wcstoull_ret_10000_111 + 1)
	sta	(_wcstoull_oldret_30001_130 + 1)
	lda	_wcstoull_ret_10000_111
	sta	_wcstoull_oldret_30001_130
;	Raw cost for generated ic 200 : (48, 64.000000) count=2.968624
;	../wcstoull.c: 131: ret *= b;
;	genCast
;	genCopy
	ldy	#0x00
	sty	(__mullonglong_PARM_2 + 7)
	sty	(__mullonglong_PARM_2 + 6)
	sty	(__mullonglong_PARM_2 + 5)
	sty	(__mullonglong_PARM_2 + 4)
	sty	(__mullonglong_PARM_2 + 3)
	sty	(__mullonglong_PARM_2 + 2)
	sty	(__mullonglong_PARM_2 + 1)
	lda	_wcstoull_b_10000_111
	sta	__mullonglong_PARM_2
;	Raw cost for generated ic 201 : (29, 38.000000) count=2.968624
;	genAssign
;	genCopy
	lda	(_wcstoull_ret_10000_111 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	(_wcstoull_ret_10000_111 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(_wcstoull_ret_10000_111 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(_wcstoull_ret_10000_111 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(_wcstoull_ret_10000_111 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(_wcstoull_ret_10000_111 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(_wcstoull_ret_10000_111 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	_wcstoull_ret_10000_111
	sta	__mullonglong_PARM_1
;	Raw cost for generated ic 258 : (48, 64.000000) count=2.968624
;	genCall
	jsr	__mullonglong
;	assignResultValue
	sta	_wcstoull_ret_10000_111
	stx	(_wcstoull_ret_10000_111 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_wcstoull_ret_10000_111 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_wcstoull_ret_10000_111 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(_wcstoull_ret_10000_111 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(_wcstoull_ret_10000_111 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(_wcstoull_ret_10000_111 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(_wcstoull_ret_10000_111 + 7)
;	Raw cost for generated ic 260 : (39, 56.000000) count=2.968624
;	../wcstoull.c: 132: if (ret < oldret)
;	genCmp
	lda	_wcstoull_ret_10000_111
	sec
	sbc	_wcstoull_oldret_30001_130
	txa
	sbc	(_wcstoull_oldret_30001_130 + 1)
	lda	(_wcstoull_ret_10000_111 + 2)
	sbc	(_wcstoull_oldret_30001_130 + 2)
	lda	(_wcstoull_ret_10000_111 + 3)
	sbc	(_wcstoull_oldret_30001_130 + 3)
	lda	(_wcstoull_ret_10000_111 + 4)
	sbc	(_wcstoull_oldret_30001_130 + 4)
	lda	(_wcstoull_ret_10000_111 + 5)
	sbc	(_wcstoull_oldret_30001_130 + 5)
	lda	(_wcstoull_ret_10000_111 + 6)
	sbc	(_wcstoull_oldret_30001_130 + 6)
	lda	(_wcstoull_ret_10000_111 + 7)
	sbc	(_wcstoull_oldret_30001_130 + 7)
	bcs	00137$
;	Raw cost for generated ic 204 : (52, 69.599998) count=2.968624
;	skipping generated iCode
;	Raw cost for generated ic 205 : (0, 0.000000) count=2.968624
;	../wcstoull.c: 133: range_error = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_wcstoull_range_error_10000_111
;	Raw cost for generated ic 208 : (5, 6.000000) count=2.226612
;	genLabel
00137$:
;	Raw cost for generated ic 209 : (0, 0.000000) count=2.968816
;	../wcstoull.c: 134: ret += (unsigned char)digit;
;	genCast
;	genCopy
	lda	_wcstoull_digit_30000_128
;	Raw cost for generated ic 210 : (3, 4.000000) count=2.968816
;	genCast
	sta	*_wcstoull_sloc2_1_0
	ldy	#0x00
	sty	*(_wcstoull_sloc2_1_0 + 1)
	sty	*(_wcstoull_sloc2_1_0 + 2)
	sty	*(_wcstoull_sloc2_1_0 + 3)
	sty	*(_wcstoull_sloc2_1_0 + 4)
	sty	*(_wcstoull_sloc2_1_0 + 5)
	sty	*(_wcstoull_sloc2_1_0 + 6)
	sty	*(_wcstoull_sloc2_1_0 + 7)
;	Raw cost for generated ic 212 : (18, 26.000000) count=2.968816
;	genPlus
	lda	_wcstoull_ret_10000_111
	clc
	adc	*_wcstoull_sloc2_1_0
	sta	_wcstoull_ret_10000_111
	lda	(_wcstoull_ret_10000_111 + 1)
	adc	*(_wcstoull_sloc2_1_0 + 1)
	sta	(_wcstoull_ret_10000_111 + 1)
	lda	(_wcstoull_ret_10000_111 + 2)
	adc	*(_wcstoull_sloc2_1_0 + 2)
	sta	(_wcstoull_ret_10000_111 + 2)
	lda	(_wcstoull_ret_10000_111 + 3)
	adc	*(_wcstoull_sloc2_1_0 + 3)
	sta	(_wcstoull_ret_10000_111 + 3)
	lda	(_wcstoull_ret_10000_111 + 4)
	adc	*(_wcstoull_sloc2_1_0 + 4)
	sta	(_wcstoull_ret_10000_111 + 4)
	lda	(_wcstoull_ret_10000_111 + 5)
	adc	*(_wcstoull_sloc2_1_0 + 5)
	sta	(_wcstoull_ret_10000_111 + 5)
	lda	(_wcstoull_ret_10000_111 + 6)
	adc	*(_wcstoull_sloc2_1_0 + 6)
	sta	(_wcstoull_ret_10000_111 + 6)
	lda	(_wcstoull_ret_10000_111 + 7)
	adc	*(_wcstoull_sloc2_1_0 + 7)
	sta	(_wcstoull_ret_10000_111 + 7)
;	Raw cost for generated ic 213 : (65, 90.000000) count=2.968816
;	../wcstoull.c: 119: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	*_wcstoull_sloc1_1_0
	clc
	adc	#0x04
	sta	*_wcstoull_sloc1_1_0
	bcc	00333$
	inc	*(_wcstoull_sloc1_1_0 + 1)
00333$:
;	Raw cost for generated ic 217 : (11, 17.600000) count=2.968816
;	genGoto
	jmp	00144$
;	Raw cost for generated ic 219 : (3, 3.000000) count=2.968816
;	genLabel
00138$:
;	Raw cost for generated ic 220 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 139: if (endptr)
;	genIfx
	lda	(_wcstoull_PARM_2 + 1)
	ora	_wcstoull_PARM_2
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 221 : (11, 13.600000) count=0.989605
;	../wcstoull.c: 140: *endptr = (wchar_t*)ptr;
;	genAssign
;	genCopy
	ldx	(_wcstoull_PARM_2 + 1)
	lda	_wcstoull_PARM_2
;	Raw cost for generated ic 224 : (6, 8.000000) count=0.742204
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	*_wcstoull_sloc1_1_0
	ldy	#0x00
	sta	[DPTR],y
	lda	*(_wcstoull_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 225 : (15, 28.000000) count=0.742204
;	genLabel
00140$:
;	Raw cost for generated ic 226 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 142: if (range_error)
;	genIfx
	lda	_wcstoull_range_error_10000_111
;	genIfxJump : z
	beq	00142$
;	Raw cost for generated ic 227 : (8, 9.600000) count=0.989605
;	../wcstoull.c: 144: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 231 : (10, 12.000000) count=0.742204
;	../wcstoull.c: 145: return (ULLONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 232 : (18, 25.000000) count=0.742204
;	genLabel
00142$:
;	Raw cost for generated ic 233 : (0, 0.000000) count=0.989605
;	../wcstoull.c: 148: return (neg ? -ret : ret);
;	genIfx
	lda	_wcstoull_neg_10000_111
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 234 : (8, 9.600000) count=0.989605
;	genUminus
	lda	#0x00
	sec
	sbc	_wcstoull_ret_10000_111
	sta	*_wcstoull_sloc2_1_0
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 1)
	sta	*(_wcstoull_sloc2_1_0 + 1)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 2)
	sta	*(_wcstoull_sloc2_1_0 + 2)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 3)
	sta	*(_wcstoull_sloc2_1_0 + 3)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 4)
	sta	*(_wcstoull_sloc2_1_0 + 4)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 5)
	sta	*(_wcstoull_sloc2_1_0 + 5)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 6)
	sta	*(_wcstoull_sloc2_1_0 + 6)
	lda	#0x00
	sbc	(_wcstoull_ret_10000_111 + 7)
	sta	*(_wcstoull_sloc2_1_0 + 7)
;	Raw cost for generated ic 235 : (57, 74.000000) count=0.742204
;	genGoto
	jmp	00152$
;	Raw cost for generated ic 237 : (3, 3.000000) count=0.742204
;	genLabel
00151$:
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.247540
;	genAssign
;	genCopy
	lda	(_wcstoull_ret_10000_111 + 7)
	sta	*(_wcstoull_sloc2_1_0 + 7)
	lda	(_wcstoull_ret_10000_111 + 6)
	sta	*(_wcstoull_sloc2_1_0 + 6)
	lda	(_wcstoull_ret_10000_111 + 5)
	sta	*(_wcstoull_sloc2_1_0 + 5)
	lda	(_wcstoull_ret_10000_111 + 4)
	sta	*(_wcstoull_sloc2_1_0 + 4)
	lda	(_wcstoull_ret_10000_111 + 3)
	sta	*(_wcstoull_sloc2_1_0 + 3)
	lda	(_wcstoull_ret_10000_111 + 2)
	sta	*(_wcstoull_sloc2_1_0 + 2)
	lda	(_wcstoull_ret_10000_111 + 1)
	sta	*(_wcstoull_sloc2_1_0 + 1)
	lda	_wcstoull_ret_10000_111
	sta	*_wcstoull_sloc2_1_0
;	Raw cost for generated ic 239 : (40, 56.000000) count=0.247540
;	genLabel
00152$:
;	Raw cost for generated ic 240 : (0, 0.000000) count=0.989744
;	genRet
	lda	*(_wcstoull_sloc2_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(_wcstoull_sloc2_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_wcstoull_sloc2_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_wcstoull_sloc2_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_wcstoull_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_wcstoull_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_wcstoull_sloc2_1_0 + 1)
	lda	*_wcstoull_sloc2_1_0
;	Raw cost for generated ic 241 : (28, 42.000000) count=0.989744
;	genLabel
;	Raw cost for generated ic 242 : (0, 0.000000) count=0.989744
;	../wcstoull.c: 149: }
;	genEndFunction
	rts
;	Raw cost for generated ic 243 : (1, 6.000000) count=0.989744
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.byte 48,0,0,0
	.byte 120,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_1:
	.byte 48,0,0,0
	.byte 88,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_2:
	.byte 48,0,0,0
	.byte 98,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_3:
	.byte 48,0,0,0
	.byte 66,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area XINIT
	.area CABS    (ABS)
