;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divuchar
	
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
	.globl __divuchar
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
;Allocation info for local variables in function '_divuchar'
;------------------------------------------------------------
;y             Allocated to registers y 
;x             Allocated to registers a 
;tx            Allocated to stack - sp +3 +2 
;ty            Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_divuchar.c: 31: _divuchar (unsigned char x, unsigned char y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divuchar
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
__divuchar:
;	  adjustStack : cycles stk:12  incdec:12  adc:18
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../_divuchar.c: 34: volatile unsigned int tx = x;
;	genCast
	tsx
	sta	0x103,x
	lda	#0x00
	sta	0x104,x
;	Raw cost for generated ic 4 : (9, 14.000000) count=1.000000
;	../_divuchar.c: 35: volatile unsigned int ty = y;
;	genCast
;	genCopy
	sta	0x102,x
	tya
	sta	0x101,x
;	Raw cost for generated ic 6 : (7, 12.000000) count=1.000000
;	../_divuchar.c: 36: return (tx / ty);
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x103,x
	sta	*(REGTEMP+0)
	lda	0x104,x
	tax
	lda	*(REGTEMP+0)
	jsr	__divuint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 14 : (20, 36.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_divuchar.c: 37: }
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
;	Raw cost for generated ic 11 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
