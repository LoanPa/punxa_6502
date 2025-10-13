;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module vprintf
	
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
	.globl _putchar
	.globl __print_format
	.globl _vprintf
	.globl _printf
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
;Allocation info for local variables in function 'put_char_to_stdout'
;------------------------------------------------------------
;p             Allocated to stack - sp +3 +2 
;c             Allocated to registers a 
;------------------------------------------------------------
;	../vprintf.c: 34: put_char_to_stdout (char c, void* p) _REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function put_char_to_stdout
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_put_char_to_stdout:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../vprintf.c: 37: putchar (c);
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 3 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 5 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../vprintf.c: 38: }
;	genEndFunction
	jmp	_putchar
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'vprintf'
;------------------------------------------------------------
;ap            Allocated to stack - sp +5 +2 
;format        Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../vprintf.c: 41: vprintf (const char *format, va_list ap)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_vprintf:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	Raw cost for generated ic 1 : (7, 14.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
;	genIpush
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 3 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 4 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 5 : (4, 8.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
	jsr	__print_format
;	assignResultValue
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
;	Raw cost for generated ic 7 : (19, 32.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../vprintf.c: 44: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 10 : (7, 20.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format        Allocated to stack - sp +3 +2 
;arg           Allocated to registers a x 
;i             Allocated to registers a x 
;------------------------------------------------------------
;	../vprintf.c: 47: printf (const char *format, ...)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function printf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_printf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../vprintf.c: 52: va_start (arg, format);
;	genAddrOf
	tsx
	inx
	inx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 2 : (7, 12.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x02
	bcc	00103$
	inx
00103$:
;	Raw cost for generated ic 4 : (6, 8.600000) count=1.000000
;	../vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 6 : (5, 12.000000) count=1.000000
;	genIpush
	tsx
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (9, 16.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 8 : (4, 8.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
	jsr	__print_format
;	assignResultValue
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
;	Raw cost for generated ic 10 : (19, 32.000000) count=1.000000
;	../vprintf.c: 56: return i;
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../vprintf.c: 57: }
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
