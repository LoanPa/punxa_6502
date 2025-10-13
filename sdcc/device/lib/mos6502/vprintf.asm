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
	.globl _vprintf_PARM_2
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
_vprintf_PARM_2:
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
;ap            Allocated with name '_vprintf_PARM_2'
;format        Allocated to registers 
;------------------------------------------------------------
;	../vprintf.c: 41: vprintf (const char *format, va_list ap)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function vprintf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_vprintf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	__print_format_PARM_3
	stx	(__print_format_PARM_3 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../vprintf.c: 43: return _print_format (put_char_to_stdout, NULL, format, ap);
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	__print_format_PARM_2
	sty	(__print_format_PARM_2 + 1)
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_vprintf_PARM_2 + 1)
	sta	(__print_format_PARM_4 + 1)
	lda	_vprintf_PARM_2
	sta	__print_format_PARM_4
;	Raw cost for generated ic 6 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
;	assignResultValue
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../vprintf.c: 44: }
;	genEndFunction
	jmp	__print_format
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'printf'
;------------------------------------------------------------
;format        Allocated to stack - sp +3 +2 
;arg           Allocated to registers 
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
	sta	__print_format_PARM_4
	txa
	adc	#0x00
	sta	(__print_format_PARM_4 + 1)
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	../vprintf.c: 53: i = _print_format (put_char_to_stdout, NULL, format, arg);
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	__print_format_PARM_2
	sty	(__print_format_PARM_2 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	(__print_format_PARM_3 + 1)
	lda	0x103,x
	sta	__print_format_PARM_3
;	Raw cost for generated ic 8 : (13, 18.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>(_put_char_to_stdout)
	lda	#(_put_char_to_stdout)
;	assignResultValue
;	Raw cost for generated ic 10 : (7, 10.000000) count=1.000000
;	../vprintf.c: 56: return i;
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../vprintf.c: 57: }
;	genEndFunction
	jmp	__print_format
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
