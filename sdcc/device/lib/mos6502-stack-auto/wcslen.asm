;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcslen
	
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
	.globl _wcslen
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
;Allocation info for local variables in function 'wcslen'
;------------------------------------------------------------
;s             Allocated to registers 
;n             Allocated to stack - sp +7 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../wcslen.c: 31: size_t wcslen(const wchar_t *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcslen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_wcslen:
;	  adjustStack : cycles stk:24  incdec:26  adc:24
	pha
	pha
	pha
	pha
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (8, 24.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../wcslen.c: 34: while (*s)
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 22 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
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
;	Raw cost for generated ic 6 : (36, 64.000000) count=3.999997
;	genIfx
	ora	0x103,x
	ora	0x102,x
	ora	0x101,x
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 7 : (14, 17.600000) count=3.999997
;	../wcslen.c: 36: n++;
;	genPlus
;	  genPlusInc
	lda	0x107,x
	clc
	adc	#0x01
	sta	0x107,x
	lda	0x108,x
	adc	#0x00
	sta	0x108,x
;	Raw cost for generated ic 11 : (17, 24.000000) count=2.999997
;	../wcslen.c: 37: s++;
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x04
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 14 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 16 : (3, 3.000000) count=2.999997
;	genLabel
00103$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.999999
;	../wcslen.c: 40: return n;
;	genRet
	tsx
	lda	0x108,x
	sta	*(REGTEMP+0)
	lda	0x107,x
;	Raw cost for generated ic 18 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	../wcslen.c: 41: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 20 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
