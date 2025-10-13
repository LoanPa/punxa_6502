;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wctob
	
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
	.globl _wctob
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
;Allocation info for local variables in function 'wctob'
;------------------------------------------------------------
;c             Allocated to stack - sp +3 +4 
;------------------------------------------------------------
;	../wctob.c: 35: int wctob(wint_t c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wctob
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wctob:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../wctob.c: 37: if(c & 0xffffff80)
;	genAnd
	tsx
	lda	0x103,x
	and	#0x80
	bne	00111$
	lda	0x104,x
	bne	00111$
	lda	0x105,x
	bne	00111$
	lda	0x106,x
00111$:
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 2 : (26, 33.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../wctob.c: 38: return WEOF;
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 6 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../wctob.c: 39: return c;
;	genCast
;	genCopy
	tsx
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
;	Raw cost for generated ic 8 : (10, 16.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../wctob.c: 40: }
;	genEndFunction
	rts
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
