;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module rand
	
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
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_rand_t_10000_43:
	.ds 4
_rand_sloc0_1_0:
	.ds 4
_rand_sloc1_1_0:
	.ds 4
	.area	OSEG    (PAG, OVR)
_srand_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS    (ABS)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area DATA
_s:
	.ds 4
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;t             Allocated with name '_rand_t_10000_43'
;sloc0         Allocated with name '_rand_sloc0_1_0'
;sloc1         Allocated with name '_rand_sloc1_1_0'
;------------------------------------------------------------
;	../rand.c: 40: int rand(void)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_rand:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../rand.c: 44: t ^= t >> 10;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=10
	lda	(_s + 3)
	lsr	a
	sta	*(_rand_sloc0_1_0 + 2)
	lda	(_s + 2)
	ror	a
	sta	*(_rand_sloc0_1_0 + 1)
	lda	(_s + 1)
	ror	a
	sta	*_rand_sloc0_1_0
	lda	*(_rand_sloc0_1_0 + 2)
	lsr	a
	ror	*(_rand_sloc0_1_0 + 1)
	ror	*_rand_sloc0_1_0
	sta	*(_rand_sloc0_1_0 + 2)
	ldy	#0x00
	sty	*(_rand_sloc0_1_0 + 3)
;	Raw cost for generated ic 3 : (31, 50.000000) count=1.000000
;	genXor
	lda	_s
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc0_1_0
	lda	(_s + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc0_1_0 + 1)
	lda	(_s + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc0_1_0 + 2)
	lda	(_s + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (28, 40.000000) count=1.000000
;	../rand.c: 45: t ^= t << 9;
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh32 - shift=9
	lda	*_rand_sloc0_1_0
	asl	a
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*(_rand_sloc0_1_0 + 1)
	rol	a
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc0_1_0 + 2)
	rol	a
	sty	*_rand_sloc1_1_0
	sta	*(_rand_sloc1_1_0 + 3)
;	Raw cost for generated ic 6 : (17, 27.000000) count=1.000000
;	genXor
	lda	*_rand_sloc0_1_0
	eor	*_rand_sloc1_1_0
	sta	*_rand_sloc1_1_0
	lda	*(_rand_sloc0_1_0 + 1)
	eor	*(_rand_sloc1_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*(_rand_sloc0_1_0 + 2)
	eor	*(_rand_sloc1_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc0_1_0 + 3)
	eor	*(_rand_sloc1_1_0 + 3)
	sta	*(_rand_sloc1_1_0 + 3)
;	Raw cost for generated ic 7 : (24, 36.000000) count=1.000000
;	../rand.c: 46: t ^= t >> 25;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=25
	lsr	a
	sta	*_rand_sloc0_1_0
	sty	*(_rand_sloc0_1_0 + 1)
	sty	*(_rand_sloc0_1_0 + 2)
	sty	*(_rand_sloc0_1_0 + 3)
;	Raw cost for generated ic 9 : (9, 14.000000) count=1.000000
;	genXor
	lda	*_rand_sloc1_1_0
	eor	*_rand_sloc0_1_0
	sta	*_rand_sloc1_1_0
	lda	*(_rand_sloc1_1_0 + 1)
	eor	*(_rand_sloc0_1_0 + 1)
	sta	*(_rand_sloc1_1_0 + 1)
	lda	*(_rand_sloc1_1_0 + 2)
	eor	*(_rand_sloc0_1_0 + 2)
	sta	*(_rand_sloc1_1_0 + 2)
	lda	*(_rand_sloc1_1_0 + 3)
	eor	*(_rand_sloc0_1_0 + 3)
	sta	*(_rand_sloc1_1_0 + 3)
;	Raw cost for generated ic 10 : (24, 36.000000) count=1.000000
;	genAssign
;	genCopy
	sta	*(_rand_t_10000_43 + 3)
	lda	*(_rand_sloc1_1_0 + 2)
	sta	*(_rand_t_10000_43 + 2)
	lda	*(_rand_sloc1_1_0 + 1)
	sta	*(_rand_t_10000_43 + 1)
	lda	*_rand_sloc1_1_0
	sta	*_rand_t_10000_43
;	Raw cost for generated ic 11 : (14, 21.000000) count=1.000000
;	../rand.c: 48: s = t;
;	genAssign
;	genCopy
	lda	*(_rand_sloc1_1_0 + 3)
	sta	(_s + 3)
	lda	*(_rand_sloc1_1_0 + 2)
	sta	(_s + 2)
	lda	*(_rand_sloc1_1_0 + 1)
	sta	(_s + 1)
	lda	*_rand_sloc1_1_0
	sta	_s
;	Raw cost for generated ic 12 : (20, 28.000000) count=1.000000
;	../rand.c: 50: return(t & RAND_MAX);
;	genCast
;	genCopy
	ldx	*(_rand_t_10000_43 + 1)
	lda	*_rand_t_10000_43
;	Raw cost for generated ic 19 : (4, 6.000000) count=1.000000
;	genAnd
	sta	*(REGTEMP+0)
	txa
	and	#0x7f
	tax
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 14 : (8, 12.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../rand.c: 51: }
;	genEndFunction
	rts
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed          Allocated to registers a x 
;sloc0         Allocated with name '_srand_sloc0_1_0'
;------------------------------------------------------------
;	../rand.c: 53: void srand(unsigned int seed)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_srand:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../rand.c: 55: s = seed | 0x80000000; /* s shall not become 0 */
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(_srand_sloc0_1_0 + 3)
	sty	*(_srand_sloc0_1_0 + 2)
	stx	*(_srand_sloc0_1_0 + 1)
	sta	*_srand_sloc0_1_0
;	Raw cost for generated ic 3 : (10, 14.000000) count=1.000000
;	genOr
	sta	_s
	txa
	sta	(_s + 1)
	lda	*(_srand_sloc0_1_0 + 2)
	sta	(_s + 2)
	lda	*(_srand_sloc0_1_0 + 3)
	ora	#0x80
	sta	(_s + 3)
;	Raw cost for generated ic 4 : (19, 26.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../rand.c: 56: }
;	genEndFunction
	rts
;	Raw cost for generated ic 8 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
__xinit__s:
	.byte #0x01, #0x00, #0x00, #0x80	; 2147483649
	.area CABS    (ABS)
