;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slslonglong
	
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
	.globl __slslonglong_PARM_2
	.globl __slslonglong_PARM_1
	.globl __slslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__slslonglong_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__slslonglong_PARM_1:
	.ds 8
__slslonglong_PARM_2:
	.ds 1
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
;Allocation info for local variables in function '_slslonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '__slslonglong_sloc0_1_0'
;l             Allocated with name '__slslonglong_PARM_1'
;s             Allocated with name '__slslonglong_PARM_2'
;------------------------------------------------------------
;	../_slslonglong.c: 35: long long _slslonglong(long long l, char s) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _slslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__slslonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_slslonglong.c: 37: return((unsigned long long)(l) << s);
;	genCast
;	genCopy
	lda	(__slslonglong_PARM_1 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	(__slslonglong_PARM_1 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	(__slslonglong_PARM_1 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	(__slslonglong_PARM_1 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	(__slslonglong_PARM_1 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	(__slslonglong_PARM_1 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	(__slslonglong_PARM_1 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	__slslonglong_PARM_1
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 2 : (48, 64.000000) count=1.000000
;	genCast
;	genCopy
	lda	__slslonglong_PARM_2
	sta	__slulonglong_PARM_2
;	Raw cost for generated ic 7 : (6, 8.000000) count=1.000000
;	genCall
	jsr	__slulonglong
;	assignResultValue
	sta	*__slslonglong_sloc0_1_0
	stx	*(__slslonglong_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__slslonglong_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__slslonglong_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__slslonglong_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__slslonglong_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__slslonglong_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__slslonglong_sloc0_1_0 + 7)
;	Raw cost for generated ic 10 : (31, 48.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(__slslonglong_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(__slslonglong_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(__slslonglong_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(__slslonglong_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(__slslonglong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*__slslonglong_sloc0_1_0
;	Raw cost for generated ic 4 : (24, 36.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	../_slslonglong.c: 38: }
;	genEndFunction
	rts
;	Raw cost for generated ic 6 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
