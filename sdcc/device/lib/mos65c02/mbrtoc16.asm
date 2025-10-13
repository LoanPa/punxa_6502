;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtoc16
	
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
	.globl _mbrtowc
	.globl _mbrtoc16_PARM_4
	.globl _mbrtoc16_PARM_3
	.globl _mbrtoc16_PARM_2
	.globl _mbrtoc16
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_mbrtoc16_sloc0_1_0:
	.ds 2
_mbrtoc16_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_mbrtoc16_PARM_2:
	.ds 2
_mbrtoc16_PARM_3:
	.ds 2
_mbrtoc16_PARM_4:
	.ds 2
_mbrtoc16_pc16_10000_21:
	.ds 2
_mbrtoc16_codepoint_10000_22:
	.ds 4
_mbrtoc16_ret_10000_22:
	.ds 2
_mbrtoc16_sps_10000_22:
	.ds 3
_mbrtoc16_low_surrogate_10000_22:
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
;Allocation info for local variables in function 'mbrtoc16'
;------------------------------------------------------------
;sloc0         Allocated with name '_mbrtoc16_sloc0_1_0'
;sloc1         Allocated with name '_mbrtoc16_sloc1_1_0'
;s             Allocated with name '_mbrtoc16_PARM_2'
;n             Allocated with name '_mbrtoc16_PARM_3'
;ps            Allocated with name '_mbrtoc16_PARM_4'
;pc16          Allocated with name '_mbrtoc16_pc16_10000_21'
;codepoint     Allocated with name '_mbrtoc16_codepoint_10000_22'
;ret           Allocated with name '_mbrtoc16_ret_10000_22'
;sps           Allocated with name '_mbrtoc16_sps_10000_22'
;low_surrogate Allocated with name '_mbrtoc16_low_surrogate_10000_22'
;------------------------------------------------------------
;	../mbrtoc16.c: 34: size_t mbrtoc16(char16_t *restrict pc16, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtoc16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mbrtoc16_pc16_10000_21
	stx	(_mbrtoc16_pc16_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mbrtoc16.c: 41: if(!s)
;	genIfx
	lda	(_mbrtoc16_PARM_2 + 1)
	ora	_mbrtoc16_PARM_2
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtoc16.c: 42: return(mbrtoc16(0, "", 1, ps));
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_mbrtoc16_PARM_2 + 1)
	lda	#___str_0
	sta	_mbrtoc16_PARM_2
;	Raw cost for generated ic 7 : (10, 12.000000) count=0.750000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_mbrtoc16_PARM_3
	stz	(_mbrtoc16_PARM_3 + 1)
;	Raw cost for generated ic 10 : (8, 10.000000) count=0.750000
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	dex
	txa
;	assignResultValue
;	Raw cost for generated ic 12 : (5, 10.000000) count=0.750000
;	genRet
	jmp	_mbrtoc16
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 44: if(!ps)
;	genIfx
	lda	(_mbrtoc16_PARM_4 + 1)
	ora	_mbrtoc16_PARM_4
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 15 : (11, 13.600000) count=1.000000
;	../mbrtoc16.c: 45: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_mbrtoc16_sps_10000_22
	sta	(_mbrtoc16_PARM_4 + 1)
	lda	#_mbrtoc16_sps_10000_22
	sta	_mbrtoc16_PARM_4
;	Raw cost for generated ic 19 : (10, 12.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 47: if(!ps->c[0] && (ps->c[1] || ps->c[2]))
;	genAssign
;	genCopy
	ldx	(_mbrtoc16_PARM_4 + 1)
	lda	_mbrtoc16_PARM_4
;	Raw cost for generated ic 22 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 25 : (11, 18.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 26 : (7, 7.600000) count=1.000000
;	genAssign
;	genCopy
	sta	*_mbrtoc16_sloc0_1_0
	stx	*(_mbrtoc16_sloc0_1_0 + 1)
;	Raw cost for generated ic 31 : (4, 6.000000) count=0.750000
;	genPointerGet
	ldy	#0x01
	lda	[*_mbrtoc16_sloc0_1_0],y
	tay
	lda	*(_mbrtoc16_sloc0_1_0+0)
;	Raw cost for generated ic 32 : (8, 13.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 33 : (7, 7.600000) count=0.750000
;	genAssign
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 39 : (8, 13.000000) count=0.562500
;	genIfx
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 40 : (5, 5.600000) count=0.562500
;	genLabel
00107$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.609375
;	../mbrtoc16.c: 49: if(pc16)
;	genIfx
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	ora	_mbrtoc16_pc16_10000_21
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 43 : (11, 13.600000) count=0.609375
;	../mbrtoc16.c: 50: *pc16 = ps->c[1] + (ps->c[2] << 8);
;	genAssign
;	genCopy
	ldx	(_mbrtoc16_PARM_4 + 1)
	lda	_mbrtoc16_PARM_4
;	Raw cost for generated ic 47 : (6, 8.000000) count=0.457031
;	genAssign
;	genCopy
	sta	*_mbrtoc16_sloc0_1_0
	stx	*(_mbrtoc16_sloc0_1_0 + 1)
;	Raw cost for generated ic 49 : (4, 6.000000) count=0.457031
;	genPointerGet
	ldy	#0x01
	lda	[*_mbrtoc16_sloc0_1_0],y
	tay
	lda	*(_mbrtoc16_sloc0_1_0+0)
;	Raw cost for generated ic 50 : (8, 13.000000) count=0.457031
;	genCast
;	genCopy
	stz	*(_mbrtoc16_sloc0_1_0 + 1)
	sty	*_mbrtoc16_sloc0_1_0
;	Raw cost for generated ic 51 : (5, 7.000000) count=0.457031
;	genAssign
;	genCopy
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.457031
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 55 : (8, 13.000000) count=0.457031
;	genCast
;	genCopy
;	Raw cost for generated ic 56 : (2, 2.000000) count=0.457031
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=8
	tax
	lda	#0x00
;	Raw cost for generated ic 57 : (3, 4.000000) count=0.457031
;	genPlus
	clc
	adc	*_mbrtoc16_sloc0_1_0
	pha
	txa
	adc	*(_mbrtoc16_sloc0_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 58 : (9, 19.000000) count=0.457031
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_mbrtoc16_pc16_10000_21
	sta	*(DPTR+0)
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 59 : (22, 38.000000) count=0.457031
;	genLabel
00106$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.609375
;	../mbrtoc16.c: 51: ps->c[1] = ps->c[2] = 0;
;	genAssign
;	genCopy
	ldx	(_mbrtoc16_PARM_4 + 1)
	lda	_mbrtoc16_PARM_4
;	Raw cost for generated ic 61 : (6, 8.000000) count=0.609375
;	genAssign
;	genCopy
	sta	*_mbrtoc16_sloc0_1_0
	stx	*(_mbrtoc16_sloc0_1_0 + 1)
;	Raw cost for generated ic 63 : (4, 6.000000) count=0.609375
;	genAssign
;	genCopy
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.609375
;	genPointerSet
	lda	#0x00
	ldy	#0x02
	sta	[_mbrtoc16_sloc0_1_0],y
;	Raw cost for generated ic 67 : (6, 10.000000) count=0.609375
;	genPointerSet
	dey
	sta	[*_mbrtoc16_sloc0_1_0],y
;	Raw cost for generated ic 68 : (3, 8.000000) count=0.609375
;	../mbrtoc16.c: 52: return(-3);
;	genRet
	lda	#0xfd
	ldx	#0xff
	rts
;	Raw cost for generated ic 69 : (7, 7.000000) count=0.609375
;	genLabel
00108$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 55: ret = mbrtowc(&codepoint, s, n, ps);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 72 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc16_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc16_PARM_2
	sta	_mbrtowc_PARM_2
;	Raw cost for generated ic 74 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc16_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc16_PARM_3
	sta	_mbrtowc_PARM_3
;	Raw cost for generated ic 75 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc16_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	lda	_mbrtoc16_PARM_4
	sta	_mbrtowc_PARM_4
;	Raw cost for generated ic 76 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_mbrtoc16_codepoint_10000_22
	lda	#_mbrtoc16_codepoint_10000_22
	jsr	_mbrtowc
;	assignResultValue
	sta	_mbrtoc16_ret_10000_22
	stx	(_mbrtoc16_ret_10000_22 + 1)
;	Raw cost for generated ic 77 : (13, 18.000000) count=1.000000
;	../mbrtoc16.c: 57: if(ret > MB_LEN_MAX)
;	genCmp
	lda	#0x04
	sec
	sbc	_mbrtoc16_ret_10000_22
	lda	#0x00
	sbc	(_mbrtoc16_ret_10000_22 + 1)
	bcs	00112$
;	Raw cost for generated ic 79 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 58: return(ret);
;	genRet
	lda	_mbrtoc16_ret_10000_22
	rts
;	Raw cost for generated ic 83 : (6, 7.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 84 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 60: if (codepoint <= 0xffff) // Basic multilingual plane
;	genCmp
	lda	#0xff
	sec
	sbc	_mbrtoc16_codepoint_10000_22
	lda	#0xff
	sbc	(_mbrtoc16_codepoint_10000_22 + 1)
	lda	#0x00
	sbc	(_mbrtoc16_codepoint_10000_22 + 2)
	lda	#0x00
	sbc	(_mbrtoc16_codepoint_10000_22 + 3)
	bcc	00116$
;	Raw cost for generated ic 85 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 62: if(pc16)
;	genIfx
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	ora	_mbrtoc16_pc16_10000_21
;	genIfxJump : z
	beq	00114$
;	Raw cost for generated ic 89 : (11, 13.600000) count=0.750000
;	../mbrtoc16.c: 63: *pc16 = codepoint;
;	genCast
;	genCopy
	ldx	(_mbrtoc16_codepoint_10000_22 + 1)
	lda	_mbrtoc16_codepoint_10000_22
;	Raw cost for generated ic 93 : (6, 8.000000) count=0.562500
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_mbrtoc16_pc16_10000_21
	sta	*(DPTR+0)
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 94 : (22, 38.000000) count=0.562500
;	genLabel
00114$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.750000
;	../mbrtoc16.c: 64: return(ret);
;	genRet
	ldx	(_mbrtoc16_ret_10000_22 + 1)
	lda	_mbrtoc16_ret_10000_22
	rts
;	Raw cost for generated ic 96 : (9, 11.000000) count=0.750000
;	genLabel
00116$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 67: codepoint -= 0x100000;
;	genMinus
;	  genMinusDec - size=4  icount=1048576
	lda	_mbrtoc16_codepoint_10000_22
	sec
	sbc	#0x00
	sta	_mbrtoc16_codepoint_10000_22
	lda	(_mbrtoc16_codepoint_10000_22 + 1)
	sbc	#0x00
	sta	(_mbrtoc16_codepoint_10000_22 + 1)
	lda	(_mbrtoc16_codepoint_10000_22 + 2)
	sbc	#0x10
	sta	(_mbrtoc16_codepoint_10000_22 + 2)
	lda	(_mbrtoc16_codepoint_10000_22 + 3)
	sbc	#0x00
	sta	(_mbrtoc16_codepoint_10000_22 + 3)
;	Raw cost for generated ic 98 : (33, 42.000000) count=1.000000
;	../mbrtoc16.c: 68: if(pc16)
;	genIfx
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	ora	_mbrtoc16_pc16_10000_21
;	genIfxJump : z
	beq	00118$
;	Raw cost for generated ic 100 : (11, 13.600000) count=1.000000
;	../mbrtoc16.c: 69: *pc16 = ((codepoint >> 10) & 0x3ff) + 0xd800;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lda	(_mbrtoc16_codepoint_10000_22 + 3)
	lsr	a
	sta	*(_mbrtoc16_sloc1_1_0 + 2)
	lda	(_mbrtoc16_codepoint_10000_22 + 2)
	ror	a
	sta	*(_mbrtoc16_sloc1_1_0 + 1)
	lda	(_mbrtoc16_codepoint_10000_22 + 1)
	ror	a
	sta	*_mbrtoc16_sloc1_1_0
	lda	*(_mbrtoc16_sloc1_1_0 + 2)
	lsr	a
	ror	*(_mbrtoc16_sloc1_1_0 + 1)
	ror	*_mbrtoc16_sloc1_1_0
	sta	*(_mbrtoc16_sloc1_1_0 + 2)
	stz	*(_mbrtoc16_sloc1_1_0 + 3)
;	Raw cost for generated ic 104 : (30, 49.000000) count=0.750000
;	genCast
;	genCopy
	ldx	*(_mbrtoc16_sloc1_1_0 + 1)
	lda	*_mbrtoc16_sloc1_1_0
;	Raw cost for generated ic 135 : (4, 6.000000) count=0.750000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 105 : (8, 12.000000) count=0.750000
;	genPlus
;	  genPlusInc
	clc
	pha
	txa
	adc	#0xd8
	tax
	pla
;	Raw cost for generated ic 106 : (7, 15.000000) count=0.750000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_mbrtoc16_pc16_10000_21
	sta	*(DPTR+0)
	lda	(_mbrtoc16_pc16_10000_21 + 1)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 108 : (22, 38.000000) count=0.750000
;	genLabel
00118$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 70: low_surrogate = (codepoint & 0x3ff) + 0xdc00;
;	genCast
;	genCopy
	ldx	(_mbrtoc16_codepoint_10000_22 + 1)
	lda	_mbrtoc16_codepoint_10000_22
;	Raw cost for generated ic 136 : (6, 8.000000) count=1.000000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x03
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 110 : (8, 12.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	sta	_mbrtoc16_low_surrogate_10000_22
	txa
	adc	#0xdc
	sta	(_mbrtoc16_low_surrogate_10000_22 + 1)
;	Raw cost for generated ic 111 : (10, 14.000000) count=1.000000
;	../mbrtoc16.c: 71: ps->c[0] = 0;
;	genAssign
;	genCopy
	lda	(_mbrtoc16_PARM_4 + 1)
	sta	*(_mbrtoc16_sloc1_1_0 + 1)
	lda	_mbrtoc16_PARM_4
	sta	*_mbrtoc16_sloc1_1_0
;	Raw cost for generated ic 114 : (10, 14.000000) count=1.000000
;	genPointerSet
	lda	#0x00
	tay
	sta	[*_mbrtoc16_sloc1_1_0],y
;	Raw cost for generated ic 117 : (5, 10.000000) count=1.000000
;	../mbrtoc16.c: 72: ps->c[1] = low_surrogate & 0xff;
;	genAssign
;	genCopy
	lda	*(_mbrtoc16_sloc1_1_0 + 1)
	sta	*(_mbrtoc16_sloc0_1_0 + 1)
	lda	*_mbrtoc16_sloc1_1_0
	sta	*_mbrtoc16_sloc0_1_0
;	Raw cost for generated ic 120 : (8, 12.000000) count=1.000000
;	genCast
;	genCopy
	lda	_mbrtoc16_low_surrogate_10000_22
;	Raw cost for generated ic 134 : (3, 4.000000) count=1.000000
;	genPointerSet
	iny
	sta	[*_mbrtoc16_sloc0_1_0],y
;	Raw cost for generated ic 123 : (3, 8.000000) count=1.000000
;	../mbrtoc16.c: 73: ps->c[2] = low_surrogate >> 8;
;	genAssign
;	genCopy
;	Raw cost for generated ic 126 : (0, 0.000000) count=1.000000
;	genGetByte
	lda	(_mbrtoc16_low_surrogate_10000_22 + 1)
;	Raw cost for generated ic 127 : (3, 4.000000) count=1.000000
;	genPointerSet
	iny
	sta	[*_mbrtoc16_sloc1_1_0],y
;	Raw cost for generated ic 128 : (3, 8.000000) count=1.000000
;	../mbrtoc16.c: 75: return(ret);
;	genRet
	ldx	(_mbrtoc16_ret_10000_22 + 1)
	lda	_mbrtoc16_ret_10000_22
;	Raw cost for generated ic 129 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 130 : (0, 0.000000) count=1.000000
;	../mbrtoc16.c: 76: }
;	genEndFunction
	rts
;	Raw cost for generated ic 131 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
