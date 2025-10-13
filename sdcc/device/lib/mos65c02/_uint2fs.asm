;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _uint2fs
	
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
	.globl ___ulong2fs
	.globl ___uint2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uint2fs_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function '__uint2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___uint2fs_sloc0_1_0'
;ui            Allocated to registers a x 
;------------------------------------------------------------
;	../_uint2fs.c: 54: float __uint2fs (unsigned int ui) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __uint2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uint2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_uint2fs.c: 56: return __ulong2fs(ui);
;	genCast
;	genCopy
	stz	(___ulong2fs_PARM_1 + 3)
	stz	(___ulong2fs_PARM_1 + 2)
	stx	(___ulong2fs_PARM_1 + 1)
	sta	___ulong2fs_PARM_1
;	Raw cost for generated ic 3 : (12, 16.000000) count=1.000000
;	genCall
	jsr	___ulong2fs
;	assignResultValue
	sta	*___uint2fs_sloc0_1_0
	stx	*(___uint2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___uint2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___uint2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 5 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___uint2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___uint2fs_sloc0_1_0
;	Raw cost for generated ic 6 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_uint2fs.c: 57: }
;	genEndFunction
	rts
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
