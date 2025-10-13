;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module printf_large
	
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
	.globl _strlen
	.globl __print_format
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
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
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;output_char   Allocated to stack - sp +3 +2 
;p             Allocated to stack - sp +5 +2 
;lower_case    Allocated to registers x 
;n             Allocated to registers a 
;c             Allocated to registers y 
;------------------------------------------------------------
;	../printf_large.c: 116: output_digit (unsigned char n, _Bool lower_case, pfn_outputchar output_char, void* p)
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
;	genReceive
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../printf_large.c: 118: register unsigned char c = n + (unsigned char)'0';
;	genPlus
;	  genPlusInc
	clc
	adc	#0x30
	tay
;	Raw cost for generated ic 4 : (4, 6.000000) count=1.000000
;	../printf_large.c: 120: if (c > (unsigned char)'9')
;	genCmp
	cpy	#0x39
	beq	00104$
	bcc	00104$
;	Raw cost for generated ic 6 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../printf_large.c: 122: c += (unsigned char)('A' - '0' - 10);
;	genPlus
;	  genPlusInc
	tya
	clc
	adc	#0x07
	tay
;	Raw cost for generated ic 10 : (5, 8.000000) count=0.750000
;	../printf_large.c: 123: if (lower_case)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 12 : (7, 7.600000) count=0.750000
;	../printf_large.c: 124: c += (unsigned char)('a' - 'A');
;	genPlus
;	  genPlusInc
	tya
	clc
	adc	#0x20
	tay
