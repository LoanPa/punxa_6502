;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isalpha
	
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
	.globl _isalpha
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
;Allocation info for local variables in function 'isalpha'
;------------------------------------------------------------
;c             Allocated to registers a x 
;__200000004   Allocated to registers 
;__200000001   Allocated to registers 
;__200000002   Allocated to registers 
;c             Allocated to registers 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../isalpha.c: 37: int isalpha (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isalpha
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isalpha:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x41
	bcc	00110$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x5a
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 10 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.812500
;	./../../include/ctype.h: 71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
;	genCmp
	cmp	#0x61
	bcc	00113$
;	Raw cost for generated ic 27 : (7, 7.600000) count=0.812500
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.812500
;	genCmp
	cmp	#0x7a
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 31 : (9, 10.200000) count=0.609375
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.609375
;	genLabel
00113$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=0.660156
;	../isalpha.c: 39: return (isupper (c) || islower (c));
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 46 : (2, 2.000000) count=0.660156
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 47 : (3, 3.000000) count=0.660156
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.339844
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 49 : (2, 2.000000) count=0.339844
;	genLabel
00107$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 51 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	../isalpha.c: 40: }
;	genEndFunction
	rts
;	Raw cost for generated ic 54 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
