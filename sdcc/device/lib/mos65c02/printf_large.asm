;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module printf_large
	
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
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__print_format_sloc0_1_0:
	.ds 2
__print_format_sloc1_1_0:
	.ds 2
__print_format_sloc2_1_0:
	.ds 4
__print_format_sloc3_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_calculate_digit_ul_10000_228:
	.ds 4
_calculate_digit_b4_10000_228:
	.ds 1
_calculate_digit_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 2
_value:
	.ds 5
_charsOutputted:
	.ds 2
_calculate_digit_radix_10000_227:
	.ds 1
__print_format_PARM_2:
	.ds 2
__print_format_PARM_3:
	.ds 2
__print_format_PARM_4:
	.ds 2
__print_format_left_justify_10000_233:
	.ds 1
__print_format_zero_padding_10000_233:
	.ds 1
__print_format_prefix_sign_10000_233:
	.ds 1
__print_format_prefix_space_10000_233:
	.ds 1
__print_format_signed_argument_10000_233:
	.ds 1
__print_format_char_argument_10000_233:
	.ds 1
__print_format_long_argument_10000_233:
	.ds 1
__print_format_float_argument_10000_233:
	.ds 1
__print_format_lsd_10000_233:
	.ds 1
__print_format_radix_10000_233:
	.ds 1
__print_format_width_10000_233:
	.ds 2
__print_format_decimals_10000_233:
	.ds 2
__print_format_length_10000_233:
	.ds 2
__print_format_store_70000_267:
	.ds 6
