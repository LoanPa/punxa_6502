;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoimax
	
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
	.globl _strtoll
	.globl _strtoimax_PARM_3
	.globl _strtoimax_PARM_2
	.globl _strtoimax
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtoimax_sloc0_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strtoimax_PARM_2:
	.ds 2
_strtoimax_PARM_3:
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
;Allocation info for local variables in function 'strtoimax'
;------------------------------------------------------------
;sloc0         Allocated with name '_strtoimax_sloc0_1_0'
;endptr        Allocated with name '_strtoimax_PARM_2'
;base          Allocated with name '_strtoimax_PARM_3'
;nptr          Allocated to registers a x 
;------------------------------------------------------------
;	../strtoimax.c: 32: intmax_t strtoimax(const char * restrict nptr, char ** restrict endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoimax
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtoimax:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strtoimax.c: 35: return strtoll(nptr, endptr, base);
;	genAssign
;	genCopy
	ldy	(_strtoimax_PARM_2 + 1)
	sty	(_strtoll_PARM_2 + 1)
	ldy	_strtoimax_PARM_2
	sty	_strtoll_PARM_2
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_strtoimax_PARM_3 + 1)
	sty	(_strtoll_PARM_3 + 1)
	ldy	_strtoimax_PARM_3
	sty	_strtoll_PARM_3
;	Raw cost for generated ic 5 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_strtoll
;	assignResultValue
	sta	*_strtoimax_sloc0_1_0
	stx	*(_strtoimax_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_strtoimax_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_strtoimax_sloc0_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_strtoimax_sloc0_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_strtoimax_sloc0_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_strtoimax_sloc0_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_strtoimax_sloc0_1_0 + 7)
;	Raw cost for generated ic 6 : (31, 48.000000) count=1.000000
;	genRet
	sta	*___SDCC_m6502_ret7
	lda	*(_strtoimax_sloc0_1_0 + 6)
	sta	*___SDCC_m6502_ret6
	lda	*(_strtoimax_sloc0_1_0 + 5)
	sta	*___SDCC_m6502_ret5
	lda	*(_strtoimax_sloc0_1_0 + 4)
	sta	*___SDCC_m6502_ret4
	lda	*(_strtoimax_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtoimax_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	lda	*_strtoimax_sloc0_1_0
;	Raw cost for generated ic 7 : (24, 36.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../strtoimax.c: 39: }
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
