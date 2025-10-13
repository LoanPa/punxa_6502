;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module div
	
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
	.globl _div
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
;Allocation info for local variables in function 'div'
;------------------------------------------------------------
;denom         Allocated to stack - sp +13 +2 
;numer         Allocated to stack - sp +9 +2 
;ret           Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	../div.c: 32: div_t div(int numer, int denom)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function div
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_div:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../div.c: 35: ret.quot = numer / denom;
;	genAddrOf
	inx
	txa
	sta	0x106,x
	lda	#0x01
;	Raw cost for generated ic 3 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 14 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	__divsint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 16 : (18, 34.000000) count=1.000000
;	genPointerSet
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x00
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 6 : (29, 49.000000) count=1.000000
;	../div.c: 36: ret.rem = numer % denom;
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 8 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 17 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x109,x
	tay
	lda	0x10a,x
	tax
	tya
	jsr	__modsint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 19 : (18, 34.000000) count=1.000000
;	genPointerSet
	lda	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=2 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldx	*(REGTEMP+1)
	ldy	#0x02
	sta	[DPTR],y
	txa
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 10 : (29, 49.000000) count=1.000000
;	../div.c: 37: return(ret);
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
;	Raw cost for generated ic 11 : (20, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../div.c: 38: }
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
