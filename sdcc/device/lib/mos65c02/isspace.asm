;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isspace
	
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
;	../isspace.c: 46: return (c == ' ' || c == '\t' || c == '\n' || c == '\v' || c == '\f' || c == '\r');
;	genCmpEQorNE
	cmp	#0x20
	bne	00155$
	cpx	#0x00
	beq	00104$
00155$:
;	Raw cost for generated ic 3 : (14, 15.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x09
	bne	00157$
	cpx	#0x00
	beq	00104$
00157$:
;	Raw cost for generated ic 5 : (14, 15.200001) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCmpEQorNE
	cmp	#0x0a
	bne	00159$
	cpx	#0x00
	beq	00104$
00159$:
;	Raw cost for generated ic 14 : (14, 15.200001) count=0.562500
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.562500
;	genCmpEQorNE
	cmp	#0x0b
	bne	00161$
	cpx	#0x00
	beq	00104$
00161$:
;	Raw cost for generated ic 23 : (14, 15.200001) count=0.421875
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.421875
;	genCmpEQorNE
	cmp	#0x0c
	bne	00163$
	cpx	#0x00
	beq	00104$
00163$:
;	Raw cost for generated ic 32 : (14, 15.200001) count=0.316406
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.316406
;	genCmpEQorNE
	cmp	#0x0d
	bne	00165$
	cpx	#0x00
	beq	00104$
00165$:
;	Raw cost for generated ic 41 : (14, 15.200001) count=0.237305
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.237305
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 44 : (2, 2.000000) count=0.177979
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 45 : (3, 3.000000) count=0.177979
;	genLabel
00104$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=0.822021
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 47 : (2, 2.000000) count=0.822021
;	genLabel
00105$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 49 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	../isspace.c: 48: }
;	genEndFunction
	rts
;	Raw cost for generated ic 52 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
