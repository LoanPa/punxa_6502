;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_memreverse8u
	
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
	.globl _stdc_memreverse8
	.globl _stdc_memreverse8u64_PARM_1
	.globl _stdc_memreverse8u32_PARM_1
	.globl _stdc_memreverse8u8
	.globl _stdc_memreverse8u16
	.globl _stdc_memreverse8u32
	.globl _stdc_memreverse8u64
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_stdc_memreverse8u8_value_10000_29:
	.ds 1
_stdc_memreverse8u16_value_10000_31:
	.ds 2
_stdc_memreverse8u32_PARM_1:
	.ds 4
_stdc_memreverse8u64_PARM_1:
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
;Allocation info for local variables in function 'stdc_memreverse8u8'
;------------------------------------------------------------
;value         Allocated with name '_stdc_memreverse8u8_value_10000_29'
;------------------------------------------------------------
;	./../../include/stdbit.h: 382: __STDC_MEMREVERSE8U(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_memreverse8u8_value_10000_29
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_memreverse8u8_value_10000_29
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_memreverse8u8_value_10000_29
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 4 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_memreverse8u8_value_10000_29
;	Raw cost for generated ic 8 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u16'
;------------------------------------------------------------
;value         Allocated with name '_stdc_memreverse8u16_value_10000_31'
;------------------------------------------------------------
;	./../../include/stdbit.h: 383: __STDC_MEMREVERSE8U(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_memreverse8u16_value_10000_31
	stx	(_stdc_memreverse8u16_value_10000_31 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_memreverse8u16_value_10000_31
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_memreverse8u16_value_10000_31
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 4 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_memreverse8u16_value_10000_31 + 1)
	lda	_stdc_memreverse8u16_value_10000_31
;	Raw cost for generated ic 8 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_memreverse8u32_PARM_1'
;------------------------------------------------------------
;	./../../include/stdbit.h: 384: __STDC_MEMREVERSE8U(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_memreverse8u32_PARM_1
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_memreverse8u32_PARM_1
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_memreverse8u32_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_memreverse8u32_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_memreverse8u32_PARM_1 + 1)
	lda	_stdc_memreverse8u32_PARM_1
;	Raw cost for generated ic 7 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_memreverse8u64_PARM_1'
;------------------------------------------------------------
;	./../../include/stdbit.h: 385: __STDC_MEMREVERSE8U(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_memreverse8u64_PARM_1
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_memreverse8u64_PARM_1
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 3 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_memreverse8u64_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_memreverse8u64_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_memreverse8u64_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_memreverse8u64_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_memreverse8u64_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_memreverse8u64_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_memreverse8u64_PARM_1 + 1)
	lda	_stdc_memreverse8u64_PARM_1
;	Raw cost for generated ic 7 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
