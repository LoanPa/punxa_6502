;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isxdigit
	
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
	.globl _isxdigit
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	../isxdigit.c: 34: int isxdigit (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isxdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../isxdigit.c: 37: if((c & 0xff00) != 0)
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
;	../isxdigit.c: 38: return 0;
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 7 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../isxdigit.c: 39: return ((unsigned char)c >= '0' && (unsigned char)c <= '9' || (unsigned char)c >= 'a' && (unsigned char)c <= 'f' || (unsigned char)c >= 'A' && (unsigned char)c <= 'F');
;	genCast
;	genCopy
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x30
	bcc	00113$
;	Raw cost for generated ic 10 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 14 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.750000
;	genLabel
00113$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.812500
;	genCmp
	cmp	#0x61
	bcc	00110$
;	Raw cost for generated ic 25 : (7, 7.600000) count=0.812500
;	skipping generated iCode
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.812500
;	genCmp
	cmp	#0x66
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 29 : (9, 10.200000) count=0.609375
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.609375
;	genLabel
00110$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.660156
;	genCmp
	cmp	#0x41
	bcc	00105$
;	Raw cost for generated ic 47 : (7, 7.600000) count=0.660156
;	skipping generated iCode
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.660156
;	genCmp
	cmp	#0x46
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 51 : (9, 10.200000) count=0.495117
;	skipping generated iCode
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.495117
;	genLabel
00105$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.536377
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 62 : (2, 2.000000) count=0.536377
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 63 : (3, 3.000000) count=0.536377
;	genLabel
00106$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.463623
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 65 : (2, 2.000000) count=0.463623
;	genLabel
00107$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 67 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 69 : (0, 0.000000) count=1.000000
;	../isxdigit.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 70 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
