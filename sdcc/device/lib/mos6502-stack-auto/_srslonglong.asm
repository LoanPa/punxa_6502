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
	.globl __srslonglong
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
;l             Allocated to stack - sp +17 +8 
;s             Allocated to stack - sp +25 +1 
;b             Allocated to stack - sp +13 +2 
;shift         Allocated to registers 
;t1            Allocated to registers y 
;t2            Allocated to stack - sp +6 +2 
;sign          Allocated to stack - sp +12 +1 
;zb            Allocated to stack - sp +11 +1 
;i             Allocated to stack - sp +10 +1 
;sloc0         Allocated to stack - sp +8 +2 
;sloc1         Allocated to stack - sp +6 +2 
;sloc2         Allocated to stack - sp +4 +2 
;sloc3         Allocated to stack - sp +3 +1 
;sloc4         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	_srslonglong.c: 5: long long _srslonglong(long long l, char s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _srslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
__srslonglong:
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	_srslonglong.c: 8: uint8_t *const b = (uint8_t *)(&l);
;	genAddrOf
	txa
	clc
	adc	#0x11
	sta	0x108,x
	lda	#0x01
;	Raw cost for generated ic 2 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x109,x
	sta	0x10e,x
	lda	0x108,x
	sta	0x10d,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	_srslonglong.c: 12: sign=b[7]&0x80;
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x109,x
	lda	0x10d,x
	sta	0x108,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=7 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x109,x
	sta	*(DPTR+1)
	ldy	#0x07
	lda	[DPTR],y
;	Raw cost for generated ic 7 : (12, 19.000000) count=1.000000
;	genAnd
	tay
	and	#0x80
	sta	0x10c,x
;	Raw cost for generated ic 9 : (6, 9.000000) count=1.000000
;	_srslonglong.c: 14: zb=s>>3;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=3
	lda	0x119,x
	lsr	a
	lsr	a
	lsr	a
	sta	0x10b,x
;	Raw cost for generated ic 12 : (9, 15.000000) count=1.000000
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
	lda	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 122 : (5, 7.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 18 : (0, 0.000000) count=2.999995
;	_srslonglong.c: 17: for(;i<(8-zb);i++) {
;	genCast
	tsx
	lda	0x10b,x
	sta	0x108,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x109,x
;	Raw cost for generated ic 19 : (17, 24.000000) count=2.999995
;	genMinus
	lda	#0x08
	sec
	sbc	0x108,x
	sta	0x106,x
	lda	#0x00
	sbc	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 20 : (17, 24.000000) count=2.999995
;	genCast
	lda	0x10a,x
	sta	0x104,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x105,x
;	Raw cost for generated ic 21 : (16, 22.000000) count=2.999995
;	genCmp
	lda	0x104,x
	sec
	sbc	0x106,x
	lda	0x105,x
	sbc	0x107,x
	bvc	00196$
	bpl	00195$
	bmi	00129$
00196$:
	bpl	00129$
00195$:
;	Raw cost for generated ic 22 : (24, 31.400002) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=2.999995
;	_srslonglong.c: 18: b[i]=b[zb+i];
;	genPlus
	lda	0x10d,x
	clc
	adc	0x104,x
	sta	0x106,x
	lda	0x10e,x
	adc	0x105,x
	sta	0x107,x
;	Raw cost for generated ic 27 : (19, 28.000000) count=2.249995
;	genPlus
	lda	0x108,x
	clc
	adc	0x104,x
	pha
	lda	0x109,x
	adc	0x105,x
	tax
	pla
;	Raw cost for generated ic 30 : (16, 27.000000) count=2.249995
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10d,x
	sta	0x104,x
	lda	*(REGTEMP+0)
	adc	0x10e,x
	sta	0x105,x
;	Raw cost for generated ic 31 : (18, 28.000000) count=2.249995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x104,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 32 : (12, 19.000000) count=2.249995
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x106,x
	sta	*(DPTR+0)
	lda	0x107,x
	sta	*(DPTR+1)
	ldx	*(REGTEMP+0)
	txa
	sta	[DPTR],y
;	Raw cost for generated ic 33 : (20, 33.000000) count=2.249995
;	_srslonglong.c: 17: for(;i<(8-zb);i++) {
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10a,x
	clc
	adc	#0x01
	sta	0x10a,x
;	Raw cost for generated ic 36 : (10, 15.000000) count=2.249995
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 38 : (3, 3.000000) count=2.249995
;	genLabel
00129$:
;	Raw cost for generated ic 116 : (0, 0.000000) count=0.749999
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	tay
;	Raw cost for generated ic 125 : (5, 8.000000) count=0.749999
;	genLabel
00113$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=2.999981
;	_srslonglong.c: 20: for(;i<8;i++)
;	genCmp
	tya
	sec
	sbc	#0x08
	bvc	00199$
	bpl	00198$
	bmi	00104$
00199$:
	bpl	00104$
00198$:
;	Raw cost for generated ic 41 : (15, 19.400002) count=2.999981
;	skipping generated iCode
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.999981
;	_srslonglong.c: 21: b[i]=sign?0xff:0x00;
;	genCast
;	genCopy
	ldx	#0x00
	tya
	bpl	00201$
	dex
00201$:
;	Raw cost for generated ic 45 : (6, 8.600000) count=2.249983
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10d,x
	sta	0x104,x
	lda	*(REGTEMP+0)
	adc	0x10e,x
	sta	0x105,x
;	Raw cost for generated ic 46 : (18, 28.000000) count=2.249983
;	genIfx
	lda	0x10c,x
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 47 : (8, 9.600000) count=2.249983
;	genAssign
;	genCopy
	lda	#0xff
;	Raw cost for generated ic 48 : (2, 2.000000) count=1.687488
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 49 : (3, 3.000000) count=1.687488
;	genLabel
00120$:
;	Raw cost for generated ic 50 : (0, 0.000000) count=0.562495
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 51 : (2, 2.000000) count=0.562495
;	genLabel
00121$:
;	Raw cost for generated ic 52 : (0, 0.000000) count=2.249983
;	genCast
;	genCopy
;	Raw cost for generated ic 53 : (0, 0.000000) count=2.249983
;	genPointerSet
	sta	*(REGTEMP+0)
	sty	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x104,x
	sta	*(DPTR+0)
	lda	0x105,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+1)
;	Raw cost for generated ic 54 : (23, 36.000000) count=2.249983
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
	tsx
	lda	0x119,x
	and	#0x07
	sta	0x104,x
;	Raw cost for generated ic 63 : (9, 13.000000) count=0.999994
;	_srslonglong.c: 25: while(shift--) {
;	genMinus
	lda	#0x07
	sec
	sbc	0x10b,x
	sta	0x10a,x
;	Raw cost for generated ic 74 : (9, 13.000000) count=0.999994
;	genLabel
00106$:
;	Raw cost for generated ic 66 : (0, 0.000000) count=3.999697
;	genAssign
;	genCopy
	tsx
;	Raw cost for generated ic 67 : (7, 11.000000) count=3.999697
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x104,x
	sta	0x106,x
	sec
	sbc	#0x01
	sta	0x104,x
;	Raw cost for generated ic 68 : (9, 13.000000) count=3.999697
;	genIfx
	lda	0x106,x
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 70 : (8, 9.600000) count=3.999697
;	_srslonglong.c: 26: t2=sign;
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x106,x
;	Raw cost for generated ic 73 : (6, 9.000000) count=2.999773
;	_srslonglong.c: 27: for(i=7-zb;i>=0;i--) {
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 75 : (6, 9.000000) count=2.999773
;	genLabel
00116$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=3.999632
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	#0x00
	bvs	00207$
	bpl	00206$
	bmi	00106$
00207$:
	bpl	00106$
00206$:
;	Raw cost for generated ic 77 : (18, 23.400002) count=3.999632
;	skipping generated iCode
;	Raw cost for generated ic 78 : (0, 0.000000) count=3.999632
;	_srslonglong.c: 28: t1=b[i]&1;
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x103,x
;	Raw cost for generated ic 81 : (6, 9.000000) count=0.999888
;	genPlus
	lda	0x10d,x
	clc
	adc	0x103,x
	sta	0x101,x
	lda	0x10e,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 82 : (18, 26.000000) count=0.999888
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x101,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 83 : (12, 19.000000) count=0.999888
;	genAnd
	tax
	and	#0x01
	tay
;	Raw cost for generated ic 85 : (4, 6.000000) count=0.999888
;	_srslonglong.c: 29: b[i]=(b[i]>>1)|t2;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=1
	txa
	lsr	a
;	Raw cost for generated ic 93 : (2, 4.000000) count=0.999888
;	genOr
	tsx
	ora	0x106,x
;	Raw cost for generated ic 94 : (4, 6.000000) count=0.999888
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 95 : (8, 14.000000) count=0.999888
;	_srslonglong.c: 30: t2=t1?0x80:0;
;	genIfx
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 96 : (5, 5.600000) count=0.999888
;	genAssign
;	genCopy
	lda	#0x80
;	Raw cost for generated ic 97 : (2, 2.000000) count=0.749899
;	genGoto
	jmp	00123$
;	Raw cost for generated ic 98 : (3, 3.000000) count=0.749899
;	genLabel
00122$:
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.249960
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 100 : (2, 2.000000) count=0.249960
;	genLabel
00123$:
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999859
;	genCast
;	genCopy
	tsx
	sta	0x106,x
;	Raw cost for generated ic 102 : (4, 7.000000) count=0.999859
;	_srslonglong.c: 27: for(i=7-zb;i>=0;i--) {
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x108,x
	sec
	sbc	#0x01
	sta	0x108,x
;	Raw cost for generated ic 106 : (9, 13.000000) count=0.999859
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.999859
;	genLabel
00108$:
;	Raw cost for generated ic 111 : (0, 0.000000) count=0.999924
;	_srslonglong.c: 34: return(l);
;	genRet
	tsx
	lda	0x118,x
	sta	*___SDCC_m6502_ret7
	lda	0x117,x
	sta	*___SDCC_m6502_ret6
	lda	0x116,x
	sta	*___SDCC_m6502_ret5
	lda	0x115,x
	sta	*___SDCC_m6502_ret4
	lda	0x114,x
	sta	*___SDCC_m6502_ret3
	lda	0x113,x
	sta	*___SDCC_m6502_ret2
	lda	0x112,x
	sta	*(REGTEMP+0)
	lda	0x111,x
;	Raw cost for generated ic 112 : (41, 58.000000) count=0.999924
;	genLabel
;	Raw cost for generated ic 113 : (0, 0.000000) count=0.999924
;	_srslonglong.c: 35: }
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 114 : (16, 30.000000) count=0.999924
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
