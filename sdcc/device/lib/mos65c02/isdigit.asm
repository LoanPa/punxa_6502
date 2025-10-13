;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isdigit
	
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
	.globl _isdigit
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
;Allocation info for local variables in function 'isdigit'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	./../../include/ctype.h: 60: inline int isdigit (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x30
	bcc	00103$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00104$
	bcc	00104$
;	Raw cost for generated ic 8 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.812500
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 12 : (2, 2.000000) count=0.812500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.812500
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.187500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 15 : (2, 2.000000) count=0.187500
;	genLabel
00105$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 17 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 63: }
;	genEndFunction
	rts
;	Raw cost for generated ic 20 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
