;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ckd_add
	
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
	.globl ___ckd_add_ulong_PARM_3
	.globl ___ckd_add_ulong_PARM_2
	.globl ___ckd_add_long_PARM_3
	.globl ___ckd_add_long_PARM_2
	.globl ___ckd_add_uint_PARM_3
	.globl ___ckd_add_uint_PARM_2
	.globl ___ckd_add_int_PARM_3
	.globl ___ckd_add_int_PARM_2
	.globl ___ckd_add_ushort_PARM_3
	.globl ___ckd_add_ushort_PARM_2
	.globl ___ckd_add_short_PARM_3
	.globl ___ckd_add_short_PARM_2
	.globl ___ckd_add_uchar_PARM_3
	.globl ___ckd_add_uchar_PARM_2
	.globl ___ckd_add_schar_PARM_3
	.globl ___ckd_add_schar_PARM_2
	.globl ___ckd_add_schar
	.globl ___ckd_add_uchar
	.globl ___ckd_add_short
	.globl ___ckd_add_ushort
	.globl ___ckd_add_int
	.globl ___ckd_add_uint
	.globl ___ckd_add_long
	.globl ___ckd_add_ulong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ckd_add_schar_sloc0_1_0:
	.ds 8
___ckd_add_schar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_uchar_sloc0_1_0:
	.ds 8
___ckd_add_uchar_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_short_sloc0_1_0:
	.ds 8
___ckd_add_short_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_ushort_sloc0_1_0:
	.ds 8
___ckd_add_ushort_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_int_sloc0_1_0:
	.ds 8
___ckd_add_int_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_uint_sloc0_1_0:
	.ds 8
___ckd_add_uint_sloc1_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_long_sloc0_1_0:
	.ds 8
___ckd_add_long_sloc1_1_0:
	.ds 4
___ckd_add_long_sloc2_1_0:
	.ds 8
	.area	OSEG    (PAG, OVR)
___ckd_add_ulong_sloc0_1_0:
	.ds 8
___ckd_add_ulong_sloc1_1_0:
	.ds 4
___ckd_add_ulong_sloc2_1_0:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ckd_add_schar_PARM_2:
	.ds 8
___ckd_add_schar_PARM_3:
	.ds 8
___ckd_add_schar_r_10000_9:
	.ds 2
___ckd_add_uchar_PARM_2:
	.ds 8
___ckd_add_uchar_PARM_3:
	.ds 8
___ckd_add_uchar_r_10000_11:
	.ds 2
___ckd_add_short_PARM_2:
	.ds 8
___ckd_add_short_PARM_3:
	.ds 8
___ckd_add_short_r_10000_13:
	.ds 2
___ckd_add_ushort_PARM_2:
	.ds 8
___ckd_add_ushort_PARM_3:
	.ds 8
___ckd_add_ushort_r_10000_15:
	.ds 2
___ckd_add_int_PARM_2:
	.ds 8
___ckd_add_int_PARM_3:
	.ds 8
___ckd_add_int_r_10000_17:
	.ds 2
___ckd_add_uint_PARM_2:
	.ds 8
___ckd_add_uint_PARM_3:
	.ds 8
___ckd_add_uint_r_10000_19:
	.ds 2
___ckd_add_long_PARM_2:
	.ds 8
___ckd_add_long_PARM_3:
	.ds 8
___ckd_add_long_r_10000_21:
	.ds 2
___ckd_add_ulong_PARM_2:
	.ds 8
___ckd_add_ulong_PARM_3:
	.ds 8
