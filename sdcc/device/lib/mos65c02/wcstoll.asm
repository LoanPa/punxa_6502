;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoll
	
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
	.globl _wcstoull
	.globl _wcstoll_PARM_3
	.globl _wcstoll_PARM_2
	.globl _wcstoll
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstoll_sloc0_1_0:
	.ds 2
_wcstoll_sloc1_1_0:
	.ds 4
_wcstoll_sloc2_1_0:
	.ds 8
_wcstoll_sloc3_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wcstoll_PARM_2:
	.ds 2
_wcstoll_PARM_3:
	.ds 2
_wcstoll_nptr_10000_78:
	.ds 2
_wcstoll_ptr_10000_79:
	.ds 2
_wcstoll_rptr_10000_79:
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
;Allocation info for local variables in function 'wcstoll'
;------------------------------------------------------------
;sloc0         Allocated with name '_wcstoll_sloc0_1_0'
;sloc1         Allocated with name '_wcstoll_sloc1_1_0'
;sloc2         Allocated with name '_wcstoll_sloc2_1_0'
;sloc3         Allocated with name '_wcstoll_sloc3_1_0'
;endptr        Allocated with name '_wcstoll_PARM_2'
;base          Allocated with name '_wcstoll_PARM_3'
;nptr          Allocated with name '_wcstoll_nptr_10000_78'
;__200000008   Allocated to registers 
;__200000005   Allocated to registers 
;ptr           Allocated with name '_wcstoll_ptr_10000_79'
;rptr          Allocated with name '_wcstoll_rptr_10000_79'
;u             Allocated with name '_wcstoll_u_10000_79'
;neg           Allocated to registers x 
;__200000006   Allocated with name '_wcstoll___200000006_20000_93'
;c             Allocated with name '_wcstoll_c_30000_94'
;__300000009   Allocated with name '_wcstoll___300000009_30000_96'
;c             Allocated with name '_wcstoll_c_40000_97'
;------------------------------------------------------------
;	../wcstoll.c: 43: long long int wcstoll(const wchar_t *restrict nptr, wchar_t **restrict endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoll
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_wcstoll:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_wcstoll_nptr_10000_78
	stx	(_wcstoll_nptr_10000_78 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../wcstoll.c: 50: while (iswblank (*ptr))
;	genAssign
;	genCopy
	sta	*_wcstoll_sloc0_1_0
	stx	*(_wcstoll_sloc0_1_0 + 1)
;	Raw cost for generated ic 152 : (4, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*_wcstoll_sloc1_1_0
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 1)
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 2)
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 3)
;	Raw cost for generated ic 6 : (21, 40.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x20
	bne	00241$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00241$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00241$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	beq	00132$
00241$:
;	Raw cost for generated ic 9 : (30, 36.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x09
	bne	00158$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00158$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00158$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	bne	00158$
;	Raw cost for generated ic 11 : (30, 36.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=3.999992
;	genLabel
00132$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=4.333324
;	../wcstoll.c: 51: ptr++;
;	genPlus
;	  genPlusInc
	lda	*_wcstoll_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcstoll_sloc0_1_0
	bcc	00101$
	inc	*(_wcstoll_sloc0_1_0 + 1)
;	Raw cost for generated ic 27 : (11, 17.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 29 : (3, 3.000000) count=4.333324
;	genLabel
00158$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_wcstoll_sloc0_1_0 + 1)
	sta	(_wcstoll_ptr_10000_79 + 1)
	lda	*_wcstoll_sloc0_1_0
	sta	_wcstoll_ptr_10000_79
;	Raw cost for generated ic 154 : (10, 14.000000) count=0.999997
;	../wcstoll.c: 55: if (*ptr == L'-')
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*_wcstoll_sloc1_1_0
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 1)
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 2)
	iny
	lda	[*_wcstoll_sloc0_1_0],y
	sta	*(_wcstoll_sloc1_1_0 + 3)
;	Raw cost for generated ic 36 : (21, 40.000000) count=0.999997
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x2d
	bne	00105$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00105$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00105$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	bne	00105$
;	Raw cost for generated ic 37 : (30, 36.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	../wcstoll.c: 57: neg = true;
;	genAssign
;	genCopy
	ldx	#0x01
;	Raw cost for generated ic 41 : (2, 2.000000) count=0.749996
;	../wcstoll.c: 58: ptr++;
;	genPlus
;	  genPlusInc
	lda	*_wcstoll_sloc0_1_0
	clc
	adc	#0x04
	sta	_wcstoll_ptr_10000_79
	lda	*(_wcstoll_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_wcstoll_ptr_10000_79 + 1)
;	Raw cost for generated ic 43 : (15, 20.000000) count=0.749996
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 45 : (3, 3.000000) count=0.749996
;	genLabel
00105$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.249999
;	../wcstoll.c: 61: neg = false;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 47 : (2, 2.000000) count=0.249999
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 64: if (neg && (iswblank (*ptr) || *ptr == L'-' || *ptr == L'+'))
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00256$
	jmp	00110$
00256$:
;	Raw cost for generated ic 49 : (7, 7.600000) count=0.999995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_wcstoll_ptr_10000_79
	sta	*(DPTR+0)
	lda	(_wcstoll_ptr_10000_79 + 1)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_wcstoll_sloc1_1_0
	iny
	lda	[DPTR],y
	sta	*(_wcstoll_sloc1_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_wcstoll_sloc1_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_wcstoll_sloc1_1_0 + 3)
;	Raw cost for generated ic 53 : (31, 54.000000) count=0.749996
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x20
	bne	00258$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00258$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00258$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	beq	00109$
00258$:
;	Raw cost for generated ic 56 : (30, 36.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x09
	bne	00262$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00262$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00262$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	beq	00109$
00262$:
;	Raw cost for generated ic 58 : (30, 36.400002) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.562497
;	../wcstoll.c: 64: if (neg && (iswblank (*ptr) || *ptr == L'-' || *ptr == L'+'))
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x2d
	bne	00266$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00266$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00266$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	beq	00109$
00266$:
;	Raw cost for generated ic 75 : (30, 36.400002) count=0.421873
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.421873
;	genCmpEQorNE
	lda	*_wcstoll_sloc1_1_0
	cmp	#0x2b
	bne	00110$
	lda	*(_wcstoll_sloc1_1_0 + 1)
	bne	00110$
	lda	*(_wcstoll_sloc1_1_0 + 2)
	bne	00110$
	lda	*(_wcstoll_sloc1_1_0 + 3)
	bne	00110$
;	Raw cost for generated ic 81 : (30, 36.400002) count=0.316405
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.316405
;	genLabel
00109$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.670895
;	../wcstoll.c: 66: if (endptr)
;	genIfx
	lda	(_wcstoll_PARM_2 + 1)
	ora	_wcstoll_PARM_2
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 85 : (11, 13.600000) count=0.670895
;	../wcstoll.c: 67: *endptr = nptr;
;	genAssign
;	genCopy
	ldx	(_wcstoll_PARM_2 + 1)
	lda	_wcstoll_PARM_2
;	Raw cost for generated ic 88 : (6, 8.000000) count=0.503171
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_wcstoll_nptr_10000_78
	ldy	#0x00
	sta	[DPTR],y
	lda	(_wcstoll_nptr_10000_78 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 89 : (17, 30.000000) count=0.503171
;	genLabel
00108$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.670895
;	../wcstoll.c: 68: return (0);
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
;	Raw cost for generated ic 91 : (18, 25.000000) count=0.670895
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 71: u = wcstoull(ptr, &rptr, base);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 93 : (0, 0.000000) count=0.999995
;	genCast
;	genCopy
	lda	#>_wcstoll_rptr_10000_79
	sta	(_wcstoull_PARM_2 + 1)
	lda	#_wcstoll_rptr_10000_79
	sta	_wcstoull_PARM_2
;	Raw cost for generated ic 94 : (10, 12.000000) count=0.999995
;	genAssign
;	genCopy
	lda	(_wcstoll_PARM_3 + 1)
	sta	(_wcstoull_PARM_3 + 1)
	lda	_wcstoll_PARM_3
	sta	_wcstoull_PARM_3
;	Raw cost for generated ic 97 : (12, 16.000000) count=0.999995
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.999995
;	genCall
	phx
;	genSend
	ldx	(_wcstoll_ptr_10000_79 + 1)
	lda	_wcstoll_ptr_10000_79
	jsr	_wcstoull
;	assignResultValue
	sta	*_wcstoll_sloc2_1_0
	stx	*(_wcstoll_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_wcstoll_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_wcstoll_sloc2_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_wcstoll_sloc2_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_wcstoll_sloc2_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_wcstoll_sloc2_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_wcstoll_sloc2_1_0 + 7)
	plx
;	Raw cost for generated ic 98 : (39, 63.000000) count=0.999995
;	../wcstoll.c: 74: if (rptr == ptr)
;	genCmpEQorNE
	lda	_wcstoll_rptr_10000_79
	cmp	_wcstoll_ptr_10000_79
	bne	00117$
	lda	(_wcstoll_rptr_10000_79 + 1)
	cmp	(_wcstoll_ptr_10000_79 + 1)
	bne	00117$
;	Raw cost for generated ic 100 : (22, 27.200001) count=0.999995
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 76: if (endptr)
;	genIfx
	lda	(_wcstoll_PARM_2 + 1)
	ora	_wcstoll_PARM_2
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 104 : (11, 13.600000) count=0.749996
;	../wcstoll.c: 77: *endptr = nptr;
;	genAssign
;	genCopy
	ldx	(_wcstoll_PARM_2 + 1)
	lda	_wcstoll_PARM_2
;	Raw cost for generated ic 107 : (6, 8.000000) count=0.562497
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_wcstoll_nptr_10000_78
	ldy	#0x00
	sta	[DPTR],y
	lda	(_wcstoll_nptr_10000_78 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 108 : (17, 30.000000) count=0.562497
;	genLabel
00115$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.749996
;	../wcstoll.c: 78: return (0);
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
;	Raw cost for generated ic 110 : (18, 25.000000) count=0.749996
;	genLabel
00117$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 81: if (endptr)
;	genIfx
	lda	(_wcstoll_PARM_2 + 1)
	ora	_wcstoll_PARM_2
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 112 : (11, 13.600000) count=0.999995
;	../wcstoll.c: 82: *endptr = rptr;
;	genAssign
;	genCopy
	lda	(_wcstoll_PARM_2 + 1)
	sta	*(_wcstoll_sloc1_1_0 + 1)
	lda	_wcstoll_PARM_2
	sta	*_wcstoll_sloc1_1_0
;	Raw cost for generated ic 115 : (10, 14.000000) count=0.749996
;	genPointerSet
	lda	_wcstoll_rptr_10000_79
	ldy	#0x00
	sta	[*_wcstoll_sloc1_1_0],y
	lda	(_wcstoll_rptr_10000_79 + 1)
	iny
	sta	[*_wcstoll_sloc1_1_0],y
;	Raw cost for generated ic 116 : (13, 24.000000) count=0.749996
;	genLabel
00119$:
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 85: if (!neg && u > LLONG_MAX)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00124$
;	Raw cost for generated ic 118 : (7, 7.600000) count=0.999995
;	genCmp
	lda	#0xff
	sec
	sbc	*_wcstoll_sloc2_1_0
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 1)
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 2)
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 3)
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 4)
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 5)
	lda	#0xff
	sbc	*(_wcstoll_sloc2_1_0 + 6)
	lda	#0x7f
	sbc	*(_wcstoll_sloc2_1_0 + 7)
	bcs	00124$
