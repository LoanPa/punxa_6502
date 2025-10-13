;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _srulonglong
	
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
	.globl __srulonglong
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
;Allocation info for local variables in function '_srulonglong'
;------------------------------------------------------------
;l             Allocated to stack - sp +16 +8 
;s             Allocated to stack - sp +24 +1 
;b             Allocated to stack - sp +12 +2 
;shift         Allocated to registers 
;t1            Allocated to registers y 
;t2            Allocated to stack - sp +6 +2 
;zb            Allocated to stack - sp +11 +1 
;i             Allocated to stack - sp +10 +1 
;sloc0         Allocated to stack - sp +8 +2 
;sloc1         Allocated to stack - sp +6 +2 
;sloc2         Allocated to stack - sp +4 +2 
;sloc3         Allocated to stack - sp +3 +1 
;sloc4         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	_srulonglong.c: 5: unsigned long long _srulonglong(unsigned long long l, char s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _srulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 13 bytes.
__srulonglong:
;	  adjustStack : cycles stk:39  incdec:30  adc:12
	tsx
	txa
	clc
	adc	#0xf3
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	_srulonglong.c: 7: uint8_t *const b = (uint8_t *)(&l);
;	genAddrOf
	txa
	clc
	adc	#0x10
	sta	0x108,x
	lda	#0x01
;	Raw cost for generated ic 2 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x109,x
	sta	0x10d,x
	lda	0x108,x
	sta	0x10c,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	_srulonglong.c: 11: zb=s>>3;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=3
	lda	0x118,x
	lsr	a
	lsr	a
	lsr	a
	sta	0x10b,x
;	Raw cost for generated ic 6 : (9, 15.000000) count=1.000000
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
	lda	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 108 : (5, 7.000000) count=0.750000
;	genLabel
00110$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=2.999995
;	genCast
	tsx
	lda	0x10b,x
	sta	0x108,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x109,x
;	Raw cost for generated ic 13 : (17, 24.000000) count=2.999995
;	genMinus
	lda	#0x08
	sec
	sbc	0x108,x
	sta	0x106,x
	lda	#0x00
	sbc	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 14 : (17, 24.000000) count=2.999995
;	genCast
	lda	0x10a,x
	sta	0x104,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x105,x
;	Raw cost for generated ic 15 : (16, 22.000000) count=2.999995
;	genCmp
	lda	0x104,x
	sec
	sbc	0x106,x
	lda	0x105,x
	sbc	0x107,x
	bvc	00188$
	bpl	00187$
	bmi	00126$
00188$:
	bpl	00126$
00187$:
;	Raw cost for generated ic 16 : (24, 31.400002) count=2.999995
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=2.999995
;	_srulonglong.c: 14: b[i]=b[zb+i];
;	genPlus
	lda	0x10c,x
	clc
	adc	0x104,x
	sta	0x106,x
	lda	0x10d,x
	adc	0x105,x
	sta	0x107,x
;	Raw cost for generated ic 21 : (19, 28.000000) count=2.249995
;	genPlus
	lda	0x108,x
	clc
	adc	0x104,x
	pha
	lda	0x109,x
	adc	0x105,x
	tax
	pla
;	Raw cost for generated ic 24 : (16, 27.000000) count=2.249995
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10c,x
	sta	0x104,x
	lda	*(REGTEMP+0)
	adc	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 25 : (18, 28.000000) count=2.249995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x104,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 26 : (12, 19.000000) count=2.249995
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
;	Raw cost for generated ic 27 : (20, 33.000000) count=2.249995
;	_srulonglong.c: 13: for(i=0;i<(8-zb);i++) {
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10a,x
	clc
	adc	#0x01
	sta	0x10a,x
;	Raw cost for generated ic 30 : (10, 15.000000) count=2.249995
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 32 : (3, 3.000000) count=2.249995
;	genLabel
00126$:
;	Raw cost for generated ic 103 : (0, 0.000000) count=0.749999
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	tay
;	Raw cost for generated ic 111 : (5, 8.000000) count=0.749999
;	genLabel
00113$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=2.999988
;	_srulonglong.c: 17: for(;i<8;i++)
;	genCmp
	tya
	sec
	sbc	#0x08
	bvc	00191$
	bpl	00190$
	bmi	00104$
00191$:
	bpl	00104$
00190$:
;	Raw cost for generated ic 35 : (15, 19.400002) count=2.999988
;	skipping generated iCode
;	Raw cost for generated ic 36 : (0, 0.000000) count=2.999988
;	_srulonglong.c: 18: b[i]=0;
;	genCast
;	genCopy
	ldx	#0x00
	tya
	bpl	00193$
	dex
00193$:
;	Raw cost for generated ic 39 : (6, 8.600000) count=2.249989
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x10c,x
	sta	0x104,x
	lda	*(REGTEMP+0)
	adc	0x10d,x
	sta	0x105,x
;	Raw cost for generated ic 40 : (18, 28.000000) count=2.249989
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x104,x
	sta	*(DPTR+0)
	lda	#0x00
	tay
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 41 : (16, 26.000000) count=2.249989
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
	tsx
	lda	0x118,x
	and	#0x07
	sta	0x104,x
;	Raw cost for generated ic 50 : (9, 13.000000) count=0.999997
;	_srulonglong.c: 22: while(shift--) {
;	genMinus
	lda	#0x07
	sec
	sbc	0x10b,x
	sta	0x10a,x
;	Raw cost for generated ic 61 : (9, 13.000000) count=0.999997
;	genLabel
00106$:
;	Raw cost for generated ic 53 : (0, 0.000000) count=3.999825
;	genAssign
;	genCopy
	tsx
;	Raw cost for generated ic 54 : (7, 11.000000) count=3.999825
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x104,x
	sta	0x106,x
	sec
	sbc	#0x01
	sta	0x104,x
;	Raw cost for generated ic 55 : (9, 13.000000) count=3.999825
;	genIfx
	lda	0x106,x
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 57 : (8, 9.600000) count=3.999825
;	_srulonglong.c: 23: t2=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x106,x
;	Raw cost for generated ic 60 : (5, 7.000000) count=2.999869
;	_srulonglong.c: 24: for(i=7-zb;i>=0;i--) {
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 62 : (6, 9.000000) count=2.999869
;	genLabel
00116$:
;	Raw cost for generated ic 63 : (0, 0.000000) count=3.999788
;	genCmp
	tsx
	lda	0x108,x
	sec
	sbc	#0x00
	bvs	00197$
	bpl	00196$
	bmi	00106$
00197$:
	bpl	00106$
00196$:
;	Raw cost for generated ic 64 : (18, 23.400002) count=3.999788
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=3.999788
;	_srulonglong.c: 25: t1=b[i]&1;
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x103,x
;	Raw cost for generated ic 68 : (6, 9.000000) count=0.999936
;	genPlus
	lda	0x10c,x
	clc
	adc	0x103,x
	sta	0x101,x
	lda	0x10d,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 69 : (18, 26.000000) count=0.999936
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+1)
	lda	0x101,x
	sta	*(DPTR+0)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 70 : (12, 19.000000) count=0.999936
;	genAnd
	tax
	and	#0x01
	tay
;	Raw cost for generated ic 72 : (4, 6.000000) count=0.999936
;	_srulonglong.c: 26: b[i]=(b[i]>>1)|t2;
;	genRightShift
;	genRightShiftLiteral
;	  genrsh8 - shift=1
	txa
	lsr	a
;	Raw cost for generated ic 80 : (2, 4.000000) count=0.999936
;	genOr
	tsx
	ora	0x106,x
;	Raw cost for generated ic 81 : (4, 6.000000) count=0.999936
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	ldy	#0x00
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 82 : (8, 14.000000) count=0.999936
;	_srulonglong.c: 27: t2=t1?0x80:0;
;	genIfx
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 83 : (5, 5.600000) count=0.999936
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
	tsx
	sta	0x106,x
;	Raw cost for generated ic 89 : (4, 7.000000) count=0.999919
;	_srulonglong.c: 24: for(i=7-zb;i>=0;i--) {
;	genMinus
;	  genMinusDec - size=1  icount=1
	lda	0x108,x
	sec
	sbc	#0x01
	sta	0x108,x
;	Raw cost for generated ic 93 : (9, 13.000000) count=0.999919
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.999919
;	genLabel
00108$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999951
;	_srulonglong.c: 31: return(l);
;	genRet
	tsx
	lda	0x117,x
	sta	*___SDCC_m6502_ret7
	lda	0x116,x
	sta	*___SDCC_m6502_ret6
	lda	0x115,x
	sta	*___SDCC_m6502_ret5
	lda	0x114,x
	sta	*___SDCC_m6502_ret4
	lda	0x113,x
	sta	*___SDCC_m6502_ret3
	lda	0x112,x
	sta	*___SDCC_m6502_ret2
	lda	0x111,x
	sta	*(REGTEMP+0)
	lda	0x110,x
;	Raw cost for generated ic 99 : (41, 58.000000) count=0.999951
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.999951
;	_srulonglong.c: 32: }
;	genEndFunction
;	  adjustStack : cycles stk:58  incdec:36  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0d
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 101 : (16, 30.000000) count=0.999951
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
