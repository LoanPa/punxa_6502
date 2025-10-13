;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divulonglong
	
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
	.globl __divulonglong_PARM_2
	.globl __divulonglong_PARM_1
	.globl __divulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divulonglong_sloc0_1_0:
	.ds 1
__divulonglong_sloc1_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divulonglong_PARM_1:
	.ds 8
__divulonglong_PARM_2:
	.ds 8
__divulonglong_reste_10000_2:
	.ds 8
__divulonglong_c_10000_2:
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;sloc0         Allocated with name '__divulonglong_sloc0_1_0'
;sloc1         Allocated with name '__divulonglong_sloc1_1_0'
;x             Allocated with name '__divulonglong_PARM_1'
;y             Allocated with name '__divulonglong_PARM_2'
;reste         Allocated with name '__divulonglong_reste_10000_2'
;count         Allocated to registers 
;c             Allocated with name '__divulonglong_c_10000_2'
;------------------------------------------------------------
;	../_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_divulonglong.c: 41: unsigned long long reste = 0L;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	__divulonglong_reste_10000_2
	sty	(__divulonglong_reste_10000_2 + 1)
	sty	(__divulonglong_reste_10000_2 + 2)
	sty	(__divulonglong_reste_10000_2 + 3)
	sty	(__divulonglong_reste_10000_2 + 4)
	sty	(__divulonglong_reste_10000_2 + 5)
	sty	(__divulonglong_reste_10000_2 + 6)
	sty	(__divulonglong_reste_10000_2 + 7)
;	Raw cost for generated ic 2 : (26, 34.000000) count=1.000000
;	../_divulonglong.c: 45: do
;	genAssign
;	genAssignLit
	ldx	#0x40
	stx	*__divulonglong_sloc0_1_0
