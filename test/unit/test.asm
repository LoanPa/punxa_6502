;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15696 (Linux)
;--------------------------------------------------------
	.module test
	
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
	.globl _main
	.globl _verify_mem_PARM_2
	.globl _test_block
	.globl _test_status
	.globl _test_num
	.globl _test_result
	.globl _abs_y_var2
	.globl _abs_y_var
	.globl _abs_x_var2
	.globl _abs_x_var
	.globl _abs_store2
	.globl _abs_store
	.globl _abs_var
	.globl _addr
	.globl _flags
	.globl _actual
	.globl _ind_y_addr_hi
	.globl _ind_y_addr_lo
	.globl _ind_store_hi
	.globl _ind_store_lo
	.globl _ind_x_addr_hi
	.globl _ind_x_addr_lo
	.globl _zp_store2
	.globl _zp_store
	.globl _zp_var2
	.globl _zp_var
	.globl _test_failed
	.globl _test_passed
	.globl _verify
	.globl _verify_flags
	.globl _start_test_block
	.globl _verify_mem
	.globl _verify_zp
	.globl _test_load
	.globl _test_store
	.globl _test_arithmetic
	.globl _test_logical
	.globl _test_shift_rotate
	.globl _test_branch
	.globl _test_flags
	.globl _test_stack
	.globl _test_jump_subroutine
	.globl _test_misc
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
_zp_var	=	0x0020
_zp_var2	=	0x0021
_zp_store	=	0x0022
_zp_store2	=	0x0023
_ind_x_addr_lo	=	0x0030
_ind_x_addr_hi	=	0x0031
_ind_store_lo	=	0x0032
_ind_store_hi	=	0x0033
_ind_y_addr_lo	=	0x0040
_ind_y_addr_hi	=	0x0041
_actual	=	0x0050
_flags	=	0x0051
_addr	=	0x0052
_abs_var	=	0x1000
_abs_store	=	0x1002
_abs_store2	=	0x1003
_abs_x_var	=	0x1100
_abs_x_var2	=	0x1101
_abs_y_var	=	0x1200
_abs_y_var2	=	0x1201
_test_result	=	0x2000
_test_num	=	0x0060
_test_status	=	0x2004
_test_block	=	0x2002
_verify_mem_PARM_2:
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	test.c: 80: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 83: test_num = 0;
;	genAssign
;	genCopy
	ldy	#0x00
	sty	(_test_num + 1)
	sty	_test_num
;	Raw cost for generated ic 2 : (8, 10.000000) count=1.000000
;	test.c: 84: test_block = 0;
;	genAssign
;	genCopy
	sty	_test_block
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 85: test_status = 1;
;	genAssign
;	genCopy
	ldx	#0x01
	stx	_test_status
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	test.c: 88: ind_x_addr_lo = (TEST_ABS_X & 0xFF);
;	genAssign
;	genCopy
	sty	_ind_x_addr_lo
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	test.c: 89: ind_x_addr_hi = (TEST_ABS_X >> 8);
;	genAssign
;	genCopy
	ldx	#0x11
	stx	_ind_x_addr_hi
;	Raw cost for generated ic 6 : (5, 6.000000) count=1.000000
;	test.c: 91: ind_y_addr_lo = (TEST_ABS_Y & 0xFF);
;	genAssign
;	genCopy
	sty	_ind_y_addr_lo
;	Raw cost for generated ic 7 : (3, 4.000000) count=1.000000
;	test.c: 92: ind_y_addr_hi = (TEST_ABS_Y >> 8);
;	genAssign
;	genCopy
	inx
	stx	_ind_y_addr_hi
;	Raw cost for generated ic 8 : (4, 6.000000) count=1.000000
;	test.c: 95: zp_var = 0x42;
;	genAssign
;	genCopy
	ldx	#0x42
	stx	_zp_var
;	Raw cost for generated ic 9 : (5, 6.000000) count=1.000000
;	test.c: 96: zp_var2 = 0x84;
;	genAssign
;	genCopy
	ldx	#0x84
	stx	_zp_var2
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	test.c: 97: abs_var = 0x11;
;	genAssign
;	genCopy
	ldx	#0x11
	stx	_abs_var
;	Raw cost for generated ic 11 : (5, 6.000000) count=1.000000
;	test.c: 98: abs_x_var = 0x22;
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_x_var
;	Raw cost for generated ic 12 : (5, 6.000000) count=1.000000
;	test.c: 99: abs_y_var = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var
;	Raw cost for generated ic 13 : (5, 6.000000) count=1.000000
;	test.c: 102: test_load();
;	genCall
	jsr	_test_load
;	Raw cost for generated ic 14 : (3, 6.000000) count=1.000000
;	test.c: 103: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 15 : (3, 6.000000) count=1.000000
;	test.c: 104: test_store();
;	genCall
	jsr	_test_store
;	Raw cost for generated ic 16 : (3, 6.000000) count=1.000000
;	test.c: 105: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 17 : (3, 6.000000) count=1.000000
;	test.c: 106: test_arithmetic();
;	genCall
	jsr	_test_arithmetic
;	Raw cost for generated ic 18 : (3, 6.000000) count=1.000000
;	test.c: 107: test_status = 0; // Temporarily  skip remaining tests
;	genAssign
;	genCopy
	ldy	#0x00
	sty	_test_status
