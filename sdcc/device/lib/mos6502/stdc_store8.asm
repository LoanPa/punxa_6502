;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_store8
	
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
	.globl ___memcpy
	.globl _stdc_memreverse8
	.globl _stdc_store8_bes_aligned64_PARM_2
	.globl _stdc_store8_bes_aligned64_PARM_1
	.globl _stdc_store8_les_aligned64_PARM_2
	.globl _stdc_store8_les_aligned64_PARM_1
	.globl _stdc_store8_bes64_PARM_2
	.globl _stdc_store8_bes64_PARM_1
	.globl _stdc_store8_les64_PARM_2
	.globl _stdc_store8_les64_PARM_1
	.globl _stdc_store8_beu_aligned64_PARM_2
	.globl _stdc_store8_beu_aligned64_PARM_1
	.globl _stdc_store8_leu_aligned64_PARM_2
	.globl _stdc_store8_leu_aligned64_PARM_1
	.globl _stdc_store8_beu64_PARM_2
	.globl _stdc_store8_beu64_PARM_1
	.globl _stdc_store8_leu64_PARM_2
	.globl _stdc_store8_leu64_PARM_1
	.globl _stdc_store8_bes_aligned32_PARM_2
	.globl _stdc_store8_bes_aligned32_PARM_1
	.globl _stdc_store8_les_aligned32_PARM_2
	.globl _stdc_store8_les_aligned32_PARM_1
	.globl _stdc_store8_bes32_PARM_2
	.globl _stdc_store8_bes32_PARM_1
	.globl _stdc_store8_les32_PARM_2
	.globl _stdc_store8_les32_PARM_1
	.globl _stdc_store8_beu_aligned32_PARM_2
	.globl _stdc_store8_beu_aligned32_PARM_1
	.globl _stdc_store8_leu_aligned32_PARM_2
	.globl _stdc_store8_leu_aligned32_PARM_1
	.globl _stdc_store8_beu32_PARM_2
	.globl _stdc_store8_beu32_PARM_1
	.globl _stdc_store8_leu32_PARM_2
	.globl _stdc_store8_leu32_PARM_1
	.globl _stdc_store8_bes_aligned16_PARM_2
	.globl _stdc_store8_les_aligned16_PARM_2
	.globl _stdc_store8_bes16_PARM_2
	.globl _stdc_store8_les16_PARM_2
	.globl _stdc_store8_beu_aligned16_PARM_2
	.globl _stdc_store8_leu_aligned16_PARM_2
	.globl _stdc_store8_beu16_PARM_2
	.globl _stdc_store8_leu16_PARM_2
	.globl _stdc_store8_bes_aligned8_PARM_2
	.globl _stdc_store8_les_aligned8_PARM_2
	.globl _stdc_store8_bes8_PARM_2
	.globl _stdc_store8_les8_PARM_2
	.globl _stdc_store8_beu_aligned8_PARM_2
	.globl _stdc_store8_leu_aligned8_PARM_2
	.globl _stdc_store8_beu8_PARM_2
	.globl _stdc_store8_leu8_PARM_2
	.globl _stdc_store8_leu8
	.globl _stdc_store8_beu8
	.globl _stdc_store8_leu_aligned8
	.globl _stdc_store8_beu_aligned8
	.globl _stdc_store8_les8
	.globl _stdc_store8_bes8
	.globl _stdc_store8_les_aligned8
	.globl _stdc_store8_bes_aligned8
	.globl _stdc_store8_leu16
	.globl _stdc_store8_beu16
	.globl _stdc_store8_leu_aligned16
	.globl _stdc_store8_beu_aligned16
	.globl _stdc_store8_les16
	.globl _stdc_store8_bes16
	.globl _stdc_store8_les_aligned16
	.globl _stdc_store8_bes_aligned16
	.globl _stdc_store8_leu32
	.globl _stdc_store8_beu32
	.globl _stdc_store8_leu_aligned32
	.globl _stdc_store8_beu_aligned32
	.globl _stdc_store8_les32
	.globl _stdc_store8_bes32
	.globl _stdc_store8_les_aligned32
	.globl _stdc_store8_bes_aligned32
	.globl _stdc_store8_leu64
	.globl _stdc_store8_beu64
	.globl _stdc_store8_leu_aligned64
	.globl _stdc_store8_beu_aligned64
	.globl _stdc_store8_les64
	.globl _stdc_store8_bes64
	.globl _stdc_store8_les_aligned64
	.globl _stdc_store8_bes_aligned64
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
_stdc_store8_leu8_PARM_2:
	.ds 2
_stdc_store8_leu8_value_10000_130:
	.ds 1
