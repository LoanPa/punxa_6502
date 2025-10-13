;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strxfrm
	
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
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm
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
;Allocation info for local variables in function 'strxfrm'
;------------------------------------------------------------
;src           Allocated to stack - sp +5 +2 
;n             Allocated to stack - sp +7 +2 
;dest          Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../strxfrm.c: 31: size_t strxfrm(char *dest, const char *src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_strxfrm:
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
;	../strxfrm.c: 33: strncpy(dest, src, n);
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 3 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 4 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_strncpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 6 : (22, 38.000000) count=1.000000
;	../strxfrm.c: 34: return(strlen(src) + 1);
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
	jsr	_strlen
;	assignResultValue
;	Raw cost for generated ic 8 : (13, 22.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00103$
	inx
00103$:
;	Raw cost for generated ic 9 : (6, 8.600000) count=1.000000
;	genRet
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../strxfrm.c: 35: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