;	Raw cost for generated ic 121 : (38, 47.599998) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.749996
;	../wcstoll.c: 87: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 126 : (8, 10.000000) count=0.562497
;	../wcstoll.c: 88: return (LLONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	ldy	#0x7f
	sty	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 127 : (20, 27.000000) count=0.562497
;	genLabel
00124$:
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 90: else if (neg && u > -LLONG_MIN)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 130 : (7, 7.600000) count=0.999995
;	genIfx
	lda	*(_wcstoll_sloc2_1_0 + 7)
	ora	*(_wcstoll_sloc2_1_0 + 6)
	ora	*(_wcstoll_sloc2_1_0 + 5)
	ora	*(_wcstoll_sloc2_1_0 + 4)
	ora	*(_wcstoll_sloc2_1_0 + 3)
	ora	*(_wcstoll_sloc2_1_0 + 2)
	ora	*(_wcstoll_sloc2_1_0 + 1)
	ora	*_wcstoll_sloc2_1_0
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 133 : (21, 29.600000) count=0.749996
;	../wcstoll.c: 92: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 137 : (8, 10.000000) count=0.562497
;	../wcstoll.c: 93: return (LLONG_MIN);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	ldy	#0x80
	sty	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 138 : (20, 27.000000) count=0.562497
;	genLabel
00125$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 96: return (neg ? -u : u);
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 141 : (7, 7.600000) count=0.999995
;	genUminus
	lda	#0x00
	sec
	sbc	*_wcstoll_sloc2_1_0
	sta	*_wcstoll_sloc3_1_0
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 1)
	sta	*(_wcstoll_sloc3_1_0 + 1)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 2)
	sta	*(_wcstoll_sloc3_1_0 + 2)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 3)
	sta	*(_wcstoll_sloc3_1_0 + 3)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 4)
	sta	*(_wcstoll_sloc3_1_0 + 4)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 5)
	sta	*(_wcstoll_sloc3_1_0 + 5)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 6)
	sta	*(_wcstoll_sloc3_1_0 + 6)
	lda	#0x00
	sbc	*(_wcstoll_sloc2_1_0 + 7)
	sta	*(_wcstoll_sloc3_1_0 + 7)
