;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ckd_sub
	
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
	.globl ___ckd_sub_ulong_PARM_3
	.globl ___ckd_sub_ulong_PARM_2
	.globl ___ckd_sub_long_PARM_3
	.globl ___ckd_sub_long_PARM_2
	.globl ___ckd_sub_uint_PARM_3
	.globl ___ckd_sub_uint_PARM_2
	.globl ___ckd_sub_int_PARM_3
	.globl ___ckd_sub_int_PARM_2
	.globl ___ckd_sub_ushort_PARM_3
	.globl ___ckd_sub_ushort_PARM_2
	.globl ___ckd_sub_short_PARM_3
	.globl ___ckd_sub_short_PARM_2
	.globl ___ckd_sub_uchar_PARM_3
	.globl ___ckd_sub_uchar_PARM_2
	.globl ___ckd_sub_schar_PARM_3
	.globl ___ckd_sub_schar_PARM_2
	.globl ___ckd_sub_schar
	.globl ___ckd_sub_uchar
	.globl ___ckd_sub_short
	.globl ___ckd_sub_ushort
	.globl ___ckd_sub_int
	.globl ___ckd_sub_uint
	.globl ___ckd_sub_long
	.globl ___ckd_sub_ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ckd_sub_schar_sloc0_1_0:
	.ds 8
___ckd_sub_schar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_uchar_sloc0_1_0:
	.ds 8
___ckd_sub_uchar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_short_sloc0_1_0:
	.ds 8
___ckd_sub_short_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_ushort_sloc0_1_0:
	.ds 8
___ckd_sub_ushort_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_int_sloc0_1_0:
	.ds 8
___ckd_sub_int_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_uint_sloc0_1_0:
	.ds 8
___ckd_sub_uint_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_long_sloc0_1_0:
	.ds 8
___ckd_sub_long_sloc1_1_0:
	.ds 4
___ckd_sub_long_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_sub_ulong_sloc0_1_0:
	.ds 8
___ckd_sub_ulong_sloc1_1_0:
	.ds 4
___ckd_sub_ulong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ckd_sub_schar_PARM_2:
	.ds 8
___ckd_sub_schar_PARM_3:
	.ds 8
___ckd_sub_schar_r_10000_25:
	.ds 2
___ckd_sub_uchar_PARM_2:
	.ds 8
___ckd_sub_uchar_PARM_3:
	.ds 8
___ckd_sub_uchar_r_10000_27:
	.ds 2
___ckd_sub_short_PARM_2:
	.ds 8
___ckd_sub_short_PARM_3:
	.ds 8
___ckd_sub_short_r_10000_29:
	.ds 2
___ckd_sub_ushort_PARM_2:
	.ds 8
___ckd_sub_ushort_PARM_3:
	.ds 8
___ckd_sub_ushort_r_10000_31:
	.ds 2
___ckd_sub_int_PARM_2:
	.ds 8
___ckd_sub_int_PARM_3:
	.ds 8
___ckd_sub_int_r_10000_33:
	.ds 2
___ckd_sub_uint_PARM_2:
	.ds 8
___ckd_sub_uint_PARM_3:
	.ds 8
___ckd_sub_uint_r_10000_35:
	.ds 2
___ckd_sub_long_PARM_2:
	.ds 8
___ckd_sub_long_PARM_3:
	.ds 8
___ckd_sub_long_r_10000_37:
	.ds 2
___ckd_sub_ulong_PARM_2:
	.ds 8
___ckd_sub_ulong_PARM_3:
	.ds 8
