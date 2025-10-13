;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbstoc16s
	
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
	.globl _mbtowc
	.globl ___mbstoc16s_PARM_3
	.globl ___mbstoc16s_PARM_2
	.globl ___mbstoc16s
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___mbstoc16s_sloc0_1_0:
	.ds 2
___mbstoc16s_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___mbstoc16s_PARM_2:
	.ds 2
___mbstoc16s_PARM_3:
	.ds 2
___mbstoc16s_c16s_10000_64:
	.ds 2
___mbstoc16s_m_10000_65:
	.ds 2
___mbstoc16s_l_30000_67:
	.ds 2
___mbstoc16s_codepoint_30000_67:
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
;Allocation info for local variables in function '__mbstoc16s'
;------------------------------------------------------------
;sloc0         Allocated with name '___mbstoc16s_sloc0_1_0'
;sloc1         Allocated with name '___mbstoc16s_sloc1_1_0'
;s             Allocated with name '___mbstoc16s_PARM_2'
;n             Allocated with name '___mbstoc16s_PARM_3'
;c16s          Allocated with name '___mbstoc16s_c16s_10000_64'
;m             Allocated with name '___mbstoc16s_m_10000_65'
;l             Allocated with name '___mbstoc16s_l_30000_67'
;codepoint     Allocated with name '___mbstoc16s_codepoint_30000_67'
;------------------------------------------------------------
;	../mbstoc16s.c: 44: size_t __mbstoc16s(char16_t *restrict c16s, const char *restrict s, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __mbstoc16s
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___mbstoc16s:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*___mbstoc16s_sloc0_1_0
	stx	*(___mbstoc16s_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../mbstoc16s.c: 46: size_t m = 0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___mbstoc16s_m_10000_65
	sty	(___mbstoc16s_m_10000_65 + 1)
;	Raw cost for generated ic 3 : (8, 10.000000) count=1.000000
;	../mbstoc16s.c: 85: return(m);
;	genLabel
00116$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 53: l = mbtowc(&codepoint, s, MB_LEN_MAX);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.230679
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230679
;	genAssign
;	genCopy
	lda	(___mbstoc16s_PARM_2 + 1)
	sta	(_mbtowc_PARM_2 + 1)
	lda	___mbstoc16s_PARM_2
	sta	_mbtowc_PARM_2
;	Raw cost for generated ic 8 : (12, 16.000000) count=1.230679
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	_mbtowc_PARM_3
	ldy	#0x00
	sty	(_mbtowc_PARM_3 + 1)
;	Raw cost for generated ic 9 : (10, 12.000000) count=1.230679
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.230679
;	genCall
;	genSend
	ldx	#>___mbstoc16s_codepoint_30000_67
	lda	#___mbstoc16s_codepoint_30000_67
	jsr	_mbtowc
;	assignResultValue
	sta	___mbstoc16s_l_30000_67
	stx	(___mbstoc16s_l_30000_67 + 1)
;	Raw cost for generated ic 10 : (13, 18.000000) count=1.230679
;	../mbstoc16s.c: 55: if(l < 0)
;	genCmp
	bit	(___mbstoc16s_l_30000_67 + 1)
	bpl	00106$
;	Raw cost for generated ic 12 : (8, 9.600000) count=1.230679
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 56: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 16 : (6, 7.000000) count=0.923009
;	genLabel
00106$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.230679
;	../mbstoc16s.c: 57: else if(!l)
;	genIfx
	lda	(___mbstoc16s_l_30000_67 + 1)
	ora	___mbstoc16s_l_30000_67
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 19 : (11, 13.600000) count=1.230679
;	../mbstoc16s.c: 59: if(m < n)
;	genCmp
	lda	___mbstoc16s_m_10000_65
	sec
	sbc	___mbstoc16s_PARM_3
	lda	(___mbstoc16s_m_10000_65 + 1)
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00172$
	jmp	00115$
00172$:
;	Raw cost for generated ic 22 : (18, 23.600000) count=0.923009
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.923009
;	../mbstoc16s.c: 60: *c16s = 0;
;	genPointerSet
	lda	#0x00
	tay
	sta	[*___mbstoc16s_sloc0_1_0],y
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
;	Raw cost for generated ic 27 : (8, 18.000000) count=0.692257
;	../mbstoc16s.c: 61: break;
;	genGoto
	jmp	00115$
;	Raw cost for generated ic 29 : (3, 3.000000) count=0.692257
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.307634
;	../mbstoc16s.c: 64: if (codepoint <= 0xffff) // Basic multilingual plane
;	genCmp
	lda	#0xff
	sec
	sbc	___mbstoc16s_codepoint_30000_67
	lda	#0xff
	sbc	(___mbstoc16s_codepoint_30000_67 + 1)
	lda	#0x00
	sbc	(___mbstoc16s_codepoint_30000_67 + 2)
	lda	#0x00
	sbc	(___mbstoc16s_codepoint_30000_67 + 3)
	bcc	00113$
;	Raw cost for generated ic 32 : (26, 31.600000) count=0.307634
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.307634
;	../mbstoc16s.c: 66: if (m >= n)
;	genCmp
	lda	___mbstoc16s_m_10000_65
	sec
	sbc	___mbstoc16s_PARM_3
	lda	(___mbstoc16s_m_10000_65 + 1)
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00174$
	jmp	00115$
00174$:
;	Raw cost for generated ic 36 : (18, 23.600000) count=0.230726
;	skipping generated iCode
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.230726
;	../mbstoc16s.c: 69: *c16s++ = codepoint;
;	genCast
;	genCopy
	ldx	(___mbstoc16s_codepoint_30000_67 + 1)
	lda	___mbstoc16s_codepoint_30000_67
;	Raw cost for generated ic 45 : (6, 8.000000) count=0.173044
;	genPointerSet
	ldy	#0x00
	sta	[*___mbstoc16s_sloc0_1_0],y
	txa
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
;	Raw cost for generated ic 46 : (8, 18.000000) count=0.173044
;	genPlus
;	  genPlusInc
	lda	*___mbstoc16s_sloc0_1_0
	clc
	adc	#0x02
	sta	*___mbstoc16s_sloc0_1_0
	bcc	00175$
	inc	*(___mbstoc16s_sloc0_1_0 + 1)
00175$:
;	Raw cost for generated ic 43 : (11, 17.600000) count=0.173044
;	../mbstoc16s.c: 70: m++;
;	genPlus
;	  genPlusInc
	inc	___mbstoc16s_m_10000_65
	bne	00176$
	inc	(___mbstoc16s_m_10000_65 + 1)
00176$:
;	Raw cost for generated ic 48 : (8, 14.600000) count=0.173044
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 50 : (3, 3.000000) count=0.173044
;	genLabel
00113$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.076909
;	../mbstoc16s.c: 74: if (m + 1 >= n)
;	genPlus
;	  genPlusInc
	ldx	(___mbstoc16s_m_10000_65 + 1)
	lda	___mbstoc16s_m_10000_65
	clc
	adc	#0x01
	bcc	00177$
	inx
00177$:
;	Raw cost for generated ic 52 : (12, 16.600000) count=0.076909
;	genCmp
	sec
	sbc	___mbstoc16s_PARM_3
	txa
	sbc	(___mbstoc16s_PARM_3 + 1)
	bcc	00178$
	jmp	00115$
00178$:
;	Raw cost for generated ic 53 : (13, 17.600000) count=0.076909
;	skipping generated iCode
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.076909
;	../mbstoc16s.c: 77: codepoint -= 0x100000;
;	genMinus
;	  genMinusDec - size=4  icount=1048576
	lda	___mbstoc16s_codepoint_30000_67
	sec
	sbc	#0x00
	sta	___mbstoc16s_codepoint_30000_67
	lda	(___mbstoc16s_codepoint_30000_67 + 1)
	sbc	#0x00
	sta	(___mbstoc16s_codepoint_30000_67 + 1)
	lda	(___mbstoc16s_codepoint_30000_67 + 2)
	sbc	#0x10
	sta	(___mbstoc16s_codepoint_30000_67 + 2)
	lda	(___mbstoc16s_codepoint_30000_67 + 3)
	sbc	#0x00
	sta	(___mbstoc16s_codepoint_30000_67 + 3)
;	Raw cost for generated ic 59 : (33, 42.000000) count=0.057634
;	../mbstoc16s.c: 78: *c16s++ = ((codepoint >> 10) & 0x3ff) + 0xd800;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lsr	a
	sta	*(___mbstoc16s_sloc1_1_0 + 2)
	lda	(___mbstoc16s_codepoint_30000_67 + 2)
	ror	a
	sta	*(___mbstoc16s_sloc1_1_0 + 1)
	lda	(___mbstoc16s_codepoint_30000_67 + 1)
	ror	a
	sta	*___mbstoc16s_sloc1_1_0
	lda	*(___mbstoc16s_sloc1_1_0 + 2)
	lsr	a
	ror	*(___mbstoc16s_sloc1_1_0 + 1)
	ror	*___mbstoc16s_sloc1_1_0
	sta	*(___mbstoc16s_sloc1_1_0 + 2)
	ldy	#0x00
	sty	*(___mbstoc16s_sloc1_1_0 + 3)
;	Raw cost for generated ic 64 : (28, 46.000000) count=0.057634
;	genCast
;	genCopy
	ldx	*(___mbstoc16s_sloc1_1_0 + 1)
	lda	*___mbstoc16s_sloc1_1_0
;	Raw cost for generated ic 90 : (4, 6.000000) count=0.057634
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 65 : (8, 12.000000) count=0.057634
;	genPlus
;	  genPlusInc
	clc
	pha
	txa
	adc	#0xd8
	tax
	pla
;	Raw cost for generated ic 66 : (7, 15.000000) count=0.057634
;	genPointerSet
	sta	[*___mbstoc16s_sloc0_1_0],y
	txa
	iny
	sta	[*___mbstoc16s_sloc0_1_0],y
;	Raw cost for generated ic 68 : (6, 16.000000) count=0.057634
;	genPlus
;	  genPlusInc
	lda	*___mbstoc16s_sloc0_1_0
	clc
	adc	#0x02
	sta	___mbstoc16s_c16s_10000_64
	lda	*(___mbstoc16s_sloc0_1_0 + 1)
	adc	#0x00
	sta	(___mbstoc16s_c16s_10000_64 + 1)
;	Raw cost for generated ic 62 : (15, 20.000000) count=0.057634
;	../mbstoc16s.c: 79: *c16s++ = (codepoint & 0x3ff) + 0xdc00;
;	genCast
;	genCopy
	ldx	(___mbstoc16s_codepoint_30000_67 + 1)
	lda	___mbstoc16s_codepoint_30000_67
;	Raw cost for generated ic 91 : (6, 8.000000) count=0.057634
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 72 : (8, 12.000000) count=0.057634
;	genPlus
;	  genPlusInc
	clc
	pha
	txa
	adc	#0xdc
	tax
	pla
;	Raw cost for generated ic 73 : (7, 15.000000) count=0.057634
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	___mbstoc16s_c16s_10000_64
	sta	*(DPTR+0)
	lda	(___mbstoc16s_c16s_10000_64 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	dey
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 75 : (21, 38.000000) count=0.057634
;	genPlus
;	  genPlusInc
	lda	___mbstoc16s_c16s_10000_64
	clc
	adc	#0x02
	sta	*___mbstoc16s_sloc0_1_0
	lda	(___mbstoc16s_c16s_10000_64 + 1)
	adc	#0x00
	sta	*(___mbstoc16s_sloc0_1_0 + 1)
;	Raw cost for generated ic 70 : (15, 20.000000) count=0.057634
;	../mbstoc16s.c: 80: m += 2;
;	genPlus
;	  genPlusInc
	lda	___mbstoc16s_m_10000_65
	clc
	adc	#0x02
	sta	___mbstoc16s_m_10000_65
	bcc	00179$
	inc	(___mbstoc16s_m_10000_65 + 1)
00179$:
;	Raw cost for generated ic 76 : (14, 20.600000) count=0.057634
;	genLabel
00114$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.230679
;	../mbstoc16s.c: 82: s += l;
;	genPlus
	lda	___mbstoc16s_PARM_2
	clc
	adc	___mbstoc16s_l_30000_67
	sta	___mbstoc16s_PARM_2
	lda	(___mbstoc16s_PARM_2 + 1)
	adc	(___mbstoc16s_l_30000_67 + 1)
	sta	(___mbstoc16s_PARM_2 + 1)
;	Raw cost for generated ic 79 : (19, 26.000000) count=0.230679
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 82 : (3, 3.000000) count=0.230679
;	genLabel
00115$:
;	Raw cost for generated ic 83 : (0, 0.000000) count=0.999918
;	../mbstoc16s.c: 85: return(m);
;	genRet
	ldx	(___mbstoc16s_m_10000_65 + 1)
	lda	___mbstoc16s_m_10000_65
;	Raw cost for generated ic 84 : (6, 8.000000) count=0.999918
;	genLabel
;	Raw cost for generated ic 85 : (0, 0.000000) count=0.999918
;	../mbstoc16s.c: 86: }
;	genEndFunction
	rts
;	Raw cost for generated ic 86 : (1, 6.000000) count=0.999918
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
