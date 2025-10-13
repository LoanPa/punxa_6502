;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ispunct
	
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
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;c             Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../ispunct.c: 33: int ispunct (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_ispunct:
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
;	../ispunct.c: 35: return (isprint (c) && !isspace (c) && !isalnum (c));
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_isprint
;	assignResultValue
;	Raw cost for generated ic 4 : (13, 22.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00121$
	cpx	#0x00
	beq	00103$
00121$:
;	Raw cost for generated ic 5 : (11, 12.200000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_isspace
;	assignResultValue
;	Raw cost for generated ic 7 : (13, 22.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00103$
	cpx	#0x00
	bne	00103$
;	Raw cost for generated ic 9 : (11, 12.200000) count=0.750000
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.562500
;	genCall
;	genSend
	tsx
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_isalnum
;	assignResultValue
;	Raw cost for generated ic 18 : (13, 22.000000) count=0.562500
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00125$
	cpx	#0x00
	beq	00104$
00125$:
;	Raw cost for generated ic 20 : (11, 12.200000) count=0.562500
;	genLabel
00103$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.859375
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 22 : (2, 2.000000) count=0.859375
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 23 : (3, 3.000000) count=0.859375
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.140625
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 25 : (2, 2.000000) count=0.140625
;	genLabel
00105$:
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 27 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../ispunct.c: 36: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 30 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
