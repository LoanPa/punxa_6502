;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_load8
	
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
	.globl _stdc_load8_leu8
	.globl _stdc_load8_beu8
	.globl _stdc_load8_leu_aligned8
	.globl _stdc_load8_beu_aligned8
	.globl _stdc_load8_les8
	.globl _stdc_load8_bes8
	.globl _stdc_load8_les_aligned8
	.globl _stdc_load8_bes_aligned8
	.globl _stdc_load8_leu16
	.globl _stdc_load8_beu16
	.globl _stdc_load8_leu_aligned16
	.globl _stdc_load8_beu_aligned16
	.globl _stdc_load8_les16
	.globl _stdc_load8_bes16
	.globl _stdc_load8_les_aligned16
	.globl _stdc_load8_bes_aligned16
	.globl _stdc_load8_leu32
	.globl _stdc_load8_beu32
	.globl _stdc_load8_leu_aligned32
	.globl _stdc_load8_beu_aligned32
	.globl _stdc_load8_les32
	.globl _stdc_load8_bes32
	.globl _stdc_load8_les_aligned32
	.globl _stdc_load8_bes_aligned32
	.globl _stdc_load8_leu64
	.globl _stdc_load8_beu64
	.globl _stdc_load8_leu_aligned64
	.globl _stdc_load8_beu_aligned64
	.globl _stdc_load8_les64
	.globl _stdc_load8_bes64
	.globl _stdc_load8_les_aligned64
	.globl _stdc_load8_bes_aligned64
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
_stdc_load8_leu8_value_10000_67:
	.ds 1
_stdc_load8_beu8_value_10000_69:
	.ds 1
_stdc_load8_leu_aligned8_value_10000_71:
	.ds 1
_stdc_load8_beu_aligned8_value_10000_73:
	.ds 1
_stdc_load8_les8_value_10000_75:
	.ds 1
_stdc_load8_bes8_value_10000_77:
	.ds 1
_stdc_load8_les_aligned8_value_10000_79:
	.ds 1
_stdc_load8_bes_aligned8_value_10000_81:
	.ds 1
_stdc_load8_leu16_value_10000_83:
	.ds 2
_stdc_load8_beu16_value_10000_85:
	.ds 2
_stdc_load8_leu_aligned16_value_10000_87:
	.ds 2
_stdc_load8_beu_aligned16_value_10000_89:
	.ds 2
_stdc_load8_les16_value_10000_91:
	.ds 2
_stdc_load8_bes16_value_10000_93:
	.ds 2
_stdc_load8_les_aligned16_value_10000_95:
	.ds 2
_stdc_load8_bes_aligned16_value_10000_97:
	.ds 2
_stdc_load8_leu32_value_10000_99:
	.ds 4
_stdc_load8_beu32_value_10000_101:
	.ds 4
_stdc_load8_leu_aligned32_value_10000_103:
	.ds 4
_stdc_load8_beu_aligned32_value_10000_105:
	.ds 4
_stdc_load8_les32_value_10000_107:
	.ds 4
_stdc_load8_bes32_value_10000_109:
	.ds 4
_stdc_load8_les_aligned32_value_10000_111:
	.ds 4
_stdc_load8_bes_aligned32_value_10000_113:
	.ds 4
_stdc_load8_leu64_value_10000_115:
	.ds 8
_stdc_load8_beu64_value_10000_117:
	.ds 8
_stdc_load8_leu_aligned64_value_10000_119:
	.ds 8
_stdc_load8_beu_aligned64_value_10000_121:
	.ds 8
_stdc_load8_les64_value_10000_123:
	.ds 8
_stdc_load8_bes64_value_10000_125:
	.ds 8
_stdc_load8_les_aligned64_value_10000_127:
	.ds 8