___ckd_sub_ulong_r_10000_39:
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
;Allocation info for local variables in function '__ckd_sub_schar'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_schar_PARM_2'
;b             Allocated with name '___ckd_sub_schar_PARM_3'
;r             Allocated with name '___ckd_sub_schar_r_10000_25'
;result        Allocated with name '___ckd_sub_schar_result_10000_26'
;sloc0         Allocated with name '___ckd_sub_schar_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_schar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 61: inline _Bool __ckd_sub_schar __CKD_DEFAULT_IMPL(signed char, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_schar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_schar_r_10000_25
	stx	(___ckd_sub_schar_r_10000_25 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_schar_PARM_2
	sec
	sbc	___ckd_sub_schar_PARM_3
	sta	*___ckd_sub_schar_sloc0_1_0
	lda	(___ckd_sub_schar_PARM_2 + 1)
	sbc	(___ckd_sub_schar_PARM_3 + 1)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 1)
	lda	(___ckd_sub_schar_PARM_2 + 2)
	sbc	(___ckd_sub_schar_PARM_3 + 2)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 2)
	lda	(___ckd_sub_schar_PARM_2 + 3)
	sbc	(___ckd_sub_schar_PARM_3 + 3)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 3)
	lda	(___ckd_sub_schar_PARM_2 + 4)
	sbc	(___ckd_sub_schar_PARM_3 + 4)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 4)
	lda	(___ckd_sub_schar_PARM_2 + 5)
	sbc	(___ckd_sub_schar_PARM_3 + 5)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 5)
	lda	(___ckd_sub_schar_PARM_2 + 6)
	sbc	(___ckd_sub_schar_PARM_3 + 6)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 6)
	lda	(___ckd_sub_schar_PARM_2 + 7)
	sbc	(___ckd_sub_schar_PARM_3 + 7)
	sta	*(___ckd_sub_schar_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (2, 3.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_schar_r_10000_25
	stx	*(DPTR+0)
	ldx	(___ckd_sub_schar_r_10000_25 + 1)
	stx	*(DPTR+1)
	ldx	*(___ckd_sub_schar_sloc0_1_0+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(___ckd_sub_schar_sloc0_1_0+0)
;	Raw cost for generated ic 7 : (21, 32.000000) count=1.000000
;	genCast
	txa
	sta	*___ckd_sub_schar_sloc1_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_schar_sloc1_1_0 + 1)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 2)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 3)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 4)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 5)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 6)
	sta	*(___ckd_sub_schar_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 34.000000) count=1.000000
;	genCmpEQorNE
	lda	*___ckd_sub_schar_sloc1_1_0
	cmp	*___ckd_sub_schar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_schar_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (75, 96.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uchar'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_uchar_PARM_2'
;b             Allocated with name '___ckd_sub_uchar_PARM_3'
;r             Allocated with name '___ckd_sub_uchar_r_10000_27'
;result        Allocated with name '___ckd_sub_uchar_result_10000_28'
;sloc0         Allocated with name '___ckd_sub_uchar_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_uchar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 62: inline _Bool __ckd_sub_uchar __CKD_DEFAULT_IMPL(unsigned char, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uchar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_uchar_r_10000_27
	stx	(___ckd_sub_uchar_r_10000_27 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_uchar_PARM_2
	sec
	sbc	___ckd_sub_uchar_PARM_3
	sta	*___ckd_sub_uchar_sloc0_1_0
	lda	(___ckd_sub_uchar_PARM_2 + 1)
	sbc	(___ckd_sub_uchar_PARM_3 + 1)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	lda	(___ckd_sub_uchar_PARM_2 + 2)
	sbc	(___ckd_sub_uchar_PARM_3 + 2)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	lda	(___ckd_sub_uchar_PARM_2 + 3)
	sbc	(___ckd_sub_uchar_PARM_3 + 3)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	lda	(___ckd_sub_uchar_PARM_2 + 4)
	sbc	(___ckd_sub_uchar_PARM_3 + 4)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	lda	(___ckd_sub_uchar_PARM_2 + 5)
	sbc	(___ckd_sub_uchar_PARM_3 + 5)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	lda	(___ckd_sub_uchar_PARM_2 + 6)
	sbc	(___ckd_sub_uchar_PARM_3 + 6)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	lda	(___ckd_sub_uchar_PARM_2 + 7)
	sbc	(___ckd_sub_uchar_PARM_3 + 7)
	sta	*(___ckd_sub_uchar_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (2, 3.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_uchar_r_10000_27
	stx	*(DPTR+0)
	ldx	(___ckd_sub_uchar_r_10000_27 + 1)
	stx	*(DPTR+1)
	ldx	*(___ckd_sub_uchar_sloc0_1_0+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(___ckd_sub_uchar_sloc0_1_0+0)
;	Raw cost for generated ic 7 : (21, 32.000000) count=1.000000
;	genCast
;	genCopy
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 6)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 5)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 4)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 3)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 2)
	sty	*(___ckd_sub_uchar_sloc1_1_0 + 1)
	stx	*___ckd_sub_uchar_sloc1_1_0