;	Raw cost for generated ic 142 : (49, 66.000000) count=0.749996
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 144 : (3, 3.000000) count=0.749996
;	genLabel
00137$:
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.249999
;	genAssign
;	genCopy
	lda	*(_wcstoll_sloc2_1_0 + 7)
	sta	*(_wcstoll_sloc3_1_0 + 7)
	lda	*(_wcstoll_sloc2_1_0 + 6)
	sta	*(_wcstoll_sloc3_1_0 + 6)
	lda	*(_wcstoll_sloc2_1_0 + 5)
	sta	*(_wcstoll_sloc3_1_0 + 5)
	lda	*(_wcstoll_sloc2_1_0 + 4)
	sta	*(_wcstoll_sloc3_1_0 + 4)
	lda	*(_wcstoll_sloc2_1_0 + 3)
	sta	*(_wcstoll_sloc3_1_0 + 3)
	lda	*(_wcstoll_sloc2_1_0 + 2)
	sta	*(_wcstoll_sloc3_1_0 + 2)
	lda	*(_wcstoll_sloc2_1_0 + 1)
	sta	*(_wcstoll_sloc3_1_0 + 1)
	lda	*_wcstoll_sloc2_1_0
	sta	*_wcstoll_sloc3_1_0
;	Raw cost for generated ic 146 : (32, 48.000000) count=0.249999
;	genLabel
00138$:
;	Raw cost for generated ic 147 : (0, 0.000000) count=0.999995
;	genRet
	lda	*(_wcstoll_sloc3_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(_wcstoll_sloc3_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_wcstoll_sloc3_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_wcstoll_sloc3_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_wcstoll_sloc3_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_wcstoll_sloc3_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_wcstoll_sloc3_1_0 + 1)
	lda	*_wcstoll_sloc3_1_0
;	Raw cost for generated ic 148 : (28, 42.000000) count=0.999995
;	genLabel
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.999995
;	../wcstoll.c: 97: }
;	genEndFunction
	rts
;	Raw cost for generated ic 150 : (1, 6.000000) count=0.999995
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
