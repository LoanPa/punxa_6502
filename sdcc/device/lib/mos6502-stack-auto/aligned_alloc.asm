;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module aligned_alloc
	
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
	.globl _malloc
	.globl _aligned_alloc
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
;Allocation info for local variables in function 'aligned_alloc'
;------------------------------------------------------------
;size          Allocated to stack - sp +3 +2 
;alignment     Allocated to registers 
;------------------------------------------------------------
;	./../../include/stdlib.h: 100: inline void *aligned_alloc(size_t alignment, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function aligned_alloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_aligned_alloc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	./../../include/stdlib.h: 103: return malloc(size);
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
;	assignResultValue
;	Raw cost for generated ic 5 : (13, 22.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	./../../include/stdlib.h: 104: }
;	genEndFunction
	jmp	_malloc
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
