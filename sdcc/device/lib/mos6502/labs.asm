;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module labs
	
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
	.globl _labs_PARM_1
	.globl _labs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_labs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_labs_PARM_1:
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
;Allocation info for local variables in function 'labs'
;------------------------------------------------------------
;j             Allocated with name '_labs_PARM_1'
;sloc0         Allocated with name '_labs_sloc0_1_0'
;------------------------------------------------------------
;	../labs.c: 63: long int labs(long int j)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_labs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../labs.c: 65: return (j < 0) ? -j : j;
;	genCmp
	bit	(_labs_PARM_1 + 3)
	bpl	00103$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	_labs_PARM_1
	sta	*_labs_sloc0_1_0
	lda	#0x00
	sbc	(_labs_PARM_1 + 1)
	sta	*(_labs_sloc0_1_0 + 1)
	lda	#0x00
	sbc	(_labs_PARM_1 + 2)
	sta	*(_labs_sloc0_1_0 + 2)
	lda	#0x00
	sbc	(_labs_PARM_1 + 3)
	sta	*(_labs_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (29, 38.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(_labs_PARM_1 + 3)
	sta	*(_labs_sloc0_1_0 + 3)
	lda	(_labs_PARM_1 + 2)
	sta	*(_labs_sloc0_1_0 + 2)
	lda	(_labs_PARM_1 + 1)
	sta	*(_labs_sloc0_1_0 + 1)
	lda	_labs_PARM_1
	sta	*_labs_sloc0_1_0
;	Raw cost for generated ic 8 : (20, 28.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genRet
	lda	*(_labs_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_labs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_labs_sloc0_1_0 + 1)
	lda	*_labs_sloc0_1_0
;	Raw cost for generated ic 10 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../labs.c: 66: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
