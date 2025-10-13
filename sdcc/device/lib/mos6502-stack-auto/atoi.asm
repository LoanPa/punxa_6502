;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atoi
	
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
	.globl _atoi
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;nptr          Allocated to stack - sp +8 +2 
;__200000007   Allocated to registers 
;__200000004   Allocated to registers 
;ret           Allocated to stack - sp +6 +2 
;neg           Allocated to stack - sp +5 +1 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__200000008   Allocated to registers 
;c             Allocated to registers 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../atoi.c: 34: int atoi(const char *nptr)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_atoi:
;	  adjustStack : cycles stk:27  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xf7
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x103,x
	lda	*(REGTEMP+0)
	sta	0x104,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../atoi.c: 36: int ret = 0;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x106,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (8, 12.000000) count=1.000000
;	../atoi.c: 39: while (isblank (*nptr))
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 6 : (15, 23.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 10 : (1, 2.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x20
	beq	00115$
;	Raw cost for generated ic 11 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x09
	bne	00131$
;	Raw cost for generated ic 14 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999992
;	genLabel
00115$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=4.333324
;	../atoi.c: 40: nptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 30 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 32 : (3, 3.000000) count=4.333324
;	genLabel
00131$:
;	Raw cost for generated ic 105 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x109,x
;	Raw cost for generated ic 106 : (13, 20.000000) count=0.999997
;	../atoi.c: 42: neg = (*nptr == '-');
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	0x108,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 35 : (15, 23.000000) count=0.999997
;	genCmpEQorNE
	cpy	#0x2d
	beq	00178$
	lda	#0x00
	jmp	00177$
00178$:
	lda	#0x01
00177$:
	sta	0x105,x
;	Raw cost for generated ic 36 : (14, 16.600000) count=0.999997
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
;	genCmpEQorNE
	cpy	#0x2d
	beq	00104$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cpy	#0x2b
	bne	00129$
;	Raw cost for generated ic 46 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.749996
;	genLabel
00104$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.812496
;	../atoi.c: 45: nptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x108,x
	clc
	adc	#0x01
	sta	0x108,x
	lda	0x109,x
	adc	#0x00
	sta	0x109,x
;	Raw cost for generated ic 51 : (18, 26.000000) count=0.812496
;	../atoi.c: 47: while (isdigit (*nptr))
;	genLabel
00129$:
;	Raw cost for generated ic 103 : (0, 0.000000) count=0.999995
;	genAssign
;	genCopy
	tsx
	lda	0x109,x
	sta	0x104,x
	lda	0x108,x
	sta	0x103,x
;	Raw cost for generated ic 107 : (13, 20.000000) count=0.999995
;	genLabel
00107$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=2.285698
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 56 : (15, 23.000000) count=2.285698
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 60 : (1, 2.000000) count=2.285698
;	genCmp
	cpx	#0x30
	bcc	00109$
;	Raw cost for generated ic 61 : (7, 7.600000) count=2.285698
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=2.285698
;	genCmp
	cpx	#0x39
	beq	00182$
	bcs	00109$
00182$:
;	Raw cost for generated ic 65 : (9, 10.200000) count=1.714274
;	skipping generated iCode
;	Raw cost for generated ic 67 : (0, 0.000000) count=1.714274
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
;	genIpush
	tsx
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 116 : (9, 16.000000) count=1.285703
;	Raw cost for generated ic 117 : (0, 0.000000) count=1.285703
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	__mulint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x103,x
	lda	*(REGTEMP+0)
	sta	0x104,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
;	Raw cost for generated ic 118 : (21, 34.000000) count=1.285703
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 85 : (15, 23.000000) count=1.285703
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 83 : (17, 24.000000) count=1.285703
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 86 : (3, 4.000000) count=1.285703
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00184$
	dex
00184$:
;	Raw cost for generated ic 87 : (6, 8.600000) count=1.285703
;	genPlus
	stx	*(REGTEMP+0)
	clc
	tsx
	adc	0x101,x
	sta	0x106,x
	lda	*(REGTEMP+0)
	adc	0x102,x
	sta	0x107,x
;	Raw cost for generated ic 88 : (18, 28.000000) count=1.285703
;	genGoto
	jmp	00107$
;	Raw cost for generated ic 90 : (3, 3.000000) count=1.285703
;	genLabel
00109$:
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.999991
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
;	genIfx
	tsx
	lda	0x105,x
;	genIfxJump : z
	beq	00120$
;	Raw cost for generated ic 92 : (9, 11.600000) count=0.999991
;	genUminus
	lda	#0x00
	sec
	sbc	0x106,x
	pha
	lda	#0x00
	sbc	0x107,x
	tax
	pla
;	Raw cost for generated ic 93 : (14, 23.000000) count=0.749993
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.749993
;	genLabel
00120$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.249996
;	genAssign
;	genCopy
	tsx
	lda	0x106,x
	tay
	lda	0x107,x
	tax
	tya
;	Raw cost for generated ic 97 : (10, 16.000000) count=0.249996
;	genLabel
00121$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999989
;	genRet
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.999989
;	genLabel
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.999989
;	../atoi.c: 51: }
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 101 : (16, 30.000000) count=0.999989
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