;	Raw cost for generated ic 10 : (16, 24.000000) count=1.000000
;	genCmpEQorNE
	cpx	*___ckd_sub_uchar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_uchar_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (73, 93.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_short'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_short_PARM_2'
;b             Allocated with name '___ckd_sub_short_PARM_3'
;r             Allocated with name '___ckd_sub_short_r_10000_29'
;result        Allocated with name '___ckd_sub_short_result_10000_30'
;sloc0         Allocated with name '___ckd_sub_short_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_short_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 63: inline _Bool __ckd_sub_short __CKD_DEFAULT_IMPL(short, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_short:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_short_r_10000_29
	stx	(___ckd_sub_short_r_10000_29 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_short_PARM_2
	sec
	sbc	___ckd_sub_short_PARM_3
	sta	*___ckd_sub_short_sloc0_1_0
	lda	(___ckd_sub_short_PARM_2 + 1)
	sbc	(___ckd_sub_short_PARM_3 + 1)
	sta	*(___ckd_sub_short_sloc0_1_0 + 1)
	lda	(___ckd_sub_short_PARM_2 + 2)
	sbc	(___ckd_sub_short_PARM_3 + 2)
	sta	*(___ckd_sub_short_sloc0_1_0 + 2)
	lda	(___ckd_sub_short_PARM_2 + 3)
	sbc	(___ckd_sub_short_PARM_3 + 3)
	sta	*(___ckd_sub_short_sloc0_1_0 + 3)
	lda	(___ckd_sub_short_PARM_2 + 4)
	sbc	(___ckd_sub_short_PARM_3 + 4)
	sta	*(___ckd_sub_short_sloc0_1_0 + 4)
	lda	(___ckd_sub_short_PARM_2 + 5)
	sbc	(___ckd_sub_short_PARM_3 + 5)
	sta	*(___ckd_sub_short_sloc0_1_0 + 5)
	lda	(___ckd_sub_short_PARM_2 + 6)
	sbc	(___ckd_sub_short_PARM_3 + 6)
	sta	*(___ckd_sub_short_sloc0_1_0 + 6)
	lda	(___ckd_sub_short_PARM_2 + 7)
	sbc	(___ckd_sub_short_PARM_3 + 7)
	sta	*(___ckd_sub_short_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_sub_short_sloc0_1_0 + 1)
	lda	*___ckd_sub_short_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_short_r_10000_29
	stx	*(DPTR+0)
	ldx	(___ckd_sub_short_r_10000_29 + 1)
	stx	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (30, 50.000000) count=1.000000
;	genCast
	sta	*___ckd_sub_short_sloc1_1_0
	stx	*(___ckd_sub_short_sloc1_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00103$
	dex
00103$:
	stx	*(___ckd_sub_short_sloc1_1_0 + 2)
	stx	*(___ckd_sub_short_sloc1_1_0 + 3)
	stx	*(___ckd_sub_short_sloc1_1_0 + 4)
	stx	*(___ckd_sub_short_sloc1_1_0 + 5)
	stx	*(___ckd_sub_short_sloc1_1_0 + 6)
	stx	*(___ckd_sub_short_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 32.599998) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_sub_short_sloc0_1_0
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 1)
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 2)
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 3)
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 4)
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 5)
	bne	00105$
	lda	*(___ckd_sub_short_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_short_sloc0_1_0 + 6)
	bne	00105$
	cpx	*(___ckd_sub_short_sloc0_1_0 + 7)
	beq	00113$
00105$:
	lda	#0x00
	jmp	00112$
00113$:
	tya
