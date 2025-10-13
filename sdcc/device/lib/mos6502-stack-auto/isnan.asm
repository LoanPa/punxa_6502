;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isnan
	
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
	.globl _isnan
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
;Allocation info for local variables in function 'isnan'
;------------------------------------------------------------
;f             Allocated to stack - sp +7 +4 
;pl            Allocated to registers a x 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../isnan.c: 33: int isnan (float f)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isnan
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_isnan:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../isnan.c: 35: unsigned long *pl = (unsigned long *) &f;
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
;	../isnan.c: 37: return (*pl & 0x7fffffff) > 0x7f800000;
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
;	Raw cost for generated ic 7 : (30, 56.000000) count=1.000000
;	genAnd
	sta	0x104,x
	and	#0x7f
	sta	0x104,x
;	Raw cost for generated ic 8 : (8, 11.000000) count=1.000000
;	genCmp
	lda	#0x00
	sec
	sbc	0x101,x
	lda	#0x00
	sbc	0x102,x
	lda	#0x80
	sbc	0x103,x
	lda	#0x7f
	sbc	0x104,x
	bcc	00103$
	lda	#0x00
	jmp	00104$
00103$:
	lda	#0x01
00104$:
;	Raw cost for generated ic 9 : (30, 35.599998) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 10 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../isnan.c: 38: }
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
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