___ckd_add_ulong_r_10000_23:
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
;Allocation info for local variables in function '__ckd_add_schar'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_schar_PARM_2'
;b             Allocated with name '___ckd_add_schar_PARM_3'
;r             Allocated with name '___ckd_add_schar_r_10000_9'
;result        Allocated with name '___ckd_add_schar_result_10000_10'
;sloc0         Allocated with name '___ckd_add_schar_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_schar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 52: inline _Bool __ckd_add_schar __CKD_DEFAULT_IMPL(signed char, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_schar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_schar_r_10000_9
	stx	(___ckd_add_schar_r_10000_9 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_schar_PARM_2
	clc
	adc	___ckd_add_schar_PARM_3
	sta	*___ckd_add_schar_sloc0_1_0
	lda	(___ckd_add_schar_PARM_2 + 1)
	adc	(___ckd_add_schar_PARM_3 + 1)
	sta	*(___ckd_add_schar_sloc0_1_0 + 1)
	lda	(___ckd_add_schar_PARM_2 + 2)
	adc	(___ckd_add_schar_PARM_3 + 2)
	sta	*(___ckd_add_schar_sloc0_1_0 + 2)
	lda	(___ckd_add_schar_PARM_2 + 3)
	adc	(___ckd_add_schar_PARM_3 + 3)
	sta	*(___ckd_add_schar_sloc0_1_0 + 3)
	lda	(___ckd_add_schar_PARM_2 + 4)
	adc	(___ckd_add_schar_PARM_3 + 4)
	sta	*(___ckd_add_schar_sloc0_1_0 + 4)
	lda	(___ckd_add_schar_PARM_2 + 5)
	adc	(___ckd_add_schar_PARM_3 + 5)
	sta	*(___ckd_add_schar_sloc0_1_0 + 5)
	lda	(___ckd_add_schar_PARM_2 + 6)
	adc	(___ckd_add_schar_PARM_3 + 6)
	sta	*(___ckd_add_schar_sloc0_1_0 + 6)
	lda	(___ckd_add_schar_PARM_2 + 7)
	adc	(___ckd_add_schar_PARM_3 + 7)
	sta	*(___ckd_add_schar_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (2, 3.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_schar_r_10000_9
	stx	*(DPTR+0)
	ldx	(___ckd_add_schar_r_10000_9 + 1)
	stx	*(DPTR+1)
	ldx	*(___ckd_add_schar_sloc0_1_0+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(___ckd_add_schar_sloc0_1_0+0)
;	Raw cost for generated ic 7 : (21, 32.000000) count=1.000000
;	genCast
	txa
	sta	*___ckd_add_schar_sloc1_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_schar_sloc1_1_0 + 1)
	sta	*(___ckd_add_schar_sloc1_1_0 + 2)
	sta	*(___ckd_add_schar_sloc1_1_0 + 3)
	sta	*(___ckd_add_schar_sloc1_1_0 + 4)
	sta	*(___ckd_add_schar_sloc1_1_0 + 5)
	sta	*(___ckd_add_schar_sloc1_1_0 + 6)
	sta	*(___ckd_add_schar_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 34.000000) count=1.000000
;	genCmpEQorNE
	lda	*___ckd_add_schar_sloc1_1_0
	cmp	*___ckd_add_schar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_schar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_schar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_uchar'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_uchar_PARM_2'
;b             Allocated with name '___ckd_add_uchar_PARM_3'
;r             Allocated with name '___ckd_add_uchar_r_10000_11'
;result        Allocated with name '___ckd_add_uchar_result_10000_12'
;sloc0         Allocated with name '___ckd_add_uchar_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_uchar_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 53: inline _Bool __ckd_add_uchar __CKD_DEFAULT_IMPL(unsigned char, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uchar:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_uchar_r_10000_11
	stx	(___ckd_add_uchar_r_10000_11 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_uchar_PARM_2
	clc
	adc	___ckd_add_uchar_PARM_3
	sta	*___ckd_add_uchar_sloc0_1_0
	lda	(___ckd_add_uchar_PARM_2 + 1)
	adc	(___ckd_add_uchar_PARM_3 + 1)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 1)
	lda	(___ckd_add_uchar_PARM_2 + 2)
	adc	(___ckd_add_uchar_PARM_3 + 2)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 2)
	lda	(___ckd_add_uchar_PARM_2 + 3)
	adc	(___ckd_add_uchar_PARM_3 + 3)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 3)
	lda	(___ckd_add_uchar_PARM_2 + 4)
	adc	(___ckd_add_uchar_PARM_3 + 4)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 4)
	lda	(___ckd_add_uchar_PARM_2 + 5)
	adc	(___ckd_add_uchar_PARM_3 + 5)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 5)
	lda	(___ckd_add_uchar_PARM_2 + 6)
	adc	(___ckd_add_uchar_PARM_3 + 6)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 6)
	lda	(___ckd_add_uchar_PARM_2 + 7)
	adc	(___ckd_add_uchar_PARM_3 + 7)
	sta	*(___ckd_add_uchar_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 6 : (2, 3.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_uchar_r_10000_11
	stx	*(DPTR+0)
	ldx	(___ckd_add_uchar_r_10000_11 + 1)
	stx	*(DPTR+1)
	ldx	*(___ckd_add_uchar_sloc0_1_0+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(___ckd_add_uchar_sloc0_1_0+0)
;	Raw cost for generated ic 7 : (21, 32.000000) count=1.000000
;	genCast
;	genCopy
	sty	*(___ckd_add_uchar_sloc1_1_0 + 7)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 6)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 5)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 4)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 3)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 2)
	sty	*(___ckd_add_uchar_sloc1_1_0 + 1)
	stx	*___ckd_add_uchar_sloc1_1_0
