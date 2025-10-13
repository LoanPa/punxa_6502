;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module floorf
	
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
	.globl _floorf_PARM_1
	.globl _floorf
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_floorf_sloc0_1_0:
	.ds 4
_floorf_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_floorf_PARM_1:
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
;Allocation info for local variables in function 'floorf'
;------------------------------------------------------------
;sloc0         Allocated with name '_floorf_sloc0_1_0'
;sloc1         Allocated with name '_floorf_sloc1_1_0'
;x             Allocated with name '_floorf_PARM_1'
;r             Allocated with name '_floorf_r_10000_26'
;------------------------------------------------------------
;	../floorf.c: 33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_floorf:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../floorf.c: 36: r=x;
;	genAssign
;	genCopy
	lda	(_floorf_PARM_1 + 3)
	sta	(___fs2slong_PARM_1 + 3)
	lda	(_floorf_PARM_1 + 2)
	sta	(___fs2slong_PARM_1 + 2)
	lda	(_floorf_PARM_1 + 1)
	sta	(___fs2slong_PARM_1 + 1)
	lda	_floorf_PARM_1
	sta	___fs2slong_PARM_1
;	Raw cost for generated ic 27 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2slong
;	assignResultValue
	sta	*_floorf_sloc0_1_0
	stx	*(_floorf_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_floorf_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_floorf_sloc0_1_0 + 3)
;	Raw cost for generated ic 28 : (15, 24.000000) count=1.000000
;	../floorf.c: 37: if (r<=0)
;	genCmp
	lda	#0x00
	sec
	sbc	*_floorf_sloc0_1_0
	lda	#0x00
	sbc	*(_floorf_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(_floorf_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(_floorf_sloc0_1_0 + 3)
	bvs	00121$
	bpl	00120$
	bmi	00122$
00121$:
	bmi	00120$
00122$:
	jmp	00102$
00120$:
;	Raw cost for generated ic 4 : (28, 35.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	../floorf.c: 38: return (r+((r>x)?-1:0));
;	genAssign
;	genCopy
	lda	*(_floorf_sloc0_1_0 + 3)
	sta	(___slong2fs_PARM_1 + 3)
	lda	*(_floorf_sloc0_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	txa
	sta	(___slong2fs_PARM_1 + 1)
	lda	*_floorf_sloc0_1_0
	sta	___slong2fs_PARM_1
;	Raw cost for generated ic 29 : (19, 27.000000) count=0.750000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	___fslt_PARM_2
	stx	(___fslt_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fslt_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fslt_PARM_2 + 3)
;	Raw cost for generated ic 30 : (19, 28.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_floorf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	lda	(_floorf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_floorf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	_floorf_PARM_1
	sta	___fslt_PARM_1
;	Raw cost for generated ic 31 : (24, 32.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
;	Raw cost for generated ic 33 : (3, 6.000000) count=0.750000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 10 : (7, 7.600000) count=0.750000
;	genAssign
;	genCopy
	lda	#0xff
;	Raw cost for generated ic 11 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 12 : (3, 3.000000) count=0.562500
;	genLabel
00106$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.187500
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 14 : (2, 2.000000) count=0.187500
;	genLabel
00107$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.750000
;	genCast
	sta	*_floorf_sloc1_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_floorf_sloc1_1_0 + 1)
	sta	*(_floorf_sloc1_1_0 + 2)
	sta	*(_floorf_sloc1_1_0 + 3)
;	Raw cost for generated ic 16 : (15, 20.000000) count=0.750000
;	genPlus
	lda	*_floorf_sloc0_1_0
	clc
	adc	*_floorf_sloc1_1_0
	sta	___slong2fs_PARM_1
	lda	*(_floorf_sloc0_1_0 + 1)
	adc	*(_floorf_sloc1_1_0 + 1)
	sta	(___slong2fs_PARM_1 + 1)
	lda	*(_floorf_sloc0_1_0 + 2)
	adc	*(_floorf_sloc1_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	lda	*(_floorf_sloc0_1_0 + 3)
	adc	*(_floorf_sloc1_1_0 + 3)
	sta	(___slong2fs_PARM_1 + 3)
;	Raw cost for generated ic 17 : (29, 42.000000) count=0.750000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*_floorf_sloc1_1_0
	stx	*(_floorf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_floorf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_floorf_sloc1_1_0 + 3)
;	Raw cost for generated ic 35 : (15, 24.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_floorf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_floorf_sloc1_1_0
	rts
;	Raw cost for generated ic 19 : (11, 15.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	../floorf.c: 40: return r;
;	genAssign
;	genCopy
	lda	*(_floorf_sloc0_1_0 + 3)
	sta	(___slong2fs_PARM_1 + 3)
	lda	*(_floorf_sloc0_1_0 + 2)
	sta	(___slong2fs_PARM_1 + 2)
	lda	*(_floorf_sloc0_1_0 + 1)
	sta	(___slong2fs_PARM_1 + 1)
	lda	*_floorf_sloc0_1_0
	sta	___slong2fs_PARM_1
;	Raw cost for generated ic 36 : (20, 28.000000) count=1.000000
;	genCall
	jsr	___slong2fs
;	assignResultValue
	sta	*_floorf_sloc1_1_0
	stx	*(_floorf_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_floorf_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_floorf_sloc1_1_0 + 3)
;	Raw cost for generated ic 37 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(_floorf_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_floorf_sloc1_1_0
;	Raw cost for generated ic 23 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../floorf.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 26 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
