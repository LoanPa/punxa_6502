;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __itoa
	
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
	.globl ___itoa_PARM_3
	.globl ___itoa_PARM_2
	.globl ___uitoa_PARM_3
	.globl ___uitoa_PARM_2
	.globl ___uitoa
	.globl ___itoa
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uitoa_sloc0_1_0:
	.ds 1
___uitoa_sloc1_1_0:
	.ds 2
___uitoa_sloc2_1_0:
	.ds 2
___uitoa_sloc3_1_0:
	.ds 2
___uitoa_sloc4_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___uitoa_PARM_2:
	.ds 2
___uitoa_PARM_3:
	.ds 1
___uitoa_value_10000_42:
	.ds 2
___uitoa_tmp_20000_46:
	.ds 1
___itoa_PARM_2:
	.ds 2
___itoa_PARM_3:
	.ds 1
___itoa_value_10000_47:
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
;Allocation info for local variables in function '__uitoa'
;------------------------------------------------------------
;sloc0         Allocated with name '___uitoa_sloc0_1_0'
;sloc1         Allocated with name '___uitoa_sloc1_1_0'
;sloc2         Allocated with name '___uitoa_sloc2_1_0'
;sloc3         Allocated with name '___uitoa_sloc3_1_0'
;sloc4         Allocated with name '___uitoa_sloc4_1_0'
;string        Allocated with name '___uitoa_PARM_2'
;radix         Allocated with name '___uitoa_PARM_3'
;value         Allocated with name '___uitoa_value_10000_42'
;index         Allocated to registers 
;i             Allocated to registers 
;tmp           Allocated with name '___uitoa_tmp_20000_46'
;------------------------------------------------------------
;	../__itoa.c: 42: void __uitoa(unsigned int value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uitoa:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___uitoa_value_10000_42
	stx	(___uitoa_value_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../__itoa.c: 47: do {
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*___uitoa_sloc0_1_0
;	Raw cost for generated ic 73 : (4, 5.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999997
;	../__itoa.c: 48: string[index] = '0' + (value % radix);
;	genCast
;	genCopy
	ldx	#0x00
	lda	*___uitoa_sloc0_1_0
	bpl	00143$
	dex
00143$:
;	Raw cost for generated ic 6 : (7, 9.600000) count=3.999997
;	genPlus
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
;	Raw cost for generated ic 7 : (12, 18.000000) count=3.999997
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(___uitoa_sloc2_1_0 + 1)
	lda	___uitoa_PARM_3
	sta	*___uitoa_sloc2_1_0
;	Raw cost for generated ic 8 : (9, 12.000000) count=3.999997
;	genAssign
;	genCopy
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__moduint_PARM_2 + 1)
	lda	*___uitoa_sloc2_1_0
	sta	__moduint_PARM_2
;	Raw cost for generated ic 88 : (10, 14.000000) count=3.999997
;	Raw cost for generated ic 87 : (0, 0.000000) count=3.999997
;	genCall
;	genSend
	ldx	(___uitoa_value_10000_42 + 1)
	lda	___uitoa_value_10000_42
	jsr	__moduint
;	assignResultValue
;	Raw cost for generated ic 89 : (9, 14.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
;	Raw cost for generated ic 12 : (3, 4.000000) count=3.999997
;	genPointerSet
	ldy	#0x00
;	Raw cost for generated ic 13 : (4, 8.000000) count=3.999997
;	../__itoa.c: 49: if (string[index] > '9')
;	genPointerGet
	sta	[*___uitoa_sloc1_1_0],y
;	Raw cost for generated ic 16 : (2, 5.000000) count=3.999997
;	genCmp
	cmp	#0x39
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 17 : (9, 10.200000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999997
;	../__itoa.c: 50: string[index] += 'A' - '9' - 1;
;	genPointerGet
	lda	[*___uitoa_sloc1_1_0],y
;	Raw cost for generated ic 25 : (2, 5.000000) count=2.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 26 : (0, 0.000000) count=2.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x07
;	Raw cost for generated ic 27 : (3, 4.000000) count=2.999997
;	genPointerSet
	sta	[*___uitoa_sloc1_1_0],y
;	Raw cost for generated ic 28 : (2, 6.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=3.999996
;	../__itoa.c: 51: value /= radix;
;	genAssign
;	genCopy
	lda	*(___uitoa_sloc2_1_0 + 1)
	sta	(__divuint_PARM_2 + 1)
	lda	*___uitoa_sloc2_1_0
	sta	__divuint_PARM_2
;	Raw cost for generated ic 91 : (10, 14.000000) count=3.999996
;	../__itoa.c: 52: ++index;
;	Raw cost for generated ic 90 : (0, 0.000000) count=3.999996
;	genCall
;	genSend
	ldx	(___uitoa_value_10000_42 + 1)
	lda	___uitoa_value_10000_42
	jsr	__divuint
;	assignResultValue
	sta	___uitoa_value_10000_42
	stx	(___uitoa_value_10000_42 + 1)
;	Raw cost for generated ic 92 : (15, 22.000000) count=3.999996
;	genPlus
;	  genPlusInc
	inc	*___uitoa_sloc0_1_0
;	Raw cost for generated ic 33 : (2, 5.000000) count=3.999996
;	../__itoa.c: 53: } while (value != 0);
;	genIfx
	txa
	ora	___uitoa_value_10000_42
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 36 : (9, 11.600000) count=3.999996
;	../__itoa.c: 56: string[index--] = '\0';
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	*___uitoa_sloc0_1_0
	sec
	sbc	#0x01
	sta	*___uitoa_sloc2_1_0
;	Raw cost for generated ic 40 : (7, 10.000000) count=0.999998
;	genCast
;	genCopy
	ldx	#0x00
	lda	*___uitoa_sloc0_1_0
	bpl	00148$
	dex
00148$:
;	Raw cost for generated ic 42 : (7, 9.600000) count=0.999998
;	genPlus
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc1_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc1_1_0 + 1)
;	Raw cost for generated ic 43 : (12, 18.000000) count=0.999998
;	genPointerSet
	lda	#0x00
	tay
	sta	[*___uitoa_sloc1_1_0],y
;	Raw cost for generated ic 44 : (5, 10.000000) count=0.999998
;	../__itoa.c: 59: while (index > i) {
;	genAssign
;	genAssignLit
	sta	*___uitoa_sloc1_1_0
;	Raw cost for generated ic 76 : (2, 3.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=3.999987
;	genCmp
	lda	*___uitoa_sloc1_1_0
	sec
	sbc	*___uitoa_sloc2_1_0
	bvc	00150$
	bpl	00149$
	bmi	00109$
00150$:
	bmi	00149$
	rts
00149$:
;	Raw cost for generated ic 46 : (16, 21.400002) count=3.999987
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=3.999987
;	../__itoa.c: 60: char tmp = string[i];
;	genCast
;	genCopy
	ldx	#0x00
	lda	*___uitoa_sloc1_1_0
	bpl	00152$
	dex
00152$:
;	Raw cost for generated ic 50 : (7, 9.600000) count=2.999989
;	genPlus
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc3_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc3_1_0 + 1)
;	Raw cost for generated ic 51 : (12, 18.000000) count=2.999989
;	genPointerGet
	ldy	#0x00
	lda	[*___uitoa_sloc3_1_0],y
	sta	___uitoa_tmp_20000_46
;	Raw cost for generated ic 52 : (7, 11.000000) count=2.999989
;	../__itoa.c: 61: string[i] = string[index];
;	genCast
;	genCopy
	ldx	#0x00
	lda	*___uitoa_sloc2_1_0
	bpl	00153$
	dex
00153$:
;	Raw cost for generated ic 56 : (7, 9.600000) count=2.999989
;	genPlus
	clc
	adc	___uitoa_PARM_2
	sta	*___uitoa_sloc4_1_0
	txa
	adc	(___uitoa_PARM_2 + 1)
	sta	*(___uitoa_sloc4_1_0 + 1)
;	Raw cost for generated ic 57 : (12, 18.000000) count=2.999989
;	genPointerGet
	lda	[*___uitoa_sloc4_1_0],y
;	Raw cost for generated ic 58 : (2, 5.000000) count=2.999989
;	genPointerSet
	sta	[*___uitoa_sloc3_1_0],y
;	Raw cost for generated ic 59 : (2, 6.000000) count=2.999989
;	../__itoa.c: 62: string[index] = tmp;
;	genPointerSet
	lda	___uitoa_tmp_20000_46
	sta	[*___uitoa_sloc4_1_0],y
;	Raw cost for generated ic 62 : (5, 10.000000) count=2.999989
;	../__itoa.c: 63: ++i;
;	genPlus
;	  genPlusInc
	inc	*___uitoa_sloc1_1_0
;	Raw cost for generated ic 63 : (2, 5.000000) count=2.999989
;	../__itoa.c: 64: --index;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*___uitoa_sloc2_1_0
;	Raw cost for generated ic 65 : (2, 5.000000) count=2.999989
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 67 : (3, 3.000000) count=2.999989
;	genLabel
00109$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999997
;	../__itoa.c: 66: }
;	genEndFunction
	rts
;	Raw cost for generated ic 70 : (1, 6.000000) count=0.999997
;------------------------------------------------------------
;Allocation info for local variables in function '__itoa'
;------------------------------------------------------------
;string        Allocated with name '___itoa_PARM_2'
;radix         Allocated with name '___itoa_PARM_3'
;value         Allocated with name '___itoa_value_10000_47'
;------------------------------------------------------------
;	../__itoa.c: 68: void __itoa(int value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___itoa:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___itoa_value_10000_47
	stx	(___itoa_value_10000_47 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../__itoa.c: 70: if (value < 0 && radix == 10) {
;	genCmp
	bit	(___itoa_value_10000_47 + 1)
	bpl	00102$
;	Raw cost for generated ic 3 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	___itoa_PARM_3
	cmp	#0x0a
	bne	00102$
;	Raw cost for generated ic 7 : (10, 11.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	../__itoa.c: 71: *string++ = '-';
;	genAssign
;	genCopy
	ldx	(___itoa_PARM_2 + 1)
	lda	___itoa_PARM_2
;	Raw cost for generated ic 11 : (6, 8.000000) count=0.562500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x2d
	ldy	#0x00
	sta	[DPTR],y
	lda	*(DPTR+0)
;	Raw cost for generated ic 14 : (12, 19.000000) count=0.562500
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	sta	___itoa_PARM_2
	txa
	adc	#0x00
	sta	(___itoa_PARM_2 + 1)
;	Raw cost for generated ic 12 : (12, 16.000000) count=0.562500
;	../__itoa.c: 72: value = -value;
;	genUminus
	tya
	sec
	sbc	___itoa_value_10000_47
	sta	___itoa_value_10000_47
	tya
	sbc	(___itoa_value_10000_47 + 1)
	sta	(___itoa_value_10000_47 + 1)
;	Raw cost for generated ic 15 : (15, 22.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../__itoa.c: 74: __uitoa(value, string, radix);
;	genAssign
;	genCopy
	lda	(___itoa_PARM_2 + 1)
	sta	(___uitoa_PARM_2 + 1)
	lda	___itoa_PARM_2
	sta	___uitoa_PARM_2
;	Raw cost for generated ic 19 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	___itoa_PARM_3
	sta	___uitoa_PARM_3
;	Raw cost for generated ic 20 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(___itoa_value_10000_47 + 1)
	lda	___itoa_value_10000_47
;	Raw cost for generated ic 21 : (9, 14.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../__itoa.c: 75: }
;	genEndFunction
	jmp	___uitoa
;	Raw cost for generated ic 23 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
