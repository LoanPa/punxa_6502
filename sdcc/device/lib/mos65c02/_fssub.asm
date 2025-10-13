;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fssub
	
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
	.globl ___fssub_PARM_2
	.globl ___fssub_PARM_1
	.globl ___fssub
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fssub_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fssub_PARM_1:
	.ds 4
___fssub_PARM_2:
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
;Allocation info for local variables in function '__fssub'
;------------------------------------------------------------
;sloc0         Allocated with name '___fssub_sloc0_1_0'
;a1            Allocated with name '___fssub_PARM_1'
;a2            Allocated with name '___fssub_PARM_2'
;neg           Allocated with name '___fssub_neg_10000_21'
;------------------------------------------------------------
;	../_fssub.c: 73: float __fssub (float a1, float a2) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fssub
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fssub:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fssub.c: 75: float neg = -a1;
;	genUminus
;	genUminusFloat
	lda	___fssub_PARM_1
	sta	___fsadd_PARM_1
	lda	(___fssub_PARM_1 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	(___fssub_PARM_1 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(___fssub_PARM_1 + 3)
	eor	#0x80
	sta	(___fsadd_PARM_1 + 3)
;	Raw cost for generated ic 2 : (26, 34.000000) count=1.000000
;	../_fssub.c: 76: return -(neg + a2);
;	genAssign
;	genCopy
	lda	(___fssub_PARM_2 + 3)
	sta	(___fsadd_PARM_2 + 3)
	lda	(___fssub_PARM_2 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	(___fssub_PARM_2 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	___fssub_PARM_2
	sta	___fsadd_PARM_2
;	Raw cost for generated ic 10 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	*___fssub_sloc0_1_0
	stx	*(___fssub_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fssub_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
;	Raw cost for generated ic 11 : (15, 24.000000) count=1.000000
;	genUminus
;	genUminusFloat
	sta	*(___fssub_sloc0_1_0 + 3)
	ora	#0x00
	eor	#0x80
	sta	*(___fssub_sloc0_1_0 + 3)
;	Raw cost for generated ic 5 : (6, 8.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___fssub_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___fssub_sloc0_1_0 + 1)
	lda	*___fssub_sloc0_1_0
;	Raw cost for generated ic 6 : (10, 15.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../_fssub.c: 77: }
;	genEndFunction
	rts
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
