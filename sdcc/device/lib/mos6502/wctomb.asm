;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wctomb
	
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
	.globl _wctomb_PARM_2
	.globl _wctomb
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wctomb_sloc0_1_0:
	.ds 2
_wctomb_sloc1_1_0:
	.ds 4
_wctomb_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_wctomb_PARM_2:
	.ds 4
_wctomb_s_10000_42:
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
;Allocation info for local variables in function 'wctomb'
;------------------------------------------------------------
;wc            Allocated with name '_wctomb_PARM_2'
;s             Allocated with name '_wctomb_s_10000_42'
;sloc0         Allocated with name '_wctomb_sloc0_1_0'
;sloc1         Allocated with name '_wctomb_sloc1_1_0'
;sloc2         Allocated with name '_wctomb_sloc2_1_0'
;------------------------------------------------------------
;	../wctomb.c: 31: int wctomb(char *s, wchar_t wc)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wctomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wctomb:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_wctomb_s_10000_42
	stx	(_wctomb_s_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../wctomb.c: 33: if(!s)
;	genIfx
	txa
	ora	_wctomb_s_10000_42
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (9, 11.600000) count=1.000000
;	../wctomb.c: 34: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../wctomb.c: 36: if(wc < 0x80)
;	genCmp
	lda	_wctomb_PARM_2
	sec
	sbc	#0x80
	lda	(_wctomb_PARM_2 + 1)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00117$
;	Raw cost for generated ic 8 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../wctomb.c: 38: s[0] = wc;
;	genCast
;	genCopy
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wctomb_s_10000_42
	stx	*(DPTR+0)
	ldx	(_wctomb_s_10000_42 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 14 : (14, 22.000000) count=0.750000
;	../wctomb.c: 39: return(1);
;	genRet
	lda	#0x01
	ldx	#0x00
	rts
;	Raw cost for generated ic 15 : (7, 7.000000) count=0.750000
;	genLabel
00117$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../wctomb.c: 41: else if(wc < 0x800)
;	genCmp
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0x08
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00114$
;	Raw cost for generated ic 18 : (21, 25.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../wctomb.c: 43: s[0] = (wc >> 6) & 0x1f | 0xc0;
;	genCast
;	genCopy
	ldx	(_wctomb_PARM_2 + 1)
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 133 : (6, 8.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 23 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x1f
;	Raw cost for generated ic 24 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xc0
;	Raw cost for generated ic 25 : (2, 2.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wctomb_s_10000_42
	stx	*(DPTR+0)
	ldx	(_wctomb_s_10000_42 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 27 : (14, 22.000000) count=0.750000
;	../wctomb.c: 44: s[1] = (wc >> 0) & 0x3f | 0x80;
;	genAssign
;	genCopy
	txa
	sta	*(_wctomb_sloc0_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc0_1_0
;	Raw cost for generated ic 28 : (8, 12.000000) count=0.750000
;	genGetByte
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 29 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 31 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 32 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc0_1_0],y
;	Raw cost for generated ic 34 : (3, 8.000000) count=0.750000
;	../wctomb.c: 45: return(2);
;	genRet
	lda	#0x02
	ldx	#0x00
	rts
;	Raw cost for generated ic 35 : (7, 7.000000) count=0.750000
;	genLabel
00114$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	../wctomb.c: 47: else if(wc >= 0xd800 && wc < 0xe000) // Unpaired surrogate
;	genCmp
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0xd8
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 38 : (21, 25.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genCmp
	lda	(_wctomb_PARM_2 + 1)
	sec
	sbc	#0xe0
	lda	(_wctomb_PARM_2 + 2)
	sbc	#0x00
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00110$
;	Raw cost for generated ic 42 : (21, 25.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.750000
;	../wctomb.c: 48: return(-1);
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 46 : (6, 7.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wctomb.c: 49: else if(wc < 0x10000)
;	genCmp
	lda	(_wctomb_PARM_2 + 2)
	sec
	sbc	#0x01
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcs	00107$
;	Raw cost for generated ic 49 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	../wctomb.c: 51: s[0] = (wc >> 12) & 0x0f | 0xe0;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=12
	lda	(_wctomb_PARM_2 + 3)
	lsr	a
	sta	*(_wctomb_sloc1_1_0 + 2)
	lda	(_wctomb_PARM_2 + 2)
	ror	a
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	(_wctomb_PARM_2 + 1)
	ror	a
	lsr	*(_wctomb_sloc1_1_0 + 2)
	ror	*(_wctomb_sloc1_1_0 + 1)
	ror	a
	lsr	*(_wctomb_sloc1_1_0 + 2)
	ror	*(_wctomb_sloc1_1_0 + 1)
	ror	a
	lsr	*(_wctomb_sloc1_1_0 + 2)
	ror	*(_wctomb_sloc1_1_0 + 1)
	ror	a
	sta	*_wctomb_sloc1_1_0
	ldy	#0x00
	sty	*(_wctomb_sloc1_1_0 + 3)
;	Raw cost for generated ic 54 : (37, 68.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 126 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x0f
;	Raw cost for generated ic 55 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xe0
;	Raw cost for generated ic 56 : (2, 2.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wctomb_s_10000_42
	stx	*(DPTR+0)
	ldx	(_wctomb_s_10000_42 + 1)
	stx	*(DPTR+1)
	sta	[DPTR],y
;	Raw cost for generated ic 58 : (12, 20.000000) count=0.750000
;	../wctomb.c: 52: s[1] = (wc >> 6) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	txa
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc1_1_0
;	Raw cost for generated ic 59 : (8, 12.000000) count=0.750000
;	genCast
;	genCopy
	ldx	(_wctomb_PARM_2 + 1)
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 134 : (6, 8.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 60 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 61 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 62 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	Raw cost for generated ic 64 : (3, 8.000000) count=0.750000
;	../wctomb.c: 53: s[2] = (wc >> 0) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	(_wctomb_s_10000_42 + 1)
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc1_1_0
;	Raw cost for generated ic 65 : (10, 14.000000) count=0.750000
;	genGetByte
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 66 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 68 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 69 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	Raw cost for generated ic 71 : (3, 8.000000) count=0.750000
;	../wctomb.c: 54: return(3);
;	genRet
	lda	#0x03
	ldx	#0x00
	rts
;	Raw cost for generated ic 72 : (7, 7.000000) count=0.750000
;	genLabel
00107$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=1.000000
;	../wctomb.c: 56: else if(wc < 0x110000)
;	genCmp
	lda	(_wctomb_PARM_2 + 2)
	sec
	sbc	#0x11
	lda	(_wctomb_PARM_2 + 3)
	sbc	#0x00
	bcc	00170$
	jmp	00104$
00170$:
;	Raw cost for generated ic 75 : (16, 19.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	../wctomb.c: 58: s[0] = (wc >> 18) & 0x07 | 0xf0;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=18
	lda	(_wctomb_PARM_2 + 3)
	lsr	a
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	(_wctomb_PARM_2 + 2)
	ror	a
	sta	*_wctomb_sloc1_1_0
	lda	*(_wctomb_sloc1_1_0 + 1)
	lsr	a
	ror	*_wctomb_sloc1_1_0
	sta	*(_wctomb_sloc1_1_0 + 1)
	ldy	#0x00
	sty	*(_wctomb_sloc1_1_0 + 2)
	sty	*(_wctomb_sloc1_1_0 + 3)
;	Raw cost for generated ic 80 : (25, 39.000000) count=0.750000
;	genCast
;	genCopy
	lda	*_wctomb_sloc1_1_0
;	Raw cost for generated ic 129 : (2, 3.000000) count=0.750000
;	genAnd
	and	#0x07
;	Raw cost for generated ic 81 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0xf0
;	Raw cost for generated ic 82 : (2, 2.000000) count=0.750000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wctomb_s_10000_42
	stx	*(DPTR+0)
	ldx	(_wctomb_s_10000_42 + 1)
	stx	*(DPTR+1)
	sta	[DPTR],y
;	Raw cost for generated ic 84 : (12, 20.000000) count=0.750000
;	../wctomb.c: 59: s[1] = (wc >> 12) & 0x3f | 0x80;
;	genAssign
;	genCopy
	txa
	sta	*(_wctomb_sloc1_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc1_1_0
;	Raw cost for generated ic 85 : (8, 12.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=12
	lda	(_wctomb_PARM_2 + 3)
	lsr	a
	sta	*(_wctomb_sloc2_1_0 + 2)
	lda	(_wctomb_PARM_2 + 2)
	ror	a
	sta	*(_wctomb_sloc2_1_0 + 1)
	lda	(_wctomb_PARM_2 + 1)
	ror	a
	lsr	*(_wctomb_sloc2_1_0 + 2)
	ror	*(_wctomb_sloc2_1_0 + 1)
	ror	a
	lsr	*(_wctomb_sloc2_1_0 + 2)
	ror	*(_wctomb_sloc2_1_0 + 1)
	ror	a
	lsr	*(_wctomb_sloc2_1_0 + 2)
	ror	*(_wctomb_sloc2_1_0 + 1)
	ror	a
	sta	*_wctomb_sloc2_1_0
	sty	*(_wctomb_sloc2_1_0 + 3)
;	Raw cost for generated ic 86 : (35, 66.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 130 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 87 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 88 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc1_1_0],y
;	Raw cost for generated ic 90 : (3, 8.000000) count=0.750000
;	../wctomb.c: 60: s[2] = (wc >> 6) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	txa
	sta	*(_wctomb_sloc2_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc2_1_0
;	Raw cost for generated ic 91 : (8, 12.000000) count=0.750000
;	genCast
;	genCopy
	ldx	(_wctomb_PARM_2 + 1)
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 135 : (6, 8.000000) count=0.750000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh16 - shift=6
	stx	*(REGTEMP+0)
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	lsr	*(REGTEMP+0)
	ror	a
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 92 : (22, 48.000000) count=0.750000
;	genCast
;	genCopy
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 93 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 94 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc2_1_0],y
;	Raw cost for generated ic 96 : (3, 8.000000) count=0.750000
;	../wctomb.c: 61: s[3] = (wc >> 0) & 0x3f  | 0x80;
;	genAssign
;	genCopy
	lda	(_wctomb_s_10000_42 + 1)
	sta	*(_wctomb_sloc2_1_0 + 1)
	lda	_wctomb_s_10000_42
	sta	*_wctomb_sloc2_1_0
;	Raw cost for generated ic 97 : (10, 14.000000) count=0.750000
;	genGetByte
	lda	_wctomb_PARM_2
;	Raw cost for generated ic 98 : (3, 4.000000) count=0.750000
;	genAnd
	and	#0x3f
;	Raw cost for generated ic 100 : (2, 2.000000) count=0.750000
;	genOr
	ora	#0x80
;	Raw cost for generated ic 101 : (2, 2.000000) count=0.750000
;	genPointerSet
	iny
	sta	[*_wctomb_sloc2_1_0],y
;	Raw cost for generated ic 103 : (3, 8.000000) count=0.750000
;	../wctomb.c: 62: return(4);
;	genRet
	lda	#0x04
	ldx	#0x00
	rts
;	Raw cost for generated ic 104 : (7, 7.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.000000
;	../wctomb.c: 65: return(-1);
;	genRet
	lda	#0xff
	tax
;	Raw cost for generated ic 107 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 113 : (0, 0.000000) count=1.000000
;	../wctomb.c: 66: }
;	genEndFunction
	rts
;	Raw cost for generated ic 114 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