_stdc_load8_bes_aligned64_value_10000_129:
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
;Allocation info for local variables in function 'stdc_load8_leu8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu8_value_10000_67'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu8_value_10000_67
	lda	#_stdc_load8_leu8_value_10000_67
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_leu8_value_10000_67
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu8_value_10000_69'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu8_value_10000_69
	lda	#_stdc_load8_beu8_value_10000_69
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu8_value_10000_69
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu8_value_10000_69
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_beu8_value_10000_69
;	Raw cost for generated ic 15 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu_aligned8_value_10000_71'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu_aligned8_value_10000_71
	lda	#_stdc_load8_leu_aligned8_value_10000_71
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_leu_aligned8_value_10000_71
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu_aligned8_value_10000_73'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu_aligned8_value_10000_73
	lda	#_stdc_load8_beu_aligned8_value_10000_73
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu_aligned8_value_10000_73
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu_aligned8_value_10000_73
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_beu_aligned8_value_10000_73
;	Raw cost for generated ic 15 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les8_value_10000_75'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les8_value_10000_75
	lda	#_stdc_load8_les8_value_10000_75
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_les8_value_10000_75
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes8_value_10000_77'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes8_value_10000_77
	lda	#_stdc_load8_bes8_value_10000_77
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes8_value_10000_77
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes8_value_10000_77
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_bes8_value_10000_77
;	Raw cost for generated ic 15 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les_aligned8_value_10000_79'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les_aligned8_value_10000_79
	lda	#_stdc_load8_les_aligned8_value_10000_79
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_les_aligned8_value_10000_79
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned8'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes_aligned8_value_10000_81'
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes_aligned8:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes_aligned8_value_10000_81
	lda	#_stdc_load8_bes_aligned8_value_10000_81
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes_aligned8_value_10000_81
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes_aligned8_value_10000_81
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	_stdc_load8_bes_aligned8_value_10000_81
;	Raw cost for generated ic 15 : (3, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu16_value_10000_83'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu16_value_10000_83
	lda	#_stdc_load8_leu16_value_10000_83
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_leu16_value_10000_83 + 1)
	lda	_stdc_load8_leu16_value_10000_83
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu16_value_10000_85'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu16_value_10000_85
	lda	#_stdc_load8_beu16_value_10000_85
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu16_value_10000_85
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu16_value_10000_85
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_beu16_value_10000_85 + 1)
	lda	_stdc_load8_beu16_value_10000_85
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu_aligned16_value_10000_87'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu_aligned16_value_10000_87
	lda	#_stdc_load8_leu_aligned16_value_10000_87
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_leu_aligned16_value_10000_87 + 1)
	lda	_stdc_load8_leu_aligned16_value_10000_87
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu_aligned16_value_10000_89'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu_aligned16_value_10000_89
	lda	#_stdc_load8_beu_aligned16_value_10000_89
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu_aligned16_value_10000_89
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu_aligned16_value_10000_89
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_beu_aligned16_value_10000_89 + 1)
	lda	_stdc_load8_beu_aligned16_value_10000_89
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les16_value_10000_91'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les16_value_10000_91
	lda	#_stdc_load8_les16_value_10000_91
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_les16_value_10000_91 + 1)
	lda	_stdc_load8_les16_value_10000_91
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes16_value_10000_93'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes16_value_10000_93
	lda	#_stdc_load8_bes16_value_10000_93
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes16_value_10000_93
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes16_value_10000_93
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_bes16_value_10000_93 + 1)
	lda	_stdc_load8_bes16_value_10000_93
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les_aligned16_value_10000_95'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les_aligned16_value_10000_95
	lda	#_stdc_load8_les_aligned16_value_10000_95
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_les_aligned16_value_10000_95 + 1)
	lda	_stdc_load8_les_aligned16_value_10000_95
;	Raw cost for generated ic 10 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned16'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes_aligned16_value_10000_97'
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes_aligned16:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes_aligned16_value_10000_97
	lda	#_stdc_load8_bes_aligned16_value_10000_97
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes_aligned16_value_10000_97
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes_aligned16_value_10000_97
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	ldx	(_stdc_load8_bes_aligned16_value_10000_97 + 1)
	lda	_stdc_load8_bes_aligned16_value_10000_97