_stdc_store8_beu8_PARM_2:
	.ds 2
_stdc_store8_beu8_value_10000_132:
	.ds 1
_stdc_store8_leu_aligned8_PARM_2:
	.ds 2
_stdc_store8_leu_aligned8_value_10000_134:
	.ds 1
_stdc_store8_beu_aligned8_PARM_2:
	.ds 2
_stdc_store8_beu_aligned8_value_10000_136:
	.ds 1
_stdc_store8_les8_PARM_2:
	.ds 2
_stdc_store8_les8_value_10000_138:
	.ds 1
_stdc_store8_bes8_PARM_2:
	.ds 2
_stdc_store8_bes8_value_10000_140:
	.ds 1
_stdc_store8_les_aligned8_PARM_2:
	.ds 2
_stdc_store8_les_aligned8_value_10000_142:
	.ds 1
_stdc_store8_bes_aligned8_PARM_2:
	.ds 2
_stdc_store8_bes_aligned8_value_10000_144:
	.ds 1
_stdc_store8_leu16_PARM_2:
	.ds 2
_stdc_store8_leu16_value_10000_146:
	.ds 2
_stdc_store8_beu16_PARM_2:
	.ds 2
_stdc_store8_beu16_value_10000_148:
	.ds 2
_stdc_store8_leu_aligned16_PARM_2:
	.ds 2
_stdc_store8_leu_aligned16_value_10000_150:
	.ds 2
_stdc_store8_beu_aligned16_PARM_2:
	.ds 2
_stdc_store8_beu_aligned16_value_10000_152:
	.ds 2
_stdc_store8_les16_PARM_2:
	.ds 2
_stdc_store8_les16_value_10000_154:
	.ds 2
_stdc_store8_bes16_PARM_2:
	.ds 2
_stdc_store8_bes16_value_10000_156:
	.ds 2
_stdc_store8_les_aligned16_PARM_2:
	.ds 2
_stdc_store8_les_aligned16_value_10000_158:
	.ds 2
_stdc_store8_bes_aligned16_PARM_2:
	.ds 2
_stdc_store8_bes_aligned16_value_10000_160:
	.ds 2
_stdc_store8_leu32_PARM_1:
	.ds 4
_stdc_store8_leu32_PARM_2:
	.ds 2
_stdc_store8_beu32_PARM_1:
	.ds 4
_stdc_store8_beu32_PARM_2:
	.ds 2
_stdc_store8_leu_aligned32_PARM_1:
	.ds 4
_stdc_store8_leu_aligned32_PARM_2:
	.ds 2
_stdc_store8_beu_aligned32_PARM_1:
	.ds 4
_stdc_store8_beu_aligned32_PARM_2:
	.ds 2
_stdc_store8_les32_PARM_1:
	.ds 4
_stdc_store8_les32_PARM_2:
	.ds 2
_stdc_store8_bes32_PARM_1:
	.ds 4
_stdc_store8_bes32_PARM_2:
	.ds 2
_stdc_store8_les_aligned32_PARM_1:
	.ds 4
_stdc_store8_les_aligned32_PARM_2:
	.ds 2
_stdc_store8_bes_aligned32_PARM_1:
	.ds 4
_stdc_store8_bes_aligned32_PARM_2:
	.ds 2
_stdc_store8_leu64_PARM_1:
	.ds 8
_stdc_store8_leu64_PARM_2:
	.ds 2
_stdc_store8_beu64_PARM_1:
	.ds 8
_stdc_store8_beu64_PARM_2:
	.ds 2
_stdc_store8_leu_aligned64_PARM_1:
	.ds 8
_stdc_store8_leu_aligned64_PARM_2:
	.ds 2
_stdc_store8_beu_aligned64_PARM_1:
	.ds 8
_stdc_store8_beu_aligned64_PARM_2:
	.ds 2
_stdc_store8_les64_PARM_1:
	.ds 8
_stdc_store8_les64_PARM_2:
	.ds 2
_stdc_store8_bes64_PARM_1:
	.ds 8
_stdc_store8_bes64_PARM_2:
	.ds 2
_stdc_store8_les_aligned64_PARM_1:
	.ds 8
_stdc_store8_les_aligned64_PARM_2:
	.ds 2
_stdc_store8_bes_aligned64_PARM_1:
	.ds 8
