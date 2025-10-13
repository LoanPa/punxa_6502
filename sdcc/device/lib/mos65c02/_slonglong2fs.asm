;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slonglong2fs
	
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
	.globl ___slonglong2fs_PARM_1
	.globl ___slonglong2fs
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___slonglong2fs_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___slonglong2fs_PARM_1:
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
;Allocation info for local variables in function '__slonglong2fs'
;------------------------------------------------------------
;sloc0         Allocated with name '___slonglong2fs_sloc0_1_0'
;sll           Allocated with name '___slonglong2fs_PARM_1'
;------------------------------------------------------------
;	../_slonglong2fs.c: 35: float __slonglong2fs (signed long long sll) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __slonglong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___slonglong2fs:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 37: if (sll<0)
;	genCmp
	bit	(___slonglong2fs_PARM_1 + 7)
	bpl	00102$
;	Raw cost for generated ic 2 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 38: return -__ulonglong2fs(-sll);
;	genUminus
	lda	#0x00
	sec
	sbc	___slonglong2fs_PARM_1
	sta	___ulonglong2fs_PARM_1
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 1)
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 4)
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 5)
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 6)
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	#0x00
	sbc	(___slonglong2fs_PARM_1 + 7)
	sta	(___ulonglong2fs_PARM_1 + 7)
;	Raw cost for generated ic 6 : (65, 82.000000) count=0.750000
;	genCall
	jsr	___ulonglong2fs
;	assignResultValue
	sta	*___slonglong2fs_sloc0_1_0
	stx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
;	Raw cost for generated ic 9 : (15, 24.000000) count=0.750000
;	genUminus
;	genUminusFloat
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
	ora	#0x00
	eor	#0x80
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 10 : (6, 8.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___slonglong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___slonglong2fs_sloc0_1_0
	rts
;	Raw cost for generated ic 11 : (13, 18.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 40: return __ulonglong2fs(sll);
;	genAssign
;	genCopy
	lda	(___slonglong2fs_PARM_1 + 7)
	sta	(___ulonglong2fs_PARM_1 + 7)
	lda	(___slonglong2fs_PARM_1 + 6)
	sta	(___ulonglong2fs_PARM_1 + 6)
	lda	(___slonglong2fs_PARM_1 + 5)
	sta	(___ulonglong2fs_PARM_1 + 5)
	lda	(___slonglong2fs_PARM_1 + 4)
	sta	(___ulonglong2fs_PARM_1 + 4)
	lda	(___slonglong2fs_PARM_1 + 3)
	sta	(___ulonglong2fs_PARM_1 + 3)
	lda	(___slonglong2fs_PARM_1 + 2)
	sta	(___ulonglong2fs_PARM_1 + 2)
	lda	(___slonglong2fs_PARM_1 + 1)
	sta	(___ulonglong2fs_PARM_1 + 1)
	lda	___slonglong2fs_PARM_1
	sta	___ulonglong2fs_PARM_1
;	Raw cost for generated ic 14 : (48, 64.000000) count=1.000000
;	genCall
	jsr	___ulonglong2fs
;	assignResultValue
	sta	*___slonglong2fs_sloc0_1_0
	stx	*(___slonglong2fs_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___slonglong2fs_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___slonglong2fs_sloc0_1_0 + 3)
;	Raw cost for generated ic 16 : (15, 24.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(___slonglong2fs_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*___slonglong2fs_sloc0_1_0
;	Raw cost for generated ic 17 : (8, 12.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../_slonglong2fs.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 20 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
