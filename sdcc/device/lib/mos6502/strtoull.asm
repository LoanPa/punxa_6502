;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoull
	
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
	.globl _strncmp
	.globl _strtoull_PARM_3
	.globl _strtoull_PARM_2
	.globl _strtoull
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtoull_sloc0_1_0:
	.ds 2
_strtoull_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__isdigit_base_10000_88:
	.ds 1
_strtoull_PARM_2:
	.ds 2
_strtoull_PARM_3:
	.ds 2
_strtoull_nptr_10000_94:
	.ds 2
_strtoull_ptr_10000_95:
	.ds 2
_strtoull_ret_10000_95:
	.ds 8
_strtoull_range_error_10000_95:
	.ds 1
_strtoull_neg_10000_95:
	.ds 1
_strtoull_b_10000_95:
	.ds 1
_strtoull_digit_30000_112:
	.ds 1
_strtoull_oldret_30001_114:
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base          Allocated with name '__isdigit_base_10000_88'
;c             Allocated to registers a 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../strtoull.c: 42: static signed char _isdigit(const char c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	__isdigit_base_10000_88
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../strtoull.c: 46: if (c >= '0' && c <= '9')
;	genCmp
	cmp	#0x30
	bcc	00110$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00160$
	bcs	00110$
00160$:
;	Raw cost for generated ic 8 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	../strtoull.c: 47: v = c - '0';
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	../strtoull.c: 48: else if (c >= 'a' && c <='z')
;	genCmp
	cmp	#0x61
	bcc	00106$
;	Raw cost for generated ic 17 : (7, 7.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.437500
;	genCmp
	cmp	#0x7a
	beq	00163$
	bcs	00106$
00163$:
;	Raw cost for generated ic 21 : (9, 10.200000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.328125
;	../strtoull.c: 49: v = c - 'a' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 26 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	../strtoull.c: 50: else if (c >= 'A' && c <='Z')
;	genCmp
	cmp	#0x41
	bcc	00102$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.191406
;	genCmp
	cmp	#0x5a
	beq	00166$
	bcs	00102$
00166$:
;	Raw cost for generated ic 34 : (9, 10.200000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.143555
;	../strtoull.c: 51: v = c - 'A' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.107666
;	genPlus
;	  genPlusInc
	clc
	adc	#0xc9
;	Raw cost for generated ic 39 : (3, 4.000000) count=0.107666
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 41 : (3, 3.000000) count=0.107666
;	genLabel
00102$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.083740
;	../strtoull.c: 53: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../strtoull.c: 55: if (v >= base)
;	genCmp
	cmp	__isdigit_base_10000_88
	bcc	00114$
;	Raw cost for generated ic 47 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../strtoull.c: 56: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../strtoull.c: 58: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../strtoull.c: 59: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoull'
;------------------------------------------------------------
;sloc0         Allocated with name '_strtoull_sloc0_1_0'
;sloc1         Allocated with name '_strtoull_sloc1_1_0'
;endptr        Allocated with name '_strtoull_PARM_2'
;base          Allocated with name '_strtoull_PARM_3'
;nptr          Allocated with name '_strtoull_nptr_10000_94'
;__200000004   Allocated to registers 
;ptr           Allocated with name '_strtoull_ptr_10000_95'
;ret           Allocated with name '_strtoull_ret_10000_95'
;range_error   Allocated with name '_strtoull_range_error_10000_95'
;neg           Allocated with name '_strtoull_neg_10000_95'
;b             Allocated with name '_strtoull_b_10000_95'
;__200000005   Allocated to registers 
;c             Allocated to registers 
;digit         Allocated with name '_strtoull_digit_30000_112'
;oldret        Allocated with name '_strtoull_oldret_30001_114'
;------------------------------------------------------------
;	../strtoull.c: 63: unsigned long long int strtoull(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoull
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_strtoull:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strtoull_nptr_10000_94
	stx	(_strtoull_nptr_10000_94 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../strtoull.c: 67: bool range_error = false;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_strtoull_range_error_10000_95
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	../strtoull.c: 68: bool neg = false;
;	genAssign
;	genAssignLit
	sty	_strtoull_neg_10000_95
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	../strtoull.c: 69: unsigned char b = base;
;	genCast
;	genCopy
	lda	_strtoull_PARM_3
	sta	_strtoull_b_10000_95
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	../strtoull.c: 71: while (isblank (*ptr))
;	genAssign
;	genCopy
	txa
	sta	*(_strtoull_sloc0_1_0 + 1)
	lda	_strtoull_nptr_10000_94
	sta	*_strtoull_sloc0_1_0
;	Raw cost for generated ic 249 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoull_sloc0_1_0],y
;	Raw cost for generated ic 10 : (4, 7.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x20
	beq	00149$
;	Raw cost for generated ic 15 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x09
	bne	00175$
;	Raw cost for generated ic 18 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999992
;	genLabel
00149$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=4.333324
;	../strtoull.c: 72: ptr++;
;	genPlus
;	  genPlusInc
	inc	*_strtoull_sloc0_1_0
	bne	00101$
	inc	*(_strtoull_sloc0_1_0 + 1)
;	Raw cost for generated ic 34 : (6, 12.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 36 : (3, 3.000000) count=4.333324
;	genLabel
00175$:
;	Raw cost for generated ic 250 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_strtoull_sloc0_1_0 + 1)
	sta	(_strtoull_ptr_10000_95 + 1)
	lda	*_strtoull_sloc0_1_0
	sta	_strtoull_ptr_10000_95
;	Raw cost for generated ic 251 : (10, 14.000000) count=0.999997
;	../strtoull.c: 75: switch(*ptr)
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoull_sloc0_1_0],y
;	Raw cost for generated ic 39 : (4, 7.000000) count=0.999997
;	genCmpEQorNE
	cmp	#0x2b
	beq	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cmp	#0x2d
	bne	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.749996
;	../strtoull.c: 78: neg = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_strtoull_neg_10000_95
;	Raw cost for generated ic 46 : (5, 6.000000) count=0.562496
;	../strtoull.c: 79: case '+':
;	genLabel
00105$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.812494
;	../strtoull.c: 80: ptr++;
;	genPlus
;	  genPlusInc
	inc	_strtoull_ptr_10000_95
	bne	00283$
	inc	(_strtoull_ptr_10000_95 + 1)
00283$:
;	Raw cost for generated ic 49 : (8, 14.600000) count=0.812494
;	../strtoull.c: 81: }
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999993
;	../strtoull.c: 84: if (!b)
;	genIfx
	lda	_strtoull_b_10000_95
;	genIfxJump : z
	beq	00285$
	jmp	00128$
00285$:
;	Raw cost for generated ic 52 : (8, 9.600000) count=0.999993
;	../strtoull.c: 86: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.749995
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 56 : (10, 12.000000) count=0.749995
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 59 : (10, 12.000000) count=0.749995
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 60 : (9, 14.000000) count=0.749995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00287$
	cpx	#0x00
	beq	00114$
00287$:
;	Raw cost for generated ic 61 : (11, 12.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.562496
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 65 : (10, 12.000000) count=0.562496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 68 : (10, 12.000000) count=0.562496
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 69 : (9, 14.000000) count=0.562496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00115$
	cpx	#0x00
	bne	00115$
;	Raw cost for generated ic 70 : (11, 12.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.609371
;	../strtoull.c: 88: b = 16;
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_strtoull_b_10000_95
;	Raw cost for generated ic 73 : (5, 6.000000) count=0.609371
;	../strtoull.c: 89: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoull_ptr_10000_95
	clc
	adc	#0x02
	sta	_strtoull_ptr_10000_95
	bcc	00290$
	inc	(_strtoull_ptr_10000_95 + 1)
00290$:
;	Raw cost for generated ic 74 : (14, 20.600000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	../strtoull.c: 91: else if (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.140623
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 79 : (10, 12.000000) count=0.140623
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 82 : (10, 12.000000) count=0.140623
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 83 : (9, 14.000000) count=0.140623
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00292$
	cpx	#0x00
	beq	00110$
00292$:
;	Raw cost for generated ic 84 : (11, 12.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.105467
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 88 : (10, 12.000000) count=0.105467
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 91 : (10, 12.000000) count=0.105467
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 92 : (9, 14.000000) count=0.105467
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 93 : (11, 12.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.114256
;	../strtoull.c: 93: b = 2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strtoull_b_10000_95
;	Raw cost for generated ic 96 : (5, 6.000000) count=0.114256
;	../strtoull.c: 94: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoull_ptr_10000_95
	clc
	adc	#0x02
	sta	_strtoull_ptr_10000_95
	bcc	00295$
	inc	(_strtoull_ptr_10000_95 + 1)
00295$:
;	Raw cost for generated ic 97 : (14, 20.600000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 99 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.020970
;	../strtoull.c: 96: else if (*ptr == '0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtoull_ptr_10000_95
	stx	*(DPTR+0)
	ldx	(_strtoull_ptr_10000_95 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 102 : (14, 21.000000) count=0.020970
;	genCmpEQorNE
	cmp	#0x30
	bne	00108$
;	Raw cost for generated ic 103 : (7, 7.600000) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.020970
;	../strtoull.c: 98: b = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	_strtoull_b_10000_95
;	Raw cost for generated ic 107 : (5, 6.000000) count=0.015727
;	../strtoull.c: 99: ptr++;
;	genPlus
;	  genPlusInc
	inc	_strtoull_ptr_10000_95
	bne	00297$
	inc	(_strtoull_ptr_10000_95 + 1)
00297$:
;	Raw cost for generated ic 109 : (8, 14.600000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 111 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=0.000000
;	../strtoull.c: 102: b = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_strtoull_b_10000_95
;	Raw cost for generated ic 113 : (5, 6.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 117 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.249997
;	../strtoull.c: 105: else if (b == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
;	genCmpEQorNE
	lda	_strtoull_b_10000_95
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 119 : (10, 11.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.187496
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 124 : (10, 12.000000) count=0.187496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 127 : (10, 12.000000) count=0.187496
;	Raw cost for generated ic 125 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 128 : (9, 14.000000) count=0.187496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00300$
	cpx	#0x00
	beq	00122$
00300$:
;	Raw cost for generated ic 129 : (11, 12.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.140622
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 133 : (10, 12.000000) count=0.140622
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 136 : (10, 12.000000) count=0.140622
;	Raw cost for generated ic 134 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 137 : (9, 14.000000) count=0.140622
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	cpx	#0x00
	bne	00123$
;	Raw cost for generated ic 138 : (11, 12.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.152341
;	../strtoull.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoull_ptr_10000_95
	clc
	adc	#0x02
	sta	_strtoull_ptr_10000_95
	bcc	00129$
	inc	(_strtoull_ptr_10000_95 + 1)
;	Raw cost for generated ic 141 : (14, 20.600000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 143 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.097654
;	../strtoull.c: 107: else if (b == 2 && (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2)))
;	genCmpEQorNE
	lda	_strtoull_b_10000_95
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 145 : (10, 11.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.073241
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 150 : (10, 12.000000) count=0.073241
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 153 : (10, 12.000000) count=0.073241
;	Raw cost for generated ic 151 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 154 : (9, 14.000000) count=0.073241
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00306$
	cpx	#0x00
	beq	00118$
00306$:
;	Raw cost for generated ic 155 : (11, 12.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.054931
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 159 : (10, 12.000000) count=0.054931
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	ldy	#0x00
	sty	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 162 : (10, 12.000000) count=0.054931
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	ldx	(_strtoull_ptr_10000_95 + 1)
	lda	_strtoull_ptr_10000_95
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 163 : (9, 14.000000) count=0.054931
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00129$
	cpx	#0x00
	bne	00129$
;	Raw cost for generated ic 164 : (11, 12.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.059508
;	../strtoull.c: 108: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoull_ptr_10000_95
	clc
	adc	#0x02
	sta	_strtoull_ptr_10000_95
	bcc	00309$
	inc	(_strtoull_ptr_10000_95 + 1)
00309$:
;	Raw cost for generated ic 167 : (14, 20.600000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 171 : (0, 0.000000) count=0.989349
;	../strtoull.c: 111: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtoull_ptr_10000_95
	stx	*(DPTR+0)
	ldx	(_strtoull_ptr_10000_95 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (14, 21.000000) count=0.989349
;	Raw cost for generated ic 174 : (0, 0.000000) count=0.989349
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	genCall
;	genSend
	ldx	_strtoull_b_10000_95
	jsr	__isdigit
;	assignResultValue
	sta	*_strtoull_sloc0_1_0
;	Raw cost for generated ic 176 : (8, 13.000000) count=0.989349
;	genCmp
	bit	*_strtoull_sloc0_1_0
	bpl	00133$
;	Raw cost for generated ic 177 : (7, 8.600000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.989349
;	../strtoull.c: 113: if (endptr)
;	genIfx
	lda	(_strtoull_PARM_2 + 1)
	ora	_strtoull_PARM_2
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 181 : (11, 13.600000) count=0.742012
;	../strtoull.c: 114: *endptr = (char*)nptr;
;	genAssign
;	genCopy
	ldx	(_strtoull_PARM_2 + 1)
	lda	_strtoull_PARM_2
;	Raw cost for generated ic 184 : (6, 8.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_strtoull_nptr_10000_94
	ldy	#0x00
	sta	[DPTR],y
	lda	(_strtoull_nptr_10000_94 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 185 : (17, 30.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 186 : (0, 0.000000) count=0.742012
;	../strtoull.c: 115: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 187 : (18, 25.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.989349
;	../strtoull.c: 118: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_strtoull_ret_10000_95
	sty	(_strtoull_ret_10000_95 + 1)
	sty	(_strtoull_ret_10000_95 + 2)
	sty	(_strtoull_ret_10000_95 + 3)
	sty	(_strtoull_ret_10000_95 + 4)
	sty	(_strtoull_ret_10000_95 + 5)
	sty	(_strtoull_ret_10000_95 + 6)
	sty	(_strtoull_ret_10000_95 + 7)
;	Raw cost for generated ic 189 : (26, 34.000000) count=0.989349
;	genAssign
;	genCopy
	lda	(_strtoull_ptr_10000_95 + 1)
	sta	*(_strtoull_sloc0_1_0 + 1)
	lda	_strtoull_ptr_10000_95
	sta	*_strtoull_sloc0_1_0
;	Raw cost for generated ic 252 : (10, 14.000000) count=0.989349
;	genLabel
00144$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=3.958165
;	../strtoull.c: 120: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoull_sloc0_1_0],y
;	Raw cost for generated ic 192 : (4, 7.000000) count=3.958165
;	Raw cost for generated ic 193 : (0, 0.000000) count=3.958165
;	Raw cost for generated ic 194 : (0, 0.000000) count=3.958165
;	genCall
;	genSend
	ldx	_strtoull_b_10000_95
	jsr	__isdigit
;	assignResultValue
	sta	_strtoull_digit_30000_112
;	Raw cost for generated ic 195 : (9, 14.000000) count=3.958165
;	../strtoull.c: 122: if (digit < 0)
;	genCmp
	bit	_strtoull_digit_30000_112
	bpl	00313$
	jmp	00138$
00313$:
;	Raw cost for generated ic 197 : (8, 9.600000) count=3.958165
;	skipping generated iCode
;	Raw cost for generated ic 198 : (0, 0.000000) count=3.958165
;	../strtoull.c: 129: unsigned long long int oldret = ret;
;	genAssign
;	genCopy
	lda	(_strtoull_ret_10000_95 + 7)
	sta	(_strtoull_oldret_30001_114 + 7)
	lda	(_strtoull_ret_10000_95 + 6)
	sta	(_strtoull_oldret_30001_114 + 6)
	lda	(_strtoull_ret_10000_95 + 5)
	sta	(_strtoull_oldret_30001_114 + 5)
	lda	(_strtoull_ret_10000_95 + 4)
	sta	(_strtoull_oldret_30001_114 + 4)
	lda	(_strtoull_ret_10000_95 + 3)
	sta	(_strtoull_oldret_30001_114 + 3)
	lda	(_strtoull_ret_10000_95 + 2)
	sta	(_strtoull_oldret_30001_114 + 2)
	lda	(_strtoull_ret_10000_95 + 1)
	sta	(_strtoull_oldret_30001_114 + 1)
	lda	_strtoull_ret_10000_95
	sta	_strtoull_oldret_30001_114
;	Raw cost for generated ic 203 : (48, 64.000000) count=2.968624
;	../strtoull.c: 130: ret *= b;
;	genCast
;	genCopy
	ldy	#0x00
	sty	(__mullonglong_PARM_2 + 7)
	sty	(__mullonglong_PARM_2 + 6)
	sty	(__mullonglong_PARM_2 + 5)
	sty	(__mullonglong_PARM_2 + 4)
	sty	(__mullonglong_PARM_2 + 3)
	sty	(__mullonglong_PARM_2 + 2)
	sty	(__mullonglong_PARM_2 + 1)
	lda	_strtoull_b_10000_95
	sta	__mullonglong_PARM_2
;	Raw cost for generated ic 204 : (29, 38.000000) count=2.968624
;	genAssign
;	genCopy
	lda	(_strtoull_ret_10000_95 + 7)
	sta	(__mullonglong_PARM_1 + 7)
	lda	(_strtoull_ret_10000_95 + 6)
	sta	(__mullonglong_PARM_1 + 6)
	lda	(_strtoull_ret_10000_95 + 5)
	sta	(__mullonglong_PARM_1 + 5)
	lda	(_strtoull_ret_10000_95 + 4)
	sta	(__mullonglong_PARM_1 + 4)
	lda	(_strtoull_ret_10000_95 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(_strtoull_ret_10000_95 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(_strtoull_ret_10000_95 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	_strtoull_ret_10000_95
	sta	__mullonglong_PARM_1
;	Raw cost for generated ic 261 : (48, 64.000000) count=2.968624
;	genCall
	jsr	__mullonglong
;	assignResultValue
	sta	_strtoull_ret_10000_95
	stx	(_strtoull_ret_10000_95 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_strtoull_ret_10000_95 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_strtoull_ret_10000_95 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(_strtoull_ret_10000_95 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(_strtoull_ret_10000_95 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(_strtoull_ret_10000_95 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(_strtoull_ret_10000_95 + 7)
;	Raw cost for generated ic 263 : (39, 56.000000) count=2.968624
;	../strtoull.c: 131: if (ret < oldret)
;	genCmp
	lda	_strtoull_ret_10000_95
	sec
	sbc	_strtoull_oldret_30001_114
	txa
	sbc	(_strtoull_oldret_30001_114 + 1)
	lda	(_strtoull_ret_10000_95 + 2)
	sbc	(_strtoull_oldret_30001_114 + 2)
	lda	(_strtoull_ret_10000_95 + 3)
	sbc	(_strtoull_oldret_30001_114 + 3)
	lda	(_strtoull_ret_10000_95 + 4)
	sbc	(_strtoull_oldret_30001_114 + 4)
	lda	(_strtoull_ret_10000_95 + 5)
	sbc	(_strtoull_oldret_30001_114 + 5)
	lda	(_strtoull_ret_10000_95 + 6)
	sbc	(_strtoull_oldret_30001_114 + 6)
	lda	(_strtoull_ret_10000_95 + 7)
	sbc	(_strtoull_oldret_30001_114 + 7)
	bcs	00137$
;	Raw cost for generated ic 207 : (52, 69.599998) count=2.968624
;	skipping generated iCode
;	Raw cost for generated ic 208 : (0, 0.000000) count=2.968624
;	../strtoull.c: 132: range_error = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_strtoull_range_error_10000_95
;	Raw cost for generated ic 211 : (5, 6.000000) count=2.226612
;	genLabel
00137$:
;	Raw cost for generated ic 212 : (0, 0.000000) count=2.968816
;	../strtoull.c: 133: ret += (unsigned char)digit;
;	genCast
;	genCopy
	lda	_strtoull_digit_30000_112
;	Raw cost for generated ic 213 : (3, 4.000000) count=2.968816
;	genCast
	sta	*_strtoull_sloc1_1_0
	ldy	#0x00
	sty	*(_strtoull_sloc1_1_0 + 1)
	sty	*(_strtoull_sloc1_1_0 + 2)
	sty	*(_strtoull_sloc1_1_0 + 3)
	sty	*(_strtoull_sloc1_1_0 + 4)
	sty	*(_strtoull_sloc1_1_0 + 5)
	sty	*(_strtoull_sloc1_1_0 + 6)
	sty	*(_strtoull_sloc1_1_0 + 7)
;	Raw cost for generated ic 215 : (18, 26.000000) count=2.968816
;	genPlus
	lda	_strtoull_ret_10000_95
	clc
	adc	*_strtoull_sloc1_1_0
	sta	_strtoull_ret_10000_95
	lda	(_strtoull_ret_10000_95 + 1)
	adc	*(_strtoull_sloc1_1_0 + 1)
	sta	(_strtoull_ret_10000_95 + 1)
	lda	(_strtoull_ret_10000_95 + 2)
	adc	*(_strtoull_sloc1_1_0 + 2)
	sta	(_strtoull_ret_10000_95 + 2)
	lda	(_strtoull_ret_10000_95 + 3)
	adc	*(_strtoull_sloc1_1_0 + 3)
	sta	(_strtoull_ret_10000_95 + 3)
	lda	(_strtoull_ret_10000_95 + 4)
	adc	*(_strtoull_sloc1_1_0 + 4)
	sta	(_strtoull_ret_10000_95 + 4)
	lda	(_strtoull_ret_10000_95 + 5)
	adc	*(_strtoull_sloc1_1_0 + 5)
	sta	(_strtoull_ret_10000_95 + 5)
	lda	(_strtoull_ret_10000_95 + 6)
	adc	*(_strtoull_sloc1_1_0 + 6)
	sta	(_strtoull_ret_10000_95 + 6)
	lda	(_strtoull_ret_10000_95 + 7)
	adc	*(_strtoull_sloc1_1_0 + 7)
	sta	(_strtoull_ret_10000_95 + 7)
;	Raw cost for generated ic 216 : (65, 90.000000) count=2.968816
;	../strtoull.c: 118: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	inc	*_strtoull_sloc0_1_0
	bne	00315$
	inc	*(_strtoull_sloc0_1_0 + 1)
00315$:
;	Raw cost for generated ic 220 : (6, 12.600000) count=2.968816
;	genGoto
	jmp	00144$
;	Raw cost for generated ic 222 : (3, 3.000000) count=2.968816
;	genLabel
00138$:
;	Raw cost for generated ic 223 : (0, 0.000000) count=0.989605
;	../strtoull.c: 138: if (endptr)
;	genIfx
	lda	(_strtoull_PARM_2 + 1)
	ora	_strtoull_PARM_2
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 224 : (11, 13.600000) count=0.989605
;	../strtoull.c: 139: *endptr = (char*)ptr;
;	genAssign
;	genCopy
	ldx	(_strtoull_PARM_2 + 1)
	lda	_strtoull_PARM_2
;	Raw cost for generated ic 227 : (6, 8.000000) count=0.742204
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	*_strtoull_sloc0_1_0
	ldy	#0x00
	sta	[DPTR],y
	lda	*(_strtoull_sloc0_1_0 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 228 : (15, 28.000000) count=0.742204
;	genLabel
00140$:
;	Raw cost for generated ic 229 : (0, 0.000000) count=0.989605
;	../strtoull.c: 141: if (range_error)
;	genIfx
	lda	_strtoull_range_error_10000_95
;	genIfxJump : z
	beq	00142$
;	Raw cost for generated ic 230 : (8, 9.600000) count=0.989605
;	../strtoull.c: 143: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 234 : (10, 12.000000) count=0.742204
;	../strtoull.c: 144: return (ULLONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	sta	*___SDCC_m6502_ret4
	sta	*___SDCC_m6502_ret5
	sta	*___SDCC_m6502_ret6
	sta	*___SDCC_m6502_ret7
	rts
;	Raw cost for generated ic 235 : (18, 25.000000) count=0.742204
;	genLabel
00142$:
;	Raw cost for generated ic 236 : (0, 0.000000) count=0.989605
;	../strtoull.c: 147: return (neg ? -ret : ret);
;	genIfx
	lda	_strtoull_neg_10000_95
;	genIfxJump : z
	beq	00151$
;	Raw cost for generated ic 237 : (8, 9.600000) count=0.989605
;	genUminus
	lda	#0x00
	sec
	sbc	_strtoull_ret_10000_95
	sta	*_strtoull_sloc1_1_0
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 1)
	sta	*(_strtoull_sloc1_1_0 + 1)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 2)
	sta	*(_strtoull_sloc1_1_0 + 2)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 3)
	sta	*(_strtoull_sloc1_1_0 + 3)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 4)
	sta	*(_strtoull_sloc1_1_0 + 4)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 5)
	sta	*(_strtoull_sloc1_1_0 + 5)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 6)
	sta	*(_strtoull_sloc1_1_0 + 6)
	lda	#0x00
	sbc	(_strtoull_ret_10000_95 + 7)
	sta	*(_strtoull_sloc1_1_0 + 7)
;	Raw cost for generated ic 238 : (57, 74.000000) count=0.742204
;	genGoto
	jmp	00152$
;	Raw cost for generated ic 240 : (3, 3.000000) count=0.742204
;	genLabel
00151$:
;	Raw cost for generated ic 241 : (0, 0.000000) count=0.247540
;	genAssign
;	genCopy
	lda	(_strtoull_ret_10000_95 + 7)
	sta	*(_strtoull_sloc1_1_0 + 7)
	lda	(_strtoull_ret_10000_95 + 6)
	sta	*(_strtoull_sloc1_1_0 + 6)
	lda	(_strtoull_ret_10000_95 + 5)
	sta	*(_strtoull_sloc1_1_0 + 5)
	lda	(_strtoull_ret_10000_95 + 4)
	sta	*(_strtoull_sloc1_1_0 + 4)
	lda	(_strtoull_ret_10000_95 + 3)
	sta	*(_strtoull_sloc1_1_0 + 3)
	lda	(_strtoull_ret_10000_95 + 2)
	sta	*(_strtoull_sloc1_1_0 + 2)
	lda	(_strtoull_ret_10000_95 + 1)
	sta	*(_strtoull_sloc1_1_0 + 1)
	lda	_strtoull_ret_10000_95
	sta	*_strtoull_sloc1_1_0
;	Raw cost for generated ic 242 : (40, 56.000000) count=0.247540
;	genLabel
00152$:
;	Raw cost for generated ic 243 : (0, 0.000000) count=0.989744
;	genRet
	lda	*(_strtoull_sloc1_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(_strtoull_sloc1_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_strtoull_sloc1_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_strtoull_sloc1_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_strtoull_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtoull_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_strtoull_sloc1_1_0 + 1)
	lda	*_strtoull_sloc1_1_0
;	Raw cost for generated ic 244 : (28, 42.000000) count=0.989744
;	genLabel
;	Raw cost for generated ic 245 : (0, 0.000000) count=0.989744
;	../strtoull.c: 148: }
;	genEndFunction
	rts
;	Raw cost for generated ic 246 : (1, 6.000000) count=0.989744
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area RODATA
___str_2:
	.ascii "0b"
	.db 0x00
	.area CODE
	.area RODATA
___str_3:
	.ascii "0B"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
