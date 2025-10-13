;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __assert
	
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
	.globl ___assert
	.globl _printf
	.globl ___assert_PARM_4
	.globl ___assert_PARM_3
	.globl ___assert_PARM_2
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
___assert_PARM_2:
	.ds 2
___assert_PARM_3:
	.ds 2
___assert_PARM_4:
	.ds 2
___assert_expression_10000_52:
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
;Allocation info for local variables in function '__assert'
;------------------------------------------------------------
;functionname  Allocated with name '___assert_PARM_2'
;filename      Allocated with name '___assert_PARM_3'
;linenumber    Allocated with name '___assert_PARM_4'
;expression    Allocated with name '___assert_expression_10000_52'
;------------------------------------------------------------
;	../__assert.c: 32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___assert:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	___assert_expression_10000_52
	stx	(___assert_expression_10000_52 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../__assert.c: 34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genIpush
	lda	(___assert_PARM_3 + 1)
	pha
	lda	___assert_PARM_3
	pha
;	Raw cost for generated ic 5 : (8, 14.000000) count=1.000000
;	genIpush
	lda	(___assert_PARM_4 + 1)
	pha
	lda	___assert_PARM_4
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	genIpush
	lda	(___assert_PARM_2 + 1)
	pha
	lda	___assert_PARM_2
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	genIpush
	txa
	pha
	lda	___assert_expression_10000_52
	pha
;	Raw cost for generated ic 8 : (6, 12.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 9 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_printf
;	  adjustStack : cycles stk:40  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
;	Raw cost for generated ic 10 : (10, 18.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=72.000000
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 13 : (3, 3.000000) count=72.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.000000
;	../__assert.c: 37: }
;	genEndFunction
	rts
;	Raw cost for generated ic 16 : (1, 6.000000) count=0.000000
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "Assert(%s) failed in function %s at line %u in file %s."
	.db 0x0a
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