00112$:
;	Raw cost for generated ic 11 : (71, 90.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ushort'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_ushort_PARM_2'
;b             Allocated with name '___ckd_sub_ushort_PARM_3'
;r             Allocated with name '___ckd_sub_ushort_r_10000_31'
;result        Allocated with name '___ckd_sub_ushort_result_10000_32'
;sloc0         Allocated with name '___ckd_sub_ushort_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_ushort_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 64: inline _Bool __ckd_sub_ushort __CKD_DEFAULT_IMPL(unsigned short, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ushort:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_ushort_r_10000_31
	stx	(___ckd_sub_ushort_r_10000_31 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_ushort_PARM_2
	sec
	sbc	___ckd_sub_ushort_PARM_3
	sta	*___ckd_sub_ushort_sloc0_1_0
	lda	(___ckd_sub_ushort_PARM_2 + 1)
	sbc	(___ckd_sub_ushort_PARM_3 + 1)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	lda	(___ckd_sub_ushort_PARM_2 + 2)
	sbc	(___ckd_sub_ushort_PARM_3 + 2)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	lda	(___ckd_sub_ushort_PARM_2 + 3)
	sbc	(___ckd_sub_ushort_PARM_3 + 3)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	lda	(___ckd_sub_ushort_PARM_2 + 4)
	sbc	(___ckd_sub_ushort_PARM_3 + 4)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	lda	(___ckd_sub_ushort_PARM_2 + 5)
	sbc	(___ckd_sub_ushort_PARM_3 + 5)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	lda	(___ckd_sub_ushort_PARM_2 + 6)
	sbc	(___ckd_sub_ushort_PARM_3 + 6)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	lda	(___ckd_sub_ushort_PARM_2 + 7)
	sbc	(___ckd_sub_ushort_PARM_3 + 7)
	sta	*(___ckd_sub_ushort_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	lda	*___ckd_sub_ushort_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_ushort_r_10000_31
	stx	*(DPTR+0)
	ldx	(___ckd_sub_ushort_r_10000_31 + 1)
	stx	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (30, 50.000000) count=1.000000
;	genCast
;	genCopy
	dey
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 7)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 6)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 5)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 4)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 3)
	sty	*(___ckd_sub_ushort_sloc1_1_0 + 2)
	stx	*(___ckd_sub_ushort_sloc1_1_0 + 1)
	sta	*___ckd_sub_ushort_sloc1_1_0
