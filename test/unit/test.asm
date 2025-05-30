;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.2 #15429 (Linux)
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
	.globl _verify_zp_PARM_3
	.globl _verify_mem_PARM_3
	.globl _verify_mem_PARM_2
	.globl _test_status
	.globl _current_test
	.globl _test_result
	.globl _abs_y_var
	.globl _abs_x_var
	.globl _abs_var
	.globl _addr
	.globl _actual
	.globl _ind_y_addr_hi
	.globl _ind_y_addr_lo
	.globl _ind_x_addr_hi
	.globl _ind_x_addr_lo
	.globl _zp_var2
	.globl _zp_var
	.globl _test_failed
	.globl _test_passed
	.globl _verify_a
	.globl _verify_x
	.globl _verify_y
	.globl _verify_mem
	.globl _verify_zp
	.globl _test_load_store
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
_ind_x_addr_lo	=	0x0030
_ind_x_addr_hi	=	0x0031
_ind_y_addr_lo	=	0x0040
_ind_y_addr_hi	=	0x0041
_actual	=	0x0050
_addr	=	0x0051
_abs_var	=	0x1000
_abs_x_var	=	0x1100
_abs_y_var	=	0x1200
_test_result	=	0x2000
_current_test	=	0x2010
_test_status	=	0x2011
_verify_a_test_num_10000_23:
	.ds 1
_verify_a_expected_10000_23:
	.ds 1
_verify_x_test_num_10000_27:
	.ds 1
_verify_x_expected_10000_27:
	.ds 1
_verify_y_test_num_10000_31:
	.ds 1
_verify_y_expected_10000_31:
	.ds 1
_verify_mem_PARM_2:
	.ds 1
_verify_mem_PARM_3:
	.ds 1
_verify_zp_PARM_3:
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
;	test.c: 63: void main(void) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function main
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_main:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 65: test_status = 0;
;	genAssign
;	genCopy
	ldy	#0x00
	sty	_test_status
;	Raw cost for generated ic 2 : (5, 6.000000) count=1.000000
;	test.c: 66: current_test = 0;
;	genAssign
;	genCopy
	sty	_current_test
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 69: ind_x_addr_lo = (TEST_ABS_X & 0xFF);
;	genAssign
;	genCopy
	sty	_ind_x_addr_lo
;	Raw cost for generated ic 4 : (3, 4.000000) count=1.000000
;	test.c: 70: ind_x_addr_hi = (TEST_ABS_X >> 8);
;	genAssign
;	genCopy
	ldx	#0x11
	stx	_ind_x_addr_hi
;	Raw cost for generated ic 5 : (5, 6.000000) count=1.000000
;	test.c: 72: ind_y_addr_lo = (TEST_ABS_Y & 0xFF);
;	genAssign
;	genCopy
	sty	_ind_y_addr_lo
;	Raw cost for generated ic 6 : (3, 4.000000) count=1.000000
;	test.c: 73: ind_y_addr_hi = (TEST_ABS_Y >> 8);
;	genAssign
;	genCopy
	inx
	stx	_ind_y_addr_hi
;	Raw cost for generated ic 7 : (4, 6.000000) count=1.000000
;	test.c: 76: zp_var = 0x42;
;	genAssign
;	genCopy
	ldx	#0x42
	stx	_zp_var
;	Raw cost for generated ic 8 : (5, 6.000000) count=1.000000
;	test.c: 77: zp_var2 = 0x84;
;	genAssign
;	genCopy
	ldx	#0x84
	stx	_zp_var2
;	Raw cost for generated ic 9 : (5, 6.000000) count=1.000000
;	test.c: 78: abs_var = 0x11;
;	genAssign
;	genCopy
	ldx	#0x11
	stx	_abs_var
;	Raw cost for generated ic 10 : (5, 6.000000) count=1.000000
;	test.c: 79: abs_x_var = 0x22;
;	genAssign
;	genCopy
	ldx	#0x22
	stx	_abs_x_var
;	Raw cost for generated ic 11 : (5, 6.000000) count=1.000000
;	test.c: 80: abs_y_var = 0x33;
;	genAssign
;	genCopy
	ldx	#0x33
	stx	_abs_y_var
;	Raw cost for generated ic 12 : (5, 6.000000) count=1.000000
;	test.c: 83: test_load_store();
;	genCall
	jsr	_test_load_store
;	Raw cost for generated ic 13 : (3, 6.000000) count=1.000000
;	test.c: 84: test_arithmetic();
;	genCall
	jsr	_test_arithmetic
