;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slong2fs
	
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
	.globl ___slong2fs_PARM_1
	.globl ___slong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___slong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___slong2fs_PARM_1:
	.ds 4
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
;Allocation info for local variables in function '__slong2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___slong2fs_sloc0_1_0'
;sl            Allocated with name '___slong2fs_PARM_1'
;------------------------------------------------------------
;	../_slong2fs.c: 79: float __slong2fs (signed long sl) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __slong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___slong2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 81: if (sl<0) 
;	genCmp
	bit	(___slong2fs_PARM_1 + 3)
	bpl	00102$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 82: return -__ulong2fs(-sl);
;	genUminus
	lda	#0x00
	sec
	sbc	___slong2fs_PARM_1
	sta	___ulong2fs_PARM_1
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 1)
	sta	(___ulong2fs_PARM_1 + 1)
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 2)
	sta	(___ulong2fs_PARM_1 + 2)
	lda	#0x00
	sbc	(___slong2fs_PARM_1 + 3)
	sta	(___ulong2fs_PARM_1 + 3)
;	Raw cost for generated ic 6 : (33, 42.000000) count=0.750000
;	genCall
	jsr	___ulong2fs
;	assignResultValue
	sta	*___slong2fs_sloc0_1_0
	stx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
;	Raw cost for generated ic 8 : (15, 24.000000) count=0.750000
;	genUminus
;	genUminusFloat
	sta	*(___slong2fs_sloc0_1_0 + 3)
	eor	#0x80
	sta	*(___slong2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 9 : (6, 8.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___slong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___slong2fs_sloc0_1_0
	rts
;	Raw cost for generated ic 10 : (13, 18.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 84: return __ulong2fs(sl);
;	genAssign
;	genCopy
	lda	(___slong2fs_PARM_1 + 3)
	sta	(___ulong2fs_PARM_1 + 3)
	lda	(___slong2fs_PARM_1 + 2)
	sta	(___ulong2fs_PARM_1 + 2)
	lda	(___slong2fs_PARM_1 + 1)
	sta	(___ulong2fs_PARM_1 + 1)
	lda	___slong2fs_PARM_1
	sta	___ulong2fs_PARM_1
;	Raw cost for generated ic 13 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___ulong2fs
;	assignResultValue
	sta	*___slong2fs_sloc0_1_0
	stx	*(___slong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slong2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 14 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___slong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___slong2fs_sloc0_1_0
;	Raw cost for generated ic 15 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../_slong2fs.c: 85: }
;	genEndFunction
	rts
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
