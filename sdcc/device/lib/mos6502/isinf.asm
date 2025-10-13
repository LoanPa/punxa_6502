;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isinf
	
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
	.globl _isinf_PARM_1
	.globl _isinf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_isinf_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_isinf_PARM_1:
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
;Allocation info for local variables in function 'isinf'
;------------------------------------------------------------
;f             Allocated with name '_isinf_PARM_1'
;pl            Allocated to registers 
;sloc0         Allocated with name '_isinf_sloc0_1_0'
;------------------------------------------------------------
;	../isinf.c: 33: int isinf (float f)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isinf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../isinf.c: 35: unsigned long *pl = (unsigned long *) &f;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../isinf.c: 36: return *pl == 0x7f800000 || *pl == 0xff800000;
;	genPointerGet
;	genDataPointerGet
	lda	(_isinf_PARM_1 + 3)
	sta	*(_isinf_sloc0_1_0 + 3)
	lda	(_isinf_PARM_1 + 2)
	sta	*(_isinf_sloc0_1_0 + 2)
	lda	(_isinf_PARM_1 + 1)
	sta	*(_isinf_sloc0_1_0 + 1)
	lda	_isinf_PARM_1
	sta	*_isinf_sloc0_1_0
;	Raw cost for generated ic 7 : (20, 28.000000) count=1.000000
;	genCmpEQorNE
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 1)
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x80
	bne	00119$
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0x7f
	beq	00104$
00119$:
;	Raw cost for generated ic 8 : (30, 35.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	lda	*_isinf_sloc0_1_0
	bne	00123$
	lda	*(_isinf_sloc0_1_0 + 1)
	bne	00123$
	lda	*(_isinf_sloc0_1_0 + 2)
	cmp	#0x80
	bne	00123$
	lda	*(_isinf_sloc0_1_0 + 3)
	cmp	#0xff
	beq	00104$
00123$:
;	Raw cost for generated ic 12 : (32, 38.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 15 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.437500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 18 : (2, 2.000000) count=0.437500
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 20 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../isinf.c: 37: }
;	genEndFunction
	rts
;	Raw cost for generated ic 23 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