;	Raw cost for generated ic 10 : (16, 24.000000) count=1.000000
;	genCmpEQorNE
	cpx	*___ckd_add_uchar_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 1)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 2)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 3)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 4)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 5)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 6)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_uchar_sloc1_1_0 + 7)
	cmp	*(___ckd_add_uchar_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_short'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_short_PARM_2'
;b             Allocated with name '___ckd_add_short_PARM_3'
;r             Allocated with name '___ckd_add_short_r_10000_13'
;result        Allocated with name '___ckd_add_short_result_10000_14'
;sloc0         Allocated with name '___ckd_add_short_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_short_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 54: inline _Bool __ckd_add_short __CKD_DEFAULT_IMPL(short, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_short:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_short_r_10000_13
	stx	(___ckd_add_short_r_10000_13 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_short_PARM_2
	clc
	adc	___ckd_add_short_PARM_3
	sta	*___ckd_add_short_sloc0_1_0
	lda	(___ckd_add_short_PARM_2 + 1)
	adc	(___ckd_add_short_PARM_3 + 1)
	sta	*(___ckd_add_short_sloc0_1_0 + 1)
	lda	(___ckd_add_short_PARM_2 + 2)
	adc	(___ckd_add_short_PARM_3 + 2)
	sta	*(___ckd_add_short_sloc0_1_0 + 2)
	lda	(___ckd_add_short_PARM_2 + 3)
	adc	(___ckd_add_short_PARM_3 + 3)
	sta	*(___ckd_add_short_sloc0_1_0 + 3)
	lda	(___ckd_add_short_PARM_2 + 4)
	adc	(___ckd_add_short_PARM_3 + 4)
	sta	*(___ckd_add_short_sloc0_1_0 + 4)
	lda	(___ckd_add_short_PARM_2 + 5)
	adc	(___ckd_add_short_PARM_3 + 5)
	sta	*(___ckd_add_short_sloc0_1_0 + 5)
	lda	(___ckd_add_short_PARM_2 + 6)
	adc	(___ckd_add_short_PARM_3 + 6)
	sta	*(___ckd_add_short_sloc0_1_0 + 6)
	lda	(___ckd_add_short_PARM_2 + 7)
	adc	(___ckd_add_short_PARM_3 + 7)
	sta	*(___ckd_add_short_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_add_short_sloc0_1_0 + 1)
	lda	*___ckd_add_short_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_short_r_10000_13
	stx	*(DPTR+0)
	ldx	(___ckd_add_short_r_10000_13 + 1)
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
	sta	*___ckd_add_short_sloc1_1_0
	stx	*(___ckd_add_short_sloc1_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00103$
	dex
00103$:
	stx	*(___ckd_add_short_sloc1_1_0 + 2)
	stx	*(___ckd_add_short_sloc1_1_0 + 3)
	stx	*(___ckd_add_short_sloc1_1_0 + 4)
	stx	*(___ckd_add_short_sloc1_1_0 + 5)
	stx	*(___ckd_add_short_sloc1_1_0 + 6)
	stx	*(___ckd_add_short_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 32.599998) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_add_short_sloc0_1_0
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 1)
	cmp	*(___ckd_add_short_sloc0_1_0 + 1)
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 2)
	cmp	*(___ckd_add_short_sloc0_1_0 + 2)
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 3)
	cmp	*(___ckd_add_short_sloc0_1_0 + 3)
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 4)
	cmp	*(___ckd_add_short_sloc0_1_0 + 4)
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 5)
	cmp	*(___ckd_add_short_sloc0_1_0 + 5)
	bne	00105$
	lda	*(___ckd_add_short_sloc1_1_0 + 6)
	cmp	*(___ckd_add_short_sloc0_1_0 + 6)
	bne	00105$
	cpx	*(___ckd_add_short_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_ushort'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_ushort_PARM_2'
;b             Allocated with name '___ckd_add_ushort_PARM_3'
;r             Allocated with name '___ckd_add_ushort_r_10000_15'
;result        Allocated with name '___ckd_add_ushort_result_10000_16'
;sloc0         Allocated with name '___ckd_add_ushort_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_ushort_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 55: inline _Bool __ckd_add_ushort __CKD_DEFAULT_IMPL(unsigned short, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ushort:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_ushort_r_10000_15
	stx	(___ckd_add_ushort_r_10000_15 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_ushort_PARM_2
	clc
	adc	___ckd_add_ushort_PARM_3
	sta	*___ckd_add_ushort_sloc0_1_0
	lda	(___ckd_add_ushort_PARM_2 + 1)
	adc	(___ckd_add_ushort_PARM_3 + 1)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 1)
	lda	(___ckd_add_ushort_PARM_2 + 2)
	adc	(___ckd_add_ushort_PARM_3 + 2)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 2)
	lda	(___ckd_add_ushort_PARM_2 + 3)
	adc	(___ckd_add_ushort_PARM_3 + 3)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 3)
	lda	(___ckd_add_ushort_PARM_2 + 4)
	adc	(___ckd_add_ushort_PARM_3 + 4)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 4)
	lda	(___ckd_add_ushort_PARM_2 + 5)
	adc	(___ckd_add_ushort_PARM_3 + 5)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 5)
	lda	(___ckd_add_ushort_PARM_2 + 6)
	adc	(___ckd_add_ushort_PARM_3 + 6)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 6)
	lda	(___ckd_add_ushort_PARM_2 + 7)
	adc	(___ckd_add_ushort_PARM_3 + 7)
	sta	*(___ckd_add_ushort_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_add_ushort_sloc0_1_0 + 1)
	lda	*___ckd_add_ushort_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_ushort_r_10000_15
	stx	*(DPTR+0)
	ldx	(___ckd_add_ushort_r_10000_15 + 1)
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
	sty	*(___ckd_add_ushort_sloc1_1_0 + 7)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 6)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 5)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 4)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 3)
	sty	*(___ckd_add_ushort_sloc1_1_0 + 2)
	stx	*(___ckd_add_ushort_sloc1_1_0 + 1)
	sta	*___ckd_add_ushort_sloc1_1_0