;	Raw cost for generated ic 19 : (5, 6.000000) count=1.000000
;	test.c: 108: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 20 : (3, 6.000000) count=1.000000
;	test.c: 109: test_logical();
;	genCall
	jsr	_test_logical
;	Raw cost for generated ic 21 : (3, 6.000000) count=1.000000
;	test.c: 110: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 22 : (3, 6.000000) count=1.000000
;	test.c: 111: test_shift_rotate();
;	genCall
	jsr	_test_shift_rotate
;	Raw cost for generated ic 23 : (3, 6.000000) count=1.000000
;	test.c: 112: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 24 : (3, 6.000000) count=1.000000
;	test.c: 113: test_branch();
;	genCall
	jsr	_test_branch
;	Raw cost for generated ic 25 : (3, 6.000000) count=1.000000
;	test.c: 114: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 26 : (3, 6.000000) count=1.000000
;	test.c: 115: test_flags();
;	genCall
	jsr	_test_flags
;	Raw cost for generated ic 27 : (3, 6.000000) count=1.000000
;	test.c: 116: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 28 : (3, 6.000000) count=1.000000
;	test.c: 117: test_stack();
;	genCall
	jsr	_test_stack
;	Raw cost for generated ic 29 : (3, 6.000000) count=1.000000
;	test.c: 118: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 30 : (3, 6.000000) count=1.000000
;	test.c: 119: test_jump_subroutine();
;	genCall
	jsr	_test_jump_subroutine
;	Raw cost for generated ic 31 : (3, 6.000000) count=1.000000
;	test.c: 120: start_test_block();
;	genCall
	jsr	_start_test_block
;	Raw cost for generated ic 32 : (3, 6.000000) count=1.000000
;	test.c: 121: test_misc();
;	genCall
	jsr	_test_misc
;	Raw cost for generated ic 33 : (3, 6.000000) count=1.000000
;	test.c: 124: test_status = 0; 
;	genAssign
;	genCopy
	ldy	#0x00
	sty	_test_status
;	Raw cost for generated ic 34 : (5, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	test.c: 128: }
;	genEndFunction
	rts
