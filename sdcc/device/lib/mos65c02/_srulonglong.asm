;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _srulonglong
	
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
	.globl __srulonglong_PARM_2
	.globl __srulonglong_PARM_1
	.globl __srulonglong
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__srulonglong_sloc0_1_0:
	.ds 1
__srulonglong_sloc1_1_0:
	.ds 2
__srulonglong_sloc2_1_0:
	.ds 2
__srulonglong_sloc3_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__srulonglong_PARM_1:
	.ds 8
__srulonglong_PARM_2:
	.ds 1
__srulonglong_t1_10000_2:
	.ds 1
__srulonglong_t2_10000_2:
	.ds 1
__srulonglong_zb_10000_2:
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
;Allocation info for local variables in function '_srulonglong'
;------------------------------------------------------------
;l             Allocated with name '__srulonglong_PARM_1'
;s             Allocated with name '__srulonglong_PARM_2'
;b             Allocated to registers 
;shift         Allocated to registers 
;t1            Allocated with name '__srulonglong_t1_10000_2'
;t2            Allocated with name '__srulonglong_t2_10000_2'
;zb            Allocated with name '__srulonglong_zb_10000_2'
;i             Allocated to registers 
;sloc0         Allocated with name '__srulonglong_sloc0_1_0'
;sloc1         Allocated with name '__srulonglong_sloc1_1_0'
;sloc2         Allocated with name '__srulonglong_sloc2_1_0'
;sloc3         Allocated with name '__srulonglong_sloc3_1_0'
;------------------------------------------------------------
;	_srulonglong.c: 5: unsigned long long _srulonglong(unsigned long long l, char s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _srulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__srulonglong:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	_srulonglong.c: 7: uint8_t *const b = (uint8_t *)(&l);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	_srulonglong.c: 11: zb=s>>3;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=3
	lda	__srulonglong_PARM_2
	lsr	a
	lsr	a
	lsr	a
	sta	__srulonglong_zb_10000_2
;	Raw cost for generated ic 6 : (9, 14.000000) count=1.000000
;	_srulonglong.c: 12: if(zb) {
;	genIfx
;	genIfxJump : z
	bne	00186$
	jmp	00104$
00186$:
;	Raw cost for generated ic 8 : (5, 5.600000) count=1.000000
;	_srulonglong.c: 13: for(i=0;i<(8-zb);i++) {
;	genAssign
;	genAssignLit
	stz	*__srulonglong_sloc0_1_0
;	Raw cost for generated ic 108 : (3, 4.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999995
;	genCast
	lda	__srulonglong_zb_10000_2
	sta	*__srulonglong_sloc1_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(__srulonglong_sloc1_1_0 + 1)
;	Raw cost for generated ic 13 : (14, 18.000000) count=2.999995
;	genMinus
	lda	#0x08
	sec
	sbc	*__srulonglong_sloc1_1_0
	sta	*__srulonglong_sloc2_1_0
	lda	#0x00
	sbc	*(__srulonglong_sloc1_1_0 + 1)
	sta	*(__srulonglong_sloc2_1_0 + 1)
;	Raw cost for generated ic 14 : (13, 18.000000) count=2.999995
;	genCast
;	genCopy
	ldx	#0x00
	lda	*__srulonglong_sloc0_1_0
	bpl	00187$
	dex
00187$:
;	Raw cost for generated ic 15 : (7, 9.600000) count=2.999995
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	*__srulonglong_sloc2_1_0
	txa
	sbc	*(__srulonglong_sloc2_1_0 + 1)
	php
	lda	*(REGTEMP+0)
	plp
	bvc	00189$
	bpl	00188$
	bmi	00126$
00189$:
	bpl	00126$
00188$:
;	Raw cost for generated ic 16 : (23, 36.400002) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.999995
;	_srulonglong.c: 14: b[i]=b[zb+i];
;	genAssign
;	genCopy
	sta	*__srulonglong_sloc2_1_0
	stx	*(__srulonglong_sloc2_1_0 + 1)
;	Raw cost for generated ic 21 : (4, 6.000000) count=2.249995
;	genPlus
	clc
	adc	*__srulonglong_sloc1_1_0
	pha
	txa
	adc	*(__srulonglong_sloc1_1_0 + 1)
	tax
	pla
;	Raw cost for generated ic 24 : (9, 19.000000) count=2.249995
;	genAssign
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=2.249995
;	genPointerGet
;	  setupDPTR - off=0 remat=__srulonglong_PARM_1 savea=0
	clc
	adc	#<(__srulonglong_PARM_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(__srulonglong_PARM_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 26 : (14, 21.000000) count=2.249995
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=__srulonglong_PARM_1 savea=0
	clc
	lda	*__srulonglong_sloc2_1_0
	adc	#<(__srulonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srulonglong_sloc2_1_0 + 1)
	adc	#>(__srulonglong_PARM_1+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	sta	[DPTR],y
;	Raw cost for generated ic 27 : (19, 30.000000) count=2.249995
;	_srulonglong.c: 13: for(i=0;i<(8-zb);i++) {
;	genPlus
;	  genPlusInc
	inc	*__srulonglong_sloc0_1_0
;	Raw cost for generated ic 30 : (2, 5.000000) count=2.249995
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 32 : (3, 3.000000) count=2.249995
;	genLabel
00126$:
;	Raw cost for generated ic 103 : (0, 0.000000) count=0.749999
;	genAssign
;	genCopy
	ldy	*__srulonglong_sloc0_1_0
;	Raw cost for generated ic 111 : (2, 3.000000) count=0.749999
;	genLabel
00113$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=2.999988
;	_srulonglong.c: 17: for(;i<8;i++)
;	genCmp
	tya
	sec
	sbc	#0x08
	bvc	00192$
	bpl	00191$
	bmi	00104$
00192$:
	bpl	00104$
00191$:
;	Raw cost for generated ic 35 : (15, 19.400002) count=2.999988
;	skipping generated iCode
;	Raw cost for generated ic 36 : (0, 0.000000) count=2.999988
;	_srulonglong.c: 18: b[i]=0;
;	genCast
;	genCopy
	ldx	#0x00
	tya
	bpl	00194$
	dex
00194$:
;	Raw cost for generated ic 39 : (6, 8.600000) count=2.249989
;	genAssign
;	genCopy
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.249989
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=__srulonglong_PARM_1 savea=0
	clc
	adc	#<(__srulonglong_PARM_1+0)
	sta	*(DPTR+0)
	txa
	adc	#>(__srulonglong_PARM_1+0)
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 41 : (19, 30.000000) count=2.249989
;	_srulonglong.c: 17: for(;i<8;i++)
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 44 : (1, 2.000000) count=2.249989
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 46 : (3, 3.000000) count=2.249989
;	genLabel
00104$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999997
;	_srulonglong.c: 21: shift=s&0x7;
;	genAnd
	lda	__srulonglong_PARM_2
	and	#0x07
	tax
;	Raw cost for generated ic 50 : (6, 8.000000) count=0.999997
;	_srulonglong.c: 22: while(shift--) {
;	genMinus
	lda	#0x07
	sec
	sbc	__srulonglong_zb_10000_2
	sta	*__srulonglong_sloc2_1_0
;	Raw cost for generated ic 61 : (8, 11.000000) count=0.999997
;	genLabel
00106$:
;	Raw cost for generated ic 53 : (0, 0.000000) count=3.999825
;	genAssign
;	genCopy
	txa
;	Raw cost for generated ic 54 : (1, 2.000000) count=3.999825
;	genMinus
;	  genMinusDec - size=1  icount=1
	dex
;	Raw cost for generated ic 55 : (1, 2.000000) count=3.999825
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 57 : (7, 7.600000) count=3.999825
;	_srulonglong.c: 23: t2=0;
;	genAssign
;	genAssignLit
	stz	__srulonglong_t2_10000_2
;	Raw cost for generated ic 60 : (3, 4.000000) count=2.999869
;	_srulonglong.c: 24: for(i=7-zb;i>=0;i--) {
;	genAssign
;	genCopy
	lda	*__srulonglong_sloc2_1_0
	sta	*__srulonglong_sloc1_1_0
;	Raw cost for generated ic 62 : (4, 6.000000) count=2.999869
;	genLabel
00116$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=3.999788
;	genCmp
	bit	*__srulonglong_sloc1_1_0
	bmi	00106$
;	Raw cost for generated ic 64 : (7, 8.600000) count=3.999788
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=3.999788
;	_srulonglong.c: 25: t1=b[i]&1;
;	genCast
;	genCopy
	lda	*__srulonglong_sloc1_1_0
;	Raw cost for generated ic 68 : (2, 3.000000) count=0.999936
;	genAssign
;	genCopy
	stz	*(__srulonglong_sloc3_1_0 + 1)
	sta	*__srulonglong_sloc3_1_0
;	Raw cost for generated ic 69 : (5, 7.000000) count=0.999936
;	genPointerGet
;	  setupDPTR - off=0 remat=__srulonglong_PARM_1 savea=0
	clc
	adc	#<(__srulonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srulonglong_sloc3_1_0 + 1)
	adc	#>(__srulonglong_PARM_1+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 70 : (16, 24.000000) count=0.999936
;	genAnd
	tay
	and	#0x01
	sta	__srulonglong_t1_10000_2
;	Raw cost for generated ic 72 : (6, 8.000000) count=0.999936
;	_srulonglong.c: 26: b[i]=(b[i]>>1)|t2;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=1
	tya
	lsr	a
;	Raw cost for generated ic 80 : (2, 4.000000) count=0.999936
;	genOr
	ora	__srulonglong_t2_10000_2
;	Raw cost for generated ic 81 : (3, 4.000000) count=0.999936
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=__srulonglong_PARM_1 savea=0
	clc
	lda	*__srulonglong_sloc3_1_0
	adc	#<(__srulonglong_PARM_1+0)
	sta	*(DPTR+0)
	lda	*(__srulonglong_sloc3_1_0 + 1)
	adc	#>(__srulonglong_PARM_1+0)
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
;	Raw cost for generated ic 82 : (25, 38.000000) count=0.999936
;	_srulonglong.c: 27: t2=t1?0x80:0;
;	genIfx
	lda	__srulonglong_t1_10000_2
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 83 : (8, 9.600000) count=0.999936
;	genAssign
;	genCopy
	lda	#0x80
;	Raw cost for generated ic 84 : (2, 2.000000) count=0.749942
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 85 : (3, 3.000000) count=0.749942
;	genLabel
00120$:
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.249977
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 87 : (2, 2.000000) count=0.249977
;	genLabel
00121$:
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.999919
;	genCast
;	genCopy
	sta	__srulonglong_t2_10000_2
;	Raw cost for generated ic 89 : (3, 4.000000) count=0.999919
;	_srulonglong.c: 24: for(i=7-zb;i>=0;i--) {
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	*__srulonglong_sloc1_1_0
;	Raw cost for generated ic 93 : (2, 5.000000) count=0.999919
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.999919
;	genLabel
00108$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999951
;	_srulonglong.c: 31: return(l);
;	genRet
	lda	(__srulonglong_PARM_1 + 7)
	sta	*___SDCC_m6502_ret7
	lda	(__srulonglong_PARM_1 + 6)
	sta	*___SDCC_m6502_ret6
	lda	(__srulonglong_PARM_1 + 5)
	sta	*___SDCC_m6502_ret5
	lda	(__srulonglong_PARM_1 + 4)
	sta	*___SDCC_m6502_ret4
	lda	(__srulonglong_PARM_1 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(__srulonglong_PARM_1 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(__srulonglong_PARM_1 + 1)
	lda	__srulonglong_PARM_1
;	Raw cost for generated ic 99 : (36, 50.000000) count=0.999951
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.999951
;	_srulonglong.c: 32: }
;	genEndFunction
	rts
;	Raw cost for generated ic 101 : (1, 6.000000) count=0.999951
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
