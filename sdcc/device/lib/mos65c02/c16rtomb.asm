;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module c16rtomb
	
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
	.globl _wctomb
	.globl _c16rtomb_PARM_3
	.globl _c16rtomb_PARM_2
	.globl _c16rtomb
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_c16rtomb_sloc0_1_0:
	.ds 2
_c16rtomb_sloc1_1_0:
	.ds 2
_c16rtomb_sloc2_1_0:
	.ds 2
_c16rtomb_sloc3_1_0:
	.ds 2
_c16rtomb_sloc4_1_0:
	.ds 2
_c16rtomb_sloc5_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_c16rtomb_PARM_2:
	.ds 2
_c16rtomb_PARM_3:
	.ds 2
_c16rtomb_s_10000_48:
	.ds 2
_c16rtomb_codepoint_10000_49:
	.ds 4
_c16rtomb_buf_10000_49:
	.ds 4
_c16rtomb_sps_10000_49:
	.ds 3
_c16rtomb_high_surrogate_40000_55:
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
;Allocation info for local variables in function 'c16rtomb'
;------------------------------------------------------------
;sloc0         Allocated with name '_c16rtomb_sloc0_1_0'
;sloc1         Allocated with name '_c16rtomb_sloc1_1_0'
;sloc2         Allocated with name '_c16rtomb_sloc2_1_0'
;sloc3         Allocated with name '_c16rtomb_sloc3_1_0'
;sloc4         Allocated with name '_c16rtomb_sloc4_1_0'
;sloc5         Allocated with name '_c16rtomb_sloc5_1_0'
;c16           Allocated with name '_c16rtomb_PARM_2'
;ps            Allocated with name '_c16rtomb_PARM_3'
;s             Allocated with name '_c16rtomb_s_10000_48'
;codepoint     Allocated with name '_c16rtomb_codepoint_10000_49'
;buf           Allocated with name '_c16rtomb_buf_10000_49'
;sps           Allocated with name '_c16rtomb_sps_10000_49'
;high_surrogate Allocated with name '_c16rtomb_high_surrogate_40000_55'
;------------------------------------------------------------
;	../c16rtomb.c: 35: size_t c16rtomb(char *restrict s, char16_t c16, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function c16rtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_c16rtomb:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_c16rtomb_s_10000_48
	stx	(_c16rtomb_s_10000_48 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../c16rtomb.c: 41: if(!s)
;	genIfx
	txa
	ora	_c16rtomb_s_10000_48
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (9, 11.600000) count=1.000000
;	../c16rtomb.c: 42: s = buf;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_c16rtomb_buf_10000_49
	sta	(_c16rtomb_s_10000_48 + 1)
	lda	#_c16rtomb_buf_10000_49
	sta	_c16rtomb_s_10000_48
;	Raw cost for generated ic 7 : (10, 12.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../c16rtomb.c: 44: if(!ps)
;	genIfx
	lda	(_c16rtomb_PARM_3 + 1)
	ora	_c16rtomb_PARM_3
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 10 : (11, 13.600000) count=1.000000
;	../c16rtomb.c: 45: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_c16rtomb_sps_10000_49
	sta	(_c16rtomb_PARM_3 + 1)
	lda	#_c16rtomb_sps_10000_49
	sta	_c16rtomb_PARM_3
;	Raw cost for generated ic 14 : (10, 12.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../c16rtomb.c: 47: if (!c16) // 0 always resets conversion state.
;	genIfx
	lda	(_c16rtomb_PARM_2 + 1)
	ora	_c16rtomb_PARM_2
;	genIfxJump : z
	bne	00119$
;	Raw cost for generated ic 17 : (11, 13.600000) count=1.000000
;	../c16rtomb.c: 49: ps->c[1] = ps->c[2] = 0;
;	genAssign
;	genCopy
	ldx	(_c16rtomb_PARM_3 + 1)
	lda	_c16rtomb_PARM_3
;	Raw cost for generated ic 20 : (6, 8.000000) count=0.750000
;	genAssign
;	genCopy
	sta	*_c16rtomb_sloc0_1_0
	stx	*(_c16rtomb_sloc0_1_0 + 1)
;	Raw cost for generated ic 22 : (4, 6.000000) count=0.750000
;	genAssign
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.750000
;	genPointerSet
	lda	#0x00
	ldy	#0x02
	sta	[_c16rtomb_sloc0_1_0],y
;	Raw cost for generated ic 26 : (6, 10.000000) count=0.750000
;	genPointerSet
	dey
	sta	[*_c16rtomb_sloc0_1_0],y
;	Raw cost for generated ic 27 : (3, 8.000000) count=0.750000
;	../c16rtomb.c: 50: codepoint = 0;
;	genAssign
;	genAssignLit
	sta	_c16rtomb_codepoint_10000_49
	sta	(_c16rtomb_codepoint_10000_49 + 1)
	sta	(_c16rtomb_codepoint_10000_49 + 2)
	sta	(_c16rtomb_codepoint_10000_49 + 3)
;	Raw cost for generated ic 28 : (12, 16.000000) count=0.750000
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 29 : (3, 3.000000) count=0.750000
;	genLabel
00119$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.250000
;	../c16rtomb.c: 52: else if(ps->c[1] || ps->c[2]) // We already have the high surrogate. Now get the low surrogate
;	genAssign
;	genCopy
	ldx	(_c16rtomb_PARM_3 + 1)
	lda	_c16rtomb_PARM_3
;	Raw cost for generated ic 31 : (6, 8.000000) count=0.250000
;	genAssign
;	genCopy
	sta	*_c16rtomb_sloc0_1_0
	stx	*(_c16rtomb_sloc0_1_0 + 1)
;	Raw cost for generated ic 33 : (4, 6.000000) count=0.250000
;	genPointerGet
	ldy	#0x01
	lda	[*_c16rtomb_sloc0_1_0],y
	tay
	lda	*(_c16rtomb_sloc0_1_0+0)
;	Raw cost for generated ic 34 : (8, 13.000000) count=0.250000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00114$
;	Raw cost for generated ic 35 : (7, 7.600000) count=0.250000
;	genAssign
;	genCopy
	sta	*_c16rtomb_sloc1_1_0
	stx	*(_c16rtomb_sloc1_1_0 + 1)
;	Raw cost for generated ic 40 : (4, 6.000000) count=0.187500
;	genPointerGet
	ldy	#0x02
	lda	[*_c16rtomb_sloc1_1_0],y
;	Raw cost for generated ic 41 : (4, 7.000000) count=0.187500
;	genIfx
;	genIfxJump : z
	bne	00181$
	jmp	00115$
00181$:
;	Raw cost for generated ic 42 : (5, 5.600000) count=0.187500
;	genLabel
00114$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.203125
;	../c16rtomb.c: 56: if(c16 < 0xdc00 || c16 > 0xdfff)
;	genCmp
	lda	(_c16rtomb_PARM_2 + 1)
	sec
	sbc	#0xdc
	bcs	00182$
	jmp	00121$
00182$:
;	Raw cost for generated ic 45 : (11, 13.600000) count=0.203125
;	skipping generated iCode
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.203125
;	genCmp
	lda	#0xff
	sec
	sbc	_c16rtomb_PARM_2
	lda	#0xdf
	sbc	(_c16rtomb_PARM_2 + 1)
	bcs	00183$
	jmp	00121$
00183$:
;	Raw cost for generated ic 49 : (16, 19.600000) count=0.152344
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.152344
;	../c16rtomb.c: 59: high_surrogate = ps->c[1] + (ps->c[2] << 8);
;	genAssign
;	genCopy
	ldx	(_c16rtomb_PARM_3 + 1)
	lda	_c16rtomb_PARM_3
;	Raw cost for generated ic 55 : (6, 8.000000) count=0.114258
;	genAssign
;	genCopy
	sta	*_c16rtomb_sloc2_1_0
	stx	*(_c16rtomb_sloc2_1_0 + 1)
;	Raw cost for generated ic 57 : (4, 6.000000) count=0.114258
;	genPointerGet
	ldy	#0x01
	lda	[*_c16rtomb_sloc2_1_0],y
	tay
	lda	*(_c16rtomb_sloc2_1_0+0)
;	Raw cost for generated ic 58 : (8, 13.000000) count=0.114258
;	genCast
;	genCopy
	stz	*(_c16rtomb_sloc3_1_0 + 1)
	sty	*_c16rtomb_sloc3_1_0
;	Raw cost for generated ic 59 : (5, 7.000000) count=0.114258
;	genAssign
;	genCopy
	sta	*_c16rtomb_sloc4_1_0
	stx	*(_c16rtomb_sloc4_1_0 + 1)
;	Raw cost for generated ic 62 : (4, 6.000000) count=0.114258
;	genPointerGet
	ldy	#0x02
	lda	[*_c16rtomb_sloc4_1_0],y
;	Raw cost for generated ic 63 : (4, 7.000000) count=0.114258
;	genCast
;	genCopy
;	Raw cost for generated ic 64 : (2, 2.000000) count=0.114258
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=8
	tax
	lda	#0x00
;	Raw cost for generated ic 65 : (3, 4.000000) count=0.114258
;	genPlus
	clc
	adc	*_c16rtomb_sloc3_1_0
	sta	_c16rtomb_high_surrogate_40000_55
	txa
	adc	*(_c16rtomb_sloc3_1_0 + 1)
	sta	(_c16rtomb_high_surrogate_40000_55 + 1)
;	Raw cost for generated ic 66 : (12, 18.000000) count=0.114258
;	../c16rtomb.c: 60: ps->c[1] = ps->c[2] = 0;
;	genPointerSet
	lda	#0x00
	sta	[*_c16rtomb_sloc4_1_0],y
;	Raw cost for generated ic 74 : (4, 8.000000) count=0.114258
;	genPointerSet
	dey
	sta	[*_c16rtomb_sloc2_1_0],y
;	Raw cost for generated ic 75 : (3, 8.000000) count=0.114258
;	../c16rtomb.c: 61: codepoint = (high_surrogate << 10) - (0xd800 << 10) + c16 - 0xdc00 + 0x10000;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=10
	lda	_c16rtomb_high_surrogate_40000_55
	asl	a
	asl	a
	tax
	lda	#0x00
;	Raw cost for generated ic 76 : (8, 12.000000) count=0.114258
;	genPlus
	clc
	adc	_c16rtomb_PARM_2
	pha
	txa
	adc	(_c16rtomb_PARM_2 + 1)
	tax
	pla
;	Raw cost for generated ic 77 : (11, 21.000000) count=0.114258
;	genCast
;	genCopy
	stz	*(_c16rtomb_sloc5_1_0 + 3)
	stz	*(_c16rtomb_sloc5_1_0 + 2)
	stx	*(_c16rtomb_sloc5_1_0 + 1)
	sta	*_c16rtomb_sloc5_1_0
;	Raw cost for generated ic 78 : (10, 14.000000) count=0.114258
;	genPlus
;	  genPlusInc
	clc
	sta	_c16rtomb_codepoint_10000_49
	txa
	adc	#0x24
	sta	(_c16rtomb_codepoint_10000_49 + 1)
	lda	*(_c16rtomb_sloc5_1_0 + 2)
	adc	#0x00
	sta	(_c16rtomb_codepoint_10000_49 + 2)
	lda	*(_c16rtomb_sloc5_1_0 + 3)
	adc	#0x00
	sta	(_c16rtomb_codepoint_10000_49 + 3)
;	Raw cost for generated ic 79 : (24, 32.000000) count=0.114258
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 81 : (3, 3.000000) count=0.114258
;	genLabel
00115$:
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.046875
;	../c16rtomb.c: 63: else if(c16 < 0xd7ff || c16 >= 0xe000) // Basic multilingual plane.
;	genCmp
	lda	_c16rtomb_PARM_2
	sec
	sbc	#0xff
	lda	(_c16rtomb_PARM_2 + 1)
	sbc	#0xd7
	bcc	00110$
;	Raw cost for generated ic 83 : (16, 19.600000) count=0.046875
;	skipping generated iCode
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.046875
;	genCmp
	lda	(_c16rtomb_PARM_2 + 1)
	sec
	sbc	#0xe0
	bcc	00111$
;	Raw cost for generated ic 87 : (11, 13.600000) count=0.035156
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.035156
;	genLabel
00110$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.038086
;	../c16rtomb.c: 64: codepoint = c16;
;	genCast
;	genCopy
	stz	(_c16rtomb_codepoint_10000_49 + 3)
	stz	(_c16rtomb_codepoint_10000_49 + 2)
	lda	(_c16rtomb_PARM_2 + 1)
	sta	(_c16rtomb_codepoint_10000_49 + 1)
	lda	_c16rtomb_PARM_2
	sta	_c16rtomb_codepoint_10000_49
;	Raw cost for generated ic 91 : (18, 24.000000) count=0.038086
;	genGoto
	jmp	00120$
;	Raw cost for generated ic 93 : (3, 3.000000) count=0.038086
;	genLabel
00111$:
;	Raw cost for generated ic 94 : (0, 0.000000) count=0.000000
;	../c16rtomb.c: 67: if(c16 > 0xdbff)
;	genCmp
	lda	#0xff
	sec
	sbc	_c16rtomb_PARM_2
	lda	#0xdb
	sbc	(_c16rtomb_PARM_2 + 1)
	bcc	00121$
;	Raw cost for generated ic 95 : (16, 19.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.000000
;	../c16rtomb.c: 70: ps->c[1] = c16 & 0xff;
;	genCast
;	genCopy
	lda	_c16rtomb_PARM_2
;	Raw cost for generated ic 126 : (3, 4.000000) count=0.000000
;	genPointerSet
	ldy	#0x01
	sta	[*_c16rtomb_sloc0_1_0],y
;	Raw cost for generated ic 106 : (4, 8.000000) count=0.000000
;	../c16rtomb.c: 71: ps->c[2] = c16 >> 8;
;	genGetByte
	lda	(_c16rtomb_PARM_2 + 1)
;	Raw cost for generated ic 110 : (3, 4.000000) count=0.000000
;	genPointerSet
	iny
	sta	[*_c16rtomb_sloc1_1_0],y
;	Raw cost for generated ic 111 : (3, 8.000000) count=0.000000
;	../c16rtomb.c: 72: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 112 : (6, 7.000000) count=0.000000
;	genLabel
00120$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.902344
;	../c16rtomb.c: 75: return(wctomb(s, codepoint));
;	genAssign
;	genCopy
	lda	(_c16rtomb_codepoint_10000_49 + 3)
	sta	(_wctomb_PARM_2 + 3)
	lda	(_c16rtomb_codepoint_10000_49 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(_c16rtomb_codepoint_10000_49 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	_c16rtomb_codepoint_10000_49
	sta	_wctomb_PARM_2
;	Raw cost for generated ic 117 : (24, 32.000000) count=0.902344
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.902344
;	genCall
;	genSend
	ldx	(_c16rtomb_s_10000_48 + 1)
	lda	_c16rtomb_s_10000_48
;	assignResultValue
;	Raw cost for generated ic 118 : (9, 14.000000) count=0.902344
;	genRet
	jmp	_wctomb
;	Raw cost for generated ic 119 : (3, 3.000000) count=0.902344
;	../c16rtomb.c: 77: eilseq:
;	genLabel
00121$:
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.991211
;	../c16rtomb.c: 78: errno = EILSEQ;
;	genAssign
;	genAssignLit
	ldx	#0x54
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 122 : (8, 10.000000) count=0.991211
;	../c16rtomb.c: 79: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 123 : (3, 4.000000) count=0.991211
;	genLabel
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.991211
;	../c16rtomb.c: 80: }
;	genEndFunction
	rts
;	Raw cost for generated ic 125 : (1, 6.000000) count=0.991211
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