;	Raw cost for generated ic 15 : (6, 8.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu32_value_10000_99'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu32_value_10000_99
	lda	#_stdc_load8_leu32_value_10000_99
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_leu32_value_10000_99 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_leu32_value_10000_99 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_leu32_value_10000_99 + 1)
	lda	_stdc_load8_leu32_value_10000_99
;	Raw cost for generated ic 10 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu32_value_10000_101'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu32_value_10000_101
	lda	#_stdc_load8_beu32_value_10000_101
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu32_value_10000_101
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu32_value_10000_101
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_beu32_value_10000_101 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_beu32_value_10000_101 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_beu32_value_10000_101 + 1)
	lda	_stdc_load8_beu32_value_10000_101
;	Raw cost for generated ic 15 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu_aligned32_value_10000_103'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu_aligned32_value_10000_103
	lda	#_stdc_load8_leu_aligned32_value_10000_103
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_leu_aligned32_value_10000_103 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_leu_aligned32_value_10000_103 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_leu_aligned32_value_10000_103 + 1)
	lda	_stdc_load8_leu_aligned32_value_10000_103
;	Raw cost for generated ic 10 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu_aligned32_value_10000_105'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu_aligned32_value_10000_105
	lda	#_stdc_load8_beu_aligned32_value_10000_105
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu_aligned32_value_10000_105
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu_aligned32_value_10000_105
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_beu_aligned32_value_10000_105 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_beu_aligned32_value_10000_105 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_beu_aligned32_value_10000_105 + 1)
	lda	_stdc_load8_beu_aligned32_value_10000_105
;	Raw cost for generated ic 15 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les32_value_10000_107'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les32_value_10000_107
	lda	#_stdc_load8_les32_value_10000_107
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_les32_value_10000_107 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_les32_value_10000_107 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_les32_value_10000_107 + 1)
	lda	_stdc_load8_les32_value_10000_107
;	Raw cost for generated ic 10 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes32_value_10000_109'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes32_value_10000_109
	lda	#_stdc_load8_bes32_value_10000_109
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes32_value_10000_109
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes32_value_10000_109
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_bes32_value_10000_109 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_bes32_value_10000_109 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_bes32_value_10000_109 + 1)
	lda	_stdc_load8_bes32_value_10000_109
;	Raw cost for generated ic 15 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les_aligned32_value_10000_111'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les_aligned32_value_10000_111
	lda	#_stdc_load8_les_aligned32_value_10000_111
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_les_aligned32_value_10000_111 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_les_aligned32_value_10000_111 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_les_aligned32_value_10000_111 + 1)
	lda	_stdc_load8_les_aligned32_value_10000_111
;	Raw cost for generated ic 10 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned32'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes_aligned32_value_10000_113'
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes_aligned32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes_aligned32_value_10000_113
	lda	#_stdc_load8_bes_aligned32_value_10000_113
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes_aligned32_value_10000_113
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes_aligned32_value_10000_113
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_bes_aligned32_value_10000_113 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_bes_aligned32_value_10000_113 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_bes_aligned32_value_10000_113 + 1)
	lda	_stdc_load8_bes_aligned32_value_10000_113
;	Raw cost for generated ic 15 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu64_value_10000_115'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu64_value_10000_115
	lda	#_stdc_load8_leu64_value_10000_115
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_leu64_value_10000_115 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_leu64_value_10000_115 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_leu64_value_10000_115 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_leu64_value_10000_115 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_leu64_value_10000_115 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_leu64_value_10000_115 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_leu64_value_10000_115 + 1)
	lda	_stdc_load8_leu64_value_10000_115
