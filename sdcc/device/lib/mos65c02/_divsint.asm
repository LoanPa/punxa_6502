;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _divsint
	
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
	.globl __divsint_PARM_2
	.globl __divsint
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
__divsint_sloc0_1_0:
	.ds 2
__divsint_sloc1_1_0:
	.ds 1
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__divsint_PARM_2:
	.ds 2
__divsint_x_10000_1:
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
;Allocation info for local variables in function '_divsint'
;------------------------------------------------------------
;r             Allocated to registers a x 
;sloc0         Allocated with name '__divsint_sloc0_1_0'
;sloc1         Allocated with name '__divsint_sloc1_1_0'
;y             Allocated with name '__divsint_PARM_2'
;x             Allocated with name '__divsint_x_10000_1'
;------------------------------------------------------------
;	../_divsint.c: 207: _divsint (int x, int y) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _divsint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divsint:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	__divsint_x_10000_1
	stx	(__divsint_x_10000_1 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../_divsint.c: 211: r = (unsigned int)(x < 0 ? -x : x) / (unsigned int)(y < 0 ? -y : y);
;	genCmp
	bit	(__divsint_x_10000_1 + 1)
	bmi	00128$
	lda	#0x00
	bra	00129$
00128$:
	lda	#0x01
00129$:
	tay
;	Raw cost for generated ic 3 : (12, 15.200001) count=1.000000
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 4 : (5, 5.600000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	__divsint_x_10000_1
	pha
	lda	#0x00
	sbc	(__divsint_x_10000_1 + 1)
	tax
	pla
;	Raw cost for generated ic 5 : (14, 23.000000) count=0.750000
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 7 : (3, 3.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	ldx	(__divsint_x_10000_1 + 1)
	lda	__divsint_x_10000_1
;	Raw cost for generated ic 9 : (6, 8.000000) count=0.250000
;	genLabel
00107$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	*__divsint_sloc0_1_0
	stx	*(__divsint_sloc0_1_0 + 1)
;	Raw cost for generated ic 11 : (4, 6.000000) count=1.000000
;	genCmp
	bit	(__divsint_PARM_2 + 1)
	bmi	00132$
	lda	#0x00
	bra	00133$
00132$:
	lda	#0x01
00133$:
	sta	*__divsint_sloc1_1_0
;	Raw cost for generated ic 12 : (13, 16.200001) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 13 : (7, 7.600000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	__divsint_PARM_2
	pha
	lda	#0x00
	sbc	(__divsint_PARM_2 + 1)
	tax
	pla
;	Raw cost for generated ic 14 : (14, 23.000000) count=0.750000
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 16 : (3, 3.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	ldx	(__divsint_PARM_2 + 1)
	lda	__divsint_PARM_2
;	Raw cost for generated ic 18 : (6, 8.000000) count=0.250000
;	genLabel
00109$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	sta	__divuint_PARM_2
	stx	(__divuint_PARM_2 + 1)
;	Raw cost for generated ic 20 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 37 : (0, 0.000000) count=1.000000
;	genCall
	phy
;	genSend
	ldx	*(__divsint_sloc0_1_0 + 1)
	lda	*__divsint_sloc0_1_0
	jsr	__divuint
;	assignResultValue
	ply
;	Raw cost for generated ic 39 : (9, 19.000000) count=1.000000
;	../_divsint.c: 212: if ((x < 0) ^ (y < 0))
;	genXor
	sta	*(REGTEMP+0)
	tya
	eor	*__divsint_sloc1_1_0
	php
	lda	*(REGTEMP+0)
	plp
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 25 : (14, 23.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 26 : (0, 0.000000) count=1.000000
;	../_divsint.c: 213: return -r;
;	genUminus
	eor	#0xff
	clc
	adc	#0x01
	pha
	lda	#0x00
	stx	*(REGTEMP+0)
	sbc	*(REGTEMP+0)
	tax
	pla
;	Raw cost for generated ic 29 : (14, 23.000000) count=0.750000
;	genRet
;	Raw cost for generated ic 30 : (3, 3.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 32 : (0, 0.000000) count=1.000000
;	../_divsint.c: 215: return r;
;	genRet
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../_divsint.c: 216: }
;	genEndFunction
00102$:
	rts
;	Raw cost for generated ic 36 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