;	Raw cost for generated ic 10 : (17, 26.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_sub_ushort_sloc0_1_0
	bne	00104$
	cpx	*(___ckd_sub_ushort_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_ushort_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (71, 90.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_int'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_int_PARM_2'
;b             Allocated with name '___ckd_sub_int_PARM_3'
;r             Allocated with name '___ckd_sub_int_r_10000_33'
;result        Allocated with name '___ckd_sub_int_result_10000_34'
;sloc0         Allocated with name '___ckd_sub_int_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_int_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 65: inline _Bool __ckd_sub_int __CKD_DEFAULT_IMPL(int, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_int:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_int_r_10000_33
	stx	(___ckd_sub_int_r_10000_33 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_int_PARM_2
	sec
	sbc	___ckd_sub_int_PARM_3
	sta	*___ckd_sub_int_sloc0_1_0
	lda	(___ckd_sub_int_PARM_2 + 1)
	sbc	(___ckd_sub_int_PARM_3 + 1)
	sta	*(___ckd_sub_int_sloc0_1_0 + 1)
	lda	(___ckd_sub_int_PARM_2 + 2)
	sbc	(___ckd_sub_int_PARM_3 + 2)
	sta	*(___ckd_sub_int_sloc0_1_0 + 2)
	lda	(___ckd_sub_int_PARM_2 + 3)
	sbc	(___ckd_sub_int_PARM_3 + 3)
	sta	*(___ckd_sub_int_sloc0_1_0 + 3)
	lda	(___ckd_sub_int_PARM_2 + 4)
	sbc	(___ckd_sub_int_PARM_3 + 4)
	sta	*(___ckd_sub_int_sloc0_1_0 + 4)
	lda	(___ckd_sub_int_PARM_2 + 5)
	sbc	(___ckd_sub_int_PARM_3 + 5)
	sta	*(___ckd_sub_int_sloc0_1_0 + 5)
	lda	(___ckd_sub_int_PARM_2 + 6)
	sbc	(___ckd_sub_int_PARM_3 + 6)
	sta	*(___ckd_sub_int_sloc0_1_0 + 6)
	lda	(___ckd_sub_int_PARM_2 + 7)
	sbc	(___ckd_sub_int_PARM_3 + 7)
	sta	*(___ckd_sub_int_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_sub_int_sloc0_1_0 + 1)
	lda	*___ckd_sub_int_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_int_r_10000_33
	stx	*(DPTR+0)
	ldx	(___ckd_sub_int_r_10000_33 + 1)
	stx	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (30, 50.000000) count=1.000000
;	genCast
	sta	*___ckd_sub_int_sloc1_1_0
	stx	*(___ckd_sub_int_sloc1_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00103$
	dex
00103$:
	stx	*(___ckd_sub_int_sloc1_1_0 + 2)
	stx	*(___ckd_sub_int_sloc1_1_0 + 3)
	stx	*(___ckd_sub_int_sloc1_1_0 + 4)
	stx	*(___ckd_sub_int_sloc1_1_0 + 5)
	stx	*(___ckd_sub_int_sloc1_1_0 + 6)
	stx	*(___ckd_sub_int_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 32.599998) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_sub_int_sloc0_1_0
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 1)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 1)
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 2)
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 3)
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 4)
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 5)
	bne	00105$
	lda	*(___ckd_sub_int_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_int_sloc0_1_0 + 6)
	bne	00105$
	cpx	*(___ckd_sub_int_sloc0_1_0 + 7)
	beq	00113$
00105$:
	lda	#0x00
	jmp	00112$
00113$:
	tya
00112$:
;	Raw cost for generated ic 11 : (71, 90.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_uint'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_uint_PARM_2'
;b             Allocated with name '___ckd_sub_uint_PARM_3'
;r             Allocated with name '___ckd_sub_uint_r_10000_35'
;result        Allocated with name '___ckd_sub_uint_result_10000_36'
;sloc0         Allocated with name '___ckd_sub_uint_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_uint_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 66: inline _Bool __ckd_sub_uint __CKD_DEFAULT_IMPL(unsigned int, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_uint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_uint_r_10000_35
	stx	(___ckd_sub_uint_r_10000_35 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_uint_PARM_2
	sec
	sbc	___ckd_sub_uint_PARM_3
	sta	*___ckd_sub_uint_sloc0_1_0
	lda	(___ckd_sub_uint_PARM_2 + 1)
	sbc	(___ckd_sub_uint_PARM_3 + 1)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 1)
	lda	(___ckd_sub_uint_PARM_2 + 2)
	sbc	(___ckd_sub_uint_PARM_3 + 2)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 2)
	lda	(___ckd_sub_uint_PARM_2 + 3)
	sbc	(___ckd_sub_uint_PARM_3 + 3)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 3)
	lda	(___ckd_sub_uint_PARM_2 + 4)
	sbc	(___ckd_sub_uint_PARM_3 + 4)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 4)
	lda	(___ckd_sub_uint_PARM_2 + 5)
	sbc	(___ckd_sub_uint_PARM_3 + 5)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 5)
	lda	(___ckd_sub_uint_PARM_2 + 6)
	sbc	(___ckd_sub_uint_PARM_3 + 6)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 6)
	lda	(___ckd_sub_uint_PARM_2 + 7)
	sbc	(___ckd_sub_uint_PARM_3 + 7)
	sta	*(___ckd_sub_uint_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_sub_uint_sloc0_1_0 + 1)
	lda	*___ckd_sub_uint_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_sub_uint_r_10000_35
	stx	*(DPTR+0)
	ldx	(___ckd_sub_uint_r_10000_35 + 1)
	stx	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (30, 50.000000) count=1.000000
