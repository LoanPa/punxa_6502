;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module tolower
	
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
	.globl _tolower
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
;Allocation info for local variables in function 'tolower'
;------------------------------------------------------------
;c             Allocated to registers a x 
;__200000001   Allocated to registers 
;__200000002   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../tolower.c: 33: int tolower (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function tolower
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_tolower:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 5 : (1, 2.000000) count=1.000000
;	genCmp
	cpy	#0x41
	bcc	00104$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCmp
	cpy	#0x5a
	beq	00121$
	bcc	00121$
	rts
00121$:
;	Raw cost for generated ic 10 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.750000
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
;	genPlus
;	  genPlusInc
	clc
	adc	#0x20
	bcc	00105$
	inx
;	Raw cost for generated ic 24 : (6, 8.600000) count=0.562500
;	genGoto
	rts
;	Raw cost for generated ic 26 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.437500
;	genAssign
;	genCopy
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.437500
;	genLabel
00105$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	../tolower.c: 36: }
;	genEndFunction
	rts
;	Raw cost for generated ic 32 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
