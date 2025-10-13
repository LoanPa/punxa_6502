;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _srslonglong
	
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
	.globl __srslonglong_PARM_2
	.globl __srslonglong_PARM_1
	.globl __srslonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__srslonglong_sloc0_1_0:
	.ds 1
__srslonglong_sloc1_1_0:
	.ds 2
__srslonglong_sloc2_1_0:
	.ds 2
__srslonglong_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__srslonglong_PARM_1:
	.ds 8
__srslonglong_PARM_2:
	.ds 1
__srslonglong_t1_10000_2:
	.ds 1
__srslonglong_sign_10000_2:
	.ds 1
__srslonglong_zb_10000_2:
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
;Allocation info for local variables in function '_srslonglong'
;------------------------------------------------------------
;l             Allocated with name '__srslonglong_PARM_1'
;s             Allocated with name '__srslonglong_PARM_2'
;b             Allocated to registers 
;shift         Allocated to registers 
;t1            Allocated with name '__srslonglong_t1_10000_2'
;t2            Allocated to registers x 
;sign          Allocated with name '__srslonglong_sign_10000_2'
;zb            Allocated with name '__srslonglong_zb_10000_2'
;i             Allocated to registers 
;sloc0         Allocated with name '__srslonglong_sloc0_1_0'
;sloc1         Allocated with name '__srslonglong_sloc1_1_0'
;sloc2         Allocated with name '__srslonglong_sloc2_1_0'
;sloc3         Allocated with name '__srslonglong_sloc3_1_0'
;------------------------------------------------------------
;	_srslonglong.c: 5: long long _srslonglong(long long l, char s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _srslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__srslonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	_srslonglong.c: 8: uint8_t *const b = (uint8_t *)(&l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	_srslonglong.c: 12: sign=b[7]&0x80;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genPointerGet
;	genDataPointerGet
	lda	(__srslonglong_PARM_1 + 0x0007)
;	Raw cost for generated ic 7 : (3, 4.000000) count=1.000000
;	genAnd
	and	#0x80
	sta	__srslonglong_sign_10000_2
;	Raw cost for generated ic 9 : (5, 6.000000) count=1.000000
;	_srslonglong.c: 14: zb=s>>3;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=3
	lda	__srslonglong_PARM_2
	lsr	a
	lsr	a
	lsr	a
	sta	__srslonglong_zb_10000_2
;	Raw cost for generated ic 12 : (9, 14.000000) count=1.000000
;	_srslonglong.c: 15: if(zb) {
;	genIfx
;	genIfxJump : z
	bne	00194$
	jmp	00104$
00194$:
;	Raw cost for generated ic 14 : (5, 5.600000) count=1.000000
;	_srslonglong.c: 16: i=0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 122 : (4, 5.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999995
;	_srslonglong.c: 17: for(;i<(8-zb);i++) {
;	genCast
	lda	__srslonglong_zb_10000_2
	sta	*__srslonglong_sloc1_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__srslonglong_sloc1_1_0 + 1)
;	Raw cost for generated ic 19 : (14, 18.000000) count=2.999995
;	genMinus
	lda	#0x08
	sec
	sbc	*__srslonglong_sloc1_1_0
	sta	*__srslonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__srslonglong_sloc1_1_0 + 1)
	sta	*(__srslonglong_sloc2_1_0 + 1)
;	Raw cost for generated ic 20 : (13, 18.000000) count=2.999995
;	genCast
;	genCopy
	ldx	#0x00
	lda	*__srslonglong_sloc0_1_0
	bpl	00195$
	dex
00195$:
;	Raw cost for generated ic 21 : (7, 9.600000) count=2.999995
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	*__srslonglong_sloc2_1_0
	txa
	sbc	*(__srslonglong_sloc2_1_0 + 1)
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00197$
	bpl	00196$
	bmi	00129$
00197$:
	bpl	00129$
00196$:
;	Raw cost for generated ic 22 : (23, 36.400002) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=2.999995
;	_srslonglong.c: 18: b[i]=b[zb+i];
;	genAssign
;	genCopy
	sta	*__srslonglong_sloc2_1_0
	stx	*(__srslonglong_sloc2_1_0 + 1)
;	Raw cost for generated ic 27 : (4, 6.000000) count=2.249995
;	genPlus
	clc
	adc	*__srslonglong_sloc1_1_0
	pha
	txa
	adc	*(__srslonglong_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 30 : (9, 19.000000) count=2.249995
;	genAssign
;	genCopy
;	Raw cost for generated ic 31 : (0, 0.000000) count=2.249995
;	genPointerGet
;	  setupDPTR - off=0 remat=__srslonglong_PARM_1 savea=0
	clc
	adc	#<(__srslonglong_PARM_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(__srslonglong_PARM_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 32 : (14, 21.000000) count=2.249995
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=__srslonglong_PARM_1 savea=0
	clc
	lda	*__srslonglong_sloc2_1_0
	adc	#<(__srslonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srslonglong_sloc2_1_0 + 1)
	adc	#>(__srslonglong_PARM_1+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
;	Raw cost for generated ic 33 : (19, 30.000000) count=2.249995
;	_srslonglong.c: 17: for(;i<(8-zb);i++) {
;	genPlus
;	  genPlusInc
	inc	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 36 : (2, 5.000000) count=2.249995
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 38 : (3, 3.000000) count=2.249995
;	genLabel
00129$:
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.749999
;	genAssign
;	genCopy
	ldy	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 125 : (2, 3.000000) count=0.749999
;	genLabel
00113$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.999981
;	_srslonglong.c: 20: for(;i<8;i++)
;	genCmp
	tya
	sec
	sbc	#0x08
	bvc	00200$
	bpl	00199$
	bmi	00104$
00200$:
	bpl	00104$
00199$:
;	Raw cost for generated ic 41 : (15, 19.400002) count=2.999981
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.999981
;	_srslonglong.c: 21: b[i]=sign?0xff:0x00;
;	genCast
;	genCopy
	ldx	#0x00
	tya
	bpl	00202$
	dex
00202$:
;	Raw cost for generated ic 45 : (6, 8.600000) count=2.249983
;	genAssign
;	genCopy
	sta	*__srslonglong_sloc2_1_0
	stx	*(__srslonglong_sloc2_1_0 + 1)
;	Raw cost for generated ic 46 : (4, 6.000000) count=2.249983
;	genIfx
	lda	__srslonglong_sign_10000_2
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 47 : (8, 9.600000) count=2.249983
;	genAssign
;	genCopy
	ldx	#0xff
;	Raw cost for generated ic 48 : (2, 2.000000) count=1.687488
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 49 : (3, 3.000000) count=1.687488
;	genLabel
00120$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.562495
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 51 : (2, 2.000000) count=0.562495
;	genLabel
00121$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=2.249983
;	genCast
;	genCopy
;	Raw cost for generated ic 53 : (0, 0.000000) count=2.249983
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=__srslonglong_PARM_1 savea=0
	clc
	lda	*__srslonglong_sloc2_1_0
	adc	#<(__srslonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srslonglong_sloc2_1_0 + 1)
	adc	#>(__srslonglong_PARM_1+0)
	sta	*(DPTR+1)
	txa
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 54 : (22, 34.000000) count=2.249983
;	_srslonglong.c: 20: for(;i<8;i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 57 : (1, 2.000000) count=2.249983
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 59 : (3, 3.000000) count=2.249983
;	genLabel
00104$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.999994
;	_srslonglong.c: 24: shift=s&0x7;
;	genAnd
	lda	__srslonglong_PARM_2
	and	#0x07
	sta	*__srslonglong_sloc2_1_0
;	Raw cost for generated ic 63 : (7, 9.000000) count=0.999994
;	_srslonglong.c: 25: while(shift--) {
;	genMinus
	lda	#0x07
	sec
	sbc	__srslonglong_zb_10000_2
	sta	*__srslonglong_sloc1_1_0
;	Raw cost for generated ic 74 : (8, 11.000000) count=0.999994
;	genLabel
00106$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=3.999697
;	genAssign
;	genCopy
	lda	*__srslonglong_sloc2_1_0
;	Raw cost for generated ic 67 : (2, 3.000000) count=3.999697
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*__srslonglong_sloc2_1_0
;	Raw cost for generated ic 68 : (2, 5.000000) count=3.999697
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 70 : (7, 7.600000) count=3.999697
;	_srslonglong.c: 26: t2=sign;
;	genAssign
;	genCopy
	ldx	__srslonglong_sign_10000_2
;	Raw cost for generated ic 73 : (3, 4.000000) count=2.999773
;	_srslonglong.c: 27: for(i=7-zb;i>=0;i--) {
;	genAssign
;	genCopy
	lda	*__srslonglong_sloc1_1_0
	sta	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 75 : (4, 6.000000) count=2.999773
;	genLabel
00116$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=3.999632
;	genCmp
	bit	*__srslonglong_sloc0_1_0
	bmi	00106$
;	Raw cost for generated ic 77 : (7, 8.600000) count=3.999632
;	skipping generated iCode
;	Raw cost for generated ic 78 : (0, 0.000000) count=3.999632
;	_srslonglong.c: 28: t1=b[i]&1;
;	genCast
;	genCopy
	lda	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 81 : (2, 3.000000) count=0.999888
;	genAssign
;	genCopy
	ldy	#0x00
	sty	*(__srslonglong_sloc3_1_0 + 1)
	sta	*__srslonglong_sloc3_1_0
;	Raw cost for generated ic 82 : (6, 8.000000) count=0.999888
;	genPointerGet
;	  setupDPTR - off=0 remat=__srslonglong_PARM_1 savea=0
	clc
	adc	#<(__srslonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srslonglong_sloc3_1_0 + 1)
	adc	#>(__srslonglong_PARM_1+0)
	sta	*(DPTR+1)
	lda	[DPTR],y
;	Raw cost for generated ic 83 : (14, 22.000000) count=0.999888
;	genAnd
	tay
	and	#0x01
	sta	__srslonglong_t1_10000_2
;	Raw cost for generated ic 85 : (6, 8.000000) count=0.999888
;	_srslonglong.c: 29: b[i]=(b[i]>>1)|t2;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=1
	tya
	lsr	a
;	Raw cost for generated ic 93 : (2, 4.000000) count=0.999888
;	genOr
	stx	*(REGTEMP+0)
	ora	*(REGTEMP+0)
	tax
;	Raw cost for generated ic 94 : (5, 8.000000) count=0.999888
;	genPointerSet
;	  setupDPTR - off=0 remat=__srslonglong_PARM_1 savea=0
	clc
	lda	*__srslonglong_sloc3_1_0
	adc	#<(__srslonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srslonglong_sloc3_1_0 + 1)
	adc	#>(__srslonglong_PARM_1+0)
	sta	*(DPTR+1)
	txa
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 95 : (18, 28.000000) count=0.999888
;	_srslonglong.c: 30: t2=t1?0x80:0;
;	genIfx
	lda	__srslonglong_t1_10000_2
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 96 : (8, 9.600000) count=0.999888
;	genAssign
;	genCopy
	ldx	#0x80
;	Raw cost for generated ic 97 : (2, 2.000000) count=0.749899
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 98 : (3, 3.000000) count=0.749899
;	genLabel
00122$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.249960
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 100 : (2, 2.000000) count=0.249960
;	genLabel
00123$:
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999859
;	genCast
;	genCopy
;	Raw cost for generated ic 102 : (0, 0.000000) count=0.999859
;	_srslonglong.c: 27: for(i=7-zb;i>=0;i--) {
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*__srslonglong_sloc0_1_0
;	Raw cost for generated ic 106 : (2, 5.000000) count=0.999859
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.999859
;	genLabel
00108$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.999924
;	_srslonglong.c: 34: return(l);
;	genRet
	lda	(__srslonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__srslonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__srslonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__srslonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__srslonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__srslonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__srslonglong_PARM_1 + 1)
	lda	__srslonglong_PARM_1
;	Raw cost for generated ic 112 : (36, 50.000000) count=0.999924
;	genLabel
;	Raw cost for generated ic 113 : (0, 0.000000) count=0.999924
;	_srslonglong.c: 35: }
;	genEndFunction
	rts
;	Raw cost for generated ic 114 : (1, 6.000000) count=0.999924
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