;	genCast
;	genCopy
	dey
	sty	*(___ckd_sub_uint_sloc1_1_0 + 7)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 6)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 5)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 4)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 3)
	sty	*(___ckd_sub_uint_sloc1_1_0 + 2)
	stx	*(___ckd_sub_uint_sloc1_1_0 + 1)
	sta	*___ckd_sub_uint_sloc1_1_0
;	Raw cost for generated ic 10 : (17, 26.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_sub_uint_sloc0_1_0
	bne	00104$
	cpx	*(___ckd_sub_uint_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_sub_uint_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (71, 90.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_long'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_long_PARM_2'
;b             Allocated with name '___ckd_sub_long_PARM_3'
;r             Allocated with name '___ckd_sub_long_r_10000_37'
;result        Allocated with name '___ckd_sub_long_result_10000_38'
;sloc0         Allocated with name '___ckd_sub_long_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_long_sloc1_1_0'
;sloc2         Allocated with name '___ckd_sub_long_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 67: inline _Bool __ckd_sub_long __CKD_DEFAULT_IMPL(long, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_long:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_long_r_10000_37
	stx	(___ckd_sub_long_r_10000_37 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_long_PARM_2
	sec
	sbc	___ckd_sub_long_PARM_3
	sta	*___ckd_sub_long_sloc0_1_0
	lda	(___ckd_sub_long_PARM_2 + 1)
	sbc	(___ckd_sub_long_PARM_3 + 1)
	sta	*(___ckd_sub_long_sloc0_1_0 + 1)
	lda	(___ckd_sub_long_PARM_2 + 2)
	sbc	(___ckd_sub_long_PARM_3 + 2)
	sta	*(___ckd_sub_long_sloc0_1_0 + 2)
	lda	(___ckd_sub_long_PARM_2 + 3)
	sbc	(___ckd_sub_long_PARM_3 + 3)
	sta	*(___ckd_sub_long_sloc0_1_0 + 3)
	lda	(___ckd_sub_long_PARM_2 + 4)
	sbc	(___ckd_sub_long_PARM_3 + 4)
	sta	*(___ckd_sub_long_sloc0_1_0 + 4)
	lda	(___ckd_sub_long_PARM_2 + 5)
	sbc	(___ckd_sub_long_PARM_3 + 5)
	sta	*(___ckd_sub_long_sloc0_1_0 + 5)
	lda	(___ckd_sub_long_PARM_2 + 6)
	sbc	(___ckd_sub_long_PARM_3 + 6)
	sta	*(___ckd_sub_long_sloc0_1_0 + 6)
	lda	(___ckd_sub_long_PARM_2 + 7)
	sbc	(___ckd_sub_long_PARM_3 + 7)
	sta	*(___ckd_sub_long_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___ckd_sub_long_sloc0_1_0 + 3)
	sta	*(___ckd_sub_long_sloc1_1_0 + 3)
	lda	*(___ckd_sub_long_sloc0_1_0 + 2)
	sta	*(___ckd_sub_long_sloc1_1_0 + 2)
	lda	*(___ckd_sub_long_sloc0_1_0 + 1)
	sta	*(___ckd_sub_long_sloc1_1_0 + 1)
	lda	*___ckd_sub_long_sloc0_1_0
	sta	*___ckd_sub_long_sloc1_1_0
;	Raw cost for generated ic 6 : (16, 24.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	stx	*(DPTR+1)
	ldx	___ckd_sub_long_r_10000_37
	stx	*(DPTR+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 2)
	iny
	sta	[DPTR],y
	lda	*(___ckd_sub_long_sloc1_1_0 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (26, 51.000000) count=1.000000
;	genCast
	lda	*___ckd_sub_long_sloc1_1_0
	sta	*___ckd_sub_long_sloc2_1_0
	lda	*(___ckd_sub_long_sloc1_1_0 + 1)
	sta	*(___ckd_sub_long_sloc2_1_0 + 1)
	lda	*(___ckd_sub_long_sloc1_1_0 + 2)
	sta	*(___ckd_sub_long_sloc2_1_0 + 2)
	lda	*(___ckd_sub_long_sloc1_1_0 + 3)
	sta	*(___ckd_sub_long_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_sub_long_sloc2_1_0 + 4)
	sta	*(___ckd_sub_long_sloc2_1_0 + 5)
	sta	*(___ckd_sub_long_sloc2_1_0 + 6)
	sta	*(___ckd_sub_long_sloc2_1_0 + 7)
;	Raw cost for generated ic 10 : (31, 44.000000) count=1.000000
;	genCmpEQorNE
	lda	*___ckd_sub_long_sloc2_1_0
	cmp	*___ckd_sub_long_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_long_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_long_sloc0_1_0 + 7)
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (76, 96.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_sub_ulong'
;------------------------------------------------------------
;a             Allocated with name '___ckd_sub_ulong_PARM_2'
;b             Allocated with name '___ckd_sub_ulong_PARM_3'
;r             Allocated with name '___ckd_sub_ulong_r_10000_39'
;result        Allocated with name '___ckd_sub_ulong_result_10000_40'
;sloc0         Allocated with name '___ckd_sub_ulong_sloc0_1_0'
;sloc1         Allocated with name '___ckd_sub_ulong_sloc1_1_0'
;sloc2         Allocated with name '___ckd_sub_ulong_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 68: inline _Bool __ckd_sub_ulong __CKD_DEFAULT_IMPL(unsigned long, -)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_sub_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_sub_ulong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_sub_ulong_r_10000_39
	stx	(___ckd_sub_ulong_r_10000_39 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genMinus
	lda	___ckd_sub_ulong_PARM_2
	sec
	sbc	___ckd_sub_ulong_PARM_3
	sta	*___ckd_sub_ulong_sloc0_1_0
	lda	(___ckd_sub_ulong_PARM_2 + 1)
	sbc	(___ckd_sub_ulong_PARM_3 + 1)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	lda	(___ckd_sub_ulong_PARM_2 + 2)
	sbc	(___ckd_sub_ulong_PARM_3 + 2)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	lda	(___ckd_sub_ulong_PARM_2 + 3)
	sbc	(___ckd_sub_ulong_PARM_3 + 3)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	lda	(___ckd_sub_ulong_PARM_2 + 4)
	sbc	(___ckd_sub_ulong_PARM_3 + 4)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	lda	(___ckd_sub_ulong_PARM_2 + 5)
	sbc	(___ckd_sub_ulong_PARM_3 + 5)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	lda	(___ckd_sub_ulong_PARM_2 + 6)
	sbc	(___ckd_sub_ulong_PARM_3 + 6)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	lda	(___ckd_sub_ulong_PARM_2 + 7)
	sbc	(___ckd_sub_ulong_PARM_3 + 7)
	sta	*(___ckd_sub_ulong_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	lda	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	sta	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	lda	*___ckd_sub_ulong_sloc0_1_0
	sta	*___ckd_sub_ulong_sloc1_1_0
;	Raw cost for generated ic 6 : (16, 24.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	stx	*(DPTR+1)
	ldx	___ckd_sub_ulong_r_10000_39
	stx	*(DPTR+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	iny
	sta	[DPTR],y
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (26, 51.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(___ckd_sub_ulong_sloc2_1_0 + 7)
	sty	*(___ckd_sub_ulong_sloc2_1_0 + 6)
	sty	*(___ckd_sub_ulong_sloc2_1_0 + 5)
	sty	*(___ckd_sub_ulong_sloc2_1_0 + 4)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 3)
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 2)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 2)
	lda	*(___ckd_sub_ulong_sloc1_1_0 + 1)
	sta	*(___ckd_sub_ulong_sloc2_1_0 + 1)
	lda	*___ckd_sub_ulong_sloc1_1_0
	sta	*___ckd_sub_ulong_sloc2_1_0
;	Raw cost for generated ic 10 : (24, 35.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_sub_ulong_sloc0_1_0
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_sub_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_sub_ulong_sloc0_1_0 + 7)
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (73, 93.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
