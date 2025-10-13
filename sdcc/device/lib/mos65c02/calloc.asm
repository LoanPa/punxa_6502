;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module calloc
	
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
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_calloc_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_calloc_PARM_2:
	.ds 2
_calloc_ptr_10000_69:
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;sloc0         Allocated with name '_calloc_sloc0_1_0'
;size          Allocated with name '_calloc_PARM_2'
;nmemb         Allocated to registers a x 
;ptr           Allocated with name '_calloc_ptr_10000_69'
;msize         Allocated with name '_calloc_msize_10000_69'
;------------------------------------------------------------
;	../calloc.c: 44: void *calloc (size_t nmemb, size_t size)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calloc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../calloc.c: 49: unsigned long msize = (unsigned long)nmemb * (unsigned long)size;
;	genCast
;	genCopy
	stz	(__mullong_PARM_1 + 3)
	stz	(__mullong_PARM_1 + 2)
	stx	(__mullong_PARM_1 + 1)
	sta	__mullong_PARM_1
;	Raw cost for generated ic 3 : (12, 16.000000) count=1.000000
;	genCast
;	genCopy
	stz	(__mullong_PARM_2 + 3)
	stz	(__mullong_PARM_2 + 2)
	lda	(_calloc_PARM_2 + 1)
	sta	(__mullong_PARM_2 + 1)
	lda	_calloc_PARM_2
	sta	__mullong_PARM_2
;	Raw cost for generated ic 4 : (18, 24.000000) count=1.000000
;	../calloc.c: 54: if (msize > SIZE_MAX)
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*_calloc_sloc0_1_0
	stx	*(_calloc_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_calloc_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_calloc_sloc0_1_0 + 3)
;	Raw cost for generated ic 31 : (15, 24.000000) count=1.000000
;	genCmp
	lda	#0xff
	sec
	sbc	*_calloc_sloc0_1_0
	lda	#0xff
	sbc	*(_calloc_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(_calloc_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(_calloc_sloc0_1_0 + 3)
	bcs	00102$
;	Raw cost for generated ic 7 : (22, 27.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../calloc.c: 55: return(0);
;	genRet
	lda	#0x00
	tax
	rts
;	Raw cost for generated ic 11 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../calloc.c: 57: if (ptr = malloc(msize))
;	genCast
;	genCopy
	lda	*_calloc_sloc0_1_0
;	Raw cost for generated ic 13 : (8, 12.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	*(_calloc_sloc0_1_0 + 1)
	jsr	_malloc
;	assignResultValue
;	Raw cost for generated ic 15 : (5, 9.000000) count=1.000000
;	genAssign
;	genCopy
	sta	_calloc_ptr_10000_69
	stx	(_calloc_ptr_10000_69 + 1)
;	Raw cost for generated ic 16 : (6, 8.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00121$
	cpx	#0x00
	beq	00104$
00121$:
;	Raw cost for generated ic 17 : (11, 12.200000) count=1.000000
;	../calloc.c: 58: memset(ptr, 0, msize);
;	genAssign
;	genAssignLit
	stz	_memset_PARM_2
;	Raw cost for generated ic 22 : (3, 4.000000) count=0.750000
;	genAssign
;	genCopy
	lda	*(_calloc_sloc0_1_0 + 1)
	sta	(_memset_PARM_3 + 1)
	lda	*_calloc_sloc0_1_0
	sta	_memset_PARM_3
;	Raw cost for generated ic 23 : (10, 14.000000) count=0.750000
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	_calloc_ptr_10000_69
	jsr	_memset
;	Raw cost for generated ic 24 : (6, 10.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../calloc.c: 60: return(ptr);
;	genRet
	ldx	(_calloc_ptr_10000_69 + 1)
	lda	_calloc_ptr_10000_69
;	Raw cost for generated ic 26 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	../calloc.c: 61: }
;	genEndFunction
	rts
;	Raw cost for generated ic 28 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
