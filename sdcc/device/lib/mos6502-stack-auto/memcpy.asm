;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module memcpy
	
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
	.globl ___memcpy
	.globl _memcpy
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src           Allocated to stack - sp +5 +2 
;n             Allocated to stack - sp +7 +2 
;dst           Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../memcpy.c: 35: void *memcpy (void *dst, const void *src, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_memcpy:
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
;	../memcpy.c: 37: return __memcpy (dst, src, n);
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
	jsr	___memcpy
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 6 : (22, 38.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../memcpy.c: 38: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 9 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