;	Raw cost for generated ic 38 : (4, 5.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	../_divulonglong.c: 48: c = MSB_SET(x);
;	genAssign
;	genCopy
	lda	(__divulonglong_PARM_1 + 7)
	sta	(__srulonglong_PARM_1 + 7)
	lda	(__divulonglong_PARM_1 + 6)
	sta	(__srulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 5)
	sta	(__srulonglong_PARM_1 + 5)
	lda	(__divulonglong_PARM_1 + 4)
	sta	(__srulonglong_PARM_1 + 4)
	lda	(__divulonglong_PARM_1 + 3)
	sta	(__srulonglong_PARM_1 + 3)
	lda	(__divulonglong_PARM_1 + 2)
	sta	(__srulonglong_PARM_1 + 2)
	lda	(__divulonglong_PARM_1 + 1)
	sta	(__srulonglong_PARM_1 + 1)
	lda	__divulonglong_PARM_1
	sta	__srulonglong_PARM_1
;	Raw cost for generated ic 44 : (48, 64.000000) count=3.999997
;	genAssign
;	genAssignLit
	ldx	#0x3f
	stx	__srulonglong_PARM_2
;	Raw cost for generated ic 45 : (5, 6.000000) count=3.999997
;	genCall
	jsr	__srulonglong
;	assignResultValue
	sta	*__divulonglong_sloc1_1_0
	stx	*(__divulonglong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__divulonglong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__divulonglong_sloc1_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(__divulonglong_sloc1_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(__divulonglong_sloc1_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(__divulonglong_sloc1_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(__divulonglong_sloc1_1_0 + 7)
;	Raw cost for generated ic 46 : (31, 48.000000) count=3.999997
;	genAnd
	lda	*__divulonglong_sloc1_1_0
	and	#0x01
	sta	__divulonglong_c_10000_2
;	Raw cost for generated ic 6 : (7, 9.000000) count=3.999997
;	../_divulonglong.c: 49: x <<= 1;
;	genAssign
;	genCopy
	lda	(__divulonglong_PARM_1 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	(__divulonglong_PARM_1 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	(__divulonglong_PARM_1 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	(__divulonglong_PARM_1 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	(__divulonglong_PARM_1 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	(__divulonglong_PARM_1 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	__divulonglong_PARM_1
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 47 : (48, 64.000000) count=3.999997
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__slulonglong_PARM_2
;	Raw cost for generated ic 48 : (5, 6.000000) count=3.999997
;	genCall
	jsr	__slulonglong
;	assignResultValue
	sta	__divulonglong_PARM_1
	stx	(__divulonglong_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__divulonglong_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__divulonglong_PARM_1 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__divulonglong_PARM_1 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__divulonglong_PARM_1 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__divulonglong_PARM_1 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__divulonglong_PARM_1 + 7)
;	Raw cost for generated ic 49 : (39, 56.000000) count=3.999997
;	../_divulonglong.c: 50: reste <<= 1;
;	genAssign
;	genCopy
	lda	(__divulonglong_reste_10000_2 + 7)
	sta	(__slulonglong_PARM_1 + 7)
	lda	(__divulonglong_reste_10000_2 + 6)
	sta	(__slulonglong_PARM_1 + 6)
	lda	(__divulonglong_reste_10000_2 + 5)
	sta	(__slulonglong_PARM_1 + 5)
	lda	(__divulonglong_reste_10000_2 + 4)
	sta	(__slulonglong_PARM_1 + 4)
	lda	(__divulonglong_reste_10000_2 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	(__divulonglong_reste_10000_2 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	(__divulonglong_reste_10000_2 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	__divulonglong_reste_10000_2
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 50 : (48, 64.000000) count=3.999997
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	__slulonglong_PARM_2
;	Raw cost for generated ic 51 : (5, 6.000000) count=3.999997
;	genCall
	jsr	__slulonglong
;	assignResultValue
	sta	__divulonglong_reste_10000_2
	stx	(__divulonglong_reste_10000_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(__divulonglong_reste_10000_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(__divulonglong_reste_10000_2 + 3)
	lda	*___SDCC_m6502_ret4
	sta	(__divulonglong_reste_10000_2 + 4)
	lda	*___SDCC_m6502_ret5
	sta	(__divulonglong_reste_10000_2 + 5)
	lda	*___SDCC_m6502_ret6
	sta	(__divulonglong_reste_10000_2 + 6)
	lda	*___SDCC_m6502_ret7
	sta	(__divulonglong_reste_10000_2 + 7)
;	Raw cost for generated ic 52 : (39, 56.000000) count=3.999997
;	../_divulonglong.c: 51: if (c)
;	genIfx
	lda	__divulonglong_c_10000_2
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 13 : (8, 9.600000) count=3.999997
;	../_divulonglong.c: 52: reste |= 1L;
;	genOr
	lda	__divulonglong_reste_10000_2
	ora	#0x01
	sta	__divulonglong_reste_10000_2
;	Raw cost for generated ic 16 : (8, 10.000000) count=2.999997
;	genLabel
00102$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 54: if (reste >= y)
;	genCmp
	lda	__divulonglong_reste_10000_2
	sec
	sbc	__divulonglong_PARM_2
	lda	(__divulonglong_reste_10000_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	lda	(__divulonglong_reste_10000_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	lda	(__divulonglong_reste_10000_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	lda	(__divulonglong_reste_10000_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	lda	(__divulonglong_reste_10000_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	lda	(__divulonglong_reste_10000_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	lda	(__divulonglong_reste_10000_2 + 7)
	sbc	(__divulonglong_PARM_2 + 7)
	bcc	00106$
;	Raw cost for generated ic 19 : (54, 71.599998) count=3.999996
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 56: reste -= y;
;	genMinus
	lda	__divulonglong_reste_10000_2
	sec
	sbc	__divulonglong_PARM_2
	sta	__divulonglong_reste_10000_2
	lda	(__divulonglong_reste_10000_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	sta	(__divulonglong_reste_10000_2 + 1)
	lda	(__divulonglong_reste_10000_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	sta	(__divulonglong_reste_10000_2 + 2)
	lda	(__divulonglong_reste_10000_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	sta	(__divulonglong_reste_10000_2 + 3)
	lda	(__divulonglong_reste_10000_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	sta	(__divulonglong_reste_10000_2 + 4)
	lda	(__divulonglong_reste_10000_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	sta	(__divulonglong_reste_10000_2 + 5)
	lda	(__divulonglong_reste_10000_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	sta	(__divulonglong_reste_10000_2 + 6)
	lda	(__divulonglong_reste_10000_2 + 7)
	sbc	(__divulonglong_PARM_2 + 7)
	sta	(__divulonglong_reste_10000_2 + 7)
;	Raw cost for generated ic 23 : (73, 98.000000) count=2.999997
;	../_divulonglong.c: 58: x |= 1L;
;	genOr
	lda	__divulonglong_PARM_1
	ora	#0x01
	sta	__divulonglong_PARM_1
;	Raw cost for generated ic 25 : (8, 10.000000) count=2.999997
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=3.999996
;	../_divulonglong.c: 61: while (--count);
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*__divulonglong_sloc0_1_0
;	Raw cost for generated ic 29 : (2, 5.000000) count=3.999996
;	genIfx
	lda	*__divulonglong_sloc0_1_0
;	genIfxJump : z
	beq	00139$
	jmp	00105$
00139$:
;	Raw cost for generated ic 31 : (7, 8.600000) count=3.999996
;	../_divulonglong.c: 62: return x;
;	genRet
	lda	(__divulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__divulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__divulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__divulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__divulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__divulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__divulonglong_PARM_1 + 1)
	lda	__divulonglong_PARM_1
;	Raw cost for generated ic 34 : (36, 50.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.999998
;	../_divulonglong.c: 63: }
;	genEndFunction
	rts
;	Raw cost for generated ic 36 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
