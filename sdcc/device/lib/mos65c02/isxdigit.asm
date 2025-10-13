;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module isxdigit
	
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
	.globl _isxdigit
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
_isxdigit_c_10000_21:
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c             Allocated with name '_isxdigit_c_10000_21'
;------------------------------------------------------------
;	../isxdigit.c: 34: int isxdigit (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isxdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_isxdigit_c_10000_21
	stx	(_isxdigit_c_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../isxdigit.c: 41: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
;	genCmp
	sec
	sbc	#0x30
	txa
	sbc	#0x00
	bvs	00137$
	bpl	00136$
	bmi	00111$
00137$:
	bpl	00111$
00136$:
;	Raw cost for generated ic 3 : (17, 21.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	_isxdigit_c_10000_21
	lda	#0x00
	sbc	(_isxdigit_c_10000_21 + 1)
	bvc	00140$
	bpl	00139$
	bmi	00104$
00140$:
	bpl	00104$
00139$:
;	Raw cost for generated ic 6 : (22, 27.400002) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.750000
;	genLabel
00111$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.812500
;	genCmp
	lda	_isxdigit_c_10000_21
	sec
	sbc	#0x61
	lda	(_isxdigit_c_10000_21 + 1)
	sbc	#0x00
	bvs	00143$
	bpl	00142$
	bmi	00108$
00143$:
	bpl	00108$
00142$:
;	Raw cost for generated ic 16 : (22, 27.400002) count=0.812500
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.812500
;	genCmp
	lda	#0x66
	sec
	sbc	_isxdigit_c_10000_21
	lda	#0x00
	sbc	(_isxdigit_c_10000_21 + 1)
	bvc	00146$
	bpl	00145$
	bmi	00104$
00146$:
	bpl	00104$
00145$:
;	Raw cost for generated ic 19 : (22, 27.400002) count=0.609375
;	skipping generated iCode
;	Raw cost for generated ic 21 : (0, 0.000000) count=0.609375
;	genLabel
00108$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.660156
;	genCmp
	lda	_isxdigit_c_10000_21
	sec
	sbc	#0x41
	lda	(_isxdigit_c_10000_21 + 1)
	sbc	#0x00
	bvs	00149$
	bpl	00148$
	bmi	00103$
00149$:
	bpl	00103$
00148$:
;	Raw cost for generated ic 36 : (22, 27.400002) count=0.660156
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.660156
;	genCmp
	lda	#0x46
	sec
	sbc	_isxdigit_c_10000_21
	lda	#0x00
	sbc	(_isxdigit_c_10000_21 + 1)
	bvc	00152$
	bpl	00151$
	bmi	00104$
00152$:
	bpl	00104$
00151$:
;	Raw cost for generated ic 39 : (22, 27.400002) count=0.495117
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.495117
;	genLabel
00103$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.536377
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 50 : (2, 2.000000) count=0.536377
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 51 : (3, 3.000000) count=0.536377
;	genLabel
00104$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.463623
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 53 : (2, 2.000000) count=0.463623
;	genLabel
00105$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 55 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 57 : (0, 0.000000) count=1.000000
;	../isxdigit.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 58 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
