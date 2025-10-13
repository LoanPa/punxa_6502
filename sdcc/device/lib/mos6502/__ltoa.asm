;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __ltoa
	
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
	.globl ___ltoa_PARM_3
	.globl ___ltoa_PARM_2
	.globl ___ltoa_PARM_1
	.globl ___ultoa_PARM_3
	.globl ___ultoa_PARM_2
	.globl ___ultoa_PARM_1
	.globl ___ultoa
	.globl ___ltoa
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___ultoa_sloc0_1_0:
	.ds 1
___ultoa_sloc1_1_0:
	.ds 4
___ultoa_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___ultoa_PARM_1:
	.ds 4
___ultoa_PARM_2:
	.ds 2
___ultoa_PARM_3:
	.ds 1
___ultoa_buffer_10000_43:
	.ds 32
___ltoa_PARM_1:
	.ds 4
___ltoa_PARM_2:
	.ds 2
___ltoa_PARM_3:
	.ds 1
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
;Allocation info for local variables in function '__ultoa'
;------------------------------------------------------------
;sloc0         Allocated with name '___ultoa_sloc0_1_0'
;sloc1         Allocated with name '___ultoa_sloc1_1_0'
;sloc2         Allocated with name '___ultoa_sloc2_1_0'
;value         Allocated with name '___ultoa_PARM_1'
;string        Allocated with name '___ultoa_PARM_2'
;radix         Allocated with name '___ultoa_PARM_3'
;buffer        Allocated with name '___ultoa_buffer_10000_43'
;index         Allocated to registers 
;c             Allocated to registers y 
;------------------------------------------------------------
;	../__ltoa.c: 58: void __ultoa(unsigned long value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ultoa:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 63: do {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x20
	stx	*___ultoa_sloc0_1_0
;	Raw cost for generated ic 51 : (4, 5.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	../__ltoa.c: 64: unsigned char c = '0' + (value % radix);
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(___ultoa_sloc1_1_0 + 3)
	sty	*(___ultoa_sloc1_1_0 + 2)
	sty	*(___ultoa_sloc1_1_0 + 1)
	lda	___ultoa_PARM_3
	sta	*___ultoa_sloc1_1_0
;	Raw cost for generated ic 4 : (13, 18.000000) count=3.999997
;	genAssign
;	genCopy
	lda	(___ultoa_PARM_1 + 3)
	sta	(__modulong_PARM_1 + 3)
	lda	(___ultoa_PARM_1 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	(___ultoa_PARM_1 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	___ultoa_PARM_1
	sta	__modulong_PARM_1
;	Raw cost for generated ic 65 : (24, 32.000000) count=3.999997
;	genAssign
;	genCopy
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*___ultoa_sloc1_1_0
	sta	__modulong_PARM_2
;	Raw cost for generated ic 66 : (20, 28.000000) count=3.999997
;	genCall
	jsr	__modulong
;	assignResultValue
	sta	*___ultoa_sloc2_1_0
	stx	*(___ultoa_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___ultoa_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___ultoa_sloc2_1_0 + 3)
;	Raw cost for generated ic 67 : (15, 24.000000) count=3.999997
;	genCast
;	genCopy
	lda	*___ultoa_sloc2_1_0
;	Raw cost for generated ic 6 : (2, 3.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
	tay
;	Raw cost for generated ic 8 : (4, 6.000000) count=3.999997
;	../__ltoa.c: 65: if (c > (unsigned char)'9')
;	genCmp
	cpy	#0x39
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 10 : (9, 10.200000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999997
;	../__ltoa.c: 66: c += 'A' - '9' - 1;
;	genCast
;	genCopy
	tya
;	Raw cost for generated ic 14 : (1, 2.000000) count=2.999997
;	genPlus
;	  genPlusInc
	clc
	adc	#0x07
	tay
;	Raw cost for generated ic 15 : (4, 6.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=3.999996
;	../__ltoa.c: 67: buffer[--index] = c;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*___ultoa_sloc0_1_0
;	Raw cost for generated ic 19 : (2, 5.000000) count=3.999996
;	genAssign
;	genCopy
;	Raw cost for generated ic 21 : (4, 5.000000) count=3.999996
;	genPointerSet
	lda	*___ultoa_sloc0_1_0
	tax
	tya
	sta	(___ultoa_buffer_10000_43+0+0x0000),x
;	Raw cost for generated ic 22 : (5, 8.000000) count=3.999996
;	../__ltoa.c: 68: value /= radix;
;	genAssign
;	genCopy
	lda	(___ultoa_PARM_1 + 3)
	sta	(__divulong_PARM_1 + 3)
	lda	(___ultoa_PARM_1 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	(___ultoa_PARM_1 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	___ultoa_PARM_1
	sta	__divulong_PARM_1
;	Raw cost for generated ic 68 : (24, 32.000000) count=3.999996
;	genAssign
;	genCopy
	lda	*(___ultoa_sloc1_1_0 + 3)
	sta	(__divulong_PARM_2 + 3)
	lda	*(___ultoa_sloc1_1_0 + 2)
	sta	(__divulong_PARM_2 + 2)
	lda	*(___ultoa_sloc1_1_0 + 1)
	sta	(__divulong_PARM_2 + 1)
	lda	*___ultoa_sloc1_1_0
	sta	__divulong_PARM_2
;	Raw cost for generated ic 69 : (20, 28.000000) count=3.999996
;	genCall
	jsr	__divulong
;	assignResultValue
	sta	___ultoa_PARM_1
	stx	(___ultoa_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___ultoa_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___ultoa_PARM_1 + 3)
;	Raw cost for generated ic 70 : (19, 28.000000) count=3.999996
;	../__ltoa.c: 69: } while (value);
;	genIfx
	ora	(___ultoa_PARM_1 + 2)
	ora	(___ultoa_PARM_1 + 1)
	ora	___ultoa_PARM_1
;	genIfxJump : z
	beq	00145$
	jmp	00103$
00145$:
;	Raw cost for generated ic 27 : (14, 17.600000) count=3.999996
;	../__ltoa.c: 71: do {
;	genAssign
;	genCopy
	lda	(___ultoa_PARM_2 + 1)
	sta	*(___ultoa_sloc2_1_0 + 1)
	lda	___ultoa_PARM_2
	sta	*___ultoa_sloc2_1_0
;	Raw cost for generated ic 54 : (10, 14.000000) count=0.999998
;	genAssign
;	genCopy
	lda	*___ultoa_sloc0_1_0
	sta	*___ultoa_sloc1_1_0
;	Raw cost for generated ic 57 : (4, 6.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=3.999988
;	../__ltoa.c: 72: *string++ = buffer[index];
;	genAssign
;	genCopy
;	Raw cost for generated ic 35 : (4, 5.000000) count=3.999988
;	genPointerGet
	lda	*___ultoa_sloc1_1_0
	tax
	lda	(___ultoa_buffer_10000_43+0+0x0000),x
;	Raw cost for generated ic 36 : (4, 6.000000) count=3.999988
;	genPointerSet
	ldy	#0x00
	sta	[*___ultoa_sloc2_1_0],y
;	Raw cost for generated ic 37 : (4, 8.000000) count=3.999988
;	genPlus
;	  genPlusInc
	inc	*___ultoa_sloc2_1_0
	bne	00146$
	inc	*(___ultoa_sloc2_1_0 + 1)
00146$:
;	Raw cost for generated ic 32 : (6, 12.600000) count=3.999988
;	../__ltoa.c: 73: } while ( ++index != NUMBER_OF_DIGITS );
;	genPlus
;	  genPlusInc
	inc	*___ultoa_sloc1_1_0
;	Raw cost for generated ic 39 : (2, 5.000000) count=3.999988
;	genCmpEQorNE
	lda	*___ultoa_sloc1_1_0
	cmp	#0x20
	bne	00106$
;	Raw cost for generated ic 41 : (9, 10.600000) count=3.999988
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=3.999988
;	../__ltoa.c: 75: *string = 0;  /* string terminator */
;	genPointerSet
	tya
	sta	[*___ultoa_sloc2_1_0],y
;	Raw cost for generated ic 46 : (3, 8.000000) count=0.999997
;	genLabel
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999997
;	../__ltoa.c: 76: }
;	genEndFunction
	rts
;	Raw cost for generated ic 48 : (1, 6.000000) count=0.999997
;------------------------------------------------------------
;Allocation info for local variables in function '__ltoa'
;------------------------------------------------------------
;value         Allocated with name '___ltoa_PARM_1'
;string        Allocated with name '___ltoa_PARM_2'
;radix         Allocated with name '___ltoa_PARM_3'
;------------------------------------------------------------
;	../__ltoa.c: 78: void __ltoa(long value, char* string, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ltoa:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 80: if (value < 0 && radix == 10) {
;	genCmp
	bit	(___ltoa_PARM_1 + 3)
	bpl	00102$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	___ltoa_PARM_3
	cmp	#0x0a
	bne	00102$
;	Raw cost for generated ic 6 : (10, 11.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../__ltoa.c: 81: *string++ = '-';
;	genAssign
;	genCopy
	ldx	(___ltoa_PARM_2 + 1)
	lda	___ltoa_PARM_2
;	Raw cost for generated ic 10 : (6, 8.000000) count=0.562500
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x2d
	ldy	#0x00
	sta	[DPTR],y
	lda	*(DPTR+0)
;	Raw cost for generated ic 13 : (12, 19.000000) count=0.562500
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	sta	___ltoa_PARM_2
	txa
	adc	#0x00
	sta	(___ltoa_PARM_2 + 1)
;	Raw cost for generated ic 11 : (12, 16.000000) count=0.562500
;	../__ltoa.c: 82: value = -value;
;	genUminus
	tya
	sec
	sbc	___ltoa_PARM_1
	sta	___ltoa_PARM_1
	tya
	sbc	(___ltoa_PARM_1 + 1)
	sta	(___ltoa_PARM_1 + 1)
	tya
	sbc	(___ltoa_PARM_1 + 2)
	sta	(___ltoa_PARM_1 + 2)
	tya
	sbc	(___ltoa_PARM_1 + 3)
	sta	(___ltoa_PARM_1 + 3)
;	Raw cost for generated ic 14 : (29, 42.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 84: __ultoa(value, string, radix);
;	genAssign
;	genCopy
	lda	(___ltoa_PARM_1 + 3)
	sta	(___ultoa_PARM_1 + 3)
	lda	(___ltoa_PARM_1 + 2)
	sta	(___ultoa_PARM_1 + 2)
	lda	(___ltoa_PARM_1 + 1)
	sta	(___ultoa_PARM_1 + 1)
	lda	___ltoa_PARM_1
	sta	___ultoa_PARM_1
;	Raw cost for generated ic 17 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(___ltoa_PARM_2 + 1)
	sta	(___ultoa_PARM_2 + 1)
	lda	___ltoa_PARM_2
	sta	___ultoa_PARM_2
;	Raw cost for generated ic 18 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	___ltoa_PARM_3
	sta	___ultoa_PARM_3
;	Raw cost for generated ic 19 : (6, 8.000000) count=1.000000
;	genCall
;	Raw cost for generated ic 20 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../__ltoa.c: 85: }
;	genEndFunction
	jmp	___ultoa
;	Raw cost for generated ic 22 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