;	Raw cost for generated ic 14 : (3, 6.000000) count=1.000000
;	test.c: 85: test_logical();
;	genCall
	jsr	_test_logical
;	Raw cost for generated ic 15 : (3, 6.000000) count=1.000000
;	test.c: 86: test_shift_rotate();
;	genCall
	jsr	_test_shift_rotate
;	Raw cost for generated ic 16 : (3, 6.000000) count=1.000000
;	test.c: 87: test_branch();
;	genCall
	jsr	_test_branch
;	Raw cost for generated ic 17 : (3, 6.000000) count=1.000000
;	test.c: 88: test_flags();
;	genCall
	jsr	_test_flags
;	Raw cost for generated ic 18 : (3, 6.000000) count=1.000000
;	test.c: 89: test_stack();
;	genCall
	jsr	_test_stack
;	Raw cost for generated ic 19 : (3, 6.000000) count=1.000000
;	test.c: 90: test_jump_subroutine();
;	genCall
	jsr	_test_jump_subroutine
;	Raw cost for generated ic 20 : (3, 6.000000) count=1.000000
;	test.c: 91: test_misc();
;	genCall
	jsr	_test_misc
;	Raw cost for generated ic 21 : (3, 6.000000) count=1.000000
;	test.c: 94: test_status = 1;
;	genAssign
;	genCopy
	ldx	#0x01
	stx	_test_status
;	Raw cost for generated ic 22 : (5, 6.000000) count=1.000000
;	test.c: 97: while(1);
;	genLabel
00101$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genLabel
00108$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	genLabel
00111$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=72.000000
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 26 : (3, 3.000000) count=72.000000
;	genLabel
00103$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.000000
;	genLabel
00104$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.000000
;	test.c: 98: }
;	genEndFunction
	rts
;	Raw cost for generated ic 29 : (1, 6.000000) count=0.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_failed'
;------------------------------------------------------------
;test_num      Allocated to registers a 
;------------------------------------------------------------
;	test.c: 101: void test_failed(uint8_t test_num) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_failed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_failed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	test.c: 103: test_result = 0xCA;
;	genAssign
;	genCopy
	ldx	#0xca
	stx	_test_result
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	test.c: 104: test_status = 0xFF;
;	genAssign
;	genCopy
	ldx	#0xff
	stx	_test_status
;	Raw cost for generated ic 4 : (5, 6.000000) count=1.000000
;	test.c: 105: current_test = test_num;
;	genAssign
;	genCopy
	sta	_current_test
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	test.c: 106: while(1); // Halt on failure
;	genLabel
00101$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genLabel
00108$:
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	genLabel
00109$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	genLabel
00111$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=72.000000
;	genGoto
	jmp	00102$
;	Raw cost for generated ic 9 : (3, 3.000000) count=72.000000
;	genLabel
00103$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.000000
;	genLabel
00104$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.000000
;	test.c: 107: }
;	genEndFunction
	rts
;	Raw cost for generated ic 12 : (1, 6.000000) count=0.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_passed'
;------------------------------------------------------------
;test_num      Allocated to registers a 
;------------------------------------------------------------
;	test.c: 110: void test_passed(uint8_t test_num) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_passed
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_passed:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	test.c: 112: test_result = 0xBE;
;	genAssign
;	genCopy
	ldx	#0xbe
	stx	_test_result
;	Raw cost for generated ic 3 : (5, 6.000000) count=1.000000
;	test.c: 113: current_test = test_num;
;	genAssign
;	genCopy
	sta	_current_test
;	Raw cost for generated ic 4 : (3, 4.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	test.c: 114: }
;	genEndFunction
	rts
