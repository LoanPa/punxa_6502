;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module __assert
	
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
	.globl ___assert
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
;Allocation info for local variables in function '__assert'
;------------------------------------------------------------
;functionname  Allocated to stack - sp +5 +2 
;filename      Allocated to stack - sp +7 +2 
;linenumber    Allocated to stack - sp +9 +2 
;expression    Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../__assert.c: 32: void __assert(const char *expression, const char *functionname, const char *filename, unsigned int linenumber)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
___assert:
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
;	../__assert.c: 34: printf("Assert(%s) failed in function %s at line %u in file %s.\n",
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 5 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 8 : (8, 14.000000) count=1.000000
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
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 16 : (7, 20.000000) count=0.000000
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
