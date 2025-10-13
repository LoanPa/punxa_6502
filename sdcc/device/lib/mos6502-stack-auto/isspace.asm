;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isspace
	
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
	.globl _isspace
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	../isspace.c: 39: int isspace (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isspace:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../isspace.c: 42: if((c & 0xff00) != 0)
;	genAnd
	sta	*(REGTEMP+0)
	txa
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 3 : (12, 20.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../isspace.c: 43: return 0;
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 7 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../isspace.c: 44: return ((unsigned char)c == ' ' || (unsigned char)c == '\t' || (unsigned char)c == '\n' || (unsigned char)c == '\v' || (unsigned char)c == '\f' || (unsigned char)c == '\r');
;	genCast
;	genCopy
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x20
	beq	00106$
;	Raw cost for generated ic 10 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x09
	beq	00106$
;	Raw cost for generated ic 13 : (7, 7.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genCmpEQorNE
	cmp	#0x0a
	beq	00106$
;	Raw cost for generated ic 23 : (7, 7.600000) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.562500
;	genCmpEQorNE
	cmp	#0x0b
	beq	00106$
;	Raw cost for generated ic 33 : (7, 7.600000) count=0.421875
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.421875
;	genCmpEQorNE
	cmp	#0x0c
	beq	00106$
;	Raw cost for generated ic 43 : (7, 7.600000) count=0.316406
;	skipping generated iCode
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.316406
;	genCmpEQorNE
	cmp	#0x0d
	beq	00106$
;	Raw cost for generated ic 53 : (7, 7.600000) count=0.237305
;	skipping generated iCode
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.237305
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 56 : (2, 2.000000) count=0.177979
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 57 : (3, 3.000000) count=0.177979
;	genLabel
00106$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.822021
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 59 : (2, 2.000000) count=0.822021
;	genLabel
00107$:
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 61 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	../isspace.c: 48: }
;	genEndFunction
	rts
;	Raw cost for generated ic 64 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