;	Raw cost for generated ic 10 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu64_value_10000_117'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu64_value_10000_117
	lda	#_stdc_load8_beu64_value_10000_117
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu64_value_10000_117
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu64_value_10000_117
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_beu64_value_10000_117 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_beu64_value_10000_117 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_beu64_value_10000_117 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_beu64_value_10000_117 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_beu64_value_10000_117 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_beu64_value_10000_117 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_beu64_value_10000_117 + 1)
	lda	_stdc_load8_beu64_value_10000_117
;	Raw cost for generated ic 15 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_leu_aligned64_value_10000_119'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_leu_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_leu_aligned64_value_10000_119
	lda	#_stdc_load8_leu_aligned64_value_10000_119
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_leu_aligned64_value_10000_119 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_leu_aligned64_value_10000_119 + 1)
	lda	_stdc_load8_leu_aligned64_value_10000_119
;	Raw cost for generated ic 10 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_beu_aligned64_value_10000_121'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_beu_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_beu_aligned64_value_10000_121
	lda	#_stdc_load8_beu_aligned64_value_10000_121
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_beu_aligned64_value_10000_121
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_beu_aligned64_value_10000_121
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_beu_aligned64_value_10000_121 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_beu_aligned64_value_10000_121 + 1)
	lda	_stdc_load8_beu_aligned64_value_10000_121
;	Raw cost for generated ic 15 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les64_value_10000_123'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les64_value_10000_123
	lda	#_stdc_load8_les64_value_10000_123
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_les64_value_10000_123 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_les64_value_10000_123 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_les64_value_10000_123 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_les64_value_10000_123 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_les64_value_10000_123 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_les64_value_10000_123 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_les64_value_10000_123 + 1)
	lda	_stdc_load8_les64_value_10000_123
;	Raw cost for generated ic 10 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes64_value_10000_125'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes64_value_10000_125
	lda	#_stdc_load8_bes64_value_10000_125
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes64_value_10000_125
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes64_value_10000_125
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_bes64_value_10000_125 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_bes64_value_10000_125 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_bes64_value_10000_125 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_bes64_value_10000_125 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_bes64_value_10000_125 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_bes64_value_10000_125 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_bes64_value_10000_125 + 1)
	lda	_stdc_load8_bes64_value_10000_125
;	Raw cost for generated ic 15 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_les_aligned64_value_10000_127'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_les_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_les_aligned64_value_10000_127
	lda	#_stdc_load8_les_aligned64_value_10000_127
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_les_aligned64_value_10000_127 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_les_aligned64_value_10000_127 + 1)
	lda	_stdc_load8_les_aligned64_value_10000_127
;	Raw cost for generated ic 10 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned64'
;------------------------------------------------------------
;ptr           Allocated to registers a x 
;value         Allocated with name '_stdc_load8_bes_aligned64_value_10000_129'
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_load8_bes_aligned64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*___memcpy_PARM_2
	stx	*(___memcpy_PARM_2 + 1)
;	Raw cost for generated ic 5 : (4, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	*___memcpy_PARM_3
	ldy	#0x00
	sty	*(___memcpy_PARM_3 + 1)
;	Raw cost for generated ic 8 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_stdc_load8_bes_aligned64_value_10000_129
	lda	#_stdc_load8_bes_aligned64_value_10000_129
	jsr	___memcpy
;	Raw cost for generated ic 9 : (7, 10.000000) count=1.000000
;	genCast
;	genCopy
	lda	#>_stdc_load8_bes_aligned64_value_10000_129
	sta	(_stdc_memreverse8_PARM_2 + 1)
	lda	#_stdc_load8_bes_aligned64_value_10000_129
	sta	_stdc_memreverse8_PARM_2
;	Raw cost for generated ic 11 : (10, 12.000000) count=1.000000
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	Raw cost for generated ic 14 : (7, 10.000000) count=1.000000
;	genRet
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_stdc_load8_bes_aligned64_value_10000_129 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_stdc_load8_bes_aligned64_value_10000_129 + 1)
	lda	_stdc_load8_bes_aligned64_value_10000_129
;	Raw cost for generated ic 15 : (36, 50.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 17 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