;	Raw cost for generated ic 10 : (17, 26.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_add_ushort_sloc0_1_0
	bne	00104$
	cpx	*(___ckd_add_ushort_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 2)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 3)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 4)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 5)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 6)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_ushort_sloc1_1_0 + 7)
	cmp	*(___ckd_add_ushort_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_int'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_int_PARM_2'
;b             Allocated with name '___ckd_add_int_PARM_3'
;r             Allocated with name '___ckd_add_int_r_10000_17'
;result        Allocated with name '___ckd_add_int_result_10000_18'
;sloc0         Allocated with name '___ckd_add_int_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_int_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 56: inline _Bool __ckd_add_int __CKD_DEFAULT_IMPL(int, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_int:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_int_r_10000_17
	stx	(___ckd_add_int_r_10000_17 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_int_PARM_2
	clc
	adc	___ckd_add_int_PARM_3
	sta	*___ckd_add_int_sloc0_1_0
	lda	(___ckd_add_int_PARM_2 + 1)
	adc	(___ckd_add_int_PARM_3 + 1)
	sta	*(___ckd_add_int_sloc0_1_0 + 1)
	lda	(___ckd_add_int_PARM_2 + 2)
	adc	(___ckd_add_int_PARM_3 + 2)
	sta	*(___ckd_add_int_sloc0_1_0 + 2)
	lda	(___ckd_add_int_PARM_2 + 3)
	adc	(___ckd_add_int_PARM_3 + 3)
	sta	*(___ckd_add_int_sloc0_1_0 + 3)
	lda	(___ckd_add_int_PARM_2 + 4)
	adc	(___ckd_add_int_PARM_3 + 4)
	sta	*(___ckd_add_int_sloc0_1_0 + 4)
	lda	(___ckd_add_int_PARM_2 + 5)
	adc	(___ckd_add_int_PARM_3 + 5)
	sta	*(___ckd_add_int_sloc0_1_0 + 5)
	lda	(___ckd_add_int_PARM_2 + 6)
	adc	(___ckd_add_int_PARM_3 + 6)
	sta	*(___ckd_add_int_sloc0_1_0 + 6)
	lda	(___ckd_add_int_PARM_2 + 7)
	adc	(___ckd_add_int_PARM_3 + 7)
	sta	*(___ckd_add_int_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_add_int_sloc0_1_0 + 1)
	lda	*___ckd_add_int_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_int_r_10000_17
	stx	*(DPTR+0)
	ldx	(___ckd_add_int_r_10000_17 + 1)
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
	sta	*___ckd_add_int_sloc1_1_0
	stx	*(___ckd_add_int_sloc1_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00103$
	dex
00103$:
	stx	*(___ckd_add_int_sloc1_1_0 + 2)
	stx	*(___ckd_add_int_sloc1_1_0 + 3)
	stx	*(___ckd_add_int_sloc1_1_0 + 4)
	stx	*(___ckd_add_int_sloc1_1_0 + 5)
	stx	*(___ckd_add_int_sloc1_1_0 + 6)
	stx	*(___ckd_add_int_sloc1_1_0 + 7)
;	Raw cost for generated ic 10 : (23, 32.599998) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_add_int_sloc0_1_0
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 1)
	cmp	*(___ckd_add_int_sloc0_1_0 + 1)
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 2)
	cmp	*(___ckd_add_int_sloc0_1_0 + 2)
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 3)
	cmp	*(___ckd_add_int_sloc0_1_0 + 3)
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 4)
	cmp	*(___ckd_add_int_sloc0_1_0 + 4)
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 5)
	cmp	*(___ckd_add_int_sloc0_1_0 + 5)
	bne	00105$
	lda	*(___ckd_add_int_sloc1_1_0 + 6)
	cmp	*(___ckd_add_int_sloc0_1_0 + 6)
	bne	00105$
	cpx	*(___ckd_add_int_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_uint'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_uint_PARM_2'
;b             Allocated with name '___ckd_add_uint_PARM_3'
;r             Allocated with name '___ckd_add_uint_r_10000_19'
;result        Allocated with name '___ckd_add_uint_result_10000_20'
;sloc0         Allocated with name '___ckd_add_uint_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_uint_sloc1_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 57: inline _Bool __ckd_add_uint __CKD_DEFAULT_IMPL(unsigned int, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_uint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_uint_r_10000_19
	stx	(___ckd_add_uint_r_10000_19 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_uint_PARM_2
	clc
	adc	___ckd_add_uint_PARM_3
	sta	*___ckd_add_uint_sloc0_1_0
	lda	(___ckd_add_uint_PARM_2 + 1)
	adc	(___ckd_add_uint_PARM_3 + 1)
	sta	*(___ckd_add_uint_sloc0_1_0 + 1)
	lda	(___ckd_add_uint_PARM_2 + 2)
	adc	(___ckd_add_uint_PARM_3 + 2)
	sta	*(___ckd_add_uint_sloc0_1_0 + 2)
	lda	(___ckd_add_uint_PARM_2 + 3)
	adc	(___ckd_add_uint_PARM_3 + 3)
	sta	*(___ckd_add_uint_sloc0_1_0 + 3)
	lda	(___ckd_add_uint_PARM_2 + 4)
	adc	(___ckd_add_uint_PARM_3 + 4)
	sta	*(___ckd_add_uint_sloc0_1_0 + 4)
	lda	(___ckd_add_uint_PARM_2 + 5)
	adc	(___ckd_add_uint_PARM_3 + 5)
	sta	*(___ckd_add_uint_sloc0_1_0 + 5)
	lda	(___ckd_add_uint_PARM_2 + 6)
	adc	(___ckd_add_uint_PARM_3 + 6)
	sta	*(___ckd_add_uint_sloc0_1_0 + 6)
	lda	(___ckd_add_uint_PARM_2 + 7)
	adc	(___ckd_add_uint_PARM_3 + 7)
	sta	*(___ckd_add_uint_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	ldx	*(___ckd_add_uint_sloc0_1_0 + 1)
	lda	*___ckd_add_uint_sloc0_1_0
;	Raw cost for generated ic 6 : (4, 6.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	___ckd_add_uint_r_10000_19
	stx	*(DPTR+0)
	ldx	(___ckd_add_uint_r_10000_19 + 1)
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
	sty	*(___ckd_add_uint_sloc1_1_0 + 7)
	sty	*(___ckd_add_uint_sloc1_1_0 + 6)
	sty	*(___ckd_add_uint_sloc1_1_0 + 5)
	sty	*(___ckd_add_uint_sloc1_1_0 + 4)
	sty	*(___ckd_add_uint_sloc1_1_0 + 3)
	sty	*(___ckd_add_uint_sloc1_1_0 + 2)
	stx	*(___ckd_add_uint_sloc1_1_0 + 1)
	sta	*___ckd_add_uint_sloc1_1_0
;	Raw cost for generated ic 10 : (17, 26.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_add_uint_sloc0_1_0
	bne	00104$
	cpx	*(___ckd_add_uint_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 2)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 3)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 4)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 5)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 6)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_uint_sloc1_1_0 + 7)
	cmp	*(___ckd_add_uint_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_long'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_long_PARM_2'
;b             Allocated with name '___ckd_add_long_PARM_3'
;r             Allocated with name '___ckd_add_long_r_10000_21'
;result        Allocated with name '___ckd_add_long_result_10000_22'
;sloc0         Allocated with name '___ckd_add_long_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_long_sloc1_1_0'
;sloc2         Allocated with name '___ckd_add_long_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 58: inline _Bool __ckd_add_long __CKD_DEFAULT_IMPL(long, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_long:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_long_r_10000_21
	stx	(___ckd_add_long_r_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_long_PARM_2
	clc
	adc	___ckd_add_long_PARM_3
	sta	*___ckd_add_long_sloc0_1_0
	lda	(___ckd_add_long_PARM_2 + 1)
	adc	(___ckd_add_long_PARM_3 + 1)
	sta	*(___ckd_add_long_sloc0_1_0 + 1)
	lda	(___ckd_add_long_PARM_2 + 2)
	adc	(___ckd_add_long_PARM_3 + 2)
	sta	*(___ckd_add_long_sloc0_1_0 + 2)
	lda	(___ckd_add_long_PARM_2 + 3)
	adc	(___ckd_add_long_PARM_3 + 3)
	sta	*(___ckd_add_long_sloc0_1_0 + 3)
	lda	(___ckd_add_long_PARM_2 + 4)
	adc	(___ckd_add_long_PARM_3 + 4)
	sta	*(___ckd_add_long_sloc0_1_0 + 4)
	lda	(___ckd_add_long_PARM_2 + 5)
	adc	(___ckd_add_long_PARM_3 + 5)
	sta	*(___ckd_add_long_sloc0_1_0 + 5)
	lda	(___ckd_add_long_PARM_2 + 6)
	adc	(___ckd_add_long_PARM_3 + 6)
	sta	*(___ckd_add_long_sloc0_1_0 + 6)
	lda	(___ckd_add_long_PARM_2 + 7)
	adc	(___ckd_add_long_PARM_3 + 7)
	sta	*(___ckd_add_long_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___ckd_add_long_sloc0_1_0 + 3)
	sta	*(___ckd_add_long_sloc1_1_0 + 3)
	lda	*(___ckd_add_long_sloc0_1_0 + 2)
	sta	*(___ckd_add_long_sloc1_1_0 + 2)
	lda	*(___ckd_add_long_sloc0_1_0 + 1)
	sta	*(___ckd_add_long_sloc1_1_0 + 1)
	lda	*___ckd_add_long_sloc0_1_0
	sta	*___ckd_add_long_sloc1_1_0
;	Raw cost for generated ic 6 : (16, 24.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	stx	*(DPTR+1)
	ldx	___ckd_add_long_r_10000_21
	stx	*(DPTR+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 2)
	iny
	sta	[DPTR],y
	lda	*(___ckd_add_long_sloc1_1_0 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (26, 51.000000) count=1.000000
;	genCast
	lda	*___ckd_add_long_sloc1_1_0
	sta	*___ckd_add_long_sloc2_1_0
	lda	*(___ckd_add_long_sloc1_1_0 + 1)
	sta	*(___ckd_add_long_sloc2_1_0 + 1)
	lda	*(___ckd_add_long_sloc1_1_0 + 2)
	sta	*(___ckd_add_long_sloc2_1_0 + 2)
	lda	*(___ckd_add_long_sloc1_1_0 + 3)
	sta	*(___ckd_add_long_sloc2_1_0 + 3)
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(___ckd_add_long_sloc2_1_0 + 4)
	sta	*(___ckd_add_long_sloc2_1_0 + 5)
	sta	*(___ckd_add_long_sloc2_1_0 + 6)
	sta	*(___ckd_add_long_sloc2_1_0 + 7)
;	Raw cost for generated ic 10 : (31, 44.000000) count=1.000000
;	genCmpEQorNE
	lda	*___ckd_add_long_sloc2_1_0
	cmp	*___ckd_add_long_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 1)
	cmp	*(___ckd_add_long_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 2)
	cmp	*(___ckd_add_long_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 3)
	cmp	*(___ckd_add_long_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 4)
	cmp	*(___ckd_add_long_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 5)
	cmp	*(___ckd_add_long_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 6)
	cmp	*(___ckd_add_long_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_long_sloc2_1_0 + 7)
	cmp	*(___ckd_add_long_sloc0_1_0 + 7)
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
;Allocation info for local variables in function '__ckd_add_ulong'
;------------------------------------------------------------
;a             Allocated with name '___ckd_add_ulong_PARM_2'
;b             Allocated with name '___ckd_add_ulong_PARM_3'
;r             Allocated with name '___ckd_add_ulong_r_10000_23'
;result        Allocated with name '___ckd_add_ulong_result_10000_24'
;sloc0         Allocated with name '___ckd_add_ulong_sloc0_1_0'
;sloc1         Allocated with name '___ckd_add_ulong_sloc1_1_0'
;sloc2         Allocated with name '___ckd_add_ulong_sloc2_1_0'
;------------------------------------------------------------
;	./../../include/stdckdint.h: 59: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_add_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
___ckd_add_ulong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___ckd_add_ulong_r_10000_23
	stx	(___ckd_add_ulong_r_10000_23 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genPlus
	lda	___ckd_add_ulong_PARM_2
	clc
	adc	___ckd_add_ulong_PARM_3
	sta	*___ckd_add_ulong_sloc0_1_0
	lda	(___ckd_add_ulong_PARM_2 + 1)
	adc	(___ckd_add_ulong_PARM_3 + 1)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 1)
	lda	(___ckd_add_ulong_PARM_2 + 2)
	adc	(___ckd_add_ulong_PARM_3 + 2)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 2)
	lda	(___ckd_add_ulong_PARM_2 + 3)
	adc	(___ckd_add_ulong_PARM_3 + 3)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 3)
	lda	(___ckd_add_ulong_PARM_2 + 4)
	adc	(___ckd_add_ulong_PARM_3 + 4)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 4)
	lda	(___ckd_add_ulong_PARM_2 + 5)
	adc	(___ckd_add_ulong_PARM_3 + 5)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 5)
	lda	(___ckd_add_ulong_PARM_2 + 6)
	adc	(___ckd_add_ulong_PARM_3 + 6)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 6)
	lda	(___ckd_add_ulong_PARM_2 + 7)
	adc	(___ckd_add_ulong_PARM_3 + 7)
	sta	*(___ckd_add_ulong_sloc0_1_0 + 7)
