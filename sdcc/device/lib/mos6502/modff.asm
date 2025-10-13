;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module modff
	
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
	.globl _modff_PARM_2
	.globl _modff_PARM_1
	.globl _modff
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_modff_sloc0_1_0:
	.ds 2
_modff_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_modff_PARM_1:
	.ds 4
_modff_PARM_2:
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
;Allocation info for local variables in function 'modff'
;------------------------------------------------------------
;sloc0         Allocated with name '_modff_sloc0_1_0'
;sloc1         Allocated with name '_modff_sloc1_1_0'
;x             Allocated with name '_modff_PARM_1'
;y             Allocated with name '_modff_PARM_2'
;------------------------------------------------------------
;	../modff.c: 33: float modff(float x, float * y)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_modff:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../modff.c: 35: *y=(long)x;
;	genAssign
;	genCopy
	lda	(_modff_PARM_2 + 1)
	sta	*(_modff_sloc0_1_0 + 1)
	lda	_modff_PARM_2
	sta	*_modff_sloc0_1_0
;	Raw cost for generated ic 2 : (10, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_modff_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	lda	(_modff_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(_modff_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	_modff_PARM_1
	sta	___fs2slong_PARM_1
;	Raw cost for generated ic 12 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2slong
;	assignResultValue
	sta	___slong2fs_PARM_1
	stx	(___slong2fs_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___slong2fs_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___slong2fs_PARM_1 + 3)
;	Raw cost for generated ic 13 : (19, 28.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*_modff_sloc1_1_0
	stx	*(_modff_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_modff_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_modff_sloc1_1_0 + 3)
;	Raw cost for generated ic 15 : (15, 24.000000) count=1.000000
;	genPointerSet
	lda	*_modff_sloc1_1_0
	ldy	#0x00
	sta	[*_modff_sloc0_1_0],y
	txa
	iny
	sta	[*_modff_sloc0_1_0],y
	lda	*(_modff_sloc1_1_0 + 2)
	iny
	sta	[*_modff_sloc0_1_0],y
	lda	*(_modff_sloc1_1_0 + 3)
	iny
	sta	[*_modff_sloc0_1_0],y
;	Raw cost for generated ic 5 : (20, 43.000000) count=1.000000
;	../modff.c: 36: return (x-*y);
;	genAssign
;	genCopy
	lda	(_modff_PARM_1 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	(_modff_PARM_1 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	(_modff_PARM_1 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	_modff_PARM_1
	sta	___fssub_PARM_1
;	Raw cost for generated ic 16 : (24, 32.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(_modff_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
	lda	*(_modff_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	txa
	sta	(___fssub_PARM_2 + 1)
	lda	*_modff_sloc1_1_0
	sta	___fssub_PARM_2
;	Raw cost for generated ic 17 : (19, 27.000000) count=1.000000
;	genCall
	jsr	___fssub
;	assignResultValue
	sta	*_modff_sloc1_1_0
	stx	*(_modff_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_modff_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_modff_sloc1_1_0 + 3)
;	Raw cost for generated ic 18 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_modff_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_modff_sloc1_1_0
;	Raw cost for generated ic 9 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../modff.c: 37: }
;	genEndFunction
	rts
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
