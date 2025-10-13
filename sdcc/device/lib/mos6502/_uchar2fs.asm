;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _uchar2fs
	
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
	.globl ___ulong2fs
	.globl ___uchar2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___uchar2fs_sloc0_1_0:
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
;Allocation info for local variables in function '__uchar2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___uchar2fs_sloc0_1_0'
;uc            Allocated to registers a 
;------------------------------------------------------------
;	../_uchar2fs.c: 55: float __uchar2fs (unsigned char uc) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __uchar2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___uchar2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_uchar2fs.c: 57: return __ulong2fs(uc);
;	genCast
	sta	___ulong2fs_PARM_1
	ldy	#0x00
	sty	(___ulong2fs_PARM_1 + 1)
	sty	(___ulong2fs_PARM_1 + 2)
	sty	(___ulong2fs_PARM_1 + 3)
;	Raw cost for generated ic 3 : (14, 18.000000) count=1.000000
;	genCall
	jsr	___ulong2fs
;	assignResultValue
	sta	*___uchar2fs_sloc0_1_0
	stx	*(___uchar2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___uchar2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___uchar2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 5 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___uchar2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___uchar2fs_sloc0_1_0
;	Raw cost for generated ic 6 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_uchar2fs.c: 58: }
;	genEndFunction
	rts
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
