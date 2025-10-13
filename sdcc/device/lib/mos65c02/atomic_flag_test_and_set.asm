;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atomic_flag_test_and_set
	
	.r65c02
	.optsdcc -mmos65c02

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
	.globl _atomic_flag_test_and_set
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_atomic_flag_test_and_set_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atomic_flag_test_and_set_object_10000_4:
	.ds 2
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
;Allocation info for local variables in function 'atomic_flag_test_and_set'
;------------------------------------------------------------
;object        Allocated with name '_atomic_flag_test_and_set_object_10000_4'
;t             Allocated to registers x 
;sloc0         Allocated with name '_atomic_flag_test_and_set_sloc0_1_0'
;------------------------------------------------------------
;	atomic_flag_test_and_set.c: 31: _Bool atomic_flag_test_and_set(volatile atomic_flag *object)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atomic_flag_test_and_set
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atomic_flag_test_and_set:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_atomic_flag_test_and_set_object_10000_4
	stx	(_atomic_flag_test_and_set_object_10000_4 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	atomic_flag_test_and_set.c: 34: t=object->flag;
;	genAssign
;	genCopy
	sta	*_atomic_flag_test_and_set_sloc0_1_0
	stx	*(_atomic_flag_test_and_set_sloc0_1_0 + 1)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_atomic_flag_test_and_set_sloc0_1_0],y
	tax
;	Raw cost for generated ic 5 : (5, 9.000000) count=1.000000
;	atomic_flag_test_and_set.c: 35: object->flag=0;
;	genPointerSet
	tya
	sta	[*_atomic_flag_test_and_set_sloc0_1_0],y
;	Raw cost for generated ic 9 : (3, 8.000000) count=1.000000
;	atomic_flag_test_and_set.c: 36: return t^0x01;
;	genXor
	txa
	eor	#0x01
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genCast
	beq	00104$
	lda	#0x01
00104$:
;	Raw cost for generated ic 11 : (4, 4.600000) count=1.000000
;	genRet
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	atomic_flag_test_and_set.c: 37: }
;	genEndFunction
	rts
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
