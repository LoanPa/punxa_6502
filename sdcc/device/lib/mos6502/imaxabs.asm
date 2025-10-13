;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module imaxabs
	
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
	.globl _imaxabs_PARM_1
	.globl _imaxabs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_imaxabs_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_imaxabs_PARM_1:
	.ds 8
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
;Allocation info for local variables in function 'imaxabs'
;------------------------------------------------------------
;j             Allocated with name '_imaxabs_PARM_1'
;sloc0         Allocated with name '_imaxabs_sloc0_1_0'
;------------------------------------------------------------
;	../imaxabs.c: 31: intmax_t imaxabs(intmax_t j)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function imaxabs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_imaxabs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../imaxabs.c: 33: return (j < 0) ? -j : j;
;	genCmp
	bit	(_imaxabs_PARM_1 + 7)
	bpl	00103$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	_imaxabs_PARM_1
	sta	*_imaxabs_sloc0_1_0
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 1)
	sta	*(_imaxabs_sloc0_1_0 + 1)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 2)
	sta	*(_imaxabs_sloc0_1_0 + 2)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 3)
	sta	*(_imaxabs_sloc0_1_0 + 3)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 4)
	sta	*(_imaxabs_sloc0_1_0 + 4)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 5)
	sta	*(_imaxabs_sloc0_1_0 + 5)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 6)
	sta	*(_imaxabs_sloc0_1_0 + 6)
	lda	#0x00
	sbc	(_imaxabs_PARM_1 + 7)
	sta	*(_imaxabs_sloc0_1_0 + 7)
;	Raw cost for generated ic 4 : (57, 74.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_imaxabs_PARM_1 + 7)
	sta	*(_imaxabs_sloc0_1_0 + 7)
	lda	(_imaxabs_PARM_1 + 6)
	sta	*(_imaxabs_sloc0_1_0 + 6)
	lda	(_imaxabs_PARM_1 + 5)
	sta	*(_imaxabs_sloc0_1_0 + 5)
	lda	(_imaxabs_PARM_1 + 4)
	sta	*(_imaxabs_sloc0_1_0 + 4)
	lda	(_imaxabs_PARM_1 + 3)
	sta	*(_imaxabs_sloc0_1_0 + 3)
	lda	(_imaxabs_PARM_1 + 2)
	sta	*(_imaxabs_sloc0_1_0 + 2)
	lda	(_imaxabs_PARM_1 + 1)
	sta	*(_imaxabs_sloc0_1_0 + 1)
	lda	_imaxabs_PARM_1
	sta	*_imaxabs_sloc0_1_0
;	Raw cost for generated ic 8 : (40, 56.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genRet
	lda	*(_imaxabs_sloc0_1_0 + 7)
	sta	*___SDCC_m6502_ret7
	lda	*(_imaxabs_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_imaxabs_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_imaxabs_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_imaxabs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_imaxabs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_imaxabs_sloc0_1_0 + 1)
	lda	*_imaxabs_sloc0_1_0
;	Raw cost for generated ic 10 : (28, 42.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../imaxabs.c: 34: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
