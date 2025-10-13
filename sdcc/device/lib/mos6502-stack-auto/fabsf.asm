;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module fabsf
	
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
	.globl _fabsf
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
;Allocation info for local variables in function 'fabsf'
;------------------------------------------------------------
;x             Allocated to stack - sp +15 +4 
;fl            Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../fabsf.c: 34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function fabsf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_fabsf:
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../fabsf.c: 38: fl.f = x;
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
	sta	0x10b,x
;	Raw cost for generated ic 2 : (10, 16.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 4 : (35, 62.000000) count=1.000000
;	../fabsf.c: 39: fl.l &= 0x7fffffff;
;	genCast
;	genCopy
	lda	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	lda	[DPTR],y
	sta	0x104,x
	iny
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 9 : (25, 48.000000) count=1.000000
;	genAnd
	lda	0x107,x
	and	#0x7f
	sta	0x107,x
;	Raw cost for generated ic 10 : (8, 11.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x108,x
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	lda	0x104,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x105,x
	iny
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 11 : (35, 62.000000) count=1.000000
;	../fabsf.c: 40: return fl.f;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10a,x
	sta	*(DPTR+0)
	lda	0x10b,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x104,x
	iny
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
;	Raw cost for generated ic 14 : (35, 62.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x106,x
	sta	*___SDCC_m6502_ret2
	lda	0x105,x
	sta	*(REGTEMP+0)
	lda	0x104,x
;	Raw cost for generated ic 15 : (17, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../fabsf.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
