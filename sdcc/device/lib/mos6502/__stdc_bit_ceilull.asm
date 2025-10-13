;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __stdc_bit_ceilull
	
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
	.globl ___stdc_bit_ceilull_PARM_1
	.globl ___stdc_bit_ceilull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___stdc_bit_ceilull_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___stdc_bit_ceilull_PARM_1:
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
;Allocation info for local variables in function '__stdc_bit_ceilull'
;------------------------------------------------------------
;sloc0         Allocated with name '___stdc_bit_ceilull_sloc0_1_0'
;value         Allocated with name '___stdc_bit_ceilull_PARM_1'
;i             Allocated to registers 
;------------------------------------------------------------
;	../__stdc_bit_ceilull.c: 37: unsigned long long __stdc_bit_ceilull(unsigned long long value)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __stdc_bit_ceilull
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___stdc_bit_ceilull:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 24 : (2, 2.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	../__stdc_bit_ceilull.c: 41: if(value <= (1ull << i))
;	genCast
;	genCopy
	stx	__slulonglong_PARM_2
;	Raw cost for generated ic 30 : (3, 4.000000) count=2.285713
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__slulonglong_PARM_1
	dey
	sty	(__slulonglong_PARM_1 + 1)
	sty	(__slulonglong_PARM_1 + 2)
	sty	(__slulonglong_PARM_1 + 3)
	sty	(__slulonglong_PARM_1 + 4)
	sty	(__slulonglong_PARM_1 + 5)
	sty	(__slulonglong_PARM_1 + 6)
	sty	(__slulonglong_PARM_1 + 7)
;	Raw cost for generated ic 31 : (27, 36.000000) count=2.285713
;	genCall
	txa
	pha
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_bit_ceilull_sloc0_1_0
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	pla
	tax
;	Raw cost for generated ic 33 : (38, 63.000000) count=2.285713
;	genCmp
	lda	*___stdc_bit_ceilull_sloc0_1_0
	sec
	sbc	___stdc_bit_ceilull_PARM_1
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	sbc	(___stdc_bit_ceilull_PARM_1 + 1)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	sbc	(___stdc_bit_ceilull_PARM_1 + 2)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	sbc	(___stdc_bit_ceilull_PARM_1 + 3)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	sbc	(___stdc_bit_ceilull_PARM_1 + 4)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	sbc	(___stdc_bit_ceilull_PARM_1 + 5)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	sbc	(___stdc_bit_ceilull_PARM_1 + 6)
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
	sbc	(___stdc_bit_ceilull_PARM_1 + 7)
	bcs	00103$
;	Raw cost for generated ic 5 : (46, 63.599998) count=2.285713
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=2.285713
;	../__stdc_bit_ceilull.c: 40: for(i = 0; i < ULLONG_WIDTH; i++)
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 13 : (1, 2.000000) count=1.714284
;	genCmp
	cpx	#0x40
	bcc	00104$
;	Raw cost for generated ic 15 : (7, 7.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.714284
;	genLabel
00103$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.999999
;	../__stdc_bit_ceilull.c: 43: return (1ull << i);
;	genCast
;	genCopy
	stx	__slulonglong_PARM_2
;	Raw cost for generated ic 34 : (3, 4.000000) count=0.999999
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__slulonglong_PARM_1
	ldy	#0x00
	sty	(__slulonglong_PARM_1 + 1)
	sty	(__slulonglong_PARM_1 + 2)
	sty	(__slulonglong_PARM_1 + 3)
	sty	(__slulonglong_PARM_1 + 4)
	sty	(__slulonglong_PARM_1 + 5)
	sty	(__slulonglong_PARM_1 + 6)
	sty	(__slulonglong_PARM_1 + 7)
;	Raw cost for generated ic 35 : (28, 36.000000) count=0.999999
;	genCall
	jsr	__slulonglong
;	assignResultValue
	sta	*___stdc_bit_ceilull_sloc0_1_0
	stx	*(___stdc_bit_ceilull_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(___stdc_bit_ceilull_sloc0_1_0 + 7)
;	Raw cost for generated ic 37 : (31, 48.000000) count=0.999999
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(___stdc_bit_ceilull_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___stdc_bit_ceilull_sloc0_1_0
;	Raw cost for generated ic 20 : (24, 36.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.999999
;	../__stdc_bit_ceilull.c: 44: }
;	genEndFunction
	rts
;	Raw cost for generated ic 22 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