;	Raw cost for generated ic 15 : (5, 8.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../printf_large.c: 126: output_char( c, p );
;	genIpush
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 19 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	genPcall
	lda	0x103,x
	sta	*(REGTEMP+0)
	lda	0x104,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 21 : (18, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../printf_large.c: 127: }
;	genEndFunction
	rts
;	Raw cost for generated ic 23 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;output_char   Allocated to stack - sp +5 +2 
;p             Allocated to stack - sp +7 +2 
;lower_case    Allocated to stack - sp +2 +1 
;b             Allocated to registers y 
;sloc0         Allocated to stack - sp +1 +1 
;------------------------------------------------------------
;	../printf_large.c: 149: output_2digits (unsigned char b, _Bool lower_case, pfn_outputchar output_char, void* p)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_output_2digits:
;	genReceive: size=1
;	pushreg: ofs=0
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	  adjustStack : cycles stk:3  incdec:6  adc:18
	pha
;	Raw cost for generated ic 1 : (7, 14.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (1, 2.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../printf_large.c: 151: output_digit( b>>4,   lower_case, output_char, p );
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	tay
	lsr	a
	lsr	a
	lsr	a
	lsr	a
	tsx
	sta	0x101,x
;	Raw cost for generated ic 4 : (9, 17.000000) count=1.000000
;	genIpush
	tya
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 5 : (10, 19.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	sta	*(REGTEMP+0)
	lda	0x102,x
	tax
	lda	*(REGTEMP+0)
	jsr	_output_digit
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+0)
	pla
;	Raw cost for generated ic 9 : (30, 52.000000) count=1.000000
;	../printf_large.c: 152: output_digit( b&0x0F, lower_case, output_char, p );
;	genAnd
	and #0x0f
	tay
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 13 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 14 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tya
	sta	*(REGTEMP+0)
	lda	0x102,x
	tax
	lda	*(REGTEMP+0)
	jsr	_output_digit
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 17 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../printf_large.c: 153: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 19 : (7, 20.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix         Allocated to stack - sp +18 +1 
;value         Allocated to stack - sp +14 +2 
;ul            Allocated to stack - sp +1 +4 
;pb4           Allocated to stack - sp +12 +2 
;i             Allocated to stack - sp +11 +1 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../printf_large.c: 168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 15 bytes.
_calculate_digit:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:39  incdec:30  adc:12
	tsx
	txa
	clc
	adc	#0xf3
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../printf_large.c: 170: unsigned long ul = value->ul;
;	genCast
;	genCopy
	lda	0x10f,x
	sta	0x10a,x
	lda	0x10e,x
	sta	0x109,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 5 : (32, 58.000000) count=1.000000
;	../printf_large.c: 171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
;	genAssign
;	genCopy
	lda	0x10f,x
	sta	0x10d,x
	lda	0x10e,x
	sta	0x10c,x
;	Raw cost for generated ic 9 : (12, 18.000000) count=1.000000
;	../printf_large.c: 174: do
;	genAssign
;	genAssignLit
	lda	#0x20
	sta	0x10b,x
;	Raw cost for generated ic 54 : (5, 7.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=3.999997
;	../printf_large.c: 176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x10c,x
	sta	*(DPTR+0)
	lda	0x10d,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
;	Raw cost for generated ic 15 : (15, 23.000000) count=3.999997
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=1
	asl	a
	tay
;	Raw cost for generated ic 16 : (2, 4.000000) count=3.999997
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=31
	lda	0x104,x
	asl	a
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	rol	a
	sta	0x105,x
;	Raw cost for generated ic 17 : (19, 30.000000) count=3.999997
;	genCast
;	genCopy
;	Raw cost for generated ic 53 : (0, 0.000000) count=3.999997
;	genAnd
	and	#0x01
;	Raw cost for generated ic 18 : (2, 2.000000) count=3.999997
;	genOr
	sty	*(REGTEMP+0)
	ora	*(REGTEMP+0)
;	Raw cost for generated ic 20 : (4, 6.000000) count=3.999997
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	ldy	#0x04
	sta	[DPTR],y
;	Raw cost for generated ic 22 : (4, 8.000000) count=3.999997
;	../printf_large.c: 177: ul <<= 1;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=1
	pha
	asl	0x101,x
	rol	0x102,x
	rol	0x103,x
	rol	0x104,x
	pla
;	Raw cost for generated ic 23 : (14, 31.000000) count=3.999997
;	../printf_large.c: 179: if (radix <= *pb4 )
;	genCmp
	cmp	0x112,x
	bcc	00104$
;	Raw cost for generated ic 27 : (8, 9.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999997
;	../printf_large.c: 181: *pb4 -= radix;
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	[DPTR],y
;	Raw cost for generated ic 33 : (2, 5.000000) count=2.999997
;	genMinus
	sec
	sbc	0x112,x
;	Raw cost for generated ic 34 : (4, 6.000000) count=2.999997
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	[DPTR],y
;	Raw cost for generated ic 35 : (2, 6.000000) count=2.999997
;	../printf_large.c: 182: ul |= 1;
;	genOr
	lda	0x101,x
	ora	#0x01
	sta	0x101,x
;	Raw cost for generated ic 36 : (8, 11.000000) count=2.999997
;	genLabel
00104$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=3.999996
;	../printf_large.c: 184: } while (--i);
;	genMinus
;	  genMinusDec - size=1  icount=1
	tsx
	lda	0x10b,x
	sec
	sbc	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 40 : (10, 15.000000) count=3.999996
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 42 : (5, 5.600000) count=3.999996
;	../printf_large.c: 185: value->ul = ul;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 47 : (35, 62.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999998
;	../printf_large.c: 186: }
;	genEndFunction
;	  adjustStack : cycles stk:66  incdec:40  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0f
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 49 : (16, 30.000000) count=0.999998
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid         Allocated to stack - sp +83 +2 
;format        Allocated to stack - sp +85 +2 
;ap            Allocated to stack - sp +87 +2 
;pfn           Allocated to stack - sp +79 +2 
;left_justify  Allocated to stack - sp +78 +1 
;zero_padding  Allocated to stack - sp +77 +1 
;prefix_sign   Allocated to stack - sp +76 +1 
;prefix_space  Allocated to stack - sp +75 +1 
;signed_argument Allocated to stack - sp +74 +1 
;char_argument Allocated to stack - sp +73 +1 
;long_argument Allocated to stack - sp +72 +1 
;float_argument Allocated to stack - sp +71 +1 
;lower_case    Allocated to stack - sp +70 +1 
;value         Allocated to stack - sp +7 +5 
;charsOutputted Allocated to stack - sp +68 +2 
;lsd           Allocated to stack - sp +67 +1 
;radix         Allocated to stack - sp +66 +1 
;width         Allocated to stack - sp +64 +2 
;decimals      Allocated to stack - sp +62 +2 
;length        Allocated to stack - sp +60 +2 
;c             Allocated to registers y 
;store         Allocated to stack - sp +1 +6 
;pstore        Allocated to stack - sp +58 +2 
;sloc0         Allocated to stack - sp +56 +2 
;sloc1         Allocated to stack - sp +54 +2 
;sloc2         Allocated to stack - sp +52 +2 
;sloc3         Allocated to stack - sp +50 +2 
;sloc4         Allocated to stack - sp +48 +2 
;sloc5         Allocated to stack - sp +46 +2 
;sloc6         Allocated to stack - sp +44 +2 
;sloc7         Allocated to stack - sp +42 +2 
;sloc8         Allocated to stack - sp +40 +2 
;sloc9         Allocated to stack - sp +38 +2 
;sloc10        Allocated to stack - sp +36 +2 
;sloc11        Allocated to stack - sp +34 +2 
;sloc12        Allocated to stack - sp +32 +2 
;sloc13        Allocated to stack - sp +30 +2 
;sloc14        Allocated to stack - sp +28 +2 
;sloc15        Allocated to stack - sp +24 +4 
;sloc16        Allocated to stack - sp +20 +4 
;sloc17        Allocated to stack - sp +16 +4 
;sloc18        Allocated to stack - sp +12 +4 
;------------------------------------------------------------
;	../printf_large.c: 434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 80 bytes.
__print_format:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:234  incdec:160  adc:12
	tsx
	txa
	clc
	adc	#0xb2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../printf_large.c: 466: charsOutputted = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x138,x
	sta	0x139,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../printf_large.c: 475: while( c=*format++ )
;	genAddrOf
	txa
	clc
	adc	#0x07
	sta	0x136,x
	lda	#0x01
	sta	0x137,x
;	Raw cost for generated ic 193 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x135,x
	lda	0x136,x
	sta	0x134,x
;	Raw cost for generated ic 295 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x133,x
	lda	0x136,x
	sta	0x132,x
;	Raw cost for generated ic 317 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x131,x
	lda	0x136,x
	sta	0x130,x
;	Raw cost for generated ic 367 : (12, 18.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 377 : (0, 0.000000) count=1.000000
;	genAddrOf
	inx
	txa
;	Raw cost for generated ic 405 : (4, 6.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc #0x05
	tsx
	sta	0x12e,x
	lda	#0x01
	adc	#0x00
	sta	0x12f,x
;	Raw cost for generated ic 406 : (14, 20.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x12d,x
	lda	0x136,x
	sta	0x12c,x
;	Raw cost for generated ic 446 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x12b,x
	lda	0x136,x
	sta	0x12a,x
;	Raw cost for generated ic 412 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x129,x
	lda	0x136,x
	sta	0x128,x
;	Raw cost for generated ic 471 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x137,x
	sta	0x127,x
	lda	0x136,x
	sta	0x126,x
;	Raw cost for generated ic 493 : (12, 18.000000) count=1.000000
;	genLabel
00231$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.899817
;	genAssign
;	genCopy
	tsx
	lda	0x156,x
	sta	0x125,x
	lda	0x155,x
	sta	0x124,x
;	Raw cost for generated ic 5 : (13, 20.000000) count=3.899817
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x125,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 8 : (12, 19.000000) count=3.899817
;	genPlus
;	  genPlusInc
	lda	0x124,x
	clc
	adc	#0x01
	sta	0x155,x
	lda	0x125,x
	adc	#0x00
	sta	0x156,x
;	Raw cost for generated ic 6 : (17, 24.000000) count=3.899817
;	genAssign
;	genCopy
	tya
	tax
;	Raw cost for generated ic 9 : (2, 4.000000) count=3.899817
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00782$
	jmp	00233$
00782$:
;	Raw cost for generated ic 10 : (7, 7.600000) count=3.899817
;	../printf_large.c: 477: if ( c=='%' )
;	genCmpEQorNE
	cpx	#0x25
	beq	00783$
	jmp	00229$
00783$:
;	Raw cost for generated ic 13 : (7, 7.600000) count=2.925049
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.925049
;	../printf_large.c: 479: left_justify    = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x14e,x
;	Raw cost for generated ic 17 : (6, 9.000000) count=2.184802
;	../printf_large.c: 480: zero_padding    = 0;
;	genAssign
;	genAssignLit
	sta	0x14d,x
;	Raw cost for generated ic 18 : (3, 5.000000) count=2.184802
;	../printf_large.c: 481: prefix_sign     = 0;
;	genAssign
;	genAssignLit
	sta	0x14c,x
;	Raw cost for generated ic 19 : (3, 5.000000) count=2.184802
;	../printf_large.c: 482: prefix_space    = 0;
;	genAssign
;	genAssignLit
	sta	0x14b,x
;	Raw cost for generated ic 20 : (3, 5.000000) count=2.184802
;	../printf_large.c: 483: signed_argument = 0;
;	genAssign
;	genAssignLit
	sta	0x14a,x
;	Raw cost for generated ic 21 : (3, 5.000000) count=2.184802
;	../printf_large.c: 484: char_argument   = 0;
;	genAssign
;	genAssignLit
	sta	0x149,x
;	Raw cost for generated ic 22 : (3, 5.000000) count=2.184802
;	../printf_large.c: 485: long_argument   = 0;
;	genAssign
;	genAssignLit
	sta	0x148,x
;	Raw cost for generated ic 23 : (3, 5.000000) count=2.184802
;	../printf_large.c: 486: float_argument  = 0;
;	genAssign
;	genAssignLit
	sta	0x147,x
;	Raw cost for generated ic 24 : (3, 5.000000) count=2.184802
;	../printf_large.c: 487: radix           = 0;
;	genAssign
;	genAssignLit
	sta	0x142,x
;	Raw cost for generated ic 25 : (3, 5.000000) count=2.184802
;	../printf_large.c: 488: width           = 0;
;	genAssign
;	genAssignLit
	sta	0x140,x
	sta	0x141,x
;	Raw cost for generated ic 26 : (6, 10.000000) count=2.184802
;	../printf_large.c: 489: decimals        = -1;
;	genAssign
;	genAssignLit
	lda	#0xff
	sta	0x13e,x
	sta	0x13f,x
;	Raw cost for generated ic 27 : (8, 12.000000) count=2.184802
;	../printf_large.c: 491: get_conversion_spec:
;	genAssign
;	genCopy
	lda	0x156,x
	sta	0x125,x
	lda	0x155,x
	sta	0x124,x
;	Raw cost for generated ic 760 : (12, 18.000000) count=2.184802
;	genLabel
00101$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=2.863543
;	../printf_large.c: 493: c = *format++;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x124,x
	sta	*(DPTR+0)
	lda	0x125,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 32 : (16, 25.000000) count=2.863543
;	genPlus
;	  genPlusInc
	lda	0x124,x
	clc
	adc	#0x01
	sta	0x124,x
	lda	0x125,x
	adc	#0x00
	sta	0x125,x
;	Raw cost for generated ic 30 : (17, 24.000000) count=2.863543
;	genAssign
;	genCopy
	sta	0x156,x
	lda	0x124,x
	sta	0x155,x
;	Raw cost for generated ic 31 : (9, 14.000000) count=2.863543
;	../printf_large.c: 495: if (c=='%')
;	genCmpEQorNE
	cpy	#0x25
	bne	00103$
;	Raw cost for generated ic 34 : (7, 7.600000) count=2.863543
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=2.863543
;	../printf_large.c: 497: OUTPUT_CHAR(c, p);
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 38 : (8, 14.000000) count=2.147657
;	Raw cost for generated ic 39 : (0, 0.000000) count=2.147657
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 40 : (18, 30.000000) count=2.147657
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 42 : (17, 24.000000) count=2.147657
;	../printf_large.c: 498: continue;
;	genGoto
	jmp	00231$
;	Raw cost for generated ic 44 : (3, 3.000000) count=2.147657
;	genLabel
00103$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.715886
;	../printf_large.c: 501: if (isdigit(c))
;	genCmp
	cpy	#0x30
	bcs	00785$
	jmp	00110$
00785$:
;	Raw cost for generated ic 46 : (7, 7.600000) count=0.715886
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.715886
;	genCmp
	cpy	#0x39
	beq	00786$
	bcc	00786$
	jmp	00110$
00786$:
;	Raw cost for generated ic 50 : (9, 10.200000) count=0.537951
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.537951
;	../printf_large.c: 503: if (decimals==-1)
;	genCmpEQorNE
	tsx
	lda	0x13e,x
	cmp	#0xff
	bne	00107$
	lda	0x13f,x
	cmp	#0xff
	bne	00107$
;	Raw cost for generated ic 54 : (21, 25.200001) count=0.411172
;	skipping generated iCode
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.411172
;	../printf_large.c: 505: width = 10*width + c - '0';
;	genIpush
	tya
	pha
	lda	0x141,x
	pha
	lda	0x140,x
	pha
;	Raw cost for generated ic 836 : (10, 19.000000) count=0.308379
;	Raw cost for generated ic 837 : (0, 0.000000) count=0.308379
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x125,x
	lda	*(REGTEMP+0)
	sta	0x126,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
	sta	*(REGTEMP+0)
	pla
;	Raw cost for generated ic 838 : (27, 46.000000) count=0.308379
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 59 : (1, 2.000000) count=0.308379
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (2, 2.000000) count=0.308379
;	genPlus
	clc
	tsx
	adc	0x122,x
	pha
	lda	#0x00
	adc	0x123,x
	tax
	pla
;	Raw cost for generated ic 61 : (13, 23.000000) count=0.308379
;	genMinus
;	  genMinusDec - size=2  icount=48
	stx	*(REGTEMP+0)
	sec
	sbc	#0x30
	tsx
	sta	0x140,x
	lda	*(REGTEMP+0)
	sbc	#0x00
	sta	0x141,x
;	Raw cost for generated ic 62 : (16, 24.000000) count=0.308379
;	../printf_large.c: 506: if (width == 0)
;	genIfx
	ora	0x140,x
;	genIfxJump : z
	beq	00792$
	jmp	00101$
00792$:
;	Raw cost for generated ic 64 : (8, 9.600000) count=0.308379
;	../printf_large.c: 509: zero_padding = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x14d,x
;	Raw cost for generated ic 67 : (5, 7.000000) count=0.070547
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 69 : (3, 3.000000) count=0.070547
;	genLabel
00107$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=0.106922
;	../printf_large.c: 514: decimals = 10*decimals + c - '0';
;	genIpush
	tya
	pha
	tsx
	lda	0x140,x
	pha
	lda	0x13f,x
	pha
;	Raw cost for generated ic 839 : (11, 21.000000) count=0.106922
;	Raw cost for generated ic 840 : (0, 0.000000) count=0.106922
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x125,x
	lda	*(REGTEMP+0)
	sta	0x126,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 841 : (27, 46.000000) count=0.106922
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 72 : (3, 4.000000) count=0.106922
;	genPlus
	clc
	tsx
	adc	0x122,x
	pha
	lda	#0x00
	adc	0x123,x
	tax
	pla
;	Raw cost for generated ic 73 : (13, 23.000000) count=0.106922
;	genMinus
;	  genMinusDec - size=2  icount=48
	stx	*(REGTEMP+0)
	sec
	sbc	#0x30
	tsx
	sta	0x13e,x
	lda	*(REGTEMP+0)
	sbc	#0x00
	sta	0x13f,x
;	Raw cost for generated ic 74 : (16, 24.000000) count=0.106922
;	../printf_large.c: 516: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 77 : (3, 3.000000) count=0.106922
;	genLabel
00110$:
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.313805
;	../printf_large.c: 519: if (c=='.')
;	genCmpEQorNE
	cpy	#0x2e
	bne	00115$
;	Raw cost for generated ic 79 : (7, 7.600000) count=0.313805
;	skipping generated iCode
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.313805
;	../printf_large.c: 521: if (decimals==-1)
;	genCmpEQorNE
	tsx
	lda	0x13e,x
	cmp	#0xff
	bne	00795$
	lda	0x13f,x
	cmp	#0xff
	beq	00796$
00795$:
	jmp	00101$
00796$:
;	Raw cost for generated ic 83 : (21, 25.200001) count=0.227574
;	skipping generated iCode
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.227574
;	../printf_large.c: 522: decimals=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x13e,x
	sta	0x13f,x
;	Raw cost for generated ic 87 : (8, 12.000000) count=0.061003
;	../printf_large.c: 525: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 89 : (3, 3.000000) count=0.061003
;	genLabel
00115$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.071661
;	../printf_large.c: 528: if (islower(c))
;	genCmp
	cpy	#0x61
	bcc	00117$
;	Raw cost for generated ic 91 : (7, 7.600000) count=0.071661
;	skipping generated iCode
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.071661
;	genCmp
	cpy	#0x7a
	beq	00798$
	bcs	00117$
00798$:
;	Raw cost for generated ic 95 : (9, 10.200000) count=0.043883
;	skipping generated iCode
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.043883
;	../printf_large.c: 530: c = toupper(c);
;	genAnd
	tya
	and	#0xdf
	tay
;	Raw cost for generated ic 100 : (4, 6.000000) count=0.032913
;	../printf_large.c: 531: lower_case = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x146,x
;	Raw cost for generated ic 104 : (6, 9.000000) count=0.032913
;	genGoto
	jmp	00118$
;	Raw cost for generated ic 105 : (3, 3.000000) count=0.032913
;	genLabel
00117$:
;	Raw cost for generated ic 106 : (0, 0.000000) count=0.025599
;	../printf_large.c: 534: lower_case = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x146,x
;	Raw cost for generated ic 107 : (6, 9.000000) count=0.025599
;	genLabel
00118$:
;	Raw cost for generated ic 108 : (0, 0.000000) count=0.058511
;	../printf_large.c: 536: switch( c )
;	genCmpEQorNE
	cpy	#0x20
	bne	00800$
	jmp	00122$
00800$:
;	Raw cost for generated ic 109 : (7, 7.600000) count=0.058511
;	skipping generated iCode
;	Raw cost for generated ic 110 : (0, 0.000000) count=0.058511
;	genCmpEQorNE
	cpy	#0x2b
	beq	00121$
;	Raw cost for generated ic 111 : (7, 7.600000) count=0.043883
;	skipping generated iCode
;	Raw cost for generated ic 112 : (0, 0.000000) count=0.043883
;	genCmpEQorNE
	cpy	#0x2d
	beq	00120$
;	Raw cost for generated ic 113 : (7, 7.600000) count=0.032913
;	skipping generated iCode
;	Raw cost for generated ic 114 : (0, 0.000000) count=0.032913
;	genCmpEQorNE
	cpy	#0x42
	bne	00803$
	jmp	00123$
00803$:
;	Raw cost for generated ic 115 : (7, 7.600000) count=0.024684
;	skipping generated iCode
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.024684
;	genCmpEQorNE
	cpy	#0x43
	bne	00804$
	jmp	00129$
00804$:
;	Raw cost for generated ic 117 : (7, 7.600000) count=0.017404
;	skipping generated iCode
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.017404
;	genCmpEQorNE
	cpy	#0x44
	bne	00805$
	jmp	00154$
00805$:
;	Raw cost for generated ic 119 : (7, 7.600000) count=0.013053
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.013053
;	genCmpEQorNE
	cpy	#0x46
	bne	00806$
	jmp	00158$
00806$:
;	Raw cost for generated ic 121 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x48
	bne	00807$
	jmp	00101$
00807$:
;	Raw cost for generated ic 123 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x49
	bne	00808$
	jmp	00154$
00808$:
;	Raw cost for generated ic 125 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 126 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4a
	bne	00809$
	jmp	00101$
00809$:
;	Raw cost for generated ic 127 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 128 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4c
	beq	00128$
;	Raw cost for generated ic 129 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 130 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x4f
	bne	00811$
	jmp	00155$
00811$:
;	Raw cost for generated ic 131 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x50
	bne	00812$
	jmp	00152$
00812$:
;	Raw cost for generated ic 133 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 134 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x53
	bne	00813$
	jmp	00133$
00813$:
;	Raw cost for generated ic 135 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x54
	bne	00814$
	jmp	00101$
00814$:
;	Raw cost for generated ic 137 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 138 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x55
	bne	00815$
	jmp	00156$
00815$:
;	Raw cost for generated ic 139 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x58
	bne	00816$
	jmp	00157$
00816$:
;	Raw cost for generated ic 141 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 142 : (0, 0.000000) count=0.000000
;	genCmpEQorNE
	cpy	#0x5a
	bne	00817$
	jmp	00101$
00817$:
;	Raw cost for generated ic 143 : (7, 7.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.000000
;	genGoto
	jmp	00159$
;	Raw cost for generated ic 145 : (3, 3.000000) count=0.000000
;	../printf_large.c: 538: case '-':
;	genLabel
00120$:
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.013582
;	../printf_large.c: 539: left_justify = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x14e,x
;	Raw cost for generated ic 147 : (6, 9.000000) count=0.013582
;	../printf_large.c: 540: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 148 : (3, 3.000000) count=0.013582
;	../printf_large.c: 541: case '+':
;	genLabel
00121$:
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.010971
;	../printf_large.c: 542: prefix_sign = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x14c,x
;	Raw cost for generated ic 150 : (6, 9.000000) count=0.010971
;	../printf_large.c: 543: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 151 : (3, 3.000000) count=0.010971
;	../printf_large.c: 544: case ' ':
;	genLabel
00122$:
;	Raw cost for generated ic 152 : (0, 0.000000) count=0.013751
;	../printf_large.c: 545: prefix_space = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x14b,x
;	Raw cost for generated ic 153 : (6, 9.000000) count=0.013751
;	../printf_large.c: 546: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 154 : (3, 3.000000) count=0.013751
;	../printf_large.c: 547: case 'B': /* byte */
;	genLabel
00123$:
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.000000
;	../printf_large.c: 548: char_argument = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x149,x
;	Raw cost for generated ic 156 : (6, 9.000000) count=0.000000
;	../printf_large.c: 549: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 157 : (3, 3.000000) count=0.000000
;	../printf_large.c: 556: case 'L': /* long */
;	genLabel
00128$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.000000
;	../printf_large.c: 557: long_argument = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x148,x
;	Raw cost for generated ic 164 : (6, 9.000000) count=0.000000
;	../printf_large.c: 558: goto get_conversion_spec;
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 165 : (3, 3.000000) count=0.000000
;	../printf_large.c: 560: case 'C':
;	genLabel
00129$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.014339
;	../printf_large.c: 561: if( char_argument )
;	genIfx
	tsx
	lda	0x149,x
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 167 : (9, 11.600000) count=0.014339
;	../printf_large.c: 562: c = va_arg(ap,char);
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x01
	bcc	00820$
	inx
00820$:
;	Raw cost for generated ic 170 : (15, 22.600000) count=0.010755
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 171 : (16, 26.000000) count=0.010755
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00821$
	dex
00821$:
;	Raw cost for generated ic 172 : (6, 8.600000) count=0.010755
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 173 : (9, 15.000000) count=0.010755
;	genGoto
	jmp	00132$
;	Raw cost for generated ic 175 : (3, 3.000000) count=0.010755
;	genLabel
00131$:
;	Raw cost for generated ic 176 : (0, 0.000000) count=0.000000
;	../printf_large.c: 564: c = va_arg(ap,int);
;	genPlus
;	  genPlusInc
	tsx
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00822$
	inx
00822$:
;	Raw cost for generated ic 177 : (16, 24.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 178 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00823$
	dex
00823$:
;	Raw cost for generated ic 179 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 181 : (9, 15.000000) count=0.000000
;	genLabel
00132$:
;	Raw cost for generated ic 184 : (0, 0.000000) count=0.010755
;	../printf_large.c: 565: OUTPUT_CHAR( c, p );
;	genIpush
	tsx
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 185 : (9, 16.000000) count=0.010755
;	Raw cost for generated ic 186 : (0, 0.000000) count=0.010755
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 187 : (18, 30.000000) count=0.010755
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 189 : (17, 24.000000) count=0.010755
;	../printf_large.c: 566: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 191 : (3, 3.000000) count=0.010755
;	../printf_large.c: 568: case 'S':
;	genLabel
00133$:
;	Raw cost for generated ic 192 : (0, 0.000000) count=0.000000
;	../printf_large.c: 569: PTR = va_arg(ap,ptr_t);
;	genCast
;	genCopy
	tsx
	lda	0x137,x
	sta	0x123,x
	lda	0x136,x
	sta	0x122,x
;	Raw cost for generated ic 194 : (13, 20.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00824$
	inx
00824$:
;	Raw cost for generated ic 195 : (15, 22.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 196 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00825$
	dex
00825$:
;	Raw cost for generated ic 197 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 199 : (12, 22.000000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x122,x
	sta	*(DPTR+0)
	lda	0x123,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 200 : (29, 50.000000) count=0.000000
;	../printf_large.c: 582: length = strlen(PTR);
;	Raw cost for generated ic 204 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	jsr	_strlen
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x124,x
	lda	*(REGTEMP+0)
	sta	0x125,x
;	Raw cost for generated ic 205 : (14, 24.000000) count=0.000000
;	../printf_large.c: 584: if ( decimals == -1 )
;	genCmpEQorNE
	lda	0x13e,x
	cmp	#0xff
	bne	00135$
	lda	0x13f,x
	cmp	#0xff
	bne	00135$
;	Raw cost for generated ic 207 : (20, 23.200001) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 208 : (0, 0.000000) count=0.000000
;	../printf_large.c: 586: decimals = length;
;	genAssign
;	genCopy
	lda	0x125,x
	sta	0x13f,x
	lda	0x124,x
	sta	0x13e,x
;	Raw cost for generated ic 211 : (12, 18.000000) count=0.000000
;	genLabel
00135$:
;	Raw cost for generated ic 212 : (0, 0.000000) count=0.000000
;	../printf_large.c: 588: if ( ( !left_justify ) && (length < width) )
;	genIfx
	tsx
	lda	0x14e,x
;	genIfxJump : z
	beq	00830$
	jmp	00277$
00830$:
;	Raw cost for generated ic 213 : (9, 11.600000) count=0.000000
;	genCmp
	lda	0x124,x
	sec
	sbc	0x140,x
	lda	0x125,x
	sbc	0x141,x
	bcc	00831$
	jmp	00277$
00831$:
;	Raw cost for generated ic 216 : (18, 23.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 217 : (0, 0.000000) count=0.000000
;	../printf_large.c: 590: width -= length;
;	genMinus
	lda	0x140,x
	sec
	sbc	0x124,x
	sta	0x140,x
	lda	0x141,x
	sbc	0x125,x
	sta	0x141,x
;	Raw cost for generated ic 220 : (19, 28.000000) count=0.000000
;	../printf_large.c: 591: while( width-- != 0 )
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x121,x
	lda	0x138,x
	sta	0x120,x
;	Raw cost for generated ic 761 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x141,x
	sta	0x11f,x
	lda	0x140,x
	sta	0x11e,x
;	Raw cost for generated ic 764 : (12, 18.000000) count=0.000000
;	genLabel
00136$:
;	Raw cost for generated ic 222 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x11f,x
	sta	0x11d,x
	lda	0x11e,x
	sta	0x11c,x
;	Raw cost for generated ic 223 : (13, 20.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x11e,x
	sec
	sbc	#0x01
	sta	0x11e,x
	lda	0x11f,x
	sbc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 224 : (17, 24.000000) count=0.000000
;	genIfx
	lda	0x11d,x
	ora	0x11c,x
;	genIfxJump : z
	beq	00312$
;	Raw cost for generated ic 226 : (11, 13.600000) count=0.000000
;	../printf_large.c: 593: OUTPUT_CHAR( ' ', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 229 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 230 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x20
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 231 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x120,x
	clc
	adc	#0x01
	sta	0x120,x
	lda	0x121,x
	adc	#0x00
	sta	0x121,x
;	Raw cost for generated ic 233 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00136$
;	Raw cost for generated ic 235 : (3, 3.000000) count=0.000000
;	../printf_large.c: 597: while ( (c = *PTR)  && (decimals-- > 0))
;	genLabel
00312$:
;	Raw cost for generated ic 762 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x121,x
	sta	0x139,x
	lda	0x120,x
	sta	0x138,x
;	Raw cost for generated ic 763 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x11f,x
	sta	0x141,x
	lda	0x11e,x
	sta	0x140,x
;	Raw cost for generated ic 765 : (12, 18.000000) count=0.000000
;	genLabel
00277$:
;	Raw cost for generated ic 750 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x13f,x
	sta	0x11d,x
	lda	0x13e,x
	sta	0x11c,x
;	Raw cost for generated ic 766 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x11f,x
	lda	0x138,x
	sta	0x11e,x
;	Raw cost for generated ic 769 : (12, 18.000000) count=0.000000
;	genLabel
00143$:
;	Raw cost for generated ic 238 : (0, 0.000000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x122,x
	sta	*(DPTR+0)
	lda	0x123,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 241 : (19, 32.000000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 242 : (7, 13.000000) count=0.000000
;	genIfx
;	genIfxJump : z
	bne	00835$
	jmp	00313$
00835$:
;	Raw cost for generated ic 244 : (5, 5.600000) count=0.000000
;	genCmp
	lda	#0x00
	sec
	tsx
	sbc	0x11c,x
	lda	#0x00
	sbc	0x11d,x
	bvc	00837$
	bpl	00836$
	bmi	00313$
00837$:
	bpl	00313$
00836$:
;	Raw cost for generated ic 250 : (23, 29.400002) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 251 : (0, 0.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x11c,x
	sec
	sbc	#0x01
	sta	0x11c,x
	lda	0x11d,x
	sbc	#0x00
	sta	0x11d,x
;	Raw cost for generated ic 248 : (17, 24.000000) count=0.000000
;	../printf_large.c: 599: OUTPUT_CHAR( c, p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 254 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 255 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 256 : (18, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	clc
	adc	#0x01
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 258 : (17, 24.000000) count=0.000000
;	../printf_large.c: 600: PTR++;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x122,x
	sta	*(DPTR+0)
	lda	0x123,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 262 : (18, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00839$
	inx
00839$:
;	Raw cost for generated ic 264 : (6, 8.600000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 265 : (16, 31.000000) count=0.000000
;	genGoto
	jmp	00143$
;	Raw cost for generated ic 266 : (3, 3.000000) count=0.000000
;	genLabel
00313$:
;	Raw cost for generated ic 767 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x11f,x
	sta	0x139,x
	lda	0x11e,x
	sta	0x138,x
;	Raw cost for generated ic 770 : (13, 20.000000) count=0.000000
;	../printf_large.c: 603: if ( left_justify && (length < width))
;	genIfx
	lda	0x14e,x
;	genIfxJump : z
	bne	00841$
	jmp	00160$
00841$:
;	Raw cost for generated ic 268 : (8, 9.600000) count=0.000000
;	genCmp
	lda	0x124,x
	sec
	sbc	0x140,x
	lda	0x125,x
	sbc	0x141,x
	bcc	00842$
	jmp	00160$
00842$:
;	Raw cost for generated ic 271 : (18, 23.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 272 : (0, 0.000000) count=0.000000
;	../printf_large.c: 605: width -= length;
;	genMinus
	lda	0x140,x
	sec
	sbc	0x124,x
	sta	0x140,x
	lda	0x141,x
	sbc	0x125,x
	sta	0x141,x
;	Raw cost for generated ic 275 : (19, 28.000000) count=0.000000
;	../printf_large.c: 606: while( width-- != 0 )
;	genAssign
;	genCopy
	lda	0x11f,x
	sta	0x145,x
	lda	0x11e,x
	sta	0x144,x
;	Raw cost for generated ic 771 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x141,x
	sta	0x11d,x
	lda	0x140,x
	sta	0x11c,x
;	Raw cost for generated ic 775 : (12, 18.000000) count=0.000000
;	genLabel
00146$:
;	Raw cost for generated ic 277 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x11d,x
	sta	0x11f,x
	lda	0x11c,x
	sta	0x11e,x
;	Raw cost for generated ic 278 : (13, 20.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x11c,x
	sec
	sbc	#0x01
	sta	0x11c,x
	lda	0x11d,x
	sbc	#0x00
	sta	0x11d,x
;	Raw cost for generated ic 279 : (17, 24.000000) count=0.000000
;	genIfx
	lda	0x11f,x
	ora	0x11e,x
;	genIfxJump : z
	bne	00844$
	jmp	00314$
00844$:
;	Raw cost for generated ic 281 : (11, 13.600000) count=0.000000
;	../printf_large.c: 608: OUTPUT_CHAR( ' ', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 284 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 285 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x20
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 286 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x144,x
	clc
	adc	#0x01
	sta	0x144,x
	lda	0x145,x
	adc	#0x00
	sta	0x145,x
;	Raw cost for generated ic 288 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00146$
;	Raw cost for generated ic 290 : (3, 3.000000) count=0.000000
;	../printf_large.c: 613: case 'P':
;	genLabel
00152$:
;	Raw cost for generated ic 294 : (0, 0.000000) count=0.000000
;	../printf_large.c: 614: PTR = va_arg(ap,ptr_t);
;	genCast
;	genCopy
	tsx
	lda	0x135,x
	sta	0x11f,x
	lda	0x134,x
	sta	0x11e,x
;	Raw cost for generated ic 296 : (13, 20.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00845$
	inx
00845$:
;	Raw cost for generated ic 297 : (15, 22.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 298 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00846$
	dex
00846$:
;	Raw cost for generated ic 299 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 301 : (12, 22.000000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11e,x
	sta	*(DPTR+0)
	lda	0x11f,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 302 : (27, 47.000000) count=0.000000
;	../printf_large.c: 663: OUTPUT_CHAR('0', p);
;	genIpush
	tsx
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 303 : (9, 16.000000) count=0.000000
;	Raw cost for generated ic 304 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x30
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 305 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x11e,x
	lda	0x139,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 307 : (17, 24.000000) count=0.000000
;	../printf_large.c: 664: OUTPUT_CHAR('x', p);
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 309 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 310 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x78
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 311 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	clc
	adc	#0x01
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 313 : (17, 24.000000) count=0.000000
;	../printf_large.c: 665: OUTPUT_2DIGITS( value.byte[1] );
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	0x132,x
	sta	*(DPTR+0)
	lda	0x133,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 318 : (15, 23.000000) count=0.000000
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 319 : (8, 14.000000) count=0.000000
;	genIpush
	lda	0x150,x
	pha
	lda	0x14f,x
	pha
;	Raw cost for generated ic 320 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 321 : (0, 0.000000) count=0.000000
;	Raw cost for generated ic 322 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	tya
	sta	*(REGTEMP+0)
	lda	0x146,x
	tax
	lda	*(REGTEMP+0)
	jsr	_output_2digits
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 323 : (22, 38.000000) count=0.000000
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x11e,x
	lda	0x11f,x
	adc	#0x00
	sta	0x11f,x
;	Raw cost for generated ic 324 : (18, 26.000000) count=0.000000
;	../printf_large.c: 666: OUTPUT_2DIGITS( value.byte[0] );
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x134,x
	sta	*(DPTR+0)
	lda	0x135,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 329 : (15, 23.000000) count=0.000000
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 330 : (8, 14.000000) count=0.000000
;	genIpush
	lda	0x150,x
	pha
	lda	0x14f,x
	pha
;	Raw cost for generated ic 331 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 332 : (0, 0.000000) count=0.000000
;	Raw cost for generated ic 333 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	tya
	sta	*(REGTEMP+0)
	lda	0x146,x
	tax
	lda	*(REGTEMP+0)
	jsr	_output_2digits
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 334 : (22, 38.000000) count=0.000000
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11e,x
	clc
	adc	#0x02
	sta	0x138,x
	lda	0x11f,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 335 : (18, 26.000000) count=0.000000
;	../printf_large.c: 668: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 337 : (3, 3.000000) count=0.000000
;	../printf_large.c: 671: case 'I':
;	genLabel
00154$:
;	Raw cost for generated ic 339 : (0, 0.000000) count=0.010755
;	../printf_large.c: 672: signed_argument = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x14a,x
;	Raw cost for generated ic 340 : (6, 9.000000) count=0.010755
;	../printf_large.c: 673: radix = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	sta	0x142,x
;	Raw cost for generated ic 341 : (5, 7.000000) count=0.010755
;	../printf_large.c: 674: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 342 : (3, 3.000000) count=0.010755
;	../printf_large.c: 676: case 'O':
;	genLabel
00155$:
;	Raw cost for generated ic 343 : (0, 0.000000) count=0.000000
;	../printf_large.c: 677: radix = 8;
;	genAssign
;	genAssignLit
	lda	#0x08
	tsx
	sta	0x142,x
;	Raw cost for generated ic 344 : (6, 9.000000) count=0.000000
;	../printf_large.c: 678: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 345 : (3, 3.000000) count=0.000000
;	../printf_large.c: 680: case 'U':
;	genLabel
00156$:
;	Raw cost for generated ic 346 : (0, 0.000000) count=0.000000
;	../printf_large.c: 681: radix = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	tsx
	sta	0x142,x
;	Raw cost for generated ic 347 : (6, 9.000000) count=0.000000
;	../printf_large.c: 682: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 348 : (3, 3.000000) count=0.000000
;	../printf_large.c: 684: case 'X':
;	genLabel
00157$:
;	Raw cost for generated ic 349 : (0, 0.000000) count=0.000000
;	../printf_large.c: 685: radix = 16;
;	genAssign
;	genAssignLit
	lda	#0x10
	tsx
	sta	0x142,x
;	Raw cost for generated ic 350 : (6, 9.000000) count=0.000000
;	../printf_large.c: 686: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 351 : (3, 3.000000) count=0.000000
;	../printf_large.c: 688: case 'F':
;	genLabel
00158$:
;	Raw cost for generated ic 352 : (0, 0.000000) count=0.000000
;	../printf_large.c: 689: float_argument=1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x147,x
;	Raw cost for generated ic 353 : (6, 9.000000) count=0.000000
;	../printf_large.c: 690: break;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 354 : (3, 3.000000) count=0.000000
;	../printf_large.c: 692: default:
;	genLabel
00159$:
;	Raw cost for generated ic 355 : (0, 0.000000) count=0.000000
;	../printf_large.c: 694: OUTPUT_CHAR( c, p );
;	genIpush
	tsx
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 356 : (9, 16.000000) count=0.000000
;	Raw cost for generated ic 357 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 358 : (18, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 360 : (17, 24.000000) count=0.000000
;	../printf_large.c: 877: return charsOutputted;
;	genGoto
	jmp	00160$
;	Raw cost for generated ic 772 : (3, 3.000000) count=0.000000
;	../printf_large.c: 696: }
;	genLabel
00314$:
;	Raw cost for generated ic 773 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x145,x
	sta	0x139,x
	lda	0x144,x
	sta	0x138,x
;	Raw cost for generated ic 774 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x11d,x
	sta	0x141,x
	lda	0x11c,x
	sta	0x140,x
;	Raw cost for generated ic 776 : (12, 18.000000) count=0.000000
;	genLabel
00160$:
;	Raw cost for generated ic 363 : (0, 0.000000) count=0.021509
;	../printf_large.c: 698: if (float_argument)
;	genIfx
	tsx
	lda	0x147,x
;	genIfxJump : z
	bne	00848$
	jmp	00226$
00848$:
;	Raw cost for generated ic 364 : (9, 11.600000) count=0.021509
;	../printf_large.c: 700: value.f = va_arg(ap, float);
;	genCast
;	genCopy
	lda	0x131,x
	sta	0x11d,x
	lda	0x130,x
	sta	0x11c,x
;	Raw cost for generated ic 368 : (12, 18.000000) count=0.016132
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x04
	bcc	00849$
	inx
00849$:
;	Raw cost for generated ic 369 : (15, 22.600000) count=0.016132
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 370 : (16, 26.000000) count=0.016132
;	genMinus
;	  genMinusDec - size=2  icount=4
	sec
	sbc	#0x04
	bcs	00850$
	dex
00850$:
;	Raw cost for generated ic 371 : (6, 8.600000) count=0.016132
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x118,x
	iny
	lda	[DPTR],y
	sta	0x119,x
	iny
	lda	[DPTR],y
	sta	0x11a,x
	iny
	lda	[DPTR],y
	sta	0x11b,x
;	Raw cost for generated ic 373 : (30, 56.000000) count=0.016132
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11c,x
	sta	*(DPTR+0)
	lda	0x11d,x
	sta	*(DPTR+1)
	lda	0x118,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x119,x
	iny
	sta	[DPTR],y
	lda	0x11a,x
	iny
	sta	[DPTR],y
	lda	0x11b,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 374 : (35, 62.000000) count=0.016132
;	../printf_large.c: 702: PTR="<NO FLOAT>";
;	genCast
;	genCopy
	lda	0x131,x
	sta	0x119,x
	lda	0x130,x
	sta	0x118,x
;	Raw cost for generated ic 376 : (12, 18.000000) count=0.016132
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 378 : (0, 0.000000) count=0.016132
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	lda	#___str_0
	ldy	#0x00
	sta	[DPTR],y
	lda	#>___str_0
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 379 : (18, 30.000000) count=0.016132
;	../printf_large.c: 703: while (c=*PTR++)
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x11d,x
	lda	0x138,x
	sta	0x11c,x
;	Raw cost for generated ic 777 : (12, 18.000000) count=0.016132
;	genLabel
00161$:
;	Raw cost for generated ic 380 : (0, 0.000000) count=0.016132
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
;	Raw cost for generated ic 383 : (24, 40.000000) count=0.016132
;	genPlus
;	  genPlusInc
	lda	0x11e,x
	tay
	lda	0x11f,x
	tax
	tya
	clc
	adc	#0x01
	bcc	00851$
	inx
00851$:
;	Raw cost for generated ic 385 : (15, 22.600000) count=0.016132
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 386 : (18, 33.000000) count=0.016132
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11e,x
	sta	*(DPTR+0)
	lda	0x11f,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 387 : (15, 25.000000) count=0.016132
;	genIfx
;	genIfxJump : z
	bne	00853$
	jmp	00231$
00853$:
;	Raw cost for generated ic 389 : (5, 5.600000) count=0.016132
;	../printf_large.c: 705: OUTPUT_CHAR (c, p);
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 392 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 393 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 394 : (18, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x11c,x
	clc
	adc	#0x01
	sta	0x11c,x
	lda	0x11d,x
	adc	#0x00
	sta	0x11d,x
;	Raw cost for generated ic 396 : (17, 24.000000) count=0.000000
;	genAssign
;	genCopy
	sta	0x139,x
	lda	0x11c,x
	sta	0x138,x
;	Raw cost for generated ic 397 : (9, 14.000000) count=0.000000
;	genGoto
	jmp	00161$
;	Raw cost for generated ic 398 : (3, 3.000000) count=0.000000
;	genLabel
00226$:
;	Raw cost for generated ic 401 : (0, 0.000000) count=0.000000
;	../printf_large.c: 723: else if (radix != 0)
;	genIfx
	tsx
	lda	0x142,x
;	genIfxJump : z
	bne	00855$
	jmp	00231$
00855$:
;	Raw cost for generated ic 402 : (9, 11.600000) count=0.000000
;	../printf_large.c: 728: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	genCast
;	genCopy
	lda	0x12f,x
	sta	0x119,x
	lda	0x12e,x
	sta	0x118,x
;	Raw cost for generated ic 407 : (12, 18.000000) count=0.000000
;	../printf_large.c: 731: if (char_argument)
;	genIfx
	lda	0x149,x
;	genIfxJump : z
	bne	00857$
	jmp	00172$
00857$:
;	Raw cost for generated ic 409 : (8, 9.600000) count=0.000000
;	../printf_large.c: 733: value.l = va_arg(ap, char);
;	genCast
;	genCopy
	lda	0x12b,x
	sta	0x11d,x
	lda	0x12a,x
	sta	0x11c,x
;	Raw cost for generated ic 413 : (12, 18.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x01
	bcc	00858$
	inx
00858$:
;	Raw cost for generated ic 414 : (15, 22.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 415 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00859$
	dex
00859$:
;	Raw cost for generated ic 416 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 417 : (9, 15.000000) count=0.000000
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x117,x
	sta	0x116,x
	sta	0x115,x
	tya
	sta	0x114,x
;	Raw cost for generated ic 418 : (16, 26.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11c,x
	sta	*(DPTR+0)
	lda	0x11d,x
	sta	*(DPTR+1)
	lda	0x114,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 419 : (35, 62.000000) count=0.000000
;	../printf_large.c: 734: if (!signed_argument)
;	genIfx
	lda	0x14a,x
;	genIfxJump : z
	beq	00861$
	jmp	00173$
00861$:
;	Raw cost for generated ic 420 : (8, 9.600000) count=0.000000
;	../printf_large.c: 736: value.l &= 0xFF;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	lda	[DPTR],y
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
;	Raw cost for generated ic 427 : (25, 48.000000) count=0.000000
;	genAnd
	lda	#0x00
	sta	0x115,x
	sta	0x116,x
	sta	0x117,x
;	Raw cost for generated ic 428 : (11, 17.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 429 : (25, 48.000000) count=0.000000
;	genGoto
	jmp	00173$
;	Raw cost for generated ic 431 : (3, 3.000000) count=0.000000
;	genLabel
00172$:
;	Raw cost for generated ic 432 : (0, 0.000000) count=0.000000
;	../printf_large.c: 739: else if (long_argument)
;	genIfx
	tsx
	lda	0x148,x
;	genIfxJump : z
	beq	00169$
;	Raw cost for generated ic 433 : (9, 11.600000) count=0.000000
;	../printf_large.c: 741: value.l = va_arg(ap, long);
;	genAddrOf
	txa
	clc
	adc	#0x07
	sta	0x114,x
	lda	#0x01
	sta	0x115,x
;	Raw cost for generated ic 436 : (12, 18.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x04
	bcc	00864$
	inx
00864$:
;	Raw cost for generated ic 438 : (15, 22.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 439 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=4
	sec
	sbc	#0x04
	bcs	00865$
	dex
00865$:
;	Raw cost for generated ic 440 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x110,x
	iny
	lda	[DPTR],y
	sta	0x111,x
	iny
	lda	[DPTR],y
	sta	0x112,x
	iny
	lda	[DPTR],y
	sta	0x113,x
;	Raw cost for generated ic 442 : (30, 56.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	sta	*(DPTR+0)
	lda	0x115,x
	sta	*(DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
	lda	0x112,x
	iny
	sta	[DPTR],y
	lda	0x113,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 443 : (35, 62.000000) count=0.000000
;	genGoto
	jmp	00173$
;	Raw cost for generated ic 444 : (3, 3.000000) count=0.000000
;	genLabel
00169$:
;	Raw cost for generated ic 445 : (0, 0.000000) count=0.000000
;	../printf_large.c: 745: value.l = va_arg(ap, int);
;	genCast
;	genCopy
	tsx
	lda	0x12d,x
	sta	0x111,x
	lda	0x12c,x
	sta	0x110,x
;	Raw cost for generated ic 447 : (13, 20.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x157,x
	tay
	lda	0x158,x
	tax
	tya
	clc
	adc	#0x02
	bcc	00866$
	inx
00866$:
;	Raw cost for generated ic 448 : (15, 22.600000) count=0.000000
;	genAssign
;	genCopy
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	txa
	tsx
	sta	0x158,x
	lda	*(REGTEMP+1)
	sta	0x157,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 449 : (16, 26.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=2
	sec
	sbc	#0x02
	bcs	00867$
	dex
00867$:
;	Raw cost for generated ic 450 : (6, 8.600000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
;	Raw cost for generated ic 452 : (18, 32.000000) count=0.000000
;	genCast
	lda	0x114,x
	sta	0x114,x
	lda	0x115,x
	sta	0x115,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x116,x
	sta	0x117,x
;	Raw cost for generated ic 453 : (25, 36.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x110,x
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	lda	0x114,x
	dey
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 454 : (34, 62.000000) count=0.000000
;	../printf_large.c: 746: if (!signed_argument)
;	genIfx
	lda	0x14a,x
;	genIfxJump : z
	bne	00173$
;	Raw cost for generated ic 455 : (8, 9.600000) count=0.000000
;	../printf_large.c: 748: value.l &= 0xFFFF;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	lda	[DPTR],y
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
;	Raw cost for generated ic 462 : (25, 48.000000) count=0.000000
;	genAnd
	lda	#0x00
	sta	0x116,x
	sta	0x117,x
;	Raw cost for generated ic 463 : (8, 12.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 464 : (25, 48.000000) count=0.000000
;	genLabel
00173$:
;	Raw cost for generated ic 467 : (0, 0.000000) count=0.000000
;	../printf_large.c: 752: if ( signed_argument )
;	genIfx
	tsx
	lda	0x14a,x
;	genIfxJump : z
	bne	00871$
	jmp	00178$
00871$:
;	Raw cost for generated ic 468 : (9, 11.600000) count=0.000000
;	../printf_large.c: 754: if (value.l < 0)
;	genCast
;	genCopy
	lda	0x129,x
	sta	0x111,x
	lda	0x128,x
	sta	0x110,x
;	Raw cost for generated ic 472 : (12, 18.000000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
;	Raw cost for generated ic 473 : (32, 58.000000) count=0.000000
;	genCmp
	sec
	sbc	#0x00
	bvc	00873$
	bpl	00872$
	bmi	00175$
00873$:
	bpl	00175$
00872$:
;	Raw cost for generated ic 474 : (14, 17.400000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 475 : (0, 0.000000) count=0.000000
;	../printf_large.c: 755: value.l = -value.l;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	lda	[DPTR],y
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
	iny
	lda	[DPTR],y
	sta	0x117,x
;	Raw cost for generated ic 482 : (25, 48.000000) count=0.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x114,x
	sta	0x114,x
	lda	#0x00
	sbc	0x115,x
	sta	0x115,x
	lda	#0x00
	sbc	0x116,x
	sta	0x116,x
	lda	#0x00
	sbc	0x117,x
	sta	0x117,x
;	Raw cost for generated ic 483 : (33, 46.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x114,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x115,x
	iny
	sta	[DPTR],y
	lda	0x116,x
	iny
	sta	[DPTR],y
	lda	0x117,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 484 : (25, 48.000000) count=0.000000
;	genGoto
	jmp	00178$
;	Raw cost for generated ic 485 : (3, 3.000000) count=0.000000
;	genLabel
00175$:
;	Raw cost for generated ic 486 : (0, 0.000000) count=0.000000
;	../printf_large.c: 757: signed_argument = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x14a,x
;	Raw cost for generated ic 487 : (6, 9.000000) count=0.000000
;	genLabel
00178$:
;	Raw cost for generated ic 489 : (0, 0.000000) count=0.000000
;	../printf_large.c: 761: lsd = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x143,x
;	Raw cost for generated ic 491 : (6, 9.000000) count=0.000000
;	../printf_large.c: 763: do {
;	genAssign
;	genCopy
	lda	0x119,x
	sta	0x111,x
	lda	0x118,x
	sta	0x110,x
;	Raw cost for generated ic 778 : (12, 18.000000) count=0.000000
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x114,x
	sta	0x115,x
;	Raw cost for generated ic 781 : (8, 12.000000) count=0.000000
;	genLabel
00182$:
;	Raw cost for generated ic 492 : (0, 0.000000) count=0.000000
;	../printf_large.c: 764: value.byte[4] = 0;
;	genAssign
;	genCopy
	tsx
	lda	0x127,x
	sta	0x119,x
	lda	0x126,x
	sta	0x118,x
;	Raw cost for generated ic 495 : (13, 20.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	lda	#0x00
	ldy	#0x04
	sta	[DPTR],y
;	Raw cost for generated ic 496 : (13, 20.000000) count=0.000000
;	../printf_large.c: 766: calculate_digit(&value, radix);
;	genCast
;	genCopy
	lda	0x127,x
	sta	0x11d,x
	lda	0x126,x
	sta	0x11c,x
;	Raw cost for generated ic 498 : (12, 18.000000) count=0.000000
;	genIpush
	lda	0x142,x
	pha
;	Raw cost for generated ic 499 : (4, 7.000000) count=0.000000
;	Raw cost for generated ic 500 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	lda	0x11c,x
	tay
	lda	0x11d,x
	tax
	tya
	jsr	_calculate_digit
;	  adjustStack : cycles stk:10  incdec:12  adc:24
	sta	*(REGTEMP+0)
	pla
;	Raw cost for generated ic 501 : (17, 30.000000) count=0.000000
;	../printf_large.c: 770: if (!lsd)
;	genIfx
	tsx 
	lda	0x143,x
;	genIfxJump : z
	bne	00180$
;	Raw cost for generated ic 502 : (9, 11.600000) count=0.000000
;	../printf_large.c: 772: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
;	Raw cost for generated ic 509 : (14, 21.000000) count=0.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh8 - shift=4
	asl	a
	asl	a
	asl	a
	asl	a
	tax
;	Raw cost for generated ic 510 : (5, 10.000000) count=0.000000
;	genPointerGet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	[DPTR],y
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 514 : (6, 11.000000) count=0.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 515 : (4, 8.000000) count=0.000000
;	genOr
	stx	*(REGTEMP+0)
	ora	*(REGTEMP+0)
	tsx
	sta	0x11c,x
;	Raw cost for generated ic 516 : (8, 13.000000) count=0.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x110,x
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 518 : (14, 21.000000) count=0.000000
;	genOr
	ora	0x11c,x
;	Raw cost for generated ic 519 : (3, 4.000000) count=0.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	[DPTR],y
;	Raw cost for generated ic 520 : (2, 6.000000) count=0.000000
;	../printf_large.c: 773: pstore--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
;	Raw cost for generated ic 522 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00181$
;	Raw cost for generated ic 524 : (3, 3.000000) count=0.000000
;	genLabel
00180$:
;	Raw cost for generated ic 525 : (0, 0.000000) count=0.000000
;	../printf_large.c: 777: *pstore = value.byte[4];
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 530 : (16, 25.000000) count=0.000000
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x110,x
	sta	*(DPTR+0)
	lda	0x111,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 531 : (22, 35.000000) count=0.000000
;	genLabel
00181$:
;	Raw cost for generated ic 532 : (0, 0.000000) count=0.000000
;	../printf_large.c: 779: length++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x114,x
	clc
	adc	#0x01
	sta	0x114,x
	lda	0x115,x
	adc	#0x00
	sta	0x115,x
;	Raw cost for generated ic 534 : (18, 26.000000) count=0.000000
;	../printf_large.c: 780: lsd = !lsd;
;	genNot
	lda	0x143,x
	eor	#0x01
	sta	0x143,x
;	Raw cost for generated ic 536 : (8, 11.000000) count=0.000000
;	../printf_large.c: 781: } while( value.ul );
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x126,x
	sta	*(DPTR+0)
	lda	0x127,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x10c,x
	iny
	lda	[DPTR],y
	sta	0x10d,x
	iny
	lda	[DPTR],y
	sta	0x10e,x
	iny
	lda	[DPTR],y
	sta	0x10f,x
;	Raw cost for generated ic 541 : (35, 62.000000) count=0.000000
;	genIfx
	ora	0x10e,x
	ora	0x10d,x
	ora	0x10c,x
;	genIfxJump : z
	beq	00879$
	jmp	00182$
00879$:
;	Raw cost for generated ic 542 : (14, 17.600000) count=0.000000
;	../printf_large.c: 783: if (width == 0)
;	genAssign
;	genCopy
	lda	0x111,x
	sta	0x13b,x
	lda	0x110,x
	sta	0x13a,x
;	Raw cost for generated ic 780 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x115,x
	sta	0x13d,x
	lda	0x114,x
	sta	0x13c,x
;	Raw cost for generated ic 782 : (12, 18.000000) count=0.000000
;	genIfx
	lda	0x141,x
	ora	0x140,x
;	genIfxJump : z
	bne	00186$
;	Raw cost for generated ic 545 : (11, 13.600000) count=0.000000
;	../printf_large.c: 788: width = 1;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x140,x
	lda	#0x00
	sta	0x141,x
;	Raw cost for generated ic 548 : (10, 14.000000) count=0.000000
;	genLabel
00186$:
;	Raw cost for generated ic 549 : (0, 0.000000) count=0.000000
;	../printf_large.c: 792: if (!zero_padding && !left_justify)
;	genIfx
	tsx
	lda	0x14d,x
;	genIfxJump : z
	beq	00883$
	jmp	00191$
00883$:
;	Raw cost for generated ic 550 : (9, 11.600000) count=0.000000
;	genIfx
	lda	0x14e,x
;	genIfxJump : z
	beq	00885$
	jmp	00191$
00885$:
;	Raw cost for generated ic 553 : (8, 9.600000) count=0.000000
;	../printf_large.c: 794: while ( width > (unsigned char) (length+1) )
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x10d,x
	lda	0x138,x
	sta	0x10c,x
;	Raw cost for generated ic 783 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x141,x
	sta	0x111,x
	lda	0x140,x
	sta	0x110,x
;	Raw cost for generated ic 786 : (12, 18.000000) count=0.000000
;	genLabel
00187$:
;	Raw cost for generated ic 556 : (0, 0.000000) count=0.000000
;	genCast
;	genCopy
	tsx
	lda	0x13c,x
;	Raw cost for generated ic 557 : (4, 6.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 558 : (0, 0.000000) count=0.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
;	Raw cost for generated ic 559 : (3, 4.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 560 : (0, 0.000000) count=0.000000
;	genCast
	sta	0x114,x
	lda	#0x00
	sta	0x115,x
;	Raw cost for generated ic 561 : (8, 12.000000) count=0.000000
;	genCmp
	lda	0x114,x
	sec
	sbc	0x110,x
	lda	0x115,x
	sbc	0x111,x
	bcs	00316$
;	Raw cost for generated ic 562 : (18, 23.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 563 : (0, 0.000000) count=0.000000
;	../printf_large.c: 796: OUTPUT_CHAR( ' ', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 566 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 567 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x20
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 568 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	Raw cost for generated ic 570 : (17, 24.000000) count=0.000000
;	../printf_large.c: 797: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
;	Raw cost for generated ic 573 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00187$
;	Raw cost for generated ic 575 : (3, 3.000000) count=0.000000
;	genLabel
00316$:
;	Raw cost for generated ic 784 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10d,x
	sta	0x139,x
	lda	0x10c,x
	sta	0x138,x
;	Raw cost for generated ic 785 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x111,x
	sta	0x141,x
	lda	0x110,x
	sta	0x140,x
;	Raw cost for generated ic 787 : (12, 18.000000) count=0.000000
;	genLabel
00191$:
;	Raw cost for generated ic 577 : (0, 0.000000) count=0.000000
;	../printf_large.c: 801: if (signed_argument) // this now means the original value was negative
;	genIfx
	tsx
	lda	0x14a,x
;	genIfxJump : z
	beq	00201$
;	Raw cost for generated ic 578 : (9, 11.600000) count=0.000000
;	../printf_large.c: 803: OUTPUT_CHAR( '-', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 581 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 582 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x2d
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 583 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 585 : (17, 24.000000) count=0.000000
;	../printf_large.c: 805: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x140,x
	sec
	sbc	#0x01
	sta	0x140,x
	lda	0x141,x
	sbc	#0x00
	sta	0x141,x
;	Raw cost for generated ic 588 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00202$
;	Raw cost for generated ic 590 : (3, 3.000000) count=0.000000
;	genLabel
00201$:
;	Raw cost for generated ic 591 : (0, 0.000000) count=0.000000
;	../printf_large.c: 807: else if (length != 0)
;	genIfx
	tsx
	lda	0x13d,x
	ora	0x13c,x
;	genIfxJump : z
	bne	00890$
	jmp	00202$
00890$:
;	Raw cost for generated ic 592 : (12, 15.600000) count=0.000000
;	../printf_large.c: 810: if (prefix_sign)
;	genIfx
	lda	0x14c,x
;	genIfxJump : z
	beq	00196$
;	Raw cost for generated ic 595 : (8, 9.600000) count=0.000000
;	../printf_large.c: 812: OUTPUT_CHAR( '+', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 598 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 599 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x2b
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 600 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 602 : (17, 24.000000) count=0.000000
;	../printf_large.c: 814: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x140,x
	sec
	sbc	#0x01
	sta	0x140,x
	lda	0x141,x
	sbc	#0x00
	sta	0x141,x
;	Raw cost for generated ic 605 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00202$
;	Raw cost for generated ic 607 : (3, 3.000000) count=0.000000
;	genLabel
00196$:
;	Raw cost for generated ic 608 : (0, 0.000000) count=0.000000
;	../printf_large.c: 816: else if (prefix_space)
;	genIfx
	tsx
	lda	0x14b,x
;	genIfxJump : z
	beq	00202$
;	Raw cost for generated ic 609 : (9, 11.600000) count=0.000000
;	../printf_large.c: 818: OUTPUT_CHAR( ' ', p );
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 612 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 613 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x20
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 614 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 616 : (17, 24.000000) count=0.000000
;	../printf_large.c: 820: width--;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x140,x
	sec
	sbc	#0x01
	sta	0x140,x
	lda	0x141,x
	sbc	#0x00
	sta	0x141,x
;	Raw cost for generated ic 619 : (17, 24.000000) count=0.000000
;	genLabel
00202$:
;	Raw cost for generated ic 624 : (0, 0.000000) count=0.000000
;	../printf_large.c: 825: if (!left_justify)
;	genIfx
	tsx
	lda	0x14e,x
;	genIfxJump : z
	beq	00896$
	jmp	00210$
00896$:
;	Raw cost for generated ic 625 : (9, 11.600000) count=0.000000
;	../printf_large.c: 827: while ( width-- > length )
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x10d,x
	lda	0x138,x
	sta	0x10c,x
;	Raw cost for generated ic 788 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x141,x
	sta	0x111,x
	lda	0x140,x
	sta	0x110,x
;	Raw cost for generated ic 792 : (12, 18.000000) count=0.000000
;	genLabel
00203$:
;	Raw cost for generated ic 628 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x111,x
	sta	0x115,x
	lda	0x110,x
	sta	0x114,x
;	Raw cost for generated ic 629 : (13, 20.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x110,x
	sec
	sbc	#0x01
	sta	0x110,x
	lda	0x111,x
	sbc	#0x00
	sta	0x111,x
;	Raw cost for generated ic 630 : (17, 24.000000) count=0.000000
;	genCmp
	lda	0x13c,x
	sec
	sbc	0x114,x
	lda	0x13d,x
	sbc	0x115,x
	bcs	00317$
;	Raw cost for generated ic 632 : (18, 23.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 633 : (0, 0.000000) count=0.000000
;	../printf_large.c: 829: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
;	genIfx
	lda	0x14d,x
;	genIfxJump : z
	beq	00236$
;	Raw cost for generated ic 636 : (8, 9.600000) count=0.000000
;	genAssign
;	genCopy
	ldy	#0x30
;	Raw cost for generated ic 637 : (2, 2.000000) count=0.000000
;	genGoto
	jmp	00237$
;	Raw cost for generated ic 638 : (3, 3.000000) count=0.000000
;	genLabel
00236$:
;	Raw cost for generated ic 639 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	ldy	#0x20
;	Raw cost for generated ic 640 : (2, 2.000000) count=0.000000
;	genLabel
00237$:
;	Raw cost for generated ic 641 : (0, 0.000000) count=0.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 642 : (0, 0.000000) count=0.000000
;	genIpush
	tsx
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 643 : (9, 16.000000) count=0.000000
;	Raw cost for generated ic 644 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	tya
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 645 : (18, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	Raw cost for generated ic 647 : (17, 24.000000) count=0.000000
;	genGoto
	jmp	00203$
;	Raw cost for generated ic 649 : (3, 3.000000) count=0.000000
;	genLabel
00210$:
;	Raw cost for generated ic 652 : (0, 0.000000) count=0.000000
;	../printf_large.c: 835: if (width > length)
;	genCmp
	tsx
	lda	0x13c,x
	sec
	sbc	0x140,x
	lda	0x13d,x
	sbc	0x141,x
	bcs	00207$
;	Raw cost for generated ic 653 : (19, 25.600000) count=0.000000
;	skipping generated iCode
;	Raw cost for generated ic 654 : (0, 0.000000) count=0.000000
;	../printf_large.c: 836: width -= length;
;	genMinus
	lda	0x140,x
	sec
	sbc	0x13c,x
	sta	0x140,x
	lda	0x141,x
	sbc	0x13d,x
	sta	0x141,x
;	Raw cost for generated ic 657 : (19, 28.000000) count=0.000000
;	genGoto
	jmp	00309$
;	Raw cost for generated ic 659 : (3, 3.000000) count=0.000000
;	genLabel
00207$:
;	Raw cost for generated ic 660 : (0, 0.000000) count=0.000000
;	../printf_large.c: 838: width = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x140,x
	sta	0x141,x
;	Raw cost for generated ic 661 : (9, 14.000000) count=0.000000
;	../printf_large.c: 877: return charsOutputted;
;	genGoto
	jmp	00309$
;	Raw cost for generated ic 789 : (3, 3.000000) count=0.000000
;	../printf_large.c: 842: while( length-- )
;	genLabel
00317$:
;	Raw cost for generated ic 790 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10d,x
	sta	0x139,x
	lda	0x10c,x
	sta	0x138,x
;	Raw cost for generated ic 791 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x111,x
	sta	0x141,x
	lda	0x110,x
	sta	0x140,x
;	Raw cost for generated ic 793 : (12, 18.000000) count=0.000000
;	genLabel
00309$:
;	Raw cost for generated ic 756 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x13b,x
	sta	0x10d,x
	lda	0x13a,x
	sta	0x10c,x
;	Raw cost for generated ic 794 : (13, 20.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x139,x
	sta	0x111,x
	lda	0x138,x
	sta	0x110,x
;	Raw cost for generated ic 797 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x13d,x
	sta	0x115,x
	lda	0x13c,x
	sta	0x114,x
;	Raw cost for generated ic 799 : (12, 18.000000) count=0.000000
;	genLabel
00215$:
;	Raw cost for generated ic 664 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x115,x
	sta	0x11d,x
	lda	0x114,x
	sta	0x11c,x
;	Raw cost for generated ic 665 : (13, 20.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x114,x
	sec
	sbc	#0x01
	sta	0x114,x
	lda	0x115,x
	sbc	#0x00
	sta	0x115,x
;	Raw cost for generated ic 666 : (17, 24.000000) count=0.000000
;	genIfx
	lda	0x11d,x
	ora	0x11c,x
;	genIfxJump : z
	bne	00902$
	jmp	00318$
00902$:
;	Raw cost for generated ic 668 : (11, 13.600000) count=0.000000
;	../printf_large.c: 844: lsd = !lsd;
;	genNot
	lda	0x143,x
	eor	#0x01
	sta	0x143,x
;	Raw cost for generated ic 671 : (8, 11.000000) count=0.000000
;	../printf_large.c: 845: if (!lsd)
;	genIfx
;	genIfxJump : z
	bne	00213$
;	Raw cost for generated ic 673 : (5, 5.600000) count=0.000000
;	../printf_large.c: 847: pstore++;
;	genPlus
;	  genPlusInc
	lda	0x10c,x
	clc
	adc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	adc	#0x00
	sta	0x10d,x
;	Raw cost for generated ic 677 : (17, 24.000000) count=0.000000
;	../printf_large.c: 848: value.byte[4] = *pstore >> 4;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x10c,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 683 : (12, 19.000000) count=0.000000
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=4
	tax
	lsr	a
	lsr	a
	lsr	a
	lsr	a
;	Raw cost for generated ic 684 : (5, 10.000000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x04
	sta	[DPTR],y
;	Raw cost for generated ic 685 : (19, 30.000000) count=0.000000
;	genGoto
	jmp	00214$
;	Raw cost for generated ic 686 : (3, 3.000000) count=0.000000
;	genLabel
00213$:
;	Raw cost for generated ic 687 : (0, 0.000000) count=0.000000
;	../printf_large.c: 852: value.byte[4] = *pstore & 0x0F;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10c,x
	sta	*(DPTR+0)
	lda	0x10d,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 692 : (16, 25.000000) count=0.000000
;	genAnd
	tax
	and	#0x0f
;	Raw cost for generated ic 694 : (3, 4.000000) count=0.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x04
	sta	[DPTR],y
;	Raw cost for generated ic 696 : (19, 30.000000) count=0.000000
;	genLabel
00214$:
;	Raw cost for generated ic 697 : (0, 0.000000) count=0.000000
;	../printf_large.c: 855: output_digit( value.byte[4], lower_case, output_char, p );
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x118,x
	sta	*(DPTR+0)
	lda	0x119,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 701 : (16, 25.000000) count=0.000000
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 702 : (8, 14.000000) count=0.000000
;	genIpush
	lda	0x150,x
	pha
	lda	0x14f,x
	pha
;	Raw cost for generated ic 703 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 704 : (0, 0.000000) count=0.000000
;	Raw cost for generated ic 705 : (0, 0.000000) count=0.000000
;	genCall
;	genSend
	tya
	sta	*(REGTEMP+0)
	lda	0x146,x
	tax
	lda	*(REGTEMP+0)
	jsr	_output_digit
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 706 : (22, 38.000000) count=0.000000
;	../printf_large.c: 856: charsOutputted++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x110,x
	clc
	adc	#0x01
	sta	0x110,x
	lda	0x111,x
	adc	#0x00
	sta	0x111,x
;	Raw cost for generated ic 708 : (18, 26.000000) count=0.000000
;	genGoto
	jmp	00215$
;	Raw cost for generated ic 710 : (3, 3.000000) count=0.000000
;	genLabel
00318$:
;	Raw cost for generated ic 795 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x111,x
	sta	0x139,x
	lda	0x110,x
	sta	0x138,x
;	Raw cost for generated ic 798 : (13, 20.000000) count=0.000000
;	../printf_large.c: 861: if (left_justify)
;	genIfx
	lda	0x14e,x
;	genIfxJump : z
	bne	00907$
	jmp	00231$
00907$:
;	Raw cost for generated ic 712 : (8, 9.600000) count=0.000000
;	../printf_large.c: 863: while (width-- > 0)
;	genAssign
;	genCopy
	lda	0x111,x
	sta	0x145,x
	lda	0x110,x
	sta	0x144,x
;	Raw cost for generated ic 801 : (12, 18.000000) count=0.000000
;	genAssign
;	genCopy
	lda	0x141,x
	sta	0x10d,x
	lda	0x140,x
	sta	0x10c,x
;	Raw cost for generated ic 802 : (12, 18.000000) count=0.000000
;	genLabel
00218$:
;	Raw cost for generated ic 715 : (0, 0.000000) count=0.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10d,x
	sta	0x111,x
	lda	0x10c,x
	sta	0x110,x
;	Raw cost for generated ic 716 : (13, 20.000000) count=0.000000
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	0x10c,x
	sec
	sbc	#0x01
	sta	0x10c,x
	lda	0x10d,x
	sbc	#0x00
	sta	0x10d,x
;	Raw cost for generated ic 717 : (17, 24.000000) count=0.000000
;	genIfx
	lda	0x111,x
	ora	0x110,x
;	genIfxJump : z
	bne	00909$
	jmp	00231$
00909$:
;	Raw cost for generated ic 719 : (11, 13.600000) count=0.000000
;	../printf_large.c: 865: OUTPUT_CHAR(' ', p);
;	genIpush
	lda	0x154,x
	pha
	lda	0x153,x
	pha
;	Raw cost for generated ic 722 : (8, 14.000000) count=0.000000
;	Raw cost for generated ic 723 : (0, 0.000000) count=0.000000
;	genPcall
	lda	0x14f,x
	sta	*(REGTEMP+0)
	lda	0x150,x
	sta	*(REGTEMP+1)
;	genSend
	lda	#0x20
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:8  adc:18
	tsx
	inx
	inx
	txs
;	Raw cost for generated ic 724 : (19, 30.000000) count=0.000000
;	genPlus
;	  genPlusInc
	lda	0x144,x
	clc
	adc	#0x01
	sta	0x144,x
	lda	0x145,x
	adc	#0x00
	sta	0x145,x
;	Raw cost for generated ic 726 : (17, 24.000000) count=0.000000
;	genAssign
;	genCopy
	sta	0x139,x
	lda	0x144,x
	sta	0x138,x
;	Raw cost for generated ic 727 : (9, 14.000000) count=0.000000
;	genGoto
	jmp	00218$
;	Raw cost for generated ic 728 : (3, 3.000000) count=0.000000
;	genLabel
00229$:
;	Raw cost for generated ic 734 : (0, 0.000000) count=0.740061
;	../printf_large.c: 873: OUTPUT_CHAR( c, p );
;	genIpush
	stx	*(REGTEMP+0)
	tsx
	lda	0x154,x
	php
	ldx	*(REGTEMP+0)
	plp
	pha
	stx	*(REGTEMP+0)
	tsx
	lda	0x154,x
	php
	ldx	*(REGTEMP+0)
	plp
	pha
;	Raw cost for generated ic 735 : (22, 44.000000) count=0.740061
;	Raw cost for generated ic 736 : (0, 0.000000) count=0.740061
;	genPcall
	txa
	pha
	tsx
	lda	0x152,x
	sta	*(REGTEMP+0)
	lda	0x153,x
	sta	*(REGTEMP+1)
	pla
;	genSend
	tax
	jsr	__sdcc_indirect_jsr
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 737 : (25, 49.000000) count=0.740061
;	genPlus
;	  genPlusInc
	tsx 
	lda	0x138,x
	clc
	adc	#0x01
	sta	0x138,x
	lda	0x139,x
	adc	#0x00
	sta	0x139,x
;	Raw cost for generated ic 739 : (18, 26.000000) count=0.740061
;	genGoto
	jmp	00231$
;	Raw cost for generated ic 742 : (3, 3.000000) count=0.740061
;	genLabel
00233$:
;	Raw cost for generated ic 743 : (0, 0.000000) count=0.977151
;	../printf_large.c: 877: return charsOutputted;
;	genRet
	tsx
	lda	0x139,x
	sta	*(REGTEMP+0)
	lda	0x138,x
;	Raw cost for generated ic 744 : (11, 16.000000) count=0.977151
;	genLabel
;	Raw cost for generated ic 745 : (0, 0.000000) count=0.977151
;	../printf_large.c: 878: }
;	genEndFunction
;	  adjustStack : cycles stk:326  incdec:170  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x50
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 746 : (16, 30.000000) count=0.977151
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
