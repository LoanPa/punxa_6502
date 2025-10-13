;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isblank
	
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
	.globl _isblank
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
;Allocation info for local variables in function 'isblank'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	./../../include/ctype.h: 51: inline int isblank (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isblank
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isblank:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x20
	beq	00104$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x09
	beq	00104$
;	Raw cost for generated ic 7 : (7, 7.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 10 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 11 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.437500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 13 : (2, 2.000000) count=0.437500
;	genLabel
00105$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 15 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 54: }
;	genEndFunction
	rts
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
