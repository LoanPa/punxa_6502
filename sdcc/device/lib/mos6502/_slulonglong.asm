;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slulonglong
	
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
	.globl __slulonglong_PARM_2
	.globl __slulonglong_PARM_1
	.globl __slulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__slulonglong_sloc0_1_0:
	.ds 4
__slulonglong_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__slulonglong_PARM_1:
	.ds 8
__slulonglong_PARM_2:
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
;Allocation info for local variables in function '_slulonglong'
;------------------------------------------------------------
;l             Allocated with name '__slulonglong_PARM_1'
;s             Allocated with name '__slulonglong_PARM_2'
;top           Allocated to registers 
;middle        Allocated to registers 
;bottom        Allocated to registers 
;w             Allocated to registers 
;sloc0         Allocated with name '__slulonglong_sloc0_1_0'
;sloc1         Allocated with name '__slulonglong_sloc1_1_0'
;------------------------------------------------------------
;	../_slulonglong.c: 63: unsigned long long _slulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _slulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__slulonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_slulonglong.c: 65: _AUTOMEM uint32_t * const top =    (_AUTOMEM uint32_t *)((_AUTOMEM char *)(&l) + 4);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../_slulonglong.c: 66: _AUTOMEM uint16_t * const middle = (_AUTOMEM uint16_t *)((_AUTOMEM char *)(&l) + 2);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../_slulonglong.c: 67: _AUTOMEM uint32_t * const bottom = (_AUTOMEM uint32_t *)((_AUTOMEM char *)(&l) + 0);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../_slulonglong.c: 68: _AUTOMEM uint16_t * const w =      (_AUTOMEM uint16_t *)(&l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../_slulonglong.c: 78: (*top) <<= s;
;	genLabel
00103$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999997
;	../_slulonglong.c: 70: for (; s >= 16; s-= 16)
;	genCmp
	lda	__slulonglong_PARM_2
	cmp	#0x10
	bcc	00101$
;	Raw cost for generated ic 21 : (10, 11.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=3.999997
;	../_slulonglong.c: 72: w[3] = w[2];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=2.999997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 26 : (0, 0.000000) count=2.999997
;	genPointerGet
;	genDataPointerGet
	ldx	((__slulonglong_PARM_1 + 0x0004) + 1)
	lda	(__slulonglong_PARM_1 + 0x0004)
;	Raw cost for generated ic 27 : (6, 8.000000) count=2.999997
;	genPointerSet
;	genDataPointerSet
	stx	((__slulonglong_PARM_1 + 0x0006) + 1)
	sta	(__slulonglong_PARM_1 + 0x0006)
;	Raw cost for generated ic 28 : (6, 8.000000) count=2.999997
;	../_slulonglong.c: 73: w[2] = w[1];
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 30 : (0, 0.000000) count=2.999997
;	genPointerGet
;	genDataPointerGet
	ldx	((__slulonglong_PARM_1 + 0x0002) + 1)
	lda	(__slulonglong_PARM_1 + 0x0002)
;	Raw cost for generated ic 31 : (6, 8.000000) count=2.999997
;	genPointerSet
;	genDataPointerSet
	stx	((__slulonglong_PARM_1 + 0x0004) + 1)
	sta	(__slulonglong_PARM_1 + 0x0004)
;	Raw cost for generated ic 32 : (6, 8.000000) count=2.999997
;	../_slulonglong.c: 74: w[1] = w[0];
;	genPointerGet
;	genDataPointerGet
	ldx	(__slulonglong_PARM_1 + 1)
	lda	__slulonglong_PARM_1
;	Raw cost for generated ic 35 : (6, 8.000000) count=2.999997
;	genPointerSet
;	genDataPointerSet
	stx	((__slulonglong_PARM_1 + 0x0002) + 1)
	sta	(__slulonglong_PARM_1 + 0x0002)
;	Raw cost for generated ic 36 : (6, 8.000000) count=2.999997
;	../_slulonglong.c: 75: w[0] = 0;
;	genPointerSet
;	genDataPointerSet
	ldy	#0x00
	sty	(__slulonglong_PARM_1 + 1)
	sty	__slulonglong_PARM_1
;	Raw cost for generated ic 38 : (8, 10.000000) count=2.999997
;	../_slulonglong.c: 70: for (; s >= 16; s-= 16)
;	genCast
;	genCopy
	lda	__slulonglong_PARM_2
;	Raw cost for generated ic 40 : (3, 4.000000) count=2.999997
;	genMinus
;	  genMinusDec - size=1  icount=16
	sec
	sbc	#0x10
	sta	__slulonglong_PARM_2
;	Raw cost for generated ic 41 : (6, 8.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999999
;	../_slulonglong.c: 78: (*top) <<= s;
;	genPointerGet
;	genDataPointerGet
	lda	((__slulonglong_PARM_1 + 0x0004) + 3)
	sta	*(__slulonglong_sloc0_1_0 + 3)
	lda	((__slulonglong_PARM_1 + 0x0004) + 2)
	sta	*(__slulonglong_sloc0_1_0 + 2)
	lda	((__slulonglong_PARM_1 + 0x0004) + 1)
	sta	*(__slulonglong_sloc0_1_0 + 1)
	lda	(__slulonglong_PARM_1 + 0x0004)
	sta	*__slulonglong_sloc0_1_0
;	Raw cost for generated ic 47 : (20, 28.000000) count=0.999999
;	genLeftShift
	ldy	__slulonglong_PARM_2
	beq	00121$
00120$:
	asl	*__slulonglong_sloc0_1_0
	rol	*(__slulonglong_sloc0_1_0 + 1)
	rol	*(__slulonglong_sloc0_1_0 + 2)
	rol	*(__slulonglong_sloc0_1_0 + 3)
	dey
	bne	00120$
00121$:
;	Raw cost for generated ic 48 : (16, 31.200001) count=0.999999
;	genPointerSet
;	genDataPointerSet
	lda	*(__slulonglong_sloc0_1_0 + 3)
	sta	((__slulonglong_PARM_1 + 0x0004) + 3)
	lda	*(__slulonglong_sloc0_1_0 + 2)
	sta	((__slulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__slulonglong_sloc0_1_0 + 1)
	sta	((__slulonglong_PARM_1 + 0x0004) + 1)
	lda	*__slulonglong_sloc0_1_0
	sta	(__slulonglong_PARM_1 + 0x0004)
;	Raw cost for generated ic 49 : (20, 28.000000) count=0.999999
;	../_slulonglong.c: 79: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
;	genPointerGet
;	genDataPointerGet
	ldx	((__slulonglong_PARM_1 + 0x0002) + 1)
	lda	(__slulonglong_PARM_1 + 0x0002)
;	Raw cost for generated ic 54 : (6, 8.000000) count=0.999999
;	genCast
;	genCopy
	sty	*(__slulonglong_sloc1_1_0 + 3)
	sty	*(__slulonglong_sloc1_1_0 + 2)
	stx	*(__slulonglong_sloc1_1_0 + 1)
	sta	*__slulonglong_sloc1_1_0
;	Raw cost for generated ic 57 : (8, 12.000000) count=0.999999
;	genLeftShift
	ldy	__slulonglong_PARM_2
	beq	00123$
00122$:
	asl	*__slulonglong_sloc1_1_0
	rol	*(__slulonglong_sloc1_1_0 + 1)
	rol	*(__slulonglong_sloc1_1_0 + 2)
	rol	*(__slulonglong_sloc1_1_0 + 3)
	dey
	bne	00122$
00123$:
;	Raw cost for generated ic 58 : (16, 31.200001) count=0.999999
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=16
	lda	*(__slulonglong_sloc1_1_0 + 2)
	sta	*__slulonglong_sloc1_1_0
	lda	*(__slulonglong_sloc1_1_0 + 3)
	sta	*(__slulonglong_sloc1_1_0 + 1)
	sty	*(__slulonglong_sloc1_1_0 + 2)
	sty	*(__slulonglong_sloc1_1_0 + 3)
;	Raw cost for generated ic 59 : (12, 18.000000) count=0.999999
;	genOr
	lda	*__slulonglong_sloc0_1_0
	ora	*__slulonglong_sloc1_1_0
	sta	*__slulonglong_sloc1_1_0
	lda	*(__slulonglong_sloc0_1_0 + 1)
	ora	*(__slulonglong_sloc1_1_0 + 1)
	sta	*(__slulonglong_sloc1_1_0 + 1)
	lda	*(__slulonglong_sloc0_1_0 + 2)
	ora	*(__slulonglong_sloc1_1_0 + 2)
	sta	*(__slulonglong_sloc1_1_0 + 2)
	lda	*(__slulonglong_sloc0_1_0 + 3)
	ora	*(__slulonglong_sloc1_1_0 + 3)
	sta	*(__slulonglong_sloc1_1_0 + 3)
;	Raw cost for generated ic 60 : (24, 36.000000) count=0.999999
;	genPointerSet
;	genDataPointerSet
	sta	((__slulonglong_PARM_1 + 0x0004) + 3)
	lda	*(__slulonglong_sloc1_1_0 + 2)
	sta	((__slulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__slulonglong_sloc1_1_0 + 1)
	sta	((__slulonglong_PARM_1 + 0x0004) + 1)
	lda	*__slulonglong_sloc1_1_0
	sta	(__slulonglong_PARM_1 + 0x0004)
;	Raw cost for generated ic 61 : (18, 25.000000) count=0.999999
;	../_slulonglong.c: 80: (*bottom) <<= s;
;	genPointerGet
;	genDataPointerGet
	lda	(__slulonglong_PARM_1 + 3)
	sta	*(__slulonglong_sloc1_1_0 + 3)
	lda	(__slulonglong_PARM_1 + 2)
	sta	*(__slulonglong_sloc1_1_0 + 2)
	lda	(__slulonglong_PARM_1 + 1)
	sta	*(__slulonglong_sloc1_1_0 + 1)
	lda	__slulonglong_PARM_1
	sta	*__slulonglong_sloc1_1_0
;	Raw cost for generated ic 64 : (20, 28.000000) count=0.999999
;	genLeftShift
	ldy	__slulonglong_PARM_2
	beq	00125$
00124$:
	asl	*__slulonglong_sloc1_1_0
	rol	*(__slulonglong_sloc1_1_0 + 1)
	rol	*(__slulonglong_sloc1_1_0 + 2)
	rol	*(__slulonglong_sloc1_1_0 + 3)
	dey
	bne	00124$
00125$:
;	Raw cost for generated ic 65 : (16, 31.200001) count=0.999999
;	genPointerSet
;	genDataPointerSet
	lda	*(__slulonglong_sloc1_1_0 + 3)
	sta	(__slulonglong_PARM_1 + 3)
	lda	*(__slulonglong_sloc1_1_0 + 2)
	sta	(__slulonglong_PARM_1 + 2)
	lda	*(__slulonglong_sloc1_1_0 + 1)
	sta	(__slulonglong_PARM_1 + 1)
	lda	*__slulonglong_sloc1_1_0
	sta	__slulonglong_PARM_1
;	Raw cost for generated ic 66 : (20, 28.000000) count=0.999999
;	../_slulonglong.c: 82: return(l);
;	genRet
	lda	(__slulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__slulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__slulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__slulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__slulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__slulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__slulonglong_PARM_1 + 1)
	lda	__slulonglong_PARM_1
;	Raw cost for generated ic 67 : (36, 50.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999999
;	../_slulonglong.c: 83: }
;	genEndFunction
	rts
;	Raw cost for generated ic 69 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
