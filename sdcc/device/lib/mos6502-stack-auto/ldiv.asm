;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ldiv
	
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
	.globl _ldiv
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
;Allocation info for local variables in function 'ldiv'
;------------------------------------------------------------
;numer         Allocated to stack - sp +23 +4 
;denom         Allocated to stack - sp +27 +4 
;ret           Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +19 +2 
;sloc1         Allocated to stack - sp +17 +2 
;sloc2         Allocated to stack - sp +13 +4 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../ldiv.c: 32: ldiv_t ldiv(long int numer, long int denom)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ldiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 20 bytes.
_ldiv:
;	  adjustStack : cycles stk:60  incdec:44  adc:12
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../ldiv.c: 35: ret.quot = numer / denom;
;	genAddrOf
	inx
	txa
	sta	0x112,x
	lda	#0x01
;	Raw cost for generated ic 2 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x113,x
	sta	0x111,x
	lda	0x112,x
	sta	0x110,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genIpush
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
;	Raw cost for generated ic 13 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
;	Raw cost for generated ic 14 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__divslong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
	lda	*___SDCC_m6502_ret2
	sta	0x117,x
	lda	*___SDCC_m6502_ret3
	sta	0x118,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 15 : (30, 50.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	0x10d,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10e,x
	iny
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 5 : (35, 62.000000) count=1.000000
;	../ldiv.c: 36: ret.rem = numer % denom;
;	genAssign
;	genCopy
	lda	0x114,x
	sta	0x10e,x
	lda	0x113,x
	sta	0x10d,x
;	Raw cost for generated ic 7 : (12, 18.000000) count=1.000000
;	genIpush
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
;	Raw cost for generated ic 16 : (16, 28.000000) count=1.000000
;	genIpush
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 17 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__modslong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 18 : (30, 50.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x04
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 9 : (35, 62.000000) count=1.000000
;	../ldiv.c: 37: return(ret);
;	genRet
	lda	0x114,x
	sta	*___SDCC_m6502_ret7
	lda	0x113,x
	sta	*___SDCC_m6502_ret6
	lda	0x112,x
	sta	*___SDCC_m6502_ret5
	lda	0x111,x
	sta	*___SDCC_m6502_ret4
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10d,x
	tay
	lda	0x10e,x
	tax
	tya
;	Raw cost for generated ic 10 : (39, 56.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../ldiv.c: 38: }
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