;	Raw cost for generated ic 6 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_a'
;------------------------------------------------------------
;test_num      Allocated with name '_verify_a_test_num_10000_23'
;expected      Allocated with name '_verify_a_expected_10000_23'
;------------------------------------------------------------
;	test.c: 117: void verify_a(uint8_t expected, uint8_t test_num) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_a
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_a:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_verify_a_expected_10000_23
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	stx	_verify_a_test_num_10000_23
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 121: __endasm;
;	m6502_genInline
	    sta	_actual
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 123: if (actual != expected) {
;	genCmpEQorNE
	lda	_actual
	cmp	_verify_a_expected_10000_23
	bne	00105$
	jmp	00103$
00105$:
;	Raw cost for generated ic 5 : (11, 13.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	test.c: 124: test_failed(test_num);
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	_verify_a_test_num_10000_23
	jsr	_test_failed
;	Raw cost for generated ic 10 : (6, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 126: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_x'
;------------------------------------------------------------
;test_num      Allocated with name '_verify_x_test_num_10000_27'
;expected      Allocated with name '_verify_x_expected_10000_27'
;------------------------------------------------------------
;	test.c: 129: void verify_x(uint8_t expected, uint8_t test_num) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_x
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_x:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_verify_x_expected_10000_27
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	stx	_verify_x_test_num_10000_27
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 132: __endasm;
;	m6502_genInline
	    stx	_actual
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 134: if (actual != expected) {
;	genCmpEQorNE
	lda	_actual
	cmp	_verify_x_expected_10000_27
	bne	00105$
	jmp	00103$
00105$:
;	Raw cost for generated ic 5 : (11, 13.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	test.c: 135: test_failed(test_num);
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	_verify_x_test_num_10000_27
	jsr	_test_failed
;	Raw cost for generated ic 10 : (6, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 137: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_y'
;------------------------------------------------------------
;test_num      Allocated with name '_verify_y_test_num_10000_31'
;expected      Allocated with name '_verify_y_expected_10000_31'
;------------------------------------------------------------
;	test.c: 140: void verify_y(uint8_t expected, uint8_t test_num) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function verify_y
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_verify_y:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_verify_y_expected_10000_31
;	Raw cost for generated ic 2 : (3, 4.000000) count=1.000000
;	genReceive
	stx	_verify_y_test_num_10000_31
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	test.c: 143: __endasm;
;	m6502_genInline
	    sty	_actual
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 145: if (actual != expected) {
;	genCmpEQorNE
	lda	_actual
	cmp	_verify_y_expected_10000_31
	bne	00105$
	jmp	00103$
00105$:
;	Raw cost for generated ic 5 : (11, 13.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	test.c: 146: test_failed(test_num);
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	_verify_y_test_num_10000_31
	jsr	_test_failed
;	Raw cost for generated ic 10 : (6, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 148: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_mem'
;------------------------------------------------------------
;expected      Allocated with name '_verify_mem_PARM_2'
;test_num      Allocated with name '_verify_mem_PARM_3'
;paddr         Allocated to registers 
;------------------------------------------------------------
;	test.c: 151: void verify_mem(uint16_t paddr, uint8_t expected, uint8_t test_num) {
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
;	test.c: 158: __endasm;
;	m6502_genInline
	    lda	_addr
	    sta	_actual
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 160: if (actual != expected) {
;	genCmpEQorNE
	lda	_actual
	cmp	_verify_mem_PARM_2
	bne	00105$
	jmp	00103$
00105$:
;	Raw cost for generated ic 5 : (11, 13.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	test.c: 161: test_failed(test_num);
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	_verify_mem_PARM_3
	jsr	_test_failed
;	Raw cost for generated ic 10 : (6, 10.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 163: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'verify_zp'
;------------------------------------------------------------
;test_num      Allocated with name '_verify_zp_PARM_3'
;expected      Allocated to registers 
;paddr         Allocated to registers a 
;------------------------------------------------------------
;	test.c: 166: void verify_zp(uint8_t paddr, uint8_t expected, uint8_t test_num) {
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
;	test.c: 167: verify_mem(paddr, expected, test_num);
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 4 : (2, 2.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	_verify_zp_PARM_3
	sty	_verify_mem_PARM_3
;	Raw cost for generated ic 7 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_verify_mem
;	Raw cost for generated ic 8 : (3, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	test.c: 168: }
;	genEndFunction
	rts
;	Raw cost for generated ic 10 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_load_store'
;------------------------------------------------------------
;test_num      Allocated to registers 
;------------------------------------------------------------
;	test.c: 170: void test_load_store(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_load_store
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_load_store:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 178: __endasm;
;	m6502_genInline
	    ldx	#0x10
	    ldy	#0x20
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	test.c: 181: __asm lda #0x55 __endasm;
;	m6502_genInline
	 lda	#0x55 
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	test.c: 182: verify_a(0x55, test_num++);
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x55
	ldx	#0x00
	jsr	_verify_a
;	Raw cost for generated ic 10 : (7, 10.000000) count=1.000000
;	test.c: 185: __asm lda _zp_var __endasm;
;	m6502_genInline
	 lda	_zp_var 
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	test.c: 186: verify_a(0x42, test_num++);
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	ldx	#0x01
	jsr	_verify_a
;	Raw cost for generated ic 17 : (7, 10.000000) count=1.000000
;	test.c: 189: __asm lda _zp_var,x __endasm;
;	m6502_genInline
	 lda	_zp_var,x 
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	test.c: 190: verify_a(0x42, test_num++);
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	ldx	#0x02
	jsr	_verify_a
;	Raw cost for generated ic 24 : (7, 10.000000) count=1.000000
;	test.c: 193: __asm lda _abs_var __endasm;
;	m6502_genInline
	 lda	_abs_var 
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	test.c: 194: verify_a(0x11, test_num++);
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x11
	ldx	#0x03
	jsr	_verify_a
;	Raw cost for generated ic 31 : (7, 10.000000) count=1.000000
;	test.c: 197: __asm lda _abs_x_var,x __endasm;
;	m6502_genInline
	 lda	_abs_x_var,x 
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	test.c: 198: verify_a(0x22, test_num++);
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x22
	ldx	#0x04
	jsr	_verify_a
;	Raw cost for generated ic 38 : (7, 10.000000) count=1.000000
;	test.c: 201: __asm lda _abs_y_var,y __endasm;
;	m6502_genInline
	 lda	_abs_y_var,y 
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	test.c: 202: verify_a(0x33, test_num++);
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x33
	ldx	#0x05
	jsr	_verify_a
;	Raw cost for generated ic 45 : (7, 10.000000) count=1.000000
;	test.c: 205: __asm lda (_ind_x_addr_lo),x __endasm;
;	m6502_genInline
	 lda	(_ind_x_addr_lo),x 
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	test.c: 206: verify_a(0x22, test_num++);
;	Raw cost for generated ic 50 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x22
	ldx	#0x06
	jsr	_verify_a
;	Raw cost for generated ic 52 : (7, 10.000000) count=1.000000
;	test.c: 209: __asm lda (_ind_y_addr_lo),y __endasm;
;	m6502_genInline
	 lda	(_ind_y_addr_lo),y 
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	test.c: 210: verify_a(0x33, test_num++);
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x33
	ldx	#0x07
	jsr	_verify_a
;	Raw cost for generated ic 59 : (7, 10.000000) count=1.000000
;	test.c: 213: __asm ldx _zp_var,y __endasm;
;	m6502_genInline
	 ldx	_zp_var,y 
;	Raw cost for generated ic 60 : (0, 0.000000) count=1.000000
;	test.c: 214: verify_x(0x42, test_num++);
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 65 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x42
	ldx	#0x08
	jsr	_verify_x
;	Raw cost for generated ic 66 : (7, 10.000000) count=1.000000
;	test.c: 226: __endasm;
;	m6502_genInline
	    lda	#0xAA
	    sta	_zp_var
	    sta	_zp_var,x
	    sta	_abs_var
	    sta	_abs_var,x
	    sta	_abs_var,y
	    sta	(_ind_x_addr_lo),x
	    sta	(_ind_y_addr_lo),y
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.000000
;	test.c: 227: verify_zp(TEST_ZP, 0xAA, test_num++);
;	genAssign
;	genAssignLit
	ldx	#0x09
	stx	_verify_zp_PARM_3
;	Raw cost for generated ic 73 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 71 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 72 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x20
	ldx	#0xaa
	jsr	_verify_zp
;	Raw cost for generated ic 74 : (7, 10.000000) count=1.000000
;	test.c: 228: verify_mem(TEST_ABS, 0xAA, test_num++);
;	genAssign
;	genAssignLit
	ldx	#0xaa
	stx	_verify_mem_PARM_2
;	Raw cost for generated ic 79 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_verify_mem_PARM_3
;	Raw cost for generated ic 80 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 78 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x10
	lda	#0x00
	jsr	_verify_mem
;	Raw cost for generated ic 81 : (7, 10.000000) count=1.000000
;	test.c: 236: __endasm;
;	m6502_genInline
	    ldx	#0xBB
	    stx	_zp_var
	    stx	_zp_var,y
	    stx	_abs_var
;	Raw cost for generated ic 82 : (0, 0.000000) count=1.000000
;	test.c: 244: __endasm;
;	m6502_genInline
	    ldy	#0xCC
	    sty	_zp_var
	    sty	_zp_var,x
	    sty	_abs_var
;	Raw cost for generated ic 83 : (0, 0.000000) count=1.000000
;	test.c: 247: verify_zp(TEST_ZP, 0xCC, test_num++);
;	genAssign
;	genAssignLit
	ldx	#0x0b
	stx	_verify_zp_PARM_3
;	Raw cost for generated ic 89 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 87 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 88 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x20
	ldx	#0xcc
	jsr	_verify_zp
;	Raw cost for generated ic 90 : (7, 10.000000) count=1.000000
;	test.c: 248: verify_mem(TEST_ABS, 0xBB, test_num++);
;	genAssign
;	genAssignLit
	ldx	#0xbb
	stx	_verify_mem_PARM_2
;	Raw cost for generated ic 95 : (5, 6.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x0c
	stx	_verify_mem_PARM_3
;	Raw cost for generated ic 96 : (5, 6.000000) count=1.000000
;	Raw cost for generated ic 94 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x10
	lda	#0x00
	jsr	_verify_mem
;	Raw cost for generated ic 97 : (7, 10.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=1.000000
;	test.c: 249: }
;	genEndFunction
	rts
;	Raw cost for generated ic 99 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_arithmetic'
;------------------------------------------------------------
;test_num      Allocated to registers 
;------------------------------------------------------------
;	test.c: 251: void test_arithmetic(void) 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_arithmetic
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_arithmetic:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 261: __endasm;
;	m6502_genInline
	    lda	#0x10
	    clc
	    adc	#0x20
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	test.c: 263: verify_a(0x30, test_num);
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x30
	ldx	#0x10
	jsr	_verify_a
;	Raw cost for generated ic 6 : (7, 10.000000) count=1.000000
;	test.c: 264: test_passed(test_num++);
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x10
	jsr	_test_passed
;	Raw cost for generated ic 11 : (5, 8.000000) count=1.000000
;	test.c: 271: __endasm;
;	m6502_genInline
	    lda	#0x10
	    sec
	    adc	#0x20
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	test.c: 272: verify_a(0x31, test_num);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x31
	ldx	#0x11
	jsr	_verify_a
;	Raw cost for generated ic 15 : (7, 10.000000) count=1.000000
;	test.c: 273: test_passed(test_num++);
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x11
	jsr	_test_passed
;	Raw cost for generated ic 20 : (5, 8.000000) count=1.000000
;	test.c: 280: __endasm;
;	m6502_genInline
	    lda	#0x30
	    sec
	    sbc	#0x10
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	test.c: 281: verify_a(0x20, test_num);
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x20
	ldx	#0x12
	jsr	_verify_a
;	Raw cost for generated ic 24 : (7, 10.000000) count=1.000000
;	test.c: 282: test_passed(test_num++);
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x12
	jsr	_test_passed
;	Raw cost for generated ic 29 : (5, 8.000000) count=1.000000
;	test.c: 289: __endasm;    
;	m6502_genInline
	    lda	#0x30
	    clc
	    sbc	#0x10
;	Raw cost for generated ic 30 : (0, 0.000000) count=1.000000
;	test.c: 290: verify_a(0x1F, test_num);
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x1f
	ldx	#0x13
	jsr	_verify_a
;	Raw cost for generated ic 33 : (7, 10.000000) count=1.000000
;	test.c: 291: test_passed(test_num++);
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	#0x13
	jsr	_test_passed
;	Raw cost for generated ic 38 : (5, 8.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	test.c: 293: }
;	genEndFunction
	rts
;	Raw cost for generated ic 40 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_logical'
;------------------------------------------------------------
;	test.c: 295: void test_logical(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_logical
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_logical:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 297: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_shift_rotate'
;------------------------------------------------------------
;	test.c: 299: void test_shift_rotate(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_shift_rotate
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_shift_rotate:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 301: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_branch'
;------------------------------------------------------------
;	test.c: 303: void test_branch(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_branch
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_branch:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 305: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_flags'
;------------------------------------------------------------
;	test.c: 307: void test_flags(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_flags
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_flags:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 309: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_stack'
;------------------------------------------------------------
;	test.c: 311: void test_stack(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_stack
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_stack:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 313: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_jump_subroutine'
;------------------------------------------------------------
;	test.c: 315: void test_jump_subroutine(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_jump_subroutine
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_jump_subroutine:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 317: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'test_misc'
;------------------------------------------------------------
;	test.c: 319: void test_misc(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function test_misc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_test_misc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	test.c: 321: }
;	genLabel
00101$:
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 3 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area CABS    (ABS)
