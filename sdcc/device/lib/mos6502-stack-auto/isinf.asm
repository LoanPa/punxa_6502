;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isinf
	
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
	.globl _isinf
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
;Allocation info for local variables in function 'isinf'
;------------------------------------------------------------
;f             Allocated to stack - sp +7 +4 
;pl            Allocated to registers a x 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../isinf.c: 33: int isinf (float f)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_isinf:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../isinf.c: 35: unsigned long *pl = (unsigned long *) &f;
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	ldx	#0x01
;	Raw cost for generated ic 2 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../isinf.c: 36: return *pl == 0x7f800000 || *pl == 0xff800000;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 7 : (30, 56.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	bne	00119$
	lda	0x102,x
	bne	00119$
	lda	0x103,x
	cmp	#0x80
	bne	00119$
	lda	0x104,x
	cmp	#0x7f
	beq	00104$
00119$:
;	Raw cost for generated ic 8 : (36, 42.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	bne	00123$
	lda	0x102,x
	bne	00123$
	lda	0x103,x
	cmp	#0x80
	bne	00123$
	lda	0x104,x
	cmp	#0xff
	beq	00104$
00123$:
;	Raw cost for generated ic 12 : (36, 42.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 15 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.437500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 18 : (2, 2.000000) count=0.437500
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 20 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../isinf.c: 37: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 23 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