__print_format_pstore_70000_267:
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
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c             Allocated to registers x 
;------------------------------------------------------------
;	../printf_large.c: 105: _output_char (unsigned char c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__output_char:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	tax
;	Raw cost for generated ic 2 : (1, 2.000000) count=1.000000
;	../printf_large.c: 107: output_char( c, p );
;	genIpush
	lda	(_p + 1)
	pha
	lda	_p
	pha
;	Raw cost for generated ic 3 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genPcall
	lda	_output_char
	sta	*(REGTEMP+0)
	lda	(_output_char + 1)
	sta	*(REGTEMP+1)
;	genSend
	txa
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 5 : (18, 30.000000) count=1.000000
;	../printf_large.c: 108: charsOutputted++;
;	genPlus
;	  genPlusInc
	inc	_charsOutputted
	bne	00103$
	inc	(_charsOutputted + 1)
00103$:
;	Raw cost for generated ic 7 : (8, 14.600000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../printf_large.c: 109: }
;	genEndFunction
	rts
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c             Allocated to registers a 
;n             Allocated to registers a 
;------------------------------------------------------------
;	../printf_large.c: 130: output_digit (unsigned char n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../printf_large.c: 132: register unsigned char c = n + (unsigned char)'0';
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../printf_large.c: 134: if (c > (unsigned char)'9')
;	genCmp
	cmp	#0x39
	beq	00104$
	bcc	00104$
;	Raw cost for generated ic 5 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../printf_large.c: 136: c += (unsigned char)('A' - '0' - 10);
;	genPlus
;	  genPlusInc
	clc
	adc	#0x07
;	Raw cost for generated ic 9 : (3, 4.000000) count=0.750000
;	../printf_large.c: 137: if (lower_case)
;	genIfx
	ldy	_lower_case
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 11 : (8, 9.600000) count=0.750000
;	../printf_large.c: 138: c = tolower(c);
;	genOr
	ora	#0x20
;	Raw cost for generated ic 14 : (2, 2.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../printf_large.c: 140: _output_char( c );
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 20 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../printf_large.c: 141: }
;	genEndFunction
	jmp	__output_char
;	Raw cost for generated ic 22 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b             Allocated to registers x 
;------------------------------------------------------------
;	../printf_large.c: 157: output_2digits (unsigned char b)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_2digits:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (1, 2.000000) count=1.000000
;	../printf_large.c: 159: output_digit( b>>4   );
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	tax
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 3 : (5, 10.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
	phx
;	genSend
	jsr	_output_digit
	plx
;	Raw cost for generated ic 5 : (5, 13.000000) count=1.000000
;	../printf_large.c: 160: output_digit( b&0x0F );
;	genAnd
	txa
	and	#0x0f
;	Raw cost for generated ic 7 : (3, 4.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 10 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../printf_large.c: 161: }
;	genEndFunction
	jmp	_output_digit
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix         Allocated with name '_calculate_digit_radix_10000_227'
;ul            Allocated with name '_calculate_digit_ul_10000_228'
;b4            Allocated with name '_calculate_digit_b4_10000_228'
;i             Allocated to registers y 
;sloc0         Allocated with name '_calculate_digit_sloc0_1_0'
;------------------------------------------------------------
;	../printf_large.c: 189: calculate_digit (unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calculate_digit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_calculate_digit_radix_10000_227
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	../printf_large.c: 191: register unsigned long ul = value.ul;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(_calculate_digit_ul_10000_228 + 3)
	lda	(_value + 2)
	sta	*(_calculate_digit_ul_10000_228 + 2)
	lda	(_value + 1)
	sta	*(_calculate_digit_ul_10000_228 + 1)
	lda	_value
	sta	*_calculate_digit_ul_10000_228
;	Raw cost for generated ic 5 : (20, 28.000000) count=1.000000
;	../printf_large.c: 192: register unsigned char b4 = value.byte[4];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_value + 0x0004)
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	../printf_large.c: 195: do
;	genAssign
;	genCopy
	ldy	#0x20
;	Raw cost for generated ic 52 : (2, 2.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=3.999997
;	../printf_large.c: 197: b4 = (b4 << 1);
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=1
	txa
	asl	a
	sta	*_calculate_digit_b4_10000_228
;	Raw cost for generated ic 14 : (4, 7.000000) count=3.999997
;	../printf_large.c: 198: b4 |= (ul >> 31) & 0x01;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	*(_calculate_digit_ul_10000_228 + 3)
	asl	a
	lda	#0x00
	sta	*(_calculate_digit_sloc0_1_0 + 3)
	sta	*(_calculate_digit_sloc0_1_0 + 2)
	sta	*(_calculate_digit_sloc0_1_0 + 1)
	rol	a
	sta	*_calculate_digit_sloc0_1_0
;	Raw cost for generated ic 16 : (14, 21.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 51 : (0, 0.000000) count=3.999997
;	genAnd
	and	#0x01
;	Raw cost for generated ic 17 : (2, 2.000000) count=3.999997
;	genOr
	ora	*_calculate_digit_b4_10000_228
	tax
;	Raw cost for generated ic 19 : (3, 5.000000) count=3.999997
;	../printf_large.c: 199: ul <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	asl	*_calculate_digit_ul_10000_228
	rol	*(_calculate_digit_ul_10000_228 + 1)
	rol	*(_calculate_digit_ul_10000_228 + 2)
	rol	*(_calculate_digit_ul_10000_228 + 3)
;	Raw cost for generated ic 22 : (8, 20.000000) count=3.999997
;	../printf_large.c: 201: if (radix <= b4 )
;	genCmp
	cpx	_calculate_digit_radix_10000_227
	bcc	00104$
;	Raw cost for generated ic 24 : (8, 9.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 25 : (0, 0.000000) count=3.999997
;	../printf_large.c: 203: b4 -= radix;
;	genMinus
	txa
	sec
	sbc	_calculate_digit_radix_10000_227
	tax
;	Raw cost for generated ic 28 : (6, 10.000000) count=2.999997
;	../printf_large.c: 204: ul |= 1;
;	genOr
	lda	*_calculate_digit_ul_10000_228
	ora	#0x01
	sta	*_calculate_digit_ul_10000_228
;	Raw cost for generated ic 30 : (6, 8.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=3.999996
;	../printf_large.c: 206: } while (--i);
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 34 : (1, 2.000000) count=3.999996
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 36 : (5, 5.600000) count=3.999996
;	../printf_large.c: 207: value.ul = ul;
;	genPointerSet
;	genDataPointerSet
	lda	*(_calculate_digit_ul_10000_228 + 3)
	sta	(_value + 3)
	lda	*(_calculate_digit_ul_10000_228 + 2)
	sta	(_value + 2)
	lda	*(_calculate_digit_ul_10000_228 + 1)
	sta	(_value + 1)
	lda	*_calculate_digit_ul_10000_228
	sta	_value
;	Raw cost for generated ic 41 : (20, 28.000000) count=0.999998
;	../printf_large.c: 208: value.byte[4] = b4;
;	genPointerSet
;	genDataPointerSet
	stx	(_value + 0x0004)
;	Raw cost for generated ic 45 : (3, 4.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.999998
;	../printf_large.c: 209: }
;	genEndFunction
	rts
;	Raw cost for generated ic 47 : (1, 6.000000) count=0.999998
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;sloc0         Allocated with name '__print_format_sloc0_1_0'
;sloc1         Allocated with name '__print_format_sloc1_1_0'
;sloc2         Allocated with name '__print_format_sloc2_1_0'
;sloc3         Allocated with name '__print_format_sloc3_1_0'
;pvoid         Allocated with name '__print_format_PARM_2'
;format        Allocated with name '__print_format_PARM_3'
;ap            Allocated with name '__print_format_PARM_4'
;pfn           Allocated to registers 
;left_justify  Allocated with name '__print_format_left_justify_10000_233'
;zero_padding  Allocated with name '__print_format_zero_padding_10000_233'
;prefix_sign   Allocated with name '__print_format_prefix_sign_10000_233'
;prefix_space  Allocated with name '__print_format_prefix_space_10000_233'
;signed_argument Allocated with name '__print_format_signed_argument_10000_233'
;char_argument Allocated with name '__print_format_char_argument_10000_233'
;long_argument Allocated with name '__print_format_long_argument_10000_233'
;float_argument Allocated with name '__print_format_float_argument_10000_233'
;lsd           Allocated with name '__print_format_lsd_10000_233'
;radix         Allocated with name '__print_format_radix_10000_233'
;width         Allocated with name '__print_format_width_10000_233'
;decimals      Allocated with name '__print_format_decimals_10000_233'
;length        Allocated with name '__print_format_length_10000_233'
;c             Allocated to registers a 
;store         Allocated with name '__print_format_store_70000_267'
;pstore        Allocated with name '__print_format_pstore_70000_267'
;------------------------------------------------------------
;	../printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__print_format:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_output_char
	stx	(_output_char + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../printf_large.c: 462: p = pvoid;
;	genAssign
;	genCopy
	lda	(__print_format_PARM_2 + 1)
	sta	(_p + 1)
	lda	__print_format_PARM_2
	sta	_p
;	Raw cost for generated ic 5 : (12, 16.000000) count=1.000000
;	../printf_large.c: 466: charsOutputted = 0;
;	genAssign
;	genAssignLit
	stz	_charsOutputted
	stz	(_charsOutputted + 1)
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
;	../printf_large.c: 475: while( c=*format++ )
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 192 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 282 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 296 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 332 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 342 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 366 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 367 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 407 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 373 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 432 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 454 : (0, 0.000000) count=1.000000
;	genLabel
00231$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=3.899817
;	genAssign
;	genCopy
	ldx	(__print_format_PARM_3 + 1)
	lda	__print_format_PARM_3
;	Raw cost for generated ic 10 : (6, 8.000000) count=3.899817
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 13 : (11, 18.000000) count=3.899817
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	sta	__print_format_PARM_3
	txa
	adc	#0x00
	sta	(__print_format_PARM_3 + 1)
;	Raw cost for generated ic 11 : (12, 16.000000) count=3.899817
;	genAssign
;	genCopy
	tya
;	Raw cost for generated ic 14 : (1, 2.000000) count=3.899817
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00782$
	jmp	00233$
00782$:
;	Raw cost for generated ic 15 : (7, 7.600000) count=3.899817
;	../printf_large.c: 477: if ( c=='%' )
;	genCmpEQorNE
	cmp	#0x25
	beq	00783$
	jmp	00229$
00783$:
;	Raw cost for generated ic 18 : (7, 7.600000) count=2.925049
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=2.925049
;	../printf_large.c: 479: left_justify    = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_left_justify_10000_233
;	Raw cost for generated ic 22 : (3, 4.000000) count=2.184802
;	../printf_large.c: 480: zero_padding    = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_zero_padding_10000_233
;	Raw cost for generated ic 23 : (3, 4.000000) count=2.184802
;	../printf_large.c: 481: prefix_sign     = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_prefix_sign_10000_233
;	Raw cost for generated ic 24 : (3, 4.000000) count=2.184802
;	../printf_large.c: 482: prefix_space    = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_prefix_space_10000_233
;	Raw cost for generated ic 25 : (3, 4.000000) count=2.184802
;	../printf_large.c: 483: signed_argument = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_signed_argument_10000_233
;	Raw cost for generated ic 26 : (3, 4.000000) count=2.184802
;	../printf_large.c: 484: char_argument   = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_char_argument_10000_233
;	Raw cost for generated ic 27 : (3, 4.000000) count=2.184802
;	../printf_large.c: 485: long_argument   = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_long_argument_10000_233
;	Raw cost for generated ic 28 : (3, 4.000000) count=2.184802
;	../printf_large.c: 486: float_argument  = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_float_argument_10000_233
;	Raw cost for generated ic 29 : (3, 4.000000) count=2.184802
;	../printf_large.c: 487: radix           = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_radix_10000_233
;	Raw cost for generated ic 30 : (3, 4.000000) count=2.184802
;	../printf_large.c: 488: width           = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_width_10000_233
	stz	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 31 : (6, 8.000000) count=2.184802
;	../printf_large.c: 489: decimals        = -1;
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	__print_format_decimals_10000_233
	stx	(__print_format_decimals_10000_233 + 1)
;	Raw cost for generated ic 32 : (8, 10.000000) count=2.184802
;	../printf_large.c: 491: get_conversion_spec:
;	genAssign
;	genCopy
	lda	(__print_format_PARM_3 + 1)
	sta	*(__print_format_sloc0_1_0 + 1)
	lda	__print_format_PARM_3
	sta	*__print_format_sloc0_1_0
;	Raw cost for generated ic 684 : (10, 14.000000) count=2.184802
;	genLabel
00101$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=2.863543
;	../printf_large.c: 493: c = *format++;
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc0_1_0],y
	tay
;	Raw cost for generated ic 37 : (5, 9.000000) count=2.863543
;	genPlus
;	  genPlusInc
	inc	*__print_format_sloc0_1_0
	bne	00784$
	inc	*(__print_format_sloc0_1_0 + 1)
00784$:
;	Raw cost for generated ic 35 : (6, 12.600000) count=2.863543
;	genAssign
;	genCopy
	lda	*(__print_format_sloc0_1_0 + 1)
	sta	(__print_format_PARM_3 + 1)
	lda	*__print_format_sloc0_1_0
	sta	__print_format_PARM_3
;	Raw cost for generated ic 36 : (10, 14.000000) count=2.863543
;	../printf_large.c: 495: if (c=='%')
;	genCmpEQorNE
	cpy	#0x25
	bne	00103$
;	Raw cost for generated ic 39 : (7, 7.600000) count=2.863543
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.863543
;	../printf_large.c: 497: OUTPUT_CHAR(c, p);
;	Raw cost for generated ic 43 : (0, 0.000000) count=2.147657
;	genCall
;	genSend
	tya
	jsr	__output_char
;	Raw cost for generated ic 44 : (4, 8.000000) count=2.147657
;	../printf_large.c: 498: continue;
;	genGoto
	jmp	00231$
;	Raw cost for generated ic 45 : (3, 3.000000) count=2.147657
;	genLabel
00103$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.715886
;	../printf_large.c: 501: if (isdigit(c))
;	genCmp
	cpy	#0x30
	bcs	00786$
	jmp	00110$
00786$:
;	Raw cost for generated ic 47 : (7, 7.600000) count=0.715886
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.715886
;	genCmp
	cpy	#0x39
	beq	00787$
	bcs	00110$
00787$:
;	Raw cost for generated ic 51 : (9, 10.200000) count=0.537951
;	skipping generated iCode
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.537951
;	../printf_large.c: 503: if (decimals==-1)
;	genCmpEQorNE
	lda	__print_format_decimals_10000_233
	cmp	#0xff
	bne	00107$
	lda	(__print_format_decimals_10000_233 + 1)
	cmp	#0xff
	bne	00107$
;	Raw cost for generated ic 55 : (20, 23.200001) count=0.411172
;	skipping generated iCode
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.411172
;	../printf_large.c: 505: width = 10*width + c - '0';
;	genAssign
;	genCopy
	lda	(__print_format_width_10000_233 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	__print_format_width_10000_233
	sta	__mulint_PARM_2
;	Raw cost for generated ic 747 : (12, 16.000000) count=0.308379
;	Raw cost for generated ic 746 : (0, 0.000000) count=0.308379
;	genCall
	phy
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	ply
;	Raw cost for generated ic 748 : (9, 17.000000) count=0.308379
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.308379
;	genCast
;	genCopy
	stz	*(__print_format_sloc1_1_0 + 1)
	sty	*__print_format_sloc1_1_0
;	Raw cost for generated ic 61 : (5, 7.000000) count=0.308379
;	genPlus
	clc
	adc	*__print_format_sloc1_1_0
	pha
	txa
	adc	*(__print_format_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 62 : (9, 19.000000) count=0.308379
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	sta	__print_format_width_10000_233
	txa
	sbc	#0x00
	sta	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 63 : (12, 16.000000) count=0.308379
;	../printf_large.c: 506: if (width == 0)
;	genIfx
	ora	__print_format_width_10000_233
;	genIfxJump : z
	bne	00101$
;	Raw cost for generated ic 65 : (8, 9.600000) count=0.308379
;	../printf_large.c: 509: zero_padding = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_zero_padding_10000_233
;	Raw cost for generated ic 68 : (5, 6.000000) count=0.070547
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 70 : (3, 3.000000) count=0.070547
;	genLabel
00107$:
;	Raw cost for generated ic 71 : (0, 0.000000) count=0.106922
;	../printf_large.c: 514: decimals = 10*decimals + c - '0';
;	genAssign
;	genCopy
	lda	(__print_format_decimals_10000_233 + 1)
	sta	(__mulint_PARM_2 + 1)
	lda	__print_format_decimals_10000_233
	sta	__mulint_PARM_2
;	Raw cost for generated ic 750 : (12, 16.000000) count=0.106922
;	Raw cost for generated ic 749 : (0, 0.000000) count=0.106922
;	genCall
	phy
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	ply
;	Raw cost for generated ic 751 : (9, 17.000000) count=0.106922
;	genCast
;	genCopy
	stz	*(__print_format_sloc1_1_0 + 1)
	sty	*__print_format_sloc1_1_0
;	Raw cost for generated ic 73 : (5, 7.000000) count=0.106922
;	genPlus
	clc
	adc	*__print_format_sloc1_1_0
	pha
	txa
	adc	*(__print_format_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 74 : (9, 19.000000) count=0.106922
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	sta	__print_format_decimals_10000_233
	txa
	sbc	#0x00
	sta	(__print_format_decimals_10000_233 + 1)
;	Raw cost for generated ic 75 : (12, 16.000000) count=0.106922
;	../printf_large.c: 516: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 78 : (3, 3.000000) count=0.106922
;	genLabel
00110$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.313805
;	../printf_large.c: 519: if (c=='.')
;	genCmpEQorNE
	cpy	#0x2e
	bne	00115$
;	Raw cost for generated ic 80 : (7, 7.600000) count=0.313805
;	skipping generated iCode
;	Raw cost for generated ic 81 : (0, 0.000000) count=0.313805
;	../printf_large.c: 521: if (decimals==-1)
;	genCmpEQorNE
	lda	__print_format_decimals_10000_233
	cmp	#0xff
	bne	00796$
	lda	(__print_format_decimals_10000_233 + 1)
	cmp	#0xff
	beq	00797$
00796$:
	jmp	00101$
00797$:
;	Raw cost for generated ic 84 : (20, 23.200001) count=0.227574
;	skipping generated iCode
;	Raw cost for generated ic 85 : (0, 0.000000) count=0.227574
;	../printf_large.c: 522: decimals=0;
;	genAssign
;	genAssignLit
	stz	__print_format_decimals_10000_233
	stz	(__print_format_decimals_10000_233 + 1)
;	Raw cost for generated ic 88 : (6, 8.000000) count=0.061003
;	../printf_large.c: 525: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 90 : (3, 3.000000) count=0.061003
;	genLabel
00115$:
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.071661
;	../printf_large.c: 528: if (islower(c))
;	genCmp
	cpy	#0x61
	bcc	00117$
;	Raw cost for generated ic 92 : (7, 7.600000) count=0.071661
;	skipping generated iCode
;	Raw cost for generated ic 93 : (0, 0.000000) count=0.071661
;	genCmp
	cpy	#0x7a
	beq	00799$
	bcs	00117$
00799$:
;	Raw cost for generated ic 96 : (9, 10.200000) count=0.043883
;	skipping generated iCode
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.043883
;	../printf_large.c: 530: c = toupper(c);
;	genAnd
	tya
	and	#0xdf
	tay
;	Raw cost for generated ic 101 : (4, 6.000000) count=0.032913
;	../printf_large.c: 531: lower_case = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_lower_case
;	Raw cost for generated ic 106 : (5, 6.000000) count=0.032913
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 107 : (3, 3.000000) count=0.032913
;	genLabel
00117$:
;	Raw cost for generated ic 108 : (0, 0.000000) count=0.025599
;	../printf_large.c: 534: lower_case = 0;
;	genAssign
;	genAssignLit
	stz	_lower_case
;	Raw cost for generated ic 110 : (3, 4.000000) count=0.025599
;	genLabel
00118$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.058511
;	../printf_large.c: 536: switch( c )
;	genCmpEQorNE
	cpy	#0x20
	bne	00801$
	jmp	00122$
00801$:
;	Raw cost for generated ic 112 : (7, 7.600000) count=0.058511
;	skipping generated iCode
;	Raw cost for generated ic 113 : (0, 0.000000) count=0.058511
;	genCmpEQorNE
	cpy	#0x2b
	beq	00121$
;	Raw cost for generated ic 114 : (7, 7.600000) count=0.043883
;	skipping generated iCode
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.043883
;	genCmpEQorNE
	cpy	#0x2d
	beq	00120$
;	Raw cost for generated ic 116 : (7, 7.600000) count=0.032913
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.032913
;	genCmpEQorNE
	cpy	#0x42
	beq	00123$
;	Raw cost for generated ic 118 : (7, 7.600000) count=0.024684
;	skipping generated iCode
;	Raw cost for generated ic 119 : (0, 0.000000) count=0.024684
;	genCmpEQorNE
	cpy	#0x43
	bne	00805$
	jmp	00129$
00805$:
;	Raw cost for generated ic 120 : (7, 7.600000) count=0.017404
;	skipping generated iCode
;	Raw cost for generated ic 121 : (0, 0.000000) count=0.017404
;	genCmpEQorNE
	cpy	#0x44
	bne	00806$
	jmp	00154$
00806$:
;	Raw cost for generated ic 122 : (7, 7.600000) count=0.013053
;	skipping generated iCode
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.013053
;	genCmpEQorNE
	cpy	#0x46
	bne	00807$
	jmp	00158$
00807$:
;	Raw cost for generated ic 124 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 125 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x48
	bne	00808$
	jmp	00101$
00808$:
;	Raw cost for generated ic 126 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x49
	bne	00809$
	jmp	00154$
00809$:
;	Raw cost for generated ic 128 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4a
	bne	00810$
	jmp	00101$
00810$:
;	Raw cost for generated ic 130 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4c
	beq	00128$
;	Raw cost for generated ic 132 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4f
	bne	00812$
	jmp	00155$
00812$:
;	Raw cost for generated ic 134 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x50
	bne	00813$
	jmp	00152$
00813$:
;	Raw cost for generated ic 136 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x53
	bne	00814$
	jmp	00133$
00814$:
;	Raw cost for generated ic 138 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 139 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x54
	bne	00815$
	jmp	00101$
00815$:
;	Raw cost for generated ic 140 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x55
	bne	00816$
	jmp	00156$
00816$:
;	Raw cost for generated ic 142 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x58
	bne	00817$
	jmp	00157$
00817$:
;	Raw cost for generated ic 144 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 145 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x5a
	bne	00818$
	jmp	00101$
00818$:
;	Raw cost for generated ic 146 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 147 : (0, 0.000000) count=0.000000
;	genGoto
	jmp	00159$
;	Raw cost for generated ic 148 : (3, 3.000000) count=0.000000
;	../printf_large.c: 538: case '-':
;	genLabel
00120$:
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.013582
;	../printf_large.c: 539: left_justify = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_left_justify_10000_233
;	Raw cost for generated ic 150 : (5, 6.000000) count=0.013582
;	../printf_large.c: 540: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 151 : (3, 3.000000) count=0.013582
;	../printf_large.c: 541: case '+':
;	genLabel
00121$:
;	Raw cost for generated ic 152 : (0, 0.000000) count=0.010971
;	../printf_large.c: 542: prefix_sign = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_prefix_sign_10000_233
;	Raw cost for generated ic 153 : (5, 6.000000) count=0.010971
;	../printf_large.c: 543: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 154 : (3, 3.000000) count=0.010971
;	../printf_large.c: 544: case ' ':
;	genLabel
00122$:
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.013751
;	../printf_large.c: 545: prefix_space = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_prefix_space_10000_233
;	Raw cost for generated ic 156 : (5, 6.000000) count=0.013751
;	../printf_large.c: 546: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.013751
;	../printf_large.c: 547: case 'B': /* byte */
;	genLabel
00123$:
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.000000
;	../printf_large.c: 548: char_argument = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_char_argument_10000_233
;	Raw cost for generated ic 159 : (5, 6.000000) count=0.000000
;	../printf_large.c: 549: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 160 : (3, 3.000000) count=0.000000
;	../printf_large.c: 556: case 'L': /* long */
;	genLabel
00128$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.000000
;	../printf_large.c: 557: long_argument = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_long_argument_10000_233
;	Raw cost for generated ic 167 : (5, 6.000000) count=0.000000
;	../printf_large.c: 558: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 168 : (3, 3.000000) count=0.000000
;	../printf_large.c: 560: case 'C':
;	genLabel
00129$:
;	Raw cost for generated ic 169 : (0, 0.000000) count=0.014339
;	../printf_large.c: 561: if( char_argument )
;	genIfx
	lda	__print_format_char_argument_10000_233
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 170 : (8, 9.600000) count=0.014339
;	../printf_large.c: 562: c = va_arg(ap,char);
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x01
	bcc	00821$
	inx
00821$:
;	Raw cost for generated ic 173 : (12, 16.600000) count=0.010755
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 174 : (6, 8.000000) count=0.010755
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00822$
	dex
00822$:
;	Raw cost for generated ic 175 : (6, 8.600000) count=0.010755
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 176 : (8, 13.000000) count=0.010755
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 178 : (3, 3.000000) count=0.010755
;	genLabel
00131$:
;	Raw cost for generated ic 179 : (0, 0.000000) count=0.000000
;	../printf_large.c: 564: c = va_arg(ap,int);
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x02
	bcc	00823$
	inx
00823$:
;	Raw cost for generated ic 180 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 181 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	sta	*__print_format_sloc1_1_0
	txa
	sbc	#0x00
	sta	*(__print_format_sloc1_1_0 + 1)
;	Raw cost for generated ic 182 : (10, 14.000000) count=0.000000
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc1_1_0],y
;	Raw cost for generated ic 184 : (4, 7.000000) count=0.000000
;	genLabel
00132$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=0.010755
;	../printf_large.c: 565: OUTPUT_CHAR( c, p );
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.010755
;	genCall
;	genSend
	jsr	__output_char
;	Raw cost for generated ic 189 : (3, 6.000000) count=0.010755
;	../printf_large.c: 566: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 190 : (3, 3.000000) count=0.010755
;	../printf_large.c: 568: case 'S':
;	genLabel
00133$:
;	Raw cost for generated ic 191 : (0, 0.000000) count=0.000000
;	../printf_large.c: 569: PTR = va_arg(ap,ptr_t);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 193 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x02
	bcc	00824$
	inx
00824$:
;	Raw cost for generated ic 194 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 195 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00825$
	dex
00825$:
;	Raw cost for generated ic 196 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 198 : (12, 22.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_value + 1)
	sta	_value
;	Raw cost for generated ic 199 : (6, 8.000000) count=0.000000
;	../printf_large.c: 582: length = strlen(PTR);
;	Raw cost for generated ic 203 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	_strlen
;	assignResultValue
	sta	*__print_format_sloc1_1_0
	stx	*(__print_format_sloc1_1_0 + 1)
;	Raw cost for generated ic 204 : (7, 12.000000) count=0.000000
;	../printf_large.c: 584: if ( decimals == -1 )
;	genCmpEQorNE
	lda	__print_format_decimals_10000_233
	cmp	#0xff
	bne	00135$
	lda	(__print_format_decimals_10000_233 + 1)
	cmp	#0xff
	bne	00135$
;	Raw cost for generated ic 206 : (20, 23.200001) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 207 : (0, 0.000000) count=0.000000
;	../printf_large.c: 586: decimals = length;
;	genAssign
;	genCopy
	txa
	sta	(__print_format_decimals_10000_233 + 1)
	lda	*__print_format_sloc1_1_0
	sta	__print_format_decimals_10000_233
;	Raw cost for generated ic 210 : (9, 13.000000) count=0.000000
;	genLabel
00135$:
;	Raw cost for generated ic 211 : (0, 0.000000) count=0.000000
;	../printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
;	genIfx
	lda	__print_format_left_justify_10000_233
;	genIfxJump : z
	bne	00277$
;	Raw cost for generated ic 212 : (8, 9.600000) count=0.000000
;	genCmp
	lda	*__print_format_sloc1_1_0
	sec
	sbc	__print_format_width_10000_233
	lda	*(__print_format_sloc1_1_0 + 1)
	sbc	(__print_format_width_10000_233 + 1)
	bcs	00277$
;	Raw cost for generated ic 215 : (16, 21.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 216 : (0, 0.000000) count=0.000000
;	../printf_large.c: 590: width -= length;
;	genMinus
	lda	__print_format_width_10000_233
	sec
	sbc	*__print_format_sloc1_1_0
	sta	__print_format_width_10000_233
	lda	(__print_format_width_10000_233 + 1)
	sbc	*(__print_format_sloc1_1_0 + 1)
	sta	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 219 : (17, 24.000000) count=0.000000
;	../printf_large.c: 591: while( width-- != 0 )
;	genAssign
;	genCopy
	tax
	lda	__print_format_width_10000_233
;	Raw cost for generated ic 685 : (4, 6.000000) count=0.000000
;	genLabel
00136$:
;	Raw cost for generated ic 221 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	*__print_format_sloc0_1_0
	stx	*(__print_format_sloc0_1_0 + 1)
;	Raw cost for generated ic 222 : (4, 6.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00832$
	dex
00832$:
;	Raw cost for generated ic 223 : (6, 8.600000) count=0.000000
;	genIfx
	sta	*(REGTEMP+0)
	lda	*(__print_format_sloc0_1_0 + 1)
	ora	*__print_format_sloc0_1_0
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00312$
;	Raw cost for generated ic 225 : (15, 24.600000) count=0.000000
;	../printf_large.c: 593: OUTPUT_CHAR( ' ', p );
;	Raw cost for generated ic 228 : (0, 0.000000) count=0.000000
;	genCall
	pha
	phx
;	genSend
	lda	#0x20
	jsr	__output_char
	plx
	pla
;	Raw cost for generated ic 229 : (9, 22.000000) count=0.000000
;	genGoto
	jmp	00136$
;	Raw cost for generated ic 230 : (3, 3.000000) count=0.000000
;	../printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
;	genLabel
00312$:
;	Raw cost for generated ic 686 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_width_10000_233
	stx	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 687 : (6, 8.000000) count=0.000000
;	genLabel
00277$:
;	Raw cost for generated ic 674 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	lda	(__print_format_decimals_10000_233 + 1)
	sta	*(__print_format_sloc0_1_0 + 1)
	lda	__print_format_decimals_10000_233
	sta	*__print_format_sloc0_1_0
;	Raw cost for generated ic 688 : (10, 14.000000) count=0.000000
;	genLabel
00143$:
;	Raw cost for generated ic 233 : (0, 0.000000) count=0.000000
;	genPointerGet
;	genDataPointerGet
	ldx	(_value + 1)
	lda	_value
;	Raw cost for generated ic 236 : (6, 8.000000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 237 : (9, 15.000000) count=0.000000
;	genIfx
;	genIfxJump : z
	beq	00145$
;	Raw cost for generated ic 239 : (5, 5.600000) count=0.000000
;	genCmp
	lda	#0x00
	sec
	sbc	*__print_format_sloc0_1_0
	lda	#0x00
	sbc	*(__print_format_sloc0_1_0 + 1)
	bvc	00838$
	bpl	00837$
	bmi	00145$
00838$:
	bpl	00145$
00837$:
;	Raw cost for generated ic 245 : (20, 25.400002) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 246 : (0, 0.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*__print_format_sloc0_1_0
	bne	00840$
	dec	*(__print_format_sloc0_1_0 + 1)
00840$:
	dec	*__print_format_sloc0_1_0
;	Raw cost for generated ic 243 : (8, 15.600000) count=0.000000
;	../printf_large.c: 599: OUTPUT_CHAR( c, p );
;	Raw cost for generated ic 249 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	tya
	jsr	__output_char
;	Raw cost for generated ic 250 : (4, 8.000000) count=0.000000
;	../printf_large.c: 600: PTR++;
;	genPointerGet
;	genDataPointerGet
	ldx	(_value + 1)
	lda	_value
;	Raw cost for generated ic 253 : (6, 8.000000) count=0.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00841$
	inx
00841$:
;	Raw cost for generated ic 255 : (6, 8.600000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_value + 1)
	sta	_value
;	Raw cost for generated ic 256 : (6, 8.000000) count=0.000000
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 257 : (3, 3.000000) count=0.000000
;	genLabel
00145$:
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.000000
;	../printf_large.c: 603: if ( left_justify && (length < width))
;	genIfx
	lda	__print_format_left_justify_10000_233
;	genIfxJump : z
	bne	00843$
	jmp	00160$
00843$:
;	Raw cost for generated ic 259 : (8, 9.600000) count=0.000000
;	genCmp
	lda	*__print_format_sloc1_1_0
	sec
	sbc	__print_format_width_10000_233
	lda	*(__print_format_sloc1_1_0 + 1)
	sbc	(__print_format_width_10000_233 + 1)
	bcc	00844$
	jmp	00160$
00844$:
;	Raw cost for generated ic 262 : (16, 21.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 263 : (0, 0.000000) count=0.000000
;	../printf_large.c: 605: width -= length;
;	genMinus
	lda	__print_format_width_10000_233
	sec
	sbc	*__print_format_sloc1_1_0
	sta	__print_format_width_10000_233
	lda	(__print_format_width_10000_233 + 1)
	sbc	*(__print_format_sloc1_1_0 + 1)
	sta	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 266 : (17, 24.000000) count=0.000000
;	../printf_large.c: 606: while( width-- != 0 )
;	genAssign
;	genCopy
	tax
	lda	__print_format_width_10000_233
;	Raw cost for generated ic 691 : (4, 6.000000) count=0.000000
;	genLabel
00146$:
;	Raw cost for generated ic 268 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	*__print_format_sloc1_1_0
	stx	*(__print_format_sloc1_1_0 + 1)
;	Raw cost for generated ic 269 : (4, 6.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00845$
	dex
00845$:
;	Raw cost for generated ic 270 : (6, 8.600000) count=0.000000
;	genIfx
	sta	*(REGTEMP+0)
	lda	*(__print_format_sloc1_1_0 + 1)
	ora	*__print_format_sloc1_1_0
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	bne	00847$
	jmp	00314$
00847$:
;	Raw cost for generated ic 272 : (15, 24.600000) count=0.000000
;	../printf_large.c: 608: OUTPUT_CHAR( ' ', p );
;	Raw cost for generated ic 275 : (0, 0.000000) count=0.000000
;	genCall
	pha
	phx
;	genSend
	lda	#0x20
	jsr	__output_char
	plx
	pla
;	Raw cost for generated ic 276 : (9, 22.000000) count=0.000000
;	genGoto
	jmp	00146$
;	Raw cost for generated ic 277 : (3, 3.000000) count=0.000000
;	../printf_large.c: 613: case 'P':
;	genLabel
00152$:
;	Raw cost for generated ic 281 : (0, 0.000000) count=0.000000
;	../printf_large.c: 614: PTR = va_arg(ap,ptr_t);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 283 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x02
	bcc	00848$
	inx
00848$:
;	Raw cost for generated ic 284 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 285 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	sta	*__print_format_sloc1_1_0
	txa
	sbc	#0x00
	sta	*(__print_format_sloc1_1_0 + 1)
;	Raw cost for generated ic 286 : (10, 14.000000) count=0.000000
;	genPointerGet
	ldy	#0x01
	lda	[*__print_format_sloc1_1_0],y
	tax
	dey
	lda	[*__print_format_sloc1_1_0],y
;	Raw cost for generated ic 288 : (8, 16.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	stx	(_value + 1)
	sta	_value
;	Raw cost for generated ic 289 : (6, 8.000000) count=0.000000
;	../printf_large.c: 663: OUTPUT_CHAR('0', p);
;	Raw cost for generated ic 290 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x30
	jsr	__output_char
;	Raw cost for generated ic 291 : (5, 8.000000) count=0.000000
;	../printf_large.c: 664: OUTPUT_CHAR('x', p);
;	Raw cost for generated ic 292 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x78
	jsr	__output_char
;	Raw cost for generated ic 293 : (5, 8.000000) count=0.000000
;	../printf_large.c: 665: OUTPUT_2DIGITS( value.byte[1] );
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 0x0001)
;	Raw cost for generated ic 297 : (3, 4.000000) count=0.000000
;	Raw cost for generated ic 298 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	_output_2digits
;	Raw cost for generated ic 299 : (3, 6.000000) count=0.000000
;	../printf_large.c: 666: OUTPUT_2DIGITS( value.byte[0] );
;	genPointerGet
;	genDataPointerGet
	lda	_value
;	Raw cost for generated ic 303 : (3, 4.000000) count=0.000000
;	Raw cost for generated ic 304 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	_output_2digits
;	Raw cost for generated ic 305 : (3, 6.000000) count=0.000000
;	../printf_large.c: 668: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 306 : (3, 3.000000) count=0.000000
;	../printf_large.c: 671: case 'I':
;	genLabel
00154$:
;	Raw cost for generated ic 308 : (0, 0.000000) count=0.010755
;	../printf_large.c: 672: signed_argument = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_signed_argument_10000_233
;	Raw cost for generated ic 309 : (5, 6.000000) count=0.010755
;	../printf_large.c: 673: radix = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	__print_format_radix_10000_233
;	Raw cost for generated ic 310 : (5, 6.000000) count=0.010755
;	../printf_large.c: 674: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 311 : (3, 3.000000) count=0.010755
;	../printf_large.c: 676: case 'O':
;	genLabel
00155$:
;	Raw cost for generated ic 312 : (0, 0.000000) count=0.000000
;	../printf_large.c: 677: radix = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	__print_format_radix_10000_233
;	Raw cost for generated ic 313 : (5, 6.000000) count=0.000000
;	../printf_large.c: 678: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 314 : (3, 3.000000) count=0.000000
;	../printf_large.c: 680: case 'U':
;	genLabel
00156$:
;	Raw cost for generated ic 315 : (0, 0.000000) count=0.000000
;	../printf_large.c: 681: radix = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	__print_format_radix_10000_233
;	Raw cost for generated ic 316 : (5, 6.000000) count=0.000000
;	../printf_large.c: 682: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 317 : (3, 3.000000) count=0.000000
;	../printf_large.c: 684: case 'X':
;	genLabel
00157$:
;	Raw cost for generated ic 318 : (0, 0.000000) count=0.000000
;	../printf_large.c: 685: radix = 16;
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	__print_format_radix_10000_233
;	Raw cost for generated ic 319 : (5, 6.000000) count=0.000000
;	../printf_large.c: 686: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 320 : (3, 3.000000) count=0.000000
;	../printf_large.c: 688: case 'F':
;	genLabel
00158$:
;	Raw cost for generated ic 321 : (0, 0.000000) count=0.000000
;	../printf_large.c: 689: float_argument=1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_float_argument_10000_233
;	Raw cost for generated ic 322 : (5, 6.000000) count=0.000000
;	../printf_large.c: 690: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 323 : (3, 3.000000) count=0.000000
;	../printf_large.c: 692: default:
;	genLabel
00159$:
;	Raw cost for generated ic 324 : (0, 0.000000) count=0.000000
;	../printf_large.c: 694: OUTPUT_CHAR( c, p );
;	Raw cost for generated ic 325 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	tya
	jsr	__output_char
;	Raw cost for generated ic 326 : (4, 8.000000) count=0.000000
;	../printf_large.c: 877: return charsOutputted;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 692 : (3, 3.000000) count=0.000000
;	../printf_large.c: 696: }
;	genLabel
00314$:
;	Raw cost for generated ic 693 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_width_10000_233
	stx	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 694 : (6, 8.000000) count=0.000000
;	genLabel
00160$:
;	Raw cost for generated ic 328 : (0, 0.000000) count=0.021509
;	../printf_large.c: 698: if (float_argument)
;	genIfx
	lda	__print_format_float_argument_10000_233
;	genIfxJump : z
	beq	00226$
;	Raw cost for generated ic 329 : (8, 9.600000) count=0.021509
;	../printf_large.c: 700: value.f = va_arg(ap, float);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 333 : (0, 0.000000) count=0.016132
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x04
	bcc	00851$
	inx
00851$:
;	Raw cost for generated ic 334 : (12, 16.600000) count=0.016132
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 335 : (6, 8.000000) count=0.016132
;	genMinus
;	  genMinusDec - size=2  icount=4
	sec
	sbc	#0x04
	bcs	00852$
	dex
00852$:
;	Raw cost for generated ic 336 : (6, 8.600000) count=0.016132
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*__print_format_sloc2_1_0
	iny
	lda	[DPTR],y
	sta	*(__print_format_sloc2_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(__print_format_sloc2_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 338 : (25, 46.000000) count=0.016132
;	genPointerSet
;	genDataPointerSet
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 339 : (18, 25.000000) count=0.016132
;	../printf_large.c: 702: PTR="<NO FLOAT>";
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 341 : (0, 0.000000) count=0.016132
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 343 : (0, 0.000000) count=0.016132
;	genPointerSet
;	genDataPointerSet
	lda	#>___str_0
	sta	(_value + 1)
	lda	#___str_0
	sta	_value
;	Raw cost for generated ic 344 : (10, 12.000000) count=0.016132
;	../printf_large.c: 703: while (c=*PTR++)
;	genLabel
00161$:
;	Raw cost for generated ic 345 : (0, 0.000000) count=0.016132
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 348 : (10, 14.000000) count=0.016132
;	genPlus
;	  genPlusInc
	ldx	*(__print_format_sloc2_1_0 + 1)
	clc
	adc	#0x01
	bcc	00853$
	inx
00853$:
;	Raw cost for generated ic 350 : (8, 11.600000) count=0.016132
;	genPointerSet
;	genDataPointerSet
	stx	(_value + 1)
	sta	_value
;	Raw cost for generated ic 351 : (6, 8.000000) count=0.016132
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc2_1_0],y
;	Raw cost for generated ic 352 : (4, 7.000000) count=0.016132
;	genIfx
;	genIfxJump : z
	bne	00855$
	jmp	00231$
00855$:
;	Raw cost for generated ic 354 : (5, 5.600000) count=0.016132
;	../printf_large.c: 705: OUTPUT_CHAR (c, p);
;	Raw cost for generated ic 357 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	__output_char
;	Raw cost for generated ic 358 : (3, 6.000000) count=0.000000
;	genGoto
	jmp	00161$
;	Raw cost for generated ic 359 : (3, 3.000000) count=0.000000
;	genLabel
00226$:
;	Raw cost for generated ic 362 : (0, 0.000000) count=0.000000
;	../printf_large.c: 723: else if (radix != 0)
;	genIfx
	lda	__print_format_radix_10000_233
;	genIfxJump : z
	bne	00857$
	jmp	00231$
00857$:
;	Raw cost for generated ic 363 : (8, 9.600000) count=0.000000
;	../printf_large.c: 728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 368 : (0, 0.000000) count=0.000000
;	../printf_large.c: 731: if (char_argument)
;	genIfx
	lda	__print_format_char_argument_10000_233
;	genIfxJump : z
	beq	00172$
;	Raw cost for generated ic 370 : (8, 9.600000) count=0.000000
;	../printf_large.c: 733: value.l = va_arg(ap, char);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 374 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x01
	bcc	00860$
	inx
00860$:
;	Raw cost for generated ic 375 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 376 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00861$
	dex
00861$:
;	Raw cost for generated ic 377 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 378 : (8, 13.000000) count=0.000000
;	genCast
	sta	*__print_format_sloc2_1_0
	sty	*(__print_format_sloc2_1_0 + 1)
	sty	*(__print_format_sloc2_1_0 + 2)
	sty	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 379 : (8, 12.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(__print_format_sloc2_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 380 : (20, 28.000000) count=0.000000
;	../printf_large.c: 734: if (!signed_argument)
;	genIfx
	lda	__print_format_signed_argument_10000_233
;	genIfxJump : z
	beq	00863$
	jmp	00173$
00863$:
;	Raw cost for generated ic 381 : (8, 9.600000) count=0.000000
;	../printf_large.c: 736: value.l &= 0xFF;
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(__print_format_sloc2_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc2_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 388 : (20, 28.000000) count=0.000000
;	genAnd
	sty	*(__print_format_sloc2_1_0 + 1)
	sty	*(__print_format_sloc2_1_0 + 2)
	sty	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 389 : (6, 9.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(__print_format_sloc2_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 390 : (20, 28.000000) count=0.000000
;	genGoto
	jmp	00173$
;	Raw cost for generated ic 392 : (3, 3.000000) count=0.000000
;	genLabel
00172$:
;	Raw cost for generated ic 393 : (0, 0.000000) count=0.000000
;	../printf_large.c: 739: else if (long_argument)
;	genIfx
	lda	__print_format_long_argument_10000_233
;	genIfxJump : z
	beq	00169$
;	Raw cost for generated ic 394 : (8, 9.600000) count=0.000000
;	../printf_large.c: 741: value.l = va_arg(ap, long);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 397 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x04
	bcc	00866$
	inx
00866$:
;	Raw cost for generated ic 399 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 400 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=4
	sec
	sbc	#0x04
	sta	*__print_format_sloc2_1_0
	txa
	sbc	#0x00
	sta	*(__print_format_sloc2_1_0 + 1)
;	Raw cost for generated ic 401 : (10, 14.000000) count=0.000000
;	genPointerGet
	ldy	#0x03
	lda	[__print_format_sloc2_1_0],y
	sta	*(__print_format_sloc2_1_0 + 3)
	dey
	lda	[__print_format_sloc2_1_0],y
	sta	*(__print_format_sloc2_1_0 + 2)
	dey
	lda	[__print_format_sloc2_1_0],y
	pha
	dey
	lda	[__print_format_sloc2_1_0],y
	sta	*__print_format_sloc2_1_0
	pla
	sta	*(__print_format_sloc2_1_0 + 1)
;	Raw cost for generated ic 403 : (23, 47.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(__print_format_sloc2_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 404 : (20, 28.000000) count=0.000000
;	genGoto
	jmp	00173$
;	Raw cost for generated ic 405 : (3, 3.000000) count=0.000000
;	genLabel
00169$:
;	Raw cost for generated ic 406 : (0, 0.000000) count=0.000000
;	../printf_large.c: 745: value.l = va_arg(ap, int);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 408 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	ldx	(__print_format_PARM_4 + 1)
	lda	__print_format_PARM_4
	clc
	adc	#0x02
	bcc	00867$
	inx
00867$:
;	Raw cost for generated ic 409 : (12, 16.600000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 410 : (6, 8.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00868$
	dex
00868$:
;	Raw cost for generated ic 411 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 413 : (12, 22.000000) count=0.000000
;	genCast
	sta	*__print_format_sloc2_1_0
	stx	*(__print_format_sloc2_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00869$
	dex
00869$:
	stx	*(__print_format_sloc2_1_0 + 2)
	stx	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 414 : (15, 20.600000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	txa
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 415 : (19, 27.000000) count=0.000000
;	../printf_large.c: 746: if (!signed_argument)
;	genIfx
	lda	__print_format_signed_argument_10000_233
;	genIfxJump : z
	bne	00173$
;	Raw cost for generated ic 416 : (8, 9.600000) count=0.000000
;	../printf_large.c: 748: value.l &= 0xFFFF;
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(__print_format_sloc2_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc2_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 423 : (20, 28.000000) count=0.000000
;	genAnd
	sty	*(__print_format_sloc2_1_0 + 2)
	sty	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 424 : (4, 6.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	lda	*(__print_format_sloc2_1_0 + 3)
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 425 : (20, 28.000000) count=0.000000
;	genLabel
00173$:
;	Raw cost for generated ic 428 : (0, 0.000000) count=0.000000
;	../printf_large.c: 752: if ( signed_argument )
;	genIfx
	lda	__print_format_signed_argument_10000_233
;	genIfxJump : z
	beq	00178$
;	Raw cost for generated ic 429 : (8, 9.600000) count=0.000000
;	../printf_large.c: 754: if (value.l < 0)
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 433 : (0, 0.000000) count=0.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(__print_format_sloc2_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc2_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 434 : (20, 28.000000) count=0.000000
;	genCmp
	bit	*(__print_format_sloc2_1_0 + 3)
	bpl	00175$
;	Raw cost for generated ic 435 : (7, 8.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 436 : (0, 0.000000) count=0.000000
;	../printf_large.c: 755: value.l = -value.l;
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(__print_format_sloc2_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc2_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 443 : (20, 28.000000) count=0.000000
;	genUminus
	lda	#0x00
	sec
	sbc	*__print_format_sloc2_1_0
	sta	*__print_format_sloc2_1_0
	lda	#0x00
	sbc	*(__print_format_sloc2_1_0 + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	#0x00
	sbc	*(__print_format_sloc2_1_0 + 2)
	sta	*(__print_format_sloc2_1_0 + 2)
	lda	#0x00
	sbc	*(__print_format_sloc2_1_0 + 3)
	sta	*(__print_format_sloc2_1_0 + 3)
;	Raw cost for generated ic 444 : (25, 34.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_value + 3)
	lda	*(__print_format_sloc2_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(_value + 1)
	lda	*__print_format_sloc2_1_0
	sta	_value
;	Raw cost for generated ic 445 : (18, 25.000000) count=0.000000
;	genGoto
	jmp	00178$
;	Raw cost for generated ic 446 : (3, 3.000000) count=0.000000
;	genLabel
00175$:
;	Raw cost for generated ic 447 : (0, 0.000000) count=0.000000
;	../printf_large.c: 757: signed_argument = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_signed_argument_10000_233
;	Raw cost for generated ic 448 : (3, 4.000000) count=0.000000
;	genLabel
00178$:
;	Raw cost for generated ic 450 : (0, 0.000000) count=0.000000
;	../printf_large.c: 761: lsd = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_lsd_10000_233
;	Raw cost for generated ic 452 : (5, 6.000000) count=0.000000
;	../printf_large.c: 763: do {
;	genAssign
;	genCopy
	lda	#>(__print_format_store_70000_267 + 0x0005)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	#(__print_format_store_70000_267 + 0x0005)
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 695 : (8, 10.000000) count=0.000000
;	genAssign
;	genAssignLit
	stz	*__print_format_sloc1_1_0
	stz	*(__print_format_sloc1_1_0 + 1)
;	Raw cost for generated ic 698 : (6, 8.000000) count=0.000000
;	genLabel
00182$:
;	Raw cost for generated ic 453 : (0, 0.000000) count=0.000000
;	../printf_large.c: 764: value.byte[4] = 0;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 456 : (0, 0.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	stz	(_value + 0x0004)
;	Raw cost for generated ic 457 : (3, 4.000000) count=0.000000
;	../printf_large.c: 768: calculate_digit(radix);
;	Raw cost for generated ic 458 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	__print_format_radix_10000_233
	jsr	_calculate_digit
;	Raw cost for generated ic 459 : (6, 10.000000) count=0.000000
;	../printf_large.c: 770: if (!lsd)
;	genIfx
	lda	__print_format_lsd_10000_233
;	genIfxJump : z
	bne	00180$
;	Raw cost for generated ic 460 : (8, 9.600000) count=0.000000
;	../printf_large.c: 772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 0x0004)
;	Raw cost for generated ic 467 : (3, 4.000000) count=0.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=4
	asl	a
	asl	a
	asl	a
	asl	a
	sta	*__print_format_sloc0_1_0
;	Raw cost for generated ic 468 : (6, 11.000000) count=0.000000
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 0x0004)
;	Raw cost for generated ic 472 : (3, 4.000000) count=0.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 473 : (4, 8.000000) count=0.000000
;	genOr
	ora	*__print_format_sloc0_1_0
	sta	*__print_format_sloc0_1_0
;	Raw cost for generated ic 474 : (4, 6.000000) count=0.000000
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc2_1_0],y
;	Raw cost for generated ic 476 : (4, 7.000000) count=0.000000
;	genOr
	ora	*__print_format_sloc0_1_0
;	Raw cost for generated ic 477 : (2, 3.000000) count=0.000000
;	genPointerSet
	sta	[*__print_format_sloc2_1_0],y
;	Raw cost for generated ic 478 : (2, 6.000000) count=0.000000
;	../printf_large.c: 773: pstore--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*__print_format_sloc2_1_0
	bne	00877$
	dec	*(__print_format_sloc2_1_0 + 1)
00877$:
	dec	*__print_format_sloc2_1_0
;	Raw cost for generated ic 480 : (8, 15.600000) count=0.000000
;	genGoto
	jmp	00181$
;	Raw cost for generated ic 482 : (3, 3.000000) count=0.000000
;	genLabel
00180$:
;	Raw cost for generated ic 483 : (0, 0.000000) count=0.000000
;	../printf_large.c: 777: *pstore = value.byte[4];
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 0x0004)
;	Raw cost for generated ic 488 : (3, 4.000000) count=0.000000
;	genPointerSet
	ldy	#0x00
	sta	[*__print_format_sloc2_1_0],y
;	Raw cost for generated ic 489 : (4, 8.000000) count=0.000000
;	genLabel
00181$:
;	Raw cost for generated ic 490 : (0, 0.000000) count=0.000000
;	../printf_large.c: 779: length++;
;	genPlus
;	  genPlusInc
	inc	*__print_format_sloc1_1_0
	bne	00878$
	inc	*(__print_format_sloc1_1_0 + 1)
00878$:
;	Raw cost for generated ic 492 : (6, 12.600000) count=0.000000
;	../printf_large.c: 780: lsd = !lsd;
;	genNot
	lda	__print_format_lsd_10000_233
	eor	#0x01
	sta	__print_format_lsd_10000_233
;	Raw cost for generated ic 494 : (8, 10.000000) count=0.000000
;	../printf_large.c: 781: } while( value.ul );
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	_value
	sta	*__print_format_sloc3_1_0
;	Raw cost for generated ic 499 : (20, 28.000000) count=0.000000
;	genIfx
	lda	*(__print_format_sloc3_1_0 + 3)
	ora	*(__print_format_sloc3_1_0 + 2)
	ora	*(__print_format_sloc3_1_0 + 1)
	ora	*__print_format_sloc3_1_0
;	genIfxJump : z
	bne	00182$
;	Raw cost for generated ic 500 : (13, 17.600000) count=0.000000
;	../printf_large.c: 783: if (width == 0)
;	genAssign
;	genCopy
	lda	*(__print_format_sloc2_1_0 + 1)
	sta	(__print_format_pstore_70000_267 + 1)
	lda	*__print_format_sloc2_1_0
	sta	__print_format_pstore_70000_267
;	Raw cost for generated ic 697 : (10, 14.000000) count=0.000000
;	genAssign
;	genCopy
	lda	*(__print_format_sloc1_1_0 + 1)
	sta	(__print_format_length_10000_233 + 1)
	lda	*__print_format_sloc1_1_0
	sta	__print_format_length_10000_233
;	Raw cost for generated ic 699 : (10, 14.000000) count=0.000000
;	genIfx
	lda	(__print_format_width_10000_233 + 1)
	ora	__print_format_width_10000_233
;	genIfxJump : z
	bne	00186$
;	Raw cost for generated ic 503 : (11, 13.600000) count=0.000000
;	../printf_large.c: 788: width = 1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__print_format_width_10000_233
	stz	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 506 : (8, 10.000000) count=0.000000
;	genLabel
00186$:
;	Raw cost for generated ic 507 : (0, 0.000000) count=0.000000
;	../printf_large.c: 792: if (!zero_padding && !left_justify)
;	genIfx
	lda	__print_format_zero_padding_10000_233
;	genIfxJump : z
	bne	00191$
;	Raw cost for generated ic 508 : (8, 9.600000) count=0.000000
;	genIfx
	lda	__print_format_left_justify_10000_233
;	genIfxJump : z
	bne	00191$
;	Raw cost for generated ic 511 : (8, 9.600000) count=0.000000
;	../printf_large.c: 794: while ( width > (unsigned char) (length+1) )
;	genAssign
;	genCopy
	lda	(__print_format_width_10000_233 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	__print_format_width_10000_233
	sta	*__print_format_sloc3_1_0
;	Raw cost for generated ic 700 : (10, 14.000000) count=0.000000
;	genLabel
00187$:
;	Raw cost for generated ic 514 : (0, 0.000000) count=0.000000
;	genCast
;	genCopy
	lda	__print_format_length_10000_233
;	Raw cost for generated ic 515 : (3, 4.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 516 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	inc	a
;	Raw cost for generated ic 517 : (1, 2.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 518 : (0, 0.000000) count=0.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 519 : (2, 2.000000) count=0.000000
;	genCmp
	sec
	sbc	*__print_format_sloc3_1_0
	txa
	sbc	*(__print_format_sloc3_1_0 + 1)
	bcs	00316$
;	Raw cost for generated ic 520 : (11, 15.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 521 : (0, 0.000000) count=0.000000
;	../printf_large.c: 796: OUTPUT_CHAR( ' ', p );
;	Raw cost for generated ic 524 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x20
	jsr	__output_char
;	Raw cost for generated ic 525 : (5, 8.000000) count=0.000000
;	../printf_large.c: 797: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	*__print_format_sloc3_1_0
	bne	00889$
	dec	*(__print_format_sloc3_1_0 + 1)
00889$:
	dec	*__print_format_sloc3_1_0
;	Raw cost for generated ic 527 : (8, 15.600000) count=0.000000
;	genGoto
	jmp	00187$
;	Raw cost for generated ic 529 : (3, 3.000000) count=0.000000
;	genLabel
00316$:
;	Raw cost for generated ic 701 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(__print_format_width_10000_233 + 1)
	lda	*__print_format_sloc3_1_0
	sta	__print_format_width_10000_233
;	Raw cost for generated ic 702 : (10, 14.000000) count=0.000000
;	genLabel
00191$:
;	Raw cost for generated ic 531 : (0, 0.000000) count=0.000000
;	../printf_large.c: 801: if (signed_argument) // this now means the original value was negative
;	genIfx
	lda	__print_format_signed_argument_10000_233
;	genIfxJump : z
	beq	00201$
;	Raw cost for generated ic 532 : (8, 9.600000) count=0.000000
;	../printf_large.c: 803: OUTPUT_CHAR( '-', p );
;	Raw cost for generated ic 535 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x2d
	jsr	__output_char
;	Raw cost for generated ic 536 : (5, 8.000000) count=0.000000
;	../printf_large.c: 805: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	__print_format_width_10000_233
	bne	00892$
	dec	(__print_format_width_10000_233 + 1)
00892$:
	dec	__print_format_width_10000_233
;	Raw cost for generated ic 538 : (11, 18.600000) count=0.000000
;	genGoto
	jmp	00202$
;	Raw cost for generated ic 540 : (3, 3.000000) count=0.000000
;	genLabel
00201$:
;	Raw cost for generated ic 541 : (0, 0.000000) count=0.000000
;	../printf_large.c: 807: else if (length != 0)
;	genIfx
	lda	(__print_format_length_10000_233 + 1)
	ora	__print_format_length_10000_233
;	genIfxJump : z
	beq	00202$
;	Raw cost for generated ic 542 : (11, 13.600000) count=0.000000
;	../printf_large.c: 810: if (prefix_sign)
;	genIfx
	lda	__print_format_prefix_sign_10000_233
;	genIfxJump : z
	beq	00196$
;	Raw cost for generated ic 545 : (8, 9.600000) count=0.000000
;	../printf_large.c: 812: OUTPUT_CHAR( '+', p );
;	Raw cost for generated ic 548 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x2b
	jsr	__output_char
;	Raw cost for generated ic 549 : (5, 8.000000) count=0.000000
;	../printf_large.c: 814: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	__print_format_width_10000_233
	bne	00897$
	dec	(__print_format_width_10000_233 + 1)
00897$:
	dec	__print_format_width_10000_233
;	Raw cost for generated ic 551 : (11, 18.600000) count=0.000000
;	genGoto
	jmp	00202$
;	Raw cost for generated ic 553 : (3, 3.000000) count=0.000000
;	genLabel
00196$:
;	Raw cost for generated ic 554 : (0, 0.000000) count=0.000000
;	../printf_large.c: 816: else if (prefix_space)
;	genIfx
	lda	__print_format_prefix_space_10000_233
;	genIfxJump : z
	beq	00202$
;	Raw cost for generated ic 555 : (8, 9.600000) count=0.000000
;	../printf_large.c: 818: OUTPUT_CHAR( ' ', p );
;	Raw cost for generated ic 558 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x20
	jsr	__output_char
;	Raw cost for generated ic 559 : (5, 8.000000) count=0.000000
;	../printf_large.c: 820: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	__print_format_width_10000_233
	bne	00900$
	dec	(__print_format_width_10000_233 + 1)
00900$:
	dec	__print_format_width_10000_233
;	Raw cost for generated ic 561 : (11, 18.600000) count=0.000000
;	genLabel
00202$:
;	Raw cost for generated ic 566 : (0, 0.000000) count=0.000000
;	../printf_large.c: 825: if (!left_justify)
;	genIfx
	lda	__print_format_left_justify_10000_233
;	genIfxJump : z
	bne	00210$
;	Raw cost for generated ic 567 : (8, 9.600000) count=0.000000
;	../printf_large.c: 827: while ( width-- > length )
;	genAssign
;	genCopy
	ldx	(__print_format_width_10000_233 + 1)
	lda	__print_format_width_10000_233
;	Raw cost for generated ic 703 : (6, 8.000000) count=0.000000
;	genLabel
00203$:
;	Raw cost for generated ic 570 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	*__print_format_sloc3_1_0
	stx	*(__print_format_sloc3_1_0 + 1)
;	Raw cost for generated ic 571 : (4, 6.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00903$
	dex
00903$:
;	Raw cost for generated ic 572 : (6, 8.600000) count=0.000000
;	genCmp
	sta	*(REGTEMP+0)
	lda	__print_format_length_10000_233
	sec
	sbc	*__print_format_sloc3_1_0
	lda	(__print_format_length_10000_233 + 1)
	sbc	*(__print_format_sloc3_1_0 + 1)
	lda	*(REGTEMP+0)
	bcs	00317$
;	Raw cost for generated ic 574 : (20, 27.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 575 : (0, 0.000000) count=0.000000
;	../printf_large.c: 829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
;	genIfx
	ldy	__print_format_zero_padding_10000_233
;	genIfxJump : z
	beq	00236$
;	Raw cost for generated ic 578 : (8, 9.600000) count=0.000000
;	genAssign
;	genCopy
	ldy	#0x30
;	Raw cost for generated ic 579 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00237$
;	Raw cost for generated ic 580 : (3, 3.000000) count=0.000000
;	genLabel
00236$:
;	Raw cost for generated ic 581 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	ldy	#0x20
;	Raw cost for generated ic 582 : (2, 2.000000) count=0.000000
;	genLabel
00237$:
;	Raw cost for generated ic 583 : (0, 0.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 584 : (0, 0.000000) count=0.000000
;	Raw cost for generated ic 585 : (0, 0.000000) count=0.000000
;	genCall
	pha
	phx
;	genSend
	tya
	jsr	__output_char
	plx
	pla
;	Raw cost for generated ic 586 : (8, 22.000000) count=0.000000
;	genGoto
	jmp	00203$
;	Raw cost for generated ic 587 : (3, 3.000000) count=0.000000
;	genLabel
00210$:
;	Raw cost for generated ic 590 : (0, 0.000000) count=0.000000
;	../printf_large.c: 835: if (width > length)
;	genCmp
	lda	__print_format_length_10000_233
	sec
	sbc	__print_format_width_10000_233
	lda	(__print_format_length_10000_233 + 1)
	sbc	(__print_format_width_10000_233 + 1)
	bcs	00207$
;	Raw cost for generated ic 591 : (18, 23.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 592 : (0, 0.000000) count=0.000000
;	../printf_large.c: 836: width -= length;
;	genMinus
	lda	__print_format_width_10000_233
	sec
	sbc	__print_format_length_10000_233
	sta	__print_format_width_10000_233
	lda	(__print_format_width_10000_233 + 1)
	sbc	(__print_format_length_10000_233 + 1)
	sta	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 595 : (19, 26.000000) count=0.000000
;	genGoto
	jmp	00309$
;	Raw cost for generated ic 597 : (3, 3.000000) count=0.000000
;	genLabel
00207$:
;	Raw cost for generated ic 598 : (0, 0.000000) count=0.000000
;	../printf_large.c: 838: width = 0;
;	genAssign
;	genAssignLit
	stz	__print_format_width_10000_233
	stz	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 599 : (6, 8.000000) count=0.000000
;	../printf_large.c: 877: return charsOutputted;
;	genGoto
	jmp	00309$
;	Raw cost for generated ic 704 : (3, 3.000000) count=0.000000
;	../printf_large.c: 842: while( length-- )
;	genLabel
00317$:
;	Raw cost for generated ic 705 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	sta	__print_format_width_10000_233
	stx	(__print_format_width_10000_233 + 1)
;	Raw cost for generated ic 706 : (6, 8.000000) count=0.000000
;	genLabel
00309$:
;	Raw cost for generated ic 680 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	lda	(__print_format_pstore_70000_267 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	__print_format_pstore_70000_267
	sta	*__print_format_sloc3_1_0
;	Raw cost for generated ic 707 : (10, 14.000000) count=0.000000
;	genAssign
;	genCopy
	lda	(__print_format_length_10000_233 + 1)
	sta	*(__print_format_sloc2_1_0 + 1)
	lda	__print_format_length_10000_233
	sta	*__print_format_sloc2_1_0
;	Raw cost for generated ic 710 : (10, 14.000000) count=0.000000
;	genLabel
00215$:
;	Raw cost for generated ic 602 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	ldx	*(__print_format_sloc2_1_0 + 1)
	lda	*__print_format_sloc2_1_0
;	Raw cost for generated ic 603 : (4, 6.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*__print_format_sloc2_1_0
	bne	00908$
	dec	*(__print_format_sloc2_1_0 + 1)
00908$:
	dec	*__print_format_sloc2_1_0
;	Raw cost for generated ic 604 : (8, 15.600000) count=0.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00910$
	cpx	#0x00
	beq	00217$
00910$:
;	Raw cost for generated ic 606 : (11, 12.200000) count=0.000000
;	../printf_large.c: 844: lsd = !lsd;
;	genNot
	lda	__print_format_lsd_10000_233
	eor	#0x01
	sta	__print_format_lsd_10000_233
;	Raw cost for generated ic 609 : (8, 10.000000) count=0.000000
;	../printf_large.c: 845: if (!lsd)
;	genIfx
;	genIfxJump : z
	bne	00213$
;	Raw cost for generated ic 611 : (5, 5.600000) count=0.000000
;	../printf_large.c: 847: pstore++;
;	genPlus
;	  genPlusInc
	inc	*__print_format_sloc3_1_0
	bne	00914$
	inc	*(__print_format_sloc3_1_0 + 1)
00914$:
;	Raw cost for generated ic 615 : (6, 12.600000) count=0.000000
;	../printf_large.c: 848: value.byte[4] = *pstore >> 4;
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc3_1_0],y
;	Raw cost for generated ic 621 : (4, 7.000000) count=0.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 622 : (4, 8.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_value + 0x0004)
;	Raw cost for generated ic 623 : (3, 4.000000) count=0.000000
;	genGoto
	jmp	00214$
;	Raw cost for generated ic 624 : (3, 3.000000) count=0.000000
;	genLabel
00213$:
;	Raw cost for generated ic 625 : (0, 0.000000) count=0.000000
;	../printf_large.c: 852: value.byte[4] = *pstore & 0x0F;
;	genPointerGet
	ldy	#0x00
	lda	[*__print_format_sloc3_1_0],y
;	Raw cost for generated ic 630 : (4, 7.000000) count=0.000000
;	genAnd
	and	#0x0f
;	Raw cost for generated ic 632 : (2, 2.000000) count=0.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_value + 0x0004)
;	Raw cost for generated ic 634 : (3, 4.000000) count=0.000000
;	genLabel
00214$:
;	Raw cost for generated ic 635 : (0, 0.000000) count=0.000000
;	../printf_large.c: 858: output_digit( value.byte[4] );
;	genPointerGet
;	genDataPointerGet
	lda	(_value + 0x0004)
;	Raw cost for generated ic 639 : (3, 4.000000) count=0.000000
;	Raw cost for generated ic 640 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	_output_digit
;	Raw cost for generated ic 641 : (3, 6.000000) count=0.000000
;	genGoto
	jmp	00215$
;	Raw cost for generated ic 642 : (3, 3.000000) count=0.000000
;	genLabel
00217$:
;	Raw cost for generated ic 643 : (0, 0.000000) count=0.000000
;	../printf_large.c: 861: if (left_justify)
;	genIfx
	lda	__print_format_left_justify_10000_233
;	genIfxJump : z
	bne	00916$
	jmp	00231$
00916$:
;	Raw cost for generated ic 644 : (8, 9.600000) count=0.000000
;	../printf_large.c: 863: while (width-- > 0)
;	genAssign
;	genCopy
	lda	(__print_format_width_10000_233 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	__print_format_width_10000_233
	sta	*__print_format_sloc3_1_0
;	Raw cost for generated ic 712 : (10, 14.000000) count=0.000000
;	genLabel
00218$:
;	Raw cost for generated ic 647 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	ldx	*(__print_format_sloc3_1_0 + 1)
	lda	*__print_format_sloc3_1_0
;	Raw cost for generated ic 648 : (4, 6.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*__print_format_sloc3_1_0
	bne	00917$
	dec	*(__print_format_sloc3_1_0 + 1)
00917$:
	dec	*__print_format_sloc3_1_0
;	Raw cost for generated ic 649 : (8, 15.600000) count=0.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00919$
	cpx	#0x00
	bne	00919$
	jmp	00231$
00919$:
;	Raw cost for generated ic 651 : (11, 12.200000) count=0.000000
;	../printf_large.c: 865: OUTPUT_CHAR(' ', p);
;	Raw cost for generated ic 654 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	#0x20
	jsr	__output_char
;	Raw cost for generated ic 655 : (5, 8.000000) count=0.000000
;	genGoto
	jmp	00218$
;	Raw cost for generated ic 656 : (3, 3.000000) count=0.000000
;	genLabel
00229$:
;	Raw cost for generated ic 662 : (0, 0.000000) count=0.740061
;	../printf_large.c: 873: OUTPUT_CHAR( c, p );
;	Raw cost for generated ic 663 : (0, 0.000000) count=0.740061
;	genCall
;	genSend
	jsr	__output_char
;	Raw cost for generated ic 664 : (3, 6.000000) count=0.740061
;	genGoto
	jmp	00231$
;	Raw cost for generated ic 666 : (3, 3.000000) count=0.740061
;	genLabel
00233$:
;	Raw cost for generated ic 667 : (0, 0.000000) count=0.977151
;	../printf_large.c: 877: return charsOutputted;
;	genRet
	ldx	(_charsOutputted + 1)
	lda	_charsOutputted
;	Raw cost for generated ic 668 : (6, 8.000000) count=0.977151
;	genLabel
;	Raw cost for generated ic 669 : (0, 0.000000) count=0.977151
;	../printf_large.c: 878: }
;	genEndFunction
	rts
;	Raw cost for generated ic 670 : (1, 6.000000) count=0.977151
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
