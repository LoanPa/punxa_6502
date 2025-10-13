;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _modslong
	
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
	.globl __modslong_PARM_2
	.globl __modslong_PARM_1
	.globl __modslong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__modslong_sloc0_1_0:
	.ds 4
__modslong_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__modslong_PARM_1:
	.ds 4
__modslong_PARM_2:
	.ds 4
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;sloc0         Allocated with name '__modslong_sloc0_1_0'
;sloc1         Allocated with name '__modslong_sloc1_1_0'
;a             Allocated with name '__modslong_PARM_1'
;b             Allocated with name '__modslong_PARM_2'
;r             Allocated with name '__modslong_r_10000_2'
;------------------------------------------------------------
;	../_modslong.c: 259: _modslong (long a, long b) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modslong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../_modslong.c: 263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
;	genCmp
	bit	(__modslong_PARM_1 + 3)
	bmi	00128$
	lda	#0x00
	bra	00129$
00128$:
	lda	#0x01
00129$:
	tax
;	Raw cost for generated ic 2 : (12, 15.200001) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 3 : (5, 5.600000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	__modslong_PARM_1
	sta	*__modslong_sloc0_1_0
	lda	#0x00
	sbc	(__modslong_PARM_1 + 1)
	sta	*(__modslong_sloc0_1_0 + 1)
	lda	#0x00
	sbc	(__modslong_PARM_1 + 2)
	sta	*(__modslong_sloc0_1_0 + 2)
	lda	#0x00
	sbc	(__modslong_PARM_1 + 3)
	sta	*(__modslong_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (29, 38.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(__modslong_PARM_1 + 3)
	sta	*(__modslong_sloc0_1_0 + 3)
	lda	(__modslong_PARM_1 + 2)
	sta	*(__modslong_sloc0_1_0 + 2)
	lda	(__modslong_PARM_1 + 1)
	sta	*(__modslong_sloc0_1_0 + 1)
	lda	__modslong_PARM_1
	sta	*__modslong_sloc0_1_0
;	Raw cost for generated ic 8 : (20, 28.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCmp
	bit	(__modslong_PARM_2 + 3)
	bpl	00108$
;	Raw cost for generated ic 11 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	__modslong_PARM_2
	sta	*__modslong_sloc1_1_0
	lda	#0x00
	sbc	(__modslong_PARM_2 + 1)
	sta	*(__modslong_sloc1_1_0 + 1)
	lda	#0x00
	sbc	(__modslong_PARM_2 + 2)
	sta	*(__modslong_sloc1_1_0 + 2)
	lda	#0x00
	sbc	(__modslong_PARM_2 + 3)
	sta	*(__modslong_sloc1_1_0 + 3)
;	Raw cost for generated ic 13 : (29, 38.000000) count=0.750000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	lda	(__modslong_PARM_2 + 3)
	sta	*(__modslong_sloc1_1_0 + 3)
	lda	(__modslong_PARM_2 + 2)
	sta	*(__modslong_sloc1_1_0 + 2)
	lda	(__modslong_PARM_2 + 1)
	sta	*(__modslong_sloc1_1_0 + 1)
	lda	__modslong_PARM_2
	sta	*__modslong_sloc1_1_0
;	Raw cost for generated ic 17 : (20, 28.000000) count=0.250000
;	genLabel
00109$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	*(__modslong_sloc1_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	lda	*(__modslong_sloc1_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(__modslong_sloc1_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*__modslong_sloc1_1_0
	sta	__modulong_PARM_2
;	Raw cost for generated ic 19 : (20, 28.000000) count=1.000000
;	genAssign
;	genCopy
	lda	*(__modslong_sloc0_1_0 + 3)
	sta	(__modulong_PARM_1 + 3)
	lda	*(__modslong_sloc0_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(__modslong_sloc0_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*__modslong_sloc0_1_0
	sta	__modulong_PARM_1
;	Raw cost for generated ic 34 : (20, 28.000000) count=1.000000
;	../_modslong.c: 265: if (a < 0)
;	genCall
	phx
	jsr	__modulong
;	assignResultValue
	sta	*__modslong_sloc1_1_0
	stx	*(__modslong_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(__modslong_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(__modslong_sloc1_1_0 + 3)
	plx
;	Raw cost for generated ic 36 : (17, 31.000000) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 23 : (5, 5.600000) count=1.000000
;	../_modslong.c: 266: return -r;
;	genUminus
	lda	#0x00
	sec
	sbc	*__modslong_sloc1_1_0
	sta	*__modslong_sloc0_1_0
	lda	#0x00
	sbc	*(__modslong_sloc1_1_0 + 1)
	sta	*(__modslong_sloc0_1_0 + 1)
	lda	#0x00
	sbc	*(__modslong_sloc1_1_0 + 2)
	sta	*(__modslong_sloc0_1_0 + 2)
	lda	#0x00
	sbc	*(__modslong_sloc1_1_0 + 3)
	sta	*(__modslong_sloc0_1_0 + 3)
;	Raw cost for generated ic 26 : (25, 34.000000) count=0.750000
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	*(__modslong_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(__modslong_sloc0_1_0 + 1)
	lda	*__modslong_sloc0_1_0
	rts
;	Raw cost for generated ic 27 : (13, 18.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../_modslong.c: 268: return r;
;	genRet
	lda	*(__modslong_sloc1_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(__modslong_sloc1_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(__modslong_sloc1_1_0 + 1)
	lda	*__modslong_sloc1_1_0
;	Raw cost for generated ic 30 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../_modslong.c: 269: }
;	genEndFunction
	rts
;	Raw cost for generated ic 33 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