_stdc_store8_bes_aligned64_PARM_2:
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
;Allocation info for local variables in function 'stdc_store8_leu8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_leu8_PARM_2'
;value         Allocated with name '_stdc_store8_leu8_value_10000_130'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_leu8_value_10000_130
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu8_PARM_2 + 1)
	lda	_stdc_store8_leu8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu8_value_10000_130
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu8_value_10000_130
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_beu8_PARM_2'
;value         Allocated with name '_stdc_store8_beu8_value_10000_132'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_beu8_value_10000_132
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu8_PARM_2 + 1)
	lda	_stdc_store8_beu8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu8_value_10000_132
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu8_value_10000_132
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu8_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu8_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_leu_aligned8_PARM_2'
;value         Allocated with name '_stdc_store8_leu_aligned8_value_10000_134'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_leu_aligned8_value_10000_134
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu_aligned8_PARM_2 + 1)
	lda	_stdc_store8_leu_aligned8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu_aligned8_value_10000_134
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu_aligned8_value_10000_134
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_beu_aligned8_PARM_2'
;value         Allocated with name '_stdc_store8_beu_aligned8_value_10000_136'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_beu_aligned8_value_10000_136
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu_aligned8_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu_aligned8_value_10000_136
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu_aligned8_value_10000_136
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu_aligned8_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned8_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_les8_PARM_2'
;value         Allocated with name '_stdc_store8_les8_value_10000_138'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_les8_value_10000_138
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les8_PARM_2 + 1)
	lda	_stdc_store8_les8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les8_value_10000_138
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les8_value_10000_138
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_bes8_PARM_2'
;value         Allocated with name '_stdc_store8_bes8_value_10000_140'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_bes8_value_10000_140
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes8_PARM_2 + 1)
	lda	_stdc_store8_bes8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes8_value_10000_140
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes8_value_10000_140
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes8_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes8_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_les_aligned8_PARM_2'
;value         Allocated with name '_stdc_store8_les_aligned8_value_10000_142'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_les_aligned8_value_10000_142
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les_aligned8_PARM_2 + 1)
	lda	_stdc_store8_les_aligned8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les_aligned8_value_10000_142
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les_aligned8_value_10000_142
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned8'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_bes_aligned8_PARM_2'
;value         Allocated with name '_stdc_store8_bes_aligned8_value_10000_144'
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_bes_aligned8_value_10000_144
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes_aligned8_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned8_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes_aligned8_value_10000_144
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes_aligned8_value_10000_144
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	*___memcpy_PARM_3
	dey
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (7, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes_aligned8_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned8_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_leu16_PARM_2'
;value         Allocated with name '_stdc_store8_leu16_value_10000_146'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_leu16_value_10000_146
	stx	(_stdc_store8_leu16_value_10000_146 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu16_PARM_2 + 1)
	lda	_stdc_store8_leu16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu16_value_10000_146
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu16_value_10000_146
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_beu16_PARM_2'
;value         Allocated with name '_stdc_store8_beu16_value_10000_148'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_beu16_value_10000_148
	stx	(_stdc_store8_beu16_value_10000_148 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu16_PARM_2 + 1)
	lda	_stdc_store8_beu16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu16_value_10000_148
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu16_value_10000_148
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu16_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu16_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_leu_aligned16_PARM_2'
;value         Allocated with name '_stdc_store8_leu_aligned16_value_10000_150'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_leu_aligned16_value_10000_150
	stx	(_stdc_store8_leu_aligned16_value_10000_150 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu_aligned16_PARM_2 + 1)
	lda	_stdc_store8_leu_aligned16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu_aligned16_value_10000_150
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu_aligned16_value_10000_150
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_beu_aligned16_PARM_2'
;value         Allocated with name '_stdc_store8_beu_aligned16_value_10000_152'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_beu_aligned16_value_10000_152
	stx	(_stdc_store8_beu_aligned16_value_10000_152 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu_aligned16_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu_aligned16_value_10000_152
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu_aligned16_value_10000_152
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu_aligned16_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned16_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_les16_PARM_2'
;value         Allocated with name '_stdc_store8_les16_value_10000_154'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_les16_value_10000_154
	stx	(_stdc_store8_les16_value_10000_154 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les16_PARM_2 + 1)
	lda	_stdc_store8_les16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les16_value_10000_154
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les16_value_10000_154
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_bes16_PARM_2'
;value         Allocated with name '_stdc_store8_bes16_value_10000_156'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_bes16_value_10000_156
	stx	(_stdc_store8_bes16_value_10000_156 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes16_PARM_2 + 1)
	lda	_stdc_store8_bes16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes16_value_10000_156
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes16_value_10000_156
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes16_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes16_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_les_aligned16_PARM_2'
;value         Allocated with name '_stdc_store8_les_aligned16_value_10000_158'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_les_aligned16_value_10000_158
	stx	(_stdc_store8_les_aligned16_value_10000_158 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les_aligned16_PARM_2 + 1)
	lda	_stdc_store8_les_aligned16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les_aligned16_value_10000_158
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les_aligned16_value_10000_158
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 11 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned16'
;------------------------------------------------------------
;ptr           Allocated with name '_stdc_store8_bes_aligned16_PARM_2'
;value         Allocated with name '_stdc_store8_bes_aligned16_value_10000_160'
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_stdc_store8_bes_aligned16_value_10000_160
	stx	(_stdc_store8_bes_aligned16_value_10000_160 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes_aligned16_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned16_PARM_2
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes_aligned16_value_10000_160
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes_aligned16_value_10000_160
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x02
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 9 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes_aligned16_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned16_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
;	Raw cost for generated ic 12 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 14 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_leu32_PARM_1'
;ptr           Allocated with name '_stdc_store8_leu32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu32_PARM_2 + 1)
	lda	_stdc_store8_leu32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_beu32_PARM_1'
;ptr           Allocated with name '_stdc_store8_beu32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu32_PARM_2 + 1)
	lda	_stdc_store8_beu32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu32_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu32_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_leu_aligned32_PARM_1'
;ptr           Allocated with name '_stdc_store8_leu_aligned32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu_aligned32_PARM_2 + 1)
	lda	_stdc_store8_leu_aligned32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu_aligned32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu_aligned32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_beu_aligned32_PARM_1'
;ptr           Allocated with name '_stdc_store8_beu_aligned32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu_aligned32_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu_aligned32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu_aligned32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu_aligned32_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned32_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_les32_PARM_1'
;ptr           Allocated with name '_stdc_store8_les32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les32_PARM_2 + 1)
	lda	_stdc_store8_les32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_bes32_PARM_1'
;ptr           Allocated with name '_stdc_store8_bes32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes32_PARM_2 + 1)
	lda	_stdc_store8_bes32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes32_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes32_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_les_aligned32_PARM_1'
;ptr           Allocated with name '_stdc_store8_les_aligned32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les_aligned32_PARM_2 + 1)
	lda	_stdc_store8_les_aligned32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les_aligned32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les_aligned32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned32'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_bes_aligned32_PARM_1'
;ptr           Allocated with name '_stdc_store8_bes_aligned32_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes_aligned32_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned32_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes_aligned32_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes_aligned32_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x04
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes_aligned32_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned32_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_leu64_PARM_1'
;ptr           Allocated with name '_stdc_store8_leu64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu64_PARM_2 + 1)
	lda	_stdc_store8_leu64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_beu64_PARM_1'
;ptr           Allocated with name '_stdc_store8_beu64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu64_PARM_2 + 1)
	lda	_stdc_store8_beu64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu64_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu64_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_leu_aligned64_PARM_1'
;ptr           Allocated with name '_stdc_store8_leu_aligned64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_leu_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_leu_aligned64_PARM_2 + 1)
	lda	_stdc_store8_leu_aligned64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_leu_aligned64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_leu_aligned64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_beu_aligned64_PARM_1'
;ptr           Allocated with name '_stdc_store8_beu_aligned64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_beu_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_beu_aligned64_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_beu_aligned64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_beu_aligned64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_beu_aligned64_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_beu_aligned64_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_les64_PARM_1'
;ptr           Allocated with name '_stdc_store8_les64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les64_PARM_2 + 1)
	lda	_stdc_store8_les64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_bes64_PARM_1'
;ptr           Allocated with name '_stdc_store8_bes64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes64_PARM_2 + 1)
	lda	_stdc_store8_bes64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes64_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes64_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_les_aligned64_PARM_1'
;ptr           Allocated with name '_stdc_store8_les_aligned64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_les_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_les_aligned64_PARM_2 + 1)
	lda	_stdc_store8_les_aligned64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_les_aligned64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_les_aligned64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	___memcpy
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned64'
;------------------------------------------------------------
;value         Allocated with name '_stdc_store8_bes_aligned64_PARM_1'
;ptr           Allocated with name '_stdc_store8_bes_aligned64_PARM_2'
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_store8_bes_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	(_stdc_store8_bes_aligned64_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned64_PARM_2
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldy	#>_stdc_store8_bes_aligned64_PARM_1
	sty	*(___memcpy_PARM_2 + 1)
	ldy	#_stdc_store8_bes_aligned64_PARM_1
	sty	*___memcpy_PARM_2
;	Raw cost for generated ic 4 : (8, 10.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x08
	sty	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 7 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	___memcpy
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_stdc_store8_bes_aligned64_PARM_2 + 1)
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	_stdc_store8_bes_aligned64_PARM_2
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 10 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
	jmp	_stdc_memreverse8
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
