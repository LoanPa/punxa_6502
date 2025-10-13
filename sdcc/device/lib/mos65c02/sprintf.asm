;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module sprintf
	
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
	.globl __print_format
	.globl _vsprintf_PARM_3
	.globl _vsprintf_PARM_2
	.globl _vsprintf
	.globl _sprintf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_vsprintf_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_vsprintf_PARM_2:
	.ds 2
_vsprintf_PARM_3:
	.ds 2
_vsprintf_buf_10000_13:
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
;Allocation info for local variables in function 'put_char_to_string'
;------------------------------------------------------------
;p             Allocated to stack - sp +9 +2 
;c             Allocated to registers a 
;buf           Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../sprintf.c: 34: put_char_to_string (char c, void* p) _REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function put_char_to_string
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_put_char_to_string:
;	  adjustStack : cycles stk:18  incdec:16  adc:18
	tsx
	dex
	dex
	dex
	dex
	dex
	dex
	txs
;	Raw cost for generated ic 1 : (8, 16.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../sprintf.c: 36: char **buf = (char **)p;
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	lda	0x10a,x
	sta	0x106,x
	lda	0x109,x
;	Raw cost for generated ic 3 : (16, 24.000000) count=1.000000
;	../sprintf.c: 37: *(*buf)++ = c;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	0x105,x
	ora	#0x00
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 6 : (27, 44.000000) count=1.000000
;	genPlus
;	  genPlusInc
	pha
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x104,x
	adc	#0x00
	sta	0x102,x
	pla
;	Raw cost for generated ic 8 : (19, 31.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x101,x
	dey
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 9 : (16, 30.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	dey
	sta	[DPTR],y
;	Raw cost for generated ic 10 : (17, 28.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../sprintf.c: 38: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'vsprintf'
;------------------------------------------------------------
;sloc0         Allocated with name '_vsprintf_sloc0_1_0'
;format        Allocated with name '_vsprintf_PARM_2'
;ap            Allocated with name '_vsprintf_PARM_3'
;buf           Allocated with name '_vsprintf_buf_10000_13'
;i             Allocated to registers a x 
;------------------------------------------------------------
;	../sprintf.c: 41: vsprintf (char *buf, const char *format, va_list ap)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function vsprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vsprintf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_vsprintf_buf_10000_13
	stx	(_vsprintf_buf_10000_13 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../sprintf.c: 44: i = _print_format (put_char_to_string, &buf, format, ap);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_vsprintf_buf_10000_13
	sta	(__print_format_PARM_2 + 1)
	lda	#_vsprintf_buf_10000_13
	sta	__print_format_PARM_2
;	Raw cost for generated ic 4 : (10, 12.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_vsprintf_PARM_2 + 1)
	sta	(__print_format_PARM_3 + 1)
	lda	_vsprintf_PARM_2
	sta	__print_format_PARM_3
;	Raw cost for generated ic 7 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_vsprintf_PARM_3 + 1)
	sta	(__print_format_PARM_4 + 1)
	lda	_vsprintf_PARM_3
	sta	__print_format_PARM_4
;	Raw cost for generated ic 8 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
;	assignResultValue
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	../sprintf.c: 45: *buf = 0;
;	genAssign
;	genCopy
	ldy	(_vsprintf_buf_10000_13 + 1)
	sty	*(_vsprintf_sloc0_1_0 + 1)
	ldy	_vsprintf_buf_10000_13
	sty	*_vsprintf_sloc0_1_0
;	Raw cost for generated ic 11 : (10, 14.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
	lda	#0x00
	tay
	sta	[*_vsprintf_sloc0_1_0],y
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (9, 16.000000) count=1.000000
;	../sprintf.c: 46: return i;
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../sprintf.c: 47: }
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'sprintf'
;------------------------------------------------------------
;buf           Allocated to stack - sp +5 +2 
;format        Allocated to stack - sp +7 +2 
;arg           Allocated to registers 
;i             Allocated to registers a x 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../sprintf.c: 50: sprintf (char *buf, const char *format, ...)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function sprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_sprintf:
;	  adjustStack : cycles stk:6  incdec:8  adc:12
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	../sprintf.c: 55: va_start (arg, format);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
;	Raw cost for generated ic 2 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x02
	sta	__print_format_PARM_4
	txa
	adc	#0x00
	sta	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	../sprintf.c: 56: i = _print_format (put_char_to_string, &buf, format, arg);
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	ldx	#0x01
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	sta	__print_format_PARM_2
	stx	(__print_format_PARM_2 + 1)
;	Raw cost for generated ic 7 : (6, 8.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	(__print_format_PARM_3 + 1)
	lda	0x107,x
	sta	__print_format_PARM_3
;	Raw cost for generated ic 10 : (13, 18.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_string)
	lda	#(_put_char_to_string)
	jsr	__print_format
;	assignResultValue
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	../sprintf.c: 57: *buf = 0;
;	genAssign
;	genCopy
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	tsx
	lda	0x106,x
	sta	0x102,x
	lda	0x105,x
	sta	0x101,x
;	Raw cost for generated ic 14 : (21, 32.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 15 : (24, 38.000000) count=1.000000
;	../sprintf.c: 60: return i;
;	genRet
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../sprintf.c: 61: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 19 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
