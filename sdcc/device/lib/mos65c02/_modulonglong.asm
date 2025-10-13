;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modulonglong
	
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
	.globl __modulonglong_PARM_2
	.globl __modulonglong_PARM_1
	.globl __modulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__modulonglong_sloc0_1_0:
	.ds 1
__modulonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__modulonglong_PARM_1:
	.ds 8
__modulonglong_PARM_2:
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '__modulonglong_sloc0_1_0'
;sloc1         Allocated with name '__modulonglong_sloc1_1_0'
;a             Allocated with name '__modulonglong_PARM_1'
;b             Allocated with name '__modulonglong_PARM_2'
;count         Allocated to registers x 
;------------------------------------------------------------
;	../_modulonglong.c: 40: _modulonglong (unsigned long long a, unsigned long long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_modulonglong.c: 42: unsigned char count = 0;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 2 : (2, 2.000000) count=1.000000
;	../_modulonglong.c: 44: while (!MSB_SET(b))
;	genAssign
;	genAssignLit
	stx	*__modulonglong_sloc0_1_0
;	Raw cost for generated ic 46 : (2, 3.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.230759
;	genAssign
;	genCopy
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_2
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 56 : (48, 64.000000) count=1.230759
;	genAssign
;	genAssignLit
	ldy	#0x3f
	sty	__srulonglong_PARM_2
;	Raw cost for generated ic 57 : (5, 6.000000) count=1.230759
;	genCall
	phx
	jsr	__srulonglong
;	assignResultValue
	sta	*__modulonglong_sloc1_1_0
	stx	*(__modulonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__modulonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__modulonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__modulonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__modulonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__modulonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__modulonglong_sloc1_1_0 + 7)
	plx
;	Raw cost for generated ic 58 : (33, 55.000000) count=1.230759
;	genAnd
	lda	*__modulonglong_sloc1_1_0
	and	#0x01
;	genIfxJump : z
	beq	00151$
	jmp	00117$
00151$:
;	Raw cost for generated ic 5 : (11, 13.200000) count=1.230759
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.230759
;	../_modulonglong.c: 46: b <<= 1;
;	genAssign
;	genCopy
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_2
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 59 : (48, 64.000000) count=0.923069
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__slulonglong_PARM_2
;	Raw cost for generated ic 60 : (5, 6.000000) count=0.923069
;	genCall
	phx
	jsr	__slulonglong
;	assignResultValue
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
	plx
;	Raw cost for generated ic 61 : (41, 63.000000) count=0.923069
;	../_modulonglong.c: 47: if (b > a)
;	genCmp
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	bcs	00102$
;	Raw cost for generated ic 11 : (54, 71.599998) count=0.923069
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.923069
;	../_modulonglong.c: 49: b >>=1;
;	genAssign
;	genCopy
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_2
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 62 : (48, 64.000000) count=0.692302
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__srulonglong_PARM_2
;	Raw cost for generated ic 63 : (5, 6.000000) count=0.692302
;	genCall
	phx
	jsr	__srulonglong
;	assignResultValue
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
	plx
;	Raw cost for generated ic 64 : (41, 63.000000) count=0.692302
;	../_modulonglong.c: 50: break;
;	genGoto
	jmp	00117$
;	Raw cost for generated ic 17 : (3, 3.000000) count=0.692302
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.230759
;	../_modulonglong.c: 52: count++;
;	genPlus
;	  genPlusInc
	inc	*__modulonglong_sloc0_1_0
;	Raw cost for generated ic 20 : (2, 5.000000) count=0.230759
;	genAssign
;	genCopy
	ldx	*__modulonglong_sloc0_1_0
;	Raw cost for generated ic 21 : (2, 3.000000) count=0.230759
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 22 : (3, 3.000000) count=0.230759
;	../_modulonglong.c: 54: do
;	genLabel
00117$:
;	Raw cost for generated ic 45 : (0, 0.000000) count=0.999992
;	genAssign
;	genCopy
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.999992
;	genLabel
00108$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=3.999952
;	../_modulonglong.c: 56: if (a >= b)
;	genCmp
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	bcc	00107$
;	Raw cost for generated ic 25 : (54, 71.599998) count=3.999952
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=3.999952
;	../_modulonglong.c: 57: a -= b;
;	genMinus
	lda	__modulonglong_PARM_1
	sec
	sbc	__modulonglong_PARM_2
	sta	__modulonglong_PARM_1
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	sta	(__modulonglong_PARM_1 + 1)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	sta	(__modulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	sta	(__modulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	sta	(__modulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	sta	(__modulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	sta	(__modulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	sbc	(__modulonglong_PARM_2 + 7)
	sta	(__modulonglong_PARM_1 + 7)
;	Raw cost for generated ic 29 : (73, 98.000000) count=2.999960
;	genLabel
00107$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=3.999947
;	../_modulonglong.c: 58: b >>= 1;
;	genAssign
;	genCopy
	lda	(__modulonglong_PARM_2 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	(__modulonglong_PARM_2 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_2 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	(__modulonglong_PARM_2 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	(__modulonglong_PARM_2 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	(__modulonglong_PARM_2 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	(__modulonglong_PARM_2 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_2
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 65 : (48, 64.000000) count=3.999947
;	genAssign
;	genAssignLit
	ldy	#0x01
	sty	__srulonglong_PARM_2
;	Raw cost for generated ic 66 : (5, 6.000000) count=3.999947
;	genCall
	phx
	jsr	__srulonglong
;	assignResultValue
	sta	__modulonglong_PARM_2
	stx	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__modulonglong_PARM_2 + 7)
	plx
;	Raw cost for generated ic 67 : (41, 63.000000) count=3.999947
;	../_modulonglong.c: 60: while (count--);
;	genAssign
;	genCopy
	txa
;	Raw cost for generated ic 35 : (1, 2.000000) count=3.999947
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 36 : (1, 2.000000) count=3.999947
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00155$
	jmp	00108$
00155$:
;	Raw cost for generated ic 38 : (7, 7.600000) count=3.999947
;	../_modulonglong.c: 62: return a;
;	genRet
	lda	(__modulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__modulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__modulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__modulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__modulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__modulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__modulonglong_PARM_1 + 1)
	lda	__modulonglong_PARM_1
;	Raw cost for generated ic 41 : (36, 50.000000) count=0.999983
;	genLabel
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.999983
;	../_modulonglong.c: 63: }
;	genEndFunction
	rts
;	Raw cost for generated ic 43 : (1, 6.000000) count=0.999983
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
