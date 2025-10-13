;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isalnum
	
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
	.globl _isalnum
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
;Allocation info for local variables in function 'isalnum'
;------------------------------------------------------------
;c             Allocated to stack - sp +1 +2 
;__200000001   Allocated to registers 
;__200000002   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../isalnum.c: 37: int isalnum (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_isalnum:
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
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_isalpha
;	assignResultValue
;	Raw cost for generated ic 4 : (13, 22.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00105$
	cpx	#0x00
	bne	00105$
;	Raw cost for generated ic 5 : (11, 12.200000) count=1.000000
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
	tsx
	lda	0x101,x
;	Raw cost for generated ic 8 : (4, 6.000000) count=0.750000
;	genCmp
	cmp	#0x30
	bcc	00109$
;	Raw cost for generated ic 9 : (7, 7.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genCmp
	cmp	#0x39
	beq	00105$
	bcc	00105$
;	Raw cost for generated ic 13 : (9, 10.200000) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.562500
;	genLabel
00109$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.609375
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 28 : (2, 2.000000) count=0.609375
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 29 : (3, 3.000000) count=0.609375
;	genLabel
00105$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.390625
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 31 : (2, 2.000000) count=0.390625
;	genLabel
00106$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 33 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../isalnum.c: 40: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 36 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
