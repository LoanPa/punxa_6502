;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _fs2uint
	
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
	.globl ___fs2ulong
	.globl ___fs2uint_PARM_1
	.globl ___fs2uint
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
___fs2uint_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
___fs2uint_PARM_1:
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
;Allocation info for local variables in function '__fs2uint'
;------------------------------------------------------------
;sloc0         Allocated with name '___fs2uint_sloc0_1_0'
;f             Allocated with name '___fs2uint_PARM_1'
;ul            Allocated with name '___fs2uint_ul_10000_21'
;------------------------------------------------------------
;	../_fs2uint.c: 52: unsigned int __fs2uint (float f) __SDCC_FLOAT_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __fs2uint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2uint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_fs2uint.c: 54: unsigned long ul=__fs2ulong(f);
;	genAssign
;	genCopy
	lda	(___fs2uint_PARM_1 + 3)
	sta	(___fs2ulong_PARM_1 + 3)
	lda	(___fs2uint_PARM_1 + 2)
	sta	(___fs2ulong_PARM_1 + 2)
	lda	(___fs2uint_PARM_1 + 1)
	sta	(___fs2ulong_PARM_1 + 1)
	lda	___fs2uint_PARM_1
	sta	___fs2ulong_PARM_1
;	Raw cost for generated ic 2 : (24, 32.000000) count=1.000000
;	genCall
	jsr	___fs2ulong
;	assignResultValue
	sta	*___fs2uint_sloc0_1_0
	stx	*(___fs2uint_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(___fs2uint_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(___fs2uint_sloc0_1_0 + 3)
;	Raw cost for generated ic 3 : (15, 24.000000) count=1.000000
;	../_fs2uint.c: 55: if (ul>=UINT_MAX) return UINT_MAX;
;	genCmp
	lda	*___fs2uint_sloc0_1_0
	sec
	sbc	#0xff
	txa
	sbc	#0xff
	lda	*(___fs2uint_sloc0_1_0 + 2)
	sbc	#0x00
	lda	*(___fs2uint_sloc0_1_0 + 3)
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 5 : (21, 26.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genRet
	lda	#0xff
	tax
	rts
;	Raw cost for generated ic 9 : (6, 7.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	../_fs2uint.c: 56: return ul;
;	genCast
;	genCopy
	ldx	*(___fs2uint_sloc0_1_0 + 1)
	lda	*___fs2uint_sloc0_1_0
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../_fs2uint.c: 57: }
;	genEndFunction
	rts
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