;	Raw cost for generated ic 3 : (65, 90.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(___ckd_add_ulong_sloc0_1_0 + 3)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 3)
	lda	*(___ckd_add_ulong_sloc0_1_0 + 2)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 2)
	lda	*(___ckd_add_ulong_sloc0_1_0 + 1)
	sta	*(___ckd_add_ulong_sloc1_1_0 + 1)
	lda	*___ckd_add_ulong_sloc0_1_0
	sta	*___ckd_add_ulong_sloc1_1_0
;	Raw cost for generated ic 6 : (16, 24.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	stx	*(DPTR+1)
	ldx	___ckd_add_ulong_r_10000_23
	stx	*(DPTR+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 2)
	iny
	sta	[DPTR],y
	lda	*(___ckd_add_ulong_sloc1_1_0 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (26, 51.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(___ckd_add_ulong_sloc2_1_0 + 7)
	sty	*(___ckd_add_ulong_sloc2_1_0 + 6)
	sty	*(___ckd_add_ulong_sloc2_1_0 + 5)
	sty	*(___ckd_add_ulong_sloc2_1_0 + 4)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 3)
	lda	*(___ckd_add_ulong_sloc1_1_0 + 2)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 2)
	lda	*(___ckd_add_ulong_sloc1_1_0 + 1)
	sta	*(___ckd_add_ulong_sloc2_1_0 + 1)
	lda	*___ckd_add_ulong_sloc1_1_0
	sta	*___ckd_add_ulong_sloc2_1_0
;	Raw cost for generated ic 10 : (24, 35.000000) count=1.000000
;	genCmpEQorNE
	cmp	*___ckd_add_ulong_sloc0_1_0
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 1)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 1)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 2)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 2)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 3)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 3)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 4)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 4)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 5)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 5)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 6)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 6)
	bne	00104$
	lda	*(___ckd_add_ulong_sloc2_1_0 + 7)
	cmp	*(___ckd_add_ulong_sloc0_1_0 + 7)
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
