;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module memalignment
	
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
	.globl _memalignment
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
;Allocation info for local variables in function 'memalignment'
;------------------------------------------------------------
;p             Allocated to registers a x 
;ip            Allocated to registers a x 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../memalignment.c: 33: size_t memalignment(const void *p)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memalignment
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_memalignment:
;	  adjustStack : cycles stk:6  incdec:14  adc:24
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../memalignment.c: 35: intptr_t ip = (intptr_t)p;
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../memalignment.c: 36: return(ip & -ip);
;	genUminus
	pha
	eor	#0xff
	clc
	adc	#0x01
	stx	*(REGTEMP+0)
	tsx
	sta	0x102,x
	ldx	*(REGTEMP+0)
	lda      #0x00
	sbc	*(REGTEMP+0)
	tsx
	sta	0x103,x
	pla
;	Raw cost for generated ic 5 : (25, 41.000000) count=1.000000
;	genAnd
	and	0x102,x
	sta	*(REGTEMP+0)
	txa
	and	0x103,x
	tax
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../memalignment.c: 37: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 9 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
