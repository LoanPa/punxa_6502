;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module c16stombs
	
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
	.globl ___memcpy
	.globl _wctomb
	.globl ___c16stombs_PARM_3
	.globl ___c16stombs_PARM_2
	.globl ___c16stombs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___c16stombs_sloc0_1_0:
	.ds 2
___c16stombs_sloc1_1_0:
	.ds 2
___c16stombs_sloc2_1_0:
	.ds 2
___c16stombs_sloc3_1_0:
	.ds 4
___c16stombs_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___c16stombs_PARM_2:
	.ds 2
___c16stombs_PARM_3:
	.ds 2
___c16stombs_s_10000_90:
	.ds 2
___c16stombs_m_10000_91:
	.ds 2
___c16stombs_b_10000_91:
	.ds 4
___c16stombs_l_30000_93:
	.ds 2
___c16stombs_codepoint_30000_93:
	.ds 4
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
;Allocation info for local variables in function '__c16stombs'
;------------------------------------------------------------
;sloc0         Allocated with name '___c16stombs_sloc0_1_0'
;sloc1         Allocated with name '___c16stombs_sloc1_1_0'
;sloc2         Allocated with name '___c16stombs_sloc2_1_0'
;sloc3         Allocated with name '___c16stombs_sloc3_1_0'
;sloc4         Allocated with name '___c16stombs_sloc4_1_0'
;c16s          Allocated with name '___c16stombs_PARM_2'
;n             Allocated with name '___c16stombs_PARM_3'
;s             Allocated with name '___c16stombs_s_10000_90'
;m             Allocated with name '___c16stombs_m_10000_91'
;b             Allocated with name '___c16stombs_b_10000_91'
;l             Allocated with name '___c16stombs_l_30000_93'
;codepoint     Allocated with name '___c16stombs_codepoint_30000_93'
;------------------------------------------------------------
;	../c16stombs.c: 44: size_t __c16stombs(char *restrict s, const char16_t *restrict c16s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __c16stombs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___c16stombs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___c16stombs_s_10000_90
	stx	(___c16stombs_s_10000_90 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../c16stombs.c: 46: size_t m = 0;
;	genAssign
;	genAssignLit
	stz	___c16stombs_m_10000_91
	stz	(___c16stombs_m_10000_91 + 1)
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	../c16stombs.c: 87: return(m);
;	genLabel
00119$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230759
;	../c16stombs.c: 54: if(c16s[0] < 0xd800 || c16s[0] >= 0xe000) // Basic multilingual plane
;	genAssign
;	genCopy
	lda	(___c16stombs_PARM_2 + 1)
	sta	*(___c16stombs_sloc0_1_0 + 1)
	lda	___c16stombs_PARM_2
	sta	*___c16stombs_sloc0_1_0
;	Raw cost for generated ic 5 : (10, 14.000000) count=1.230759
;	genPointerGet
	ldy	#0x00
	lda	[*___c16stombs_sloc0_1_0],y
	sta	*___c16stombs_sloc1_1_0
	iny
	lda	[*___c16stombs_sloc0_1_0],y
	sta	*(___c16stombs_sloc1_1_0 + 1)
;	Raw cost for generated ic 6 : (11, 20.000000) count=1.230759
;	genCmp
	sec
	sbc	#0xd8
	bcc	00106$
;	Raw cost for generated ic 7 : (8, 9.600000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.230759
;	genCmp
	lda	*(___c16stombs_sloc1_1_0 + 1)
	sec
	sbc	#0xe0
	bcc	00107$
;	Raw cost for generated ic 13 : (10, 12.600000) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.923069
;	genLabel
00106$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.999992
;	../c16stombs.c: 56: codepoint = c16s[0];
;	genAssign
;	genCopy
	lda	(___c16stombs_PARM_2 + 1)
	sta	*(___c16stombs_sloc2_1_0 + 1)
	lda	___c16stombs_PARM_2
	sta	*___c16stombs_sloc2_1_0
;	Raw cost for generated ic 17 : (10, 14.000000) count=0.999992
;	genPointerGet
	ldy	#0x01
	lda	[*___c16stombs_sloc2_1_0],y
	tax
	dey
	lda	[*___c16stombs_sloc2_1_0],y
;	Raw cost for generated ic 18 : (8, 16.000000) count=0.999992
;	genCast
;	genCopy
	sty	(___c16stombs_codepoint_30000_93 + 3)
	sty	(___c16stombs_codepoint_30000_93 + 2)
	stx	(___c16stombs_codepoint_30000_93 + 1)
	sta	___c16stombs_codepoint_30000_93
;	Raw cost for generated ic 19 : (12, 16.000000) count=0.999992
;	../c16stombs.c: 57: c16s++;
;	genPlus
;	  genPlusInc
	lda	*___c16stombs_sloc2_1_0
	clc
	adc	#0x02
	sta	___c16stombs_PARM_2
	lda	*(___c16stombs_sloc2_1_0 + 1)
	adc	#0x00
	sta	(___c16stombs_PARM_2 + 1)
;	Raw cost for generated ic 22 : (15, 20.000000) count=0.999992
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 24 : (3, 3.000000) count=0.999992
;	genLabel
00107$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.230759
;	../c16stombs.c: 59: else if(c16s[0] > 0xdbff || c16s[1] < 0xdc00 || c16s[1] > 0xdfff) // Unpaired surrogate
;	genCmp
	lda	#0xff
	sec
	sbc	*___c16stombs_sloc1_1_0
	lda	#0xdb
	sbc	*(___c16stombs_sloc1_1_0 + 1)
	bcc	00101$
;	Raw cost for generated ic 28 : (14, 17.600000) count=0.230759
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.230759
;	genAssign
;	genCopy
	ldx	*(___c16stombs_sloc0_1_0 + 1)
	lda	*___c16stombs_sloc0_1_0
;	Raw cost for generated ic 32 : (4, 6.000000) count=0.173069
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	sta	*___c16stombs_sloc2_1_0
	iny
	lda	[DPTR],y
	sta	*(___c16stombs_sloc2_1_0 + 1)
;	Raw cost for generated ic 33 : (15, 26.000000) count=0.173069
;	genCmp
	sec
	sbc	#0xdc
	bcc	00101$
;	Raw cost for generated ic 34 : (8, 9.600000) count=0.173069
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.173069
;	genCmp
	lda	#0xff
	sec
	sbc	*___c16stombs_sloc2_1_0
	lda	#0xdf
	sbc	*(___c16stombs_sloc2_1_0 + 1)
	bcs	00102$
;	Raw cost for generated ic 40 : (14, 17.600000) count=0.129802
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.129802
;	genLabel
00101$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.198309
;	../c16stombs.c: 60: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 44 : (6, 7.000000) count=0.198309
;	genLabel
00102$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.230759
;	../c16stombs.c: 63: codepoint = ((unsigned long)(c16s[0]) << 10) -(0xd800ul << 10) + (unsigned long)(c16s[1]) - 0xdc00ul + 0x10000ul;
;	genCast
;	genCopy
	stz	*(___c16stombs_sloc3_1_0 + 3)
	stz	*(___c16stombs_sloc3_1_0 + 2)
	lda	*(___c16stombs_sloc1_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	lda	*___c16stombs_sloc1_1_0
;	Raw cost for generated ic 49 : (14, 20.000000) count=0.230759
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=10
	sta	*___c16stombs_sloc3_1_0
	ora	#0x00
	asl	a
	ldx	*(___c16stombs_sloc3_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
	txa
	rol	a
	ldx	*(___c16stombs_sloc3_1_0 + 2)
	sta	*(___c16stombs_sloc3_1_0 + 2)
	txa
	rol	a
	stz	*___c16stombs_sloc3_1_0
	asl	*(___c16stombs_sloc3_1_0 + 1)
	rol	*(___c16stombs_sloc3_1_0 + 2)
	rol	a
	sta	*(___c16stombs_sloc3_1_0 + 3)
;	Raw cost for generated ic 50 : (25, 44.000000) count=0.230759
;	genCast
;	genCopy
	stz	*(___c16stombs_sloc4_1_0 + 3)
	stz	*(___c16stombs_sloc4_1_0 + 2)
	lda	*(___c16stombs_sloc2_1_0 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	lda	*___c16stombs_sloc2_1_0
	sta	*___c16stombs_sloc4_1_0
;	Raw cost for generated ic 53 : (14, 20.000000) count=0.230759
;	genPlus
	lda	*___c16stombs_sloc3_1_0
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	*___c16stombs_sloc4_1_0
	lda	*(___c16stombs_sloc3_1_0 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	lda	*(___c16stombs_sloc3_1_0 + 2)
	adc	*(___c16stombs_sloc4_1_0 + 2)
	sta	*(___c16stombs_sloc4_1_0 + 2)
	lda	*(___c16stombs_sloc3_1_0 + 3)
	adc	*(___c16stombs_sloc4_1_0 + 3)
	sta	*(___c16stombs_sloc4_1_0 + 3)
;	Raw cost for generated ic 54 : (25, 38.000000) count=0.230759
;	genPlus
;	  genPlusInc
	lda	*___c16stombs_sloc4_1_0
	clc
	sta	___c16stombs_codepoint_30000_93
	lda	*(___c16stombs_sloc4_1_0 + 1)
	adc	#0x24
	sta	(___c16stombs_codepoint_30000_93 + 1)
	lda	*(___c16stombs_sloc4_1_0 + 2)
	adc	#0xa0
	sta	(___c16stombs_codepoint_30000_93 + 2)
	lda	*(___c16stombs_sloc4_1_0 + 3)
	adc	#0xfc
	sta	(___c16stombs_codepoint_30000_93 + 3)
;	Raw cost for generated ic 55 : (27, 36.000000) count=0.230759
;	../c16stombs.c: 64: c16s += 2;
;	genPlus
;	  genPlusInc
	lda	*___c16stombs_sloc0_1_0
	clc
	adc	#0x04
	sta	___c16stombs_PARM_2
	lda	*(___c16stombs_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___c16stombs_PARM_2 + 1)
;	Raw cost for generated ic 57 : (15, 20.000000) count=0.230759
;	genLabel
00108$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.230751
;	../c16stombs.c: 67: if(!codepoint)
;	genIfx
	lda	(___c16stombs_codepoint_30000_93 + 3)
	ora	(___c16stombs_codepoint_30000_93 + 2)
	ora	(___c16stombs_codepoint_30000_93 + 1)
	ora	___c16stombs_codepoint_30000_93
;	genIfxJump : z
	bne	00113$
;	Raw cost for generated ic 61 : (17, 21.600000) count=1.230751
;	../c16stombs.c: 69: if(m < n)
;	genCmp
	lda	___c16stombs_m_10000_91
	sec
	sbc	___c16stombs_PARM_3
	lda	(___c16stombs_m_10000_91 + 1)
	sbc	(___c16stombs_PARM_3 + 1)
	bcc	00178$
	jmp	00118$
00178$:
;	Raw cost for generated ic 64 : (18, 23.600000) count=0.923063
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.923063
;	../c16stombs.c: 70: *s = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___c16stombs_s_10000_90
	stx	*(DPTR+0)
	ldx	(___c16stombs_s_10000_90 + 1)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 69 : (15, 24.000000) count=0.692297
;	../c16stombs.c: 71: break;
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 71 : (3, 3.000000) count=0.692297
;	genLabel
00113$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 74: l = wctomb(b, codepoint);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 73 : (0, 0.000000) count=0.307679
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.307679
;	genAssign
;	genCopy
	lda	(___c16stombs_codepoint_30000_93 + 3)
	sta	(_wctomb_PARM_2 + 3)
	lda	(___c16stombs_codepoint_30000_93 + 2)
	sta	(_wctomb_PARM_2 + 2)
	lda	(___c16stombs_codepoint_30000_93 + 1)
	sta	(_wctomb_PARM_2 + 1)
	lda	___c16stombs_codepoint_30000_93
	sta	_wctomb_PARM_2
;	Raw cost for generated ic 76 : (24, 32.000000) count=0.307679
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.307679
;	genCall
;	genSend
	ldx	#>___c16stombs_b_10000_91
	lda	#___c16stombs_b_10000_91
	jsr	_wctomb
;	assignResultValue
	sta	___c16stombs_l_30000_93
	stx	(___c16stombs_l_30000_93 + 1)
;	Raw cost for generated ic 77 : (13, 18.000000) count=0.307679
;	../c16stombs.c: 76: if(l < 0)
;	genCmp
	bit	(___c16stombs_l_30000_93 + 1)
	bpl	00115$
;	Raw cost for generated ic 79 : (8, 9.600000) count=0.307679
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 77: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 83 : (6, 7.000000) count=0.230759
;	genLabel
00115$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 79: if(m + l > n)
;	genCast
;	genCopy
	lda	(___c16stombs_l_30000_93 + 1)
	sta	*(___c16stombs_sloc4_1_0 + 1)
	lda	___c16stombs_l_30000_93
	sta	*___c16stombs_sloc4_1_0
;	Raw cost for generated ic 85 : (10, 14.000000) count=0.307679
;	genPlus
	lda	___c16stombs_m_10000_91
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	*___c16stombs_sloc3_1_0
	lda	(___c16stombs_m_10000_91 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	*(___c16stombs_sloc3_1_0 + 1)
;	Raw cost for generated ic 86 : (15, 22.000000) count=0.307679
;	genCmp
	lda	___c16stombs_PARM_3
	sec
	sbc	*___c16stombs_sloc3_1_0
	lda	(___c16stombs_PARM_3 + 1)
	sbc	*(___c16stombs_sloc3_1_0 + 1)
	bcc	00118$
;	Raw cost for generated ic 87 : (16, 21.600000) count=0.307679
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.307679
;	../c16stombs.c: 82: memcpy(s, b, l);
;	genCast
;	genCopy
	ldx	(___c16stombs_s_10000_90 + 1)
	lda	___c16stombs_s_10000_90
;	Raw cost for generated ic 93 : (6, 8.000000) count=0.230759
;	genCast
;	genCopy
	ldy	#>___c16stombs_b_10000_91
	sty	(___memcpy_PARM_2 + 1)
	ldy	#___c16stombs_b_10000_91
	sty	___memcpy_PARM_2
;	Raw cost for generated ic 95 : (10, 12.000000) count=0.230759
;	genAssign
;	genCopy
	ldy	(___c16stombs_l_30000_93 + 1)
	sty	(___memcpy_PARM_3 + 1)
	ldy	___c16stombs_l_30000_93
	sty	___memcpy_PARM_3
;	Raw cost for generated ic 98 : (12, 16.000000) count=0.230759
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.230759
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 99 : (3, 6.000000) count=0.230759
;	../c16stombs.c: 83: s += l;
;	genPlus
	lda	___c16stombs_s_10000_90
	clc
	adc	___c16stombs_l_30000_93
	sta	___c16stombs_s_10000_90
	lda	(___c16stombs_s_10000_90 + 1)
	adc	(___c16stombs_l_30000_93 + 1)
	sta	(___c16stombs_s_10000_90 + 1)
;	Raw cost for generated ic 100 : (19, 26.000000) count=0.230759
;	../c16stombs.c: 84: m += l;
;	genPlus
	lda	___c16stombs_m_10000_91
	clc
	adc	*___c16stombs_sloc4_1_0
	sta	___c16stombs_m_10000_91
	lda	(___c16stombs_m_10000_91 + 1)
	adc	*(___c16stombs_sloc4_1_0 + 1)
	sta	(___c16stombs_m_10000_91 + 1)
;	Raw cost for generated ic 103 : (17, 24.000000) count=0.230759
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 106 : (3, 3.000000) count=0.230759
;	genLabel
00118$:
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999983
;	../c16stombs.c: 87: return(m);
;	genRet
	ldx	(___c16stombs_m_10000_91 + 1)
	lda	___c16stombs_m_10000_91
;	Raw cost for generated ic 108 : (6, 8.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.999983
;	../c16stombs.c: 88: }
;	genEndFunction
	rts
;	Raw cost for generated ic 110 : (1, 6.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