;	Raw cost for generated ic 36 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_failed'
;------------------------------------------------------------
;	test.c: 131: void test_failed(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_failed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_failed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 133: test_result = 0xCA;
;	genAssign
;	genCopy
	ldx	#0xca
	stx	_test_result
;	Raw cost for generated ic 2 : (5, 6.000000) count=1.000000
;	test.c: 135: test_num++;
;	genAssign
;	genCopy
	ldx	(_test_num + 1)
	lda	_test_num
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	sta	_test_num
	txa
	adc	#0x00
	sta	(_test_num + 1)
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	test.c: 137: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_passed'
;------------------------------------------------------------
;	test.c: 140: void test_passed(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_passed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_passed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 142: test_result = 0xBE;
;	genAssign
;	genCopy
	ldx	#0xbe
	stx	_test_result
;	Raw cost for generated ic 2 : (5, 6.000000) count=1.000000
;	test.c: 143: test_num++;
;	genAssign
;	genCopy
	ldx	(_test_num + 1)
	lda	_test_num
;	Raw cost for generated ic 3 : (6, 8.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	sta	_test_num
	txa
	adc	#0x00
	sta	(_test_num + 1)
;	Raw cost for generated ic 4 : (12, 16.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	test.c: 144: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify'
;------------------------------------------------------------
;expected      Allocated to registers a 
;------------------------------------------------------------
;	test.c: 148: void verify(uint8_t expected) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	test.c: 150: if (actual != expected) 
;	genCmpEQorNE
	cmp	_actual
	bne	00106$
	jmp	00102$
00106$:
;	Raw cost for generated ic 3 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	test.c: 151: test_failed(); 
;	genCall
	jsr	_test_failed
;	Raw cost for generated ic 7 : (3, 6.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 8 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.250000
;	test.c: 153: test_passed();
;	genCall
	jsr	_test_passed
;	Raw cost for generated ic 10 : (3, 6.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 154: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_flags'
;------------------------------------------------------------
;ef            Allocated to registers x 
;expected      Allocated to registers a 
;------------------------------------------------------------
;	test.c: 157: void verify_flags(uint8_t expected, uint8_t ef) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_flags
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_flags:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	test.c: 160: if (actual != expected) 
;	genCmpEQorNE
	cmp	_actual
	bne	00109$
	jmp	00105$
00109$:
;	Raw cost for generated ic 4 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	test.c: 161: test_failed(); 
;	genCall
	jsr	_test_failed
;	Raw cost for generated ic 8 : (3, 6.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.250000
;	test.c: 162: else if (ef != (flags & FLAGS_MASK)) 
;	genAnd
	lda	_flags
	and	#0xcb
;	Raw cost for generated ic 11 : (5, 6.000000) count=0.250000
;	genCmpEQorNE
	stx	*(REGTEMP+0)
	cmp	*(REGTEMP+0)
	bne	00110$
	jmp	00102$
00110$:
;	Raw cost for generated ic 12 : (9, 11.600000) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.250000
;	genLabel
00101$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=0.187500
;	test.c: 163: test_failed();
;	genCall
	jsr	_test_failed
;	Raw cost for generated ic 16 : (3, 6.000000) count=0.187500
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 17 : (3, 3.000000) count=0.187500
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.062500
;	test.c: 165: test_passed();
;	genCall
	jsr	_test_passed
;	Raw cost for generated ic 19 : (3, 6.000000) count=0.062500
;	genLabel
00103$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.062500
;	genLabel
00106$:
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.062500
;	genLabel
00107$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	test.c: 166: }
;	genEndFunction
	rts
;	Raw cost for generated ic 23 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'start_test_block'
;------------------------------------------------------------
;	test.c: 168: void start_test_block(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function start_test_block
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_start_test_block:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 170: test_block ++;
;	genAssign
;	genCopy
	ldx	_test_block
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genPlus
;	  genPlusInc
	inx
	stx	_test_block
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	test.c: 171: test_num = 0;
;	genAssign
;	genCopy
	ldy	#0x00
	sty	(_test_num + 1)
	sty	_test_num
;	Raw cost for generated ic 5 : (8, 10.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	test.c: 172: }
;	genEndFunction
	rts
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_mem'
;------------------------------------------------------------
;expected      Allocated with name '_verify_mem_PARM_2'
;paddr         Allocated to registers 
;------------------------------------------------------------
;	test.c: 175: void verify_mem(uint16_t paddr, uint8_t expected)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_mem
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_mem:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_addr
	stx	(_addr + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	test.c: 182: __endasm;
;	m6502_genInline
	    lda	_addr
	    sta	_actual
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 184: ASSERT_EQ();
;	genCmpEQorNE
	lda	_actual
	cmp	_verify_mem_PARM_2
	bne	00106$
	jmp	00102$
00106$:
;	Raw cost for generated ic 5 : (11, 13.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genCall
	jsr	_test_failed
;	Raw cost for generated ic 9 : (3, 6.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 10 : (3, 3.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.250000
;	genCall
	jsr	_test_passed
;	Raw cost for generated ic 12 : (3, 6.000000) count=0.250000
;	genLabel
00103$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	test.c: 185: }
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_zp'
;------------------------------------------------------------
;expected      Allocated to registers 
;paddr         Allocated to registers a 
;------------------------------------------------------------
;	test.c: 188: void verify_zp(uint8_t paddr, uint8_t expected) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_zp
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_zp:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	_verify_mem_PARM_2
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 190: verify_mem(paddr, expected);
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 4 : (2, 2.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 7 : (3, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	test.c: 191: }
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_load'
;------------------------------------------------------------
;	test.c: 195: void test_load(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_load
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_load:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 201: __endasm;
;	m6502_genInline
	    ldx	#0x10
	    ldy	#0x20
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	test.c: 204: TEST_LDA(#0x55, #0x00, #0x00, #0x55);  // 0x01
;	m6502_genInline
		lda #0x55 
	 ldx #0x00 
	 ldy #0x00 
	 sta _actual 
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x55 
	 jsr _verify 
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 205: TEST_LDX(#0x00, #0x56, #0x00, #0x56);  // 0x02
;	m6502_genInline
		lda #0x00 
	 ldx #0x56 
	 ldy #0x00 
	 stx _actual 
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x56 
	 jsr _verify 
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	test.c: 206: TEST_LDY(#0x00, #0x00, #0x57, #0x57);  // 0x03
;	m6502_genInline
		lda #0x00 
	 ldx #0x00 
	 ldy #0x57 
	 sty _actual 
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x57 
	 jsr _verify 
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	test.c: 210: TEST_LDA(_zp_var, #0x00, #0x00, #0x42); // 0x04
;	m6502_genInline
		lda _zp_var 
	 ldx #0x00 
	 ldy #0x00 
	 sta _actual 
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x42 
	 jsr _verify 
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	test.c: 211: TEST_LDX(#0x00, _zp_var, #0x00, #0x42); // 0x05
;	m6502_genInline
		lda #0x00 
	 ldx _zp_var 
	 ldy #0x00 
	 stx _actual 
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x42 
	 jsr _verify 
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 212: TEST_LDY(#0x00, #0x00, _zp_var, #0x42); // 0x06
;	m6502_genInline
		lda #0x00 
	 ldx #0x00 
	 ldy _zp_var 
	 sty _actual 
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x42 
	 jsr _verify 
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	test.c: 215: zp_var2 = 0x43;
;	genAssign
;	genCopy
	ldx	#0x43
	stx	_zp_var2
;	Raw cost for generated ic 15 : (5, 6.000000) count=1.000000
;	test.c: 216: TEST_LDA_X(_zp_var, #0x01, #0x00, #0x43); // 0x07
;	m6502_genInline
		ldx #0x01 
	 ldy #0x00 
	 lda _zp_var, x 
	 sta _actual 
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x43 
	 jsr _verify 
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	test.c: 218: zp_var2 = 0x53;
;	genAssign
;	genCopy
	ldx	#0x53
	stx	_zp_var2
;	Raw cost for generated ic 18 : (5, 6.000000) count=1.000000
;	test.c: 219: TEST_LDY_X(#0x00, #0x01, _zp_var, #0x53);   // 0x08
;	m6502_genInline
		ldx #0x01 
	 lda #0x00 
	 ldy _zp_var, x 
	 sty _actual 
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x53 
	 jsr _verify 
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	test.c: 222: TEST_LDA(_abs_var, #0x00, #0x00, #0x11);        // 0x09
;	m6502_genInline
		lda _abs_var 
	 ldx #0x00 
	 ldy #0x00 
	 sta _actual 
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x11 
	 jsr _verify 
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	test.c: 223: TEST_LDX(#0x00, _abs_var, #0x00, #0x11);        // 0x0A
;	m6502_genInline
		lda #0x00 
	 ldx _abs_var 
	 ldy #0x00 
	 stx _actual 
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x11 
	 jsr _verify 
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	test.c: 224: TEST_LDY(#0x00, #0x00, _abs_var, #0x11);        // 0x0B
;	m6502_genInline
		lda #0x00 
	 ldx #0x00 
	 ldy _abs_var 
	 sty _actual 
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x11 
	 jsr _verify 
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	test.c: 227: abs_x_var2 = 0x23;
;	genAssign
;	genCopy
	ldx	#0x23
	stx	_abs_x_var2
;	Raw cost for generated ic 27 : (5, 6.000000) count=1.000000
;	test.c: 228: TEST_LDA_X(_abs_x_var, #0x01, #0x01, #0x23);    // 0x0C
;	m6502_genInline
		ldx #0x01 
	 ldy #0x01 
	 lda _abs_x_var, x 
	 sta _actual 
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x23 
	 jsr _verify 
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	test.c: 229: TEST_LDY_X(#0x00, #0x01, _abs_x_var, #0x23);    // 0x0D
;	m6502_genInline
		ldx #0x01 
	 lda #0x00 
	 ldy _abs_x_var, x 
	 sty _actual 
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x23 
	 jsr _verify 
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	test.c: 232: abs_y_var = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var
;	Raw cost for generated ic 32 : (5, 6.000000) count=1.000000
;	test.c: 233: TEST_LDA_Y(_abs_y_var, #00, #0x33);             // 0x0E
;	m6502_genInline
		ldy #00 
	 lda _abs_y_var, y 
	 sta _actual 
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x33 
	 jsr _verify 
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	test.c: 234: TEST_LDX_Y(_abs_y_var, #00, #0x33);             // 0x0F
;	m6502_genInline
		ldy #00 
	 ldx _abs_y_var, y 
	 stx _actual 
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	m6502_genInline
		lda #0x33 
	 jsr _verify 
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	test.c: 239: LDA_IND_X(_ind_x_addr_lo, 0);
;	m6502_genInline
		ldx 0 ; Set X offset 
	 .db 0xA1, _ind_x_addr_lo ; Opcode for LDA (zp,X) 
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	test.c: 242: __endasm; 
;	m6502_genInline
	    sta	_actual
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	test.c: 243: verify(0x22); // 0x10
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x22
	jsr	_verify
;	Raw cost for generated ic 40 : (5, 8.000000) count=1.000000
;	test.c: 248: abs_y_var = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var
;	Raw cost for generated ic 41 : (5, 6.000000) count=1.000000
;	test.c: 249: LDA_IND_Y(_ind_y_addr_lo, 0);
;	m6502_genInline
		ldy 0 ; Set Y offset 
	 .db 0xB1, _ind_y_addr_lo ; Opcode for LDA (zp),Y 
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	test.c: 252: __endasm; 
;	m6502_genInline
	    sta	_actual
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	test.c: 253: verify(0x33); // 0x11
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	txa
	jsr	_verify
;	Raw cost for generated ic 45 : (4, 8.000000) count=1.000000
;	test.c: 260: __endasm; 
;	m6502_genInline
	    ldy	#0
	    ldx	_zp_var,y
	    stx	_actual
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	test.c: 261: verify(0x42); // 0x12    
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	jsr	_verify
;	Raw cost for generated ic 48 : (5, 8.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	test.c: 262: }
;	genEndFunction
	rts
;	Raw cost for generated ic 50 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_store'
;------------------------------------------------------------
;	test.c: 264: void test_store(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_store
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_store:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 270: __endasm;
;	m6502_genInline
	        lda	#0xAA
	        sta	_zp_store
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	test.c: 271: verify_mem(zp_store, 0xAA); // 0x13
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xaa
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 5 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 6 : (3, 6.000000) count=1.000000
;	test.c: 276: __endasm;
;	m6502_genInline
	        ldx	#0xBB
	        stx	_zp_store
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	test.c: 277: verify_mem(zp_store, 0xBB); // 0x14
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store
;	Raw cost for generated ic 8 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xbb
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 11 : (3, 6.000000) count=1.000000
;	test.c: 282: __endasm;
;	m6502_genInline
	        ldy	#0xCC
	        sty	_zp_store
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 283: verify_mem(zp_store, 0xCC); // 0x15
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store
;	Raw cost for generated ic 13 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xcc
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 15 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 16 : (3, 6.000000) count=1.000000
;	test.c: 290: __endasm;
;	m6502_genInline
	        lda	#0xDD
	        ldx	#0x01
	        sta	_zp_store,x
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	test.c: 291: verify_mem(zp_store2, 0xDD); // 0x16
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store2
;	Raw cost for generated ic 18 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xdd
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 20 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 21 : (3, 6.000000) count=1.000000
;	test.c: 297: __endasm;
;	m6502_genInline
	        ldy	#0xEE
	        ldx	#0x01
	        sty	_zp_store,x
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	test.c: 298: verify_mem(zp_store2, 0xEE); // 0x17
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store2
;	Raw cost for generated ic 23 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xee
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 25 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 26 : (3, 6.000000) count=1.000000
;	test.c: 305: __endasm;
;	m6502_genInline
	        ldx	#0xFF
	        ldy	#0x01
	        stx	_zp_store,y
;	Raw cost for generated ic 27 : (0, 0.000000) count=1.000000
;	test.c: 306: verify_mem(zp_store2, 0xFF);    // 0x18
;	genCast
;	genCopy
	ldx	#0x00
	lda	_zp_store2
;	Raw cost for generated ic 28 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0xff
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 30 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 31 : (3, 6.000000) count=1.000000
;	test.c: 312: __endasm;
;	m6502_genInline
	        lda	#0x11
	        sta	_abs_store
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	test.c: 313: verify_mem(abs_store, 0x11);    // 0x19
;	genCast
;	genCopy
	ldx	#0x00
	lda	_abs_store
;	Raw cost for generated ic 33 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x11
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 35 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 36 : (3, 6.000000) count=1.000000
;	test.c: 318: __endasm;
;	m6502_genInline
	        ldx	#0x22
	        stx	_abs_store
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	test.c: 319: verify_mem(abs_store, 0x22);    // 0x1A
;	genCast
;	genCopy
	ldx	#0x00
	lda	_abs_store
;	Raw cost for generated ic 38 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 40 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 41 : (3, 6.000000) count=1.000000
;	test.c: 324: __endasm;
;	m6502_genInline
	        ldy	#0x33
	        sty	_abs_store
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	test.c: 325: verify_mem(abs_store, 0x33);    // 0x1B
;	genCast
;	genCopy
	ldx	#0x00
	lda	_abs_store
;	Raw cost for generated ic 43 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x33
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 45 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 46 : (3, 6.000000) count=1.000000
;	test.c: 331: __endasm;
;	m6502_genInline
	        lda	#0x44
	        ldx	#0x01
	        sta	_abs_store,x
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	test.c: 332: verify_mem(abs_store2, 0x44);   // 0x1C
;	genCast
;	genCopy
	ldx	#0x00
	lda	_abs_store2
;	Raw cost for generated ic 48 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x44
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 50 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 51 : (3, 6.000000) count=1.000000
;	test.c: 340: __endasm;
;	m6502_genInline
	        lda	#0x66
	        ldy	#0x01
	        sta	_abs_store,y
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	test.c: 341: verify_mem(abs_store2, 0x66);   // 0x1D
;	genCast
;	genCopy
	ldx	#0x00
	lda	_abs_store2
;	Raw cost for generated ic 53 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x66
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 55 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 56 : (3, 6.000000) count=1.000000
;	test.c: 348: __endasm;
;	m6502_genInline
	        lda	#0x88
	        ldx	#0x01
	        sta	(_ind_store_lo),x
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	test.c: 349: verify_mem(ind_store_hi, 0x88);  // 0x1E
;	genCast
;	genCopy
	ldx	#0x00
	lda	_ind_store_hi
;	Raw cost for generated ic 58 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x88
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 60 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 61 : (3, 6.000000) count=1.000000
;	test.c: 356: __endasm;
;	m6502_genInline
	        lda	#0x99
	        ldy	#0x01
	        sta	(_ind_store_lo),y
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	test.c: 357: verify_mem(ind_store_hi, 0x99);  // 0x1F        
;	genCast
;	genCopy
	ldx	#0x00
	lda	_ind_store_hi
;	Raw cost for generated ic 63 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x99
	sty	_verify_mem_PARM_2
;	Raw cost for generated ic 65 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 66 : (3, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.000000
;	test.c: 358: }
;	genEndFunction
	rts
;	Raw cost for generated ic 68 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_arithmetic'
;------------------------------------------------------------
;	test.c: 360: void test_arithmetic(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_arithmetic
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_arithmetic:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 366: TEST_ADC(#0x01, #0x02, 0x03, 0, 0, 0, 0, 0);    // 0x01
;	m6502_genInline
		clc 
	 lda #0x01 
	 adc #0x02 
	 sta _actual 
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	test.c: 367: TEST_ADC(#0x7F, #0x01, 0x80, 1, 0, 0, 0, 1);    // 0x02
;	m6502_genInline
		clc 
	 lda #0x7F 
	 adc #0x01 
	 sta _actual 
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x80
	ldx	#0xc0
	jsr	_verify_flags
;	Raw cost for generated ic 11 : (7, 10.000000) count=1.000000
;	test.c: 370: TEST_ADC(#0x10, _zp_var, 0x52, 0, 0, 0, 0, 0);  // 0x03
;	m6502_genInline
		clc 
	 lda #0x10 
	 adc _zp_var 
	 sta _actual 
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x52
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 16 : (7, 10.000000) count=1.000000
;	test.c: 373: zp_var2 = 0x42;
;	genAssign
;	genCopy
	ldx	#0x42
	stx	_zp_var2
;	Raw cost for generated ic 17 : (5, 6.000000) count=1.000000
;	test.c: 374: TEST_ADCX(#0x10, _zp_var, #0x01, 0x52, 0, 0, 0, 0, 0);  // 0x04
;	m6502_genInline
		clc 
	 lda #0x10 
	 ldx #0x01 
	 adc _zp_var,x 
	 sta _actual 
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x52
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 22 : (7, 10.000000) count=1.000000
;	test.c: 377: TEST_ADC(#0x10, _abs_var, 0x21, 0, 0, 0, 0, 0);         // 0x05
;	m6502_genInline
		clc 
	 lda #0x10 
	 adc _abs_var 
	 sta _actual 
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x21
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 27 : (7, 10.000000) count=1.000000
;	test.c: 380: abs_x_var2 = 0x22;
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_x_var2
;	Raw cost for generated ic 28 : (5, 6.000000) count=1.000000
;	test.c: 381: TEST_ADCX(#0x10,  _abs_x_var, #0x01, 0x32, 0, 0, 0, 0, 0);  // 0x06
;	m6502_genInline
		clc 
	 lda #0x10 
	 ldx #0x01 
	 adc _abs_x_var,x 
	 sta _actual 
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x32
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 33 : (7, 10.000000) count=1.000000
;	test.c: 384: abs_y_var2 = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var2
;	Raw cost for generated ic 34 : (5, 6.000000) count=1.000000
;	test.c: 385: TEST_ADCY(#0x10, _abs_y_var, #0x01, 0x43, 0, 0, 0, 0, 0);   // 0x07
;	m6502_genInline
		clc 
	 lda #0x10 
	 ldy #0x01 
	 adc _abs_y_var,y 
	 sta _actual 
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 38 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x43
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 39 : (7, 10.000000) count=1.000000
;	test.c: 391: __endasm;
;	m6502_genInline
	        clc
	        lda	#0x10
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	test.c: 392: ADC_IND_X(_ind_x_addr_lo, 0);
;	m6502_genInline
		ldx 0 ; Set X offset 
	 .db 0x61, _ind_x_addr_lo ; Opcode for ADC (zp,X) 
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	test.c: 395: __endasm;
;	m6502_genInline
	        sta	_actual
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	test.c: 396: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	test.c: 397: verify_flags(0x32, FLAGS(0, 0, 0, 0, 0));                   // 0x08
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x32
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 46 : (7, 10.000000) count=1.000000
;	test.c: 403: __endasm;
;	m6502_genInline
	        clc
	        lda	#0x10
;	Raw cost for generated ic 47 : (0, 0.000000) count=1.000000
;	test.c: 404: ADC_IND_Y(_ind_y_addr_lo, 0)
;	m6502_genInline
		ldy 0 ; Set Y offset 
	 .db 0x71, _ind_y_addr_lo ; Opcode for ADC (zp),Y 
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	test.c: 407: __endasm;
;	m6502_genInline
	        sta	_actual
;	Raw cost for generated ic 49 : (0, 0.000000) count=1.000000
;	test.c: 408: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	test.c: 409: verify_flags(0x43, FLAGS(0, 0, 0, 0, 0));                   // 0x09
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x43
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 53 : (7, 10.000000) count=1.000000
;	test.c: 417: __endasm;
;	m6502_genInline
	        sec
	        lda	#0xFF
	        adc	#0x01
	        sta	_actual
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	test.c: 418: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.000000
;	test.c: 419: verify_flags(0x01, FLAGS(0, 0, 0, 1, 0));                   // 0x0A
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	tax
	jsr	_verify_flags
;	Raw cost for generated ic 58 : (6, 10.000000) count=1.000000
;	test.c: 428: __endasm;
;	m6502_genInline
	        sed
	        clc
	        lda	#0x19
	        adc	#0x01
	        sta	_actual
;	Raw cost for generated ic 59 : (0, 0.000000) count=1.000000
;	test.c: 429: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	test.c: 432: __endasm;
;	m6502_genInline
	        cld
;	Raw cost for generated ic 61 : (0, 0.000000) count=1.000000
;	test.c: 433: verify_flags(0x20, FLAGS(0, 0, 1, 0, 0));                   // 0x0B
;	Raw cost for generated ic 62 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 63 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x20
	ldx	#0x08
	jsr	_verify_flags
;	Raw cost for generated ic 64 : (7, 10.000000) count=1.000000
;	test.c: 439: TEST_SBC(#0x03, #0x01, 0x02, 0, 0, 0, 1, 0);                // 0x0C
;	m6502_genInline
		sec 
	 lda #0x03 
	 sbc #0x01 
	 sta _actual 
;	Raw cost for generated ic 65 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 66 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 68 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
	ldx	#0x01
	jsr	_verify_flags
;	Raw cost for generated ic 69 : (7, 10.000000) count=1.000000
;	test.c: 440: TEST_SBC(#0x80, #0x01, 0x7F, 0, 0, 0, 1, 1);                // 0x0D
;	m6502_genInline
		sec 
	 lda #0x80 
	 sbc #0x01 
	 sta _actual 
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 72 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 73 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x7f
	ldx	#0x41
	jsr	_verify_flags
;	Raw cost for generated ic 74 : (7, 10.000000) count=1.000000
;	test.c: 441: TEST_SBC(#0x00, #0x01, 0xFF, 1, 0, 0, 0, 0);                // 0x0E
;	m6502_genInline
		sec 
	 lda #0x00 
	 sbc #0x01 
	 sta _actual 
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 76 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 77 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 78 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xff
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 79 : (7, 10.000000) count=1.000000
;	test.c: 444: TEST_SBC(#0x10, _zp_var, 0xCE, 1, 0, 0, 0, 0);              // 0x0F
;	m6502_genInline
		sec 
	 lda #0x10 
	 sbc _zp_var 
	 sta _actual 
;	Raw cost for generated ic 80 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xce
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 84 : (7, 10.000000) count=1.000000
;	test.c: 447: zp_var2 = 0x12;
;	genAssign
;	genCopy
	ldx	#0x12
	stx	_zp_var2
;	Raw cost for generated ic 85 : (5, 6.000000) count=1.000000
;	test.c: 448: TEST_SBCX(#0x10, _zp_var, #0x01, 0xFE, 1, 0, 0, 0, 0);  // 0x10
;	m6502_genInline
		sec 
	 lda #0x10 
	 ldx #0x01 
	 sbc _zp_var,x 
	 sta _actual 
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 89 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xfe
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 90 : (7, 10.000000) count=1.000000
;	test.c: 451: TEST_SBC(#0x10, _abs_var, 0xFF, 1, 0, 0, 0, 0);         // 0x11
;	m6502_genInline
		sec 
	 lda #0x10 
	 sbc _abs_var 
	 sta _actual 
;	Raw cost for generated ic 91 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 92 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 94 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xff
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 95 : (7, 10.000000) count=1.000000
;	test.c: 454: abs_x_var2 = 0x22;
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_x_var2
;	Raw cost for generated ic 96 : (5, 6.000000) count=1.000000
;	test.c: 455: TEST_SBCX(#0x10, _abs_x_var, #0x01, 0xEE, 1, 0, 0, 0, 0);  // 0x12
;	m6502_genInline
		sec 
	 lda #0x10 
	 ldx #0x01 
	 sbc _abs_x_var,x 
	 sta _actual 
;	Raw cost for generated ic 97 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 98 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 100 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xee
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 101 : (7, 10.000000) count=1.000000
;	test.c: 458: abs_y_var2 = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var2
;	Raw cost for generated ic 102 : (5, 6.000000) count=1.000000
;	test.c: 459: TEST_SBCY(#0x10, _abs_y_var, #0x01, 0xDD, 1, 0, 0, 0, 0);   // 0x13
;	m6502_genInline
		sec 
	 lda #0x10 
	 ldy #0x01 
	 sbc _abs_y_var,y 
	 sta _actual 
;	Raw cost for generated ic 103 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 104 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 105 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0xdd
	ldx	#0x80
	jsr	_verify_flags
;	Raw cost for generated ic 107 : (7, 10.000000) count=1.000000
;	test.c: 465: __endasm;
;	m6502_genInline
	        sec
	        lda	#0x23
;	Raw cost for generated ic 108 : (0, 0.000000) count=1.000000
;	test.c: 466: SBC_IND_X(_ind_x_addr_lo, 0);
;	m6502_genInline
		ldx 0 ; Set X offset 
	 .db 0xE1, _ind_x_addr_lo ; Opcode for SBC (zp,X) 
;	Raw cost for generated ic 109 : (0, 0.000000) count=1.000000
;	test.c: 469: __endasm;
;	m6502_genInline
	        sta	_actual
;	Raw cost for generated ic 110 : (0, 0.000000) count=1.000000
;	test.c: 470: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 111 : (0, 0.000000) count=1.000000
;	test.c: 471: verify_flags(0x01, FLAGS(0, 0, 0, 1, 0));                // 0x14
;	Raw cost for generated ic 112 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 113 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	tax
	jsr	_verify_flags
;	Raw cost for generated ic 114 : (6, 10.000000) count=1.000000
;	test.c: 473: abs_y_var = 0x22;    
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_y_var
;	Raw cost for generated ic 115 : (5, 6.000000) count=1.000000
;	test.c: 478: __endasm;
;	m6502_genInline
	        sec
	        lda	#0x23
;	Raw cost for generated ic 116 : (0, 0.000000) count=1.000000
;	test.c: 479: SBC_IND_Y(_ind_y_addr_lo, 0);
;	m6502_genInline
		ldy 0 ; Set Y offset 
	 .db 0xF1, _ind_y_addr_lo ; Opcode for SBC (zp),Y 
;	Raw cost for generated ic 117 : (0, 0.000000) count=1.000000
;	test.c: 482: __endasm;
;	m6502_genInline
	        sta	_actual
;	Raw cost for generated ic 118 : (0, 0.000000) count=1.000000
;	test.c: 483: SAVE_FLAGS();
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 119 : (0, 0.000000) count=1.000000
;	test.c: 484: verify_flags(0x01, FLAGS(0, 0, 0, 1, 0));                // 0x15
;	Raw cost for generated ic 120 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 121 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x01
	tax
	jsr	_verify_flags
;	Raw cost for generated ic 122 : (6, 10.000000) count=1.000000
;	test.c: 489: TEST_INC(_zp_var, 0x43, 0, 0, 0, 0, 0);              // 0x16
;	m6502_genInline
		clc 
	 inc _zp_var 
	 lda _zp_var 
	 sta _actual 
;	Raw cost for generated ic 123 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 124 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 125 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 126 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x43
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 127 : (7, 10.000000) count=1.000000
;	test.c: 490: TEST_DEC(_zp_var, 0x42, 0, 0, 0, 0, 0);              // 0x17
;	m6502_genInline
		clc 
	 dec _zp_var 
	 lda _zp_var 
	 sta _actual 
;	Raw cost for generated ic 128 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 129 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 130 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 131 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 132 : (7, 10.000000) count=1.000000
;	test.c: 493: zp_var = 0x20;
;	genAssign
;	genCopy
	ldx	#0x20
	stx	_zp_var
;	Raw cost for generated ic 133 : (5, 6.000000) count=1.000000
;	test.c: 494: zp_var2 = 0x42;
;	genAssign
;	genCopy
	ldx	#0x42
	stx	_zp_var2
;	Raw cost for generated ic 134 : (5, 6.000000) count=1.000000
;	test.c: 496: TEST_INCX(_zp_var, #0x01, 0x43, 0, 0, 0, 0, 0);      // 0x18
;	m6502_genInline
		ldx #0x01 
	 inc _zp_var,x 
	 lda _zp_var,x 
	 sta _actual 
;	Raw cost for generated ic 135 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 136 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 137 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 138 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x43
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 139 : (7, 10.000000) count=1.000000
;	test.c: 497: zp_var2 = 0x43;
;	genAssign
;	genCopy
	ldx	#0x43
	stx	_zp_var2
;	Raw cost for generated ic 140 : (5, 6.000000) count=1.000000
;	test.c: 498: TEST_DECX(_zp_var, #0x01, 0x42, 0, 0, 0, 0, 0);      // 0x19
;	m6502_genInline
		ldx #0x01 
	 dec _zp_var,x 
	 lda _zp_var,x 
	 sta _actual 
;	Raw cost for generated ic 141 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 142 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 143 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 144 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 145 : (7, 10.000000) count=1.000000
;	test.c: 500: TEST_INC(_abs_var, 0x12, 0, 0, 0, 0, 0);            // 0x1A
;	m6502_genInline
		clc 
	 inc _abs_var 
	 lda _abs_var 
	 sta _actual 
;	Raw cost for generated ic 146 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 147 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 148 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 149 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x12
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 150 : (7, 10.000000) count=1.000000
;	test.c: 501: TEST_DEC(_abs_var, 0x11, 0, 0, 0, 0, 0);            // 0x1B
;	m6502_genInline
		clc 
	 dec _abs_var 
	 lda _abs_var 
	 sta _actual 
;	Raw cost for generated ic 151 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 152 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 153 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 154 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x11
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 155 : (7, 10.000000) count=1.000000
;	test.c: 503: abs_x_var = 0x22;
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_x_var
;	Raw cost for generated ic 156 : (5, 6.000000) count=1.000000
;	test.c: 504: TEST_INCX(_abs_x_var, #0x01, 0x23, 0, 0, 0, 0, 0);  // 0x1C
;	m6502_genInline
		ldx #0x01 
	 inc _abs_x_var,x 
	 lda _abs_x_var,x 
	 sta _actual 
;	Raw cost for generated ic 157 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 158 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 159 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 160 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x23
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 161 : (7, 10.000000) count=1.000000
;	test.c: 506: TEST_DECX(_abs_x_var, #0x01, 0x22, 0, 0, 0, 0, 0);  // 0x1D
;	m6502_genInline
		ldx #0x01 
	 dec _abs_x_var,x 
	 lda _abs_x_var,x 
	 sta _actual 
;	Raw cost for generated ic 162 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 163 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 164 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 165 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x22
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 166 : (7, 10.000000) count=1.000000
;	test.c: 510: TEST_INX(#0x02, 0x03, 0, 0, 0, 0, 0);               // 0x1E
;	m6502_genInline
		clc 
	 ldx #0x02 
	 inx 
	 stx _actual 
;	Raw cost for generated ic 167 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 168 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 169 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 170 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 171 : (7, 10.000000) count=1.000000
;	test.c: 511: TEST_DEX(#0x03, 0x02, 0, 0, 0, 0, 0);               // 0x1F
;	m6502_genInline
		clc 
	 ldx #0x03 
	 dex 
	 stx _actual 
;	Raw cost for generated ic 172 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 173 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 174 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 175 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 176 : (7, 10.000000) count=1.000000
;	test.c: 514: TEST_INY(#0x02, 0x03, 0, 0, 0, 0, 0);               // 0x20
;	m6502_genInline
		clc 
	 ldy #0x02 
	 iny 
	 sty _actual 
;	Raw cost for generated ic 177 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 178 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 179 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 180 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x03
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 181 : (7, 10.000000) count=1.000000
;	test.c: 515: TEST_DEY(#0x03, 0x02, 0, 0, 0, 0, 0);               // 0x21
;	m6502_genInline
		clc 
	 ldy #0x03 
	 dey 
	 sty _actual 
;	Raw cost for generated ic 182 : (0, 0.000000) count=1.000000
;	m6502_genInline
		php 
	 pla 
	 sta _flags 
;	Raw cost for generated ic 183 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 184 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 185 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x02
	ldx	#0x00
	jsr	_verify_flags
;	Raw cost for generated ic 186 : (7, 10.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=1.000000
;	test.c: 520: }
;	genEndFunction
	rts
;	Raw cost for generated ic 188 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_logical'
;------------------------------------------------------------
;	test.c: 522: void test_logical(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_logical
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_logical:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 524: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_shift_rotate'
;------------------------------------------------------------
;	test.c: 526: void test_shift_rotate(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_shift_rotate
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_shift_rotate:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 528: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_branch'
;------------------------------------------------------------
;	test.c: 530: void test_branch(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_branch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_branch:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 532: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_flags'
;------------------------------------------------------------
;	test.c: 534: void test_flags(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_flags
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_flags:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 536: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_stack'
;------------------------------------------------------------
;	test.c: 538: void test_stack(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_stack
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_stack:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 540: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_jump_subroutine'
;------------------------------------------------------------
;	test.c: 542: void test_jump_subroutine(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_jump_subroutine
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_jump_subroutine:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 544: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_misc'
;------------------------------------------------------------
;	test.c: 546: void test_misc(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_misc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_misc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 548: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area CABS    (ABS)
