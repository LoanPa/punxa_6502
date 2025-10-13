;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _atof
	
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
	.globl _toupper
	.globl _isspace
	.globl _atof
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;s             Allocated to stack - sp +24 +2 
;__200000004   Allocated to registers 
;value         Allocated to stack - sp +5 +4 
;fraction      Allocated to stack - sp +1 +4 
;iexp          Allocated to registers y 
;sign          Allocated to stack - sp +23 +1 
;__300000005   Allocated to registers 
;c             Allocated to registers 
;__400000007   Allocated to registers 
;__500000008   Allocated to registers 
;c             Allocated to registers 
;sloc0         Allocated to stack - sp +21 +2 
;sloc1         Allocated to stack - sp +17 +4 
;sloc2         Allocated to stack - sp +13 +4 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../_atof.c: 33: float atof(const char * s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_atof:
;	  adjustStack : cycles stk:75  incdec:60  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
	lda	*(REGTEMP+1)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
	tsx
	sta	0x115,x
	lda	*(REGTEMP+0)
	sta	0x116,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../_atof.c: 40: while (isspace(*s)) s++;
;	genLabel
00101$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 5 : (16, 25.000000) count=3.999997
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 6 : (3, 4.000000) count=3.999997
;	Raw cost for generated ic 7 : (0, 0.000000) count=3.999997
;	genCall
;	genSend
	jsr	_isspace
;	assignResultValue
;	Raw cost for generated ic 8 : (3, 6.000000) count=3.999997
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00253$
	cpx	#0x00
	beq	00155$
00253$:
;	Raw cost for generated ic 9 : (11, 12.200000) count=3.999997
;	genPlus
;	  genPlusInc
	tsx
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x116,x
	adc	#0x00
	sta	0x116,x
;	Raw cost for generated ic 13 : (18, 26.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 15 : (3, 3.000000) count=2.999997
;	genLabel
00155$:
;	Raw cost for generated ic 191 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	tsx
	lda	0x116,x
	sta	0x119,x
;	Raw cost for generated ic 192 : (13, 20.000000) count=0.999999
;	../_atof.c: 43: if (*s == '-')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	0x118,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 18 : (15, 23.000000) count=0.999999
;	genCmpEQorNE
	cpy	#0x2d
	bne	00107$
;	Raw cost for generated ic 19 : (7, 7.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.999999
;	../_atof.c: 45: sign=1;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x117,x
;	Raw cost for generated ic 23 : (5, 7.000000) count=0.749999
;	../_atof.c: 46: s++;
;	genPlus
;	  genPlusInc
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x118,x
	lda	0x116,x
	adc	#0x00
	sta	0x119,x
;	Raw cost for generated ic 25 : (17, 24.000000) count=0.749999
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.249999
;	../_atof.c: 50: sign=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x117,x
;	Raw cost for generated ic 29 : (6, 9.000000) count=0.249999
;	../_atof.c: 51: if (*s == '+') s++;
;	genCmpEQorNE
	cpy	#0x2b
	bne	00108$
;	Raw cost for generated ic 32 : (7, 7.600000) count=0.249999
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.249999
;	genPlus
;	  genPlusInc
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x118,x
	lda	0x116,x
	adc	#0x00
	sta	0x119,x
;	Raw cost for generated ic 37 : (17, 24.000000) count=0.187499
;	genLabel
00108$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999997
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 41 : (15, 24.000000) count=0.999997
;	genAssign
;	genCopy
	lda	0x119,x
	sta	0x116,x
	lda	0x118,x
	sta	0x115,x
;	Raw cost for generated ic 193 : (12, 18.000000) count=0.999997
;	genLabel
00126$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.285706
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 44 : (15, 23.000000) count=2.285706
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
;	Raw cost for generated ic 48 : (0, 0.000000) count=2.285706
;	genCmp
	cmp	#0x30
	bcs	00256$
	jmp	00156$
00256$:
;	Raw cost for generated ic 49 : (7, 7.600000) count=2.285706
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=2.285706
;	genCmp
	cmp	#0x39
	beq	00257$
	bcc	00257$
	jmp	00156$
00257$:
;	Raw cost for generated ic 53 : (9, 10.200000) count=1.714278
;	skipping generated iCode
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.714278
;	../_atof.c: 57: value=10.0*value+(*s-'0');
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 211 : (16, 28.000000) count=1.285709
;	genIpush
	lda	#0x41
	pha
	lda	#0x20
	pha
	tya
	pha
	pha
;	Raw cost for generated ic 212 : (9, 18.000000) count=1.285709
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 213 : (30, 50.000000) count=1.285709
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 71 : (14, 21.000000) count=1.285709
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 72 : (2, 2.000000) count=1.285709
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00259$
	dex
00259$:
;	Raw cost for generated ic 73 : (6, 8.600000) count=1.285709
;	Raw cost for generated ic 214 : (0, 0.000000) count=1.285709
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	Raw cost for generated ic 215 : (24, 40.000000) count=1.285709
;	genIpush
	pha
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 216 : (13, 24.000000) count=1.285709
;	genIpush
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
;	Raw cost for generated ic 217 : (16, 28.000000) count=1.285709
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 218 : (30, 50.000000) count=1.285709
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
;	genPlus
;	  genPlusInc
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x115,x
	lda	0x116,x
	adc	#0x00
	sta	0x116,x
;	Raw cost for generated ic 79 : (17, 24.000000) count=1.285709
;	genGoto
	jmp	00126$
;	Raw cost for generated ic 81 : (3, 3.000000) count=1.285709
;	genLabel
00156$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.999996
;	genAssign
;	genCopy
	tsx
	lda	0x116,x
	sta	0x10e,x
;	Raw cost for generated ic 195 : (13, 20.000000) count=0.999996
;	../_atof.c: 61: if (*s == '.')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	0x10d,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 84 : (14, 21.000000) count=0.999996
;	genCmpEQorNE
	cmp	#0x2e
	beq	00260$
	jmp	00112$
00260$:
;	Raw cost for generated ic 85 : (7, 7.600000) count=0.999996
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.999996
;	../_atof.c: 63: s++;
;	genPlus
;	  genPlusInc
	lda	0x115,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x116,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 90 : (17, 24.000000) count=0.749996
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
;	genAssign
;	genAssignLit
	lda	#0xcd
	sta	0x101,x
	lda	#0xcc
	sta	0x102,x
	sta	0x103,x
	lda	#0x3d
	sta	0x104,x
;	Raw cost for generated ic 92 : (18, 26.000000) count=0.749996
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x112,x
	lda	0x10d,x
	sta	0x111,x
;	Raw cost for generated ic 196 : (12, 18.000000) count=0.749996
;	genLabel
00129$:
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.714275
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 95 : (15, 23.000000) count=1.714275
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 99 : (1, 2.000000) count=1.714275
;	genCmp
	cpx	#0x30
	bcs	00261$
	jmp	00157$
00261$:
;	Raw cost for generated ic 100 : (7, 7.600000) count=1.714275
;	skipping generated iCode
;	Raw cost for generated ic 102 : (0, 0.000000) count=1.714275
;	genCmp
	cpx	#0x39
	beq	00262$
	bcc	00262$
	jmp	00157$
00262$:
;	Raw cost for generated ic 104 : (9, 10.200000) count=1.285705
;	skipping generated iCode
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.285705
;	../_atof.c: 66: value+=(*s-'0')*fraction;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	[DPTR],y
;	Raw cost for generated ic 121 : (2, 5.000000) count=0.964279
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 122 : (2, 2.000000) count=0.964279
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00264$
	dex
00264$:
;	Raw cost for generated ic 123 : (6, 8.600000) count=0.964279
;	Raw cost for generated ic 219 : (0, 0.000000) count=0.964279
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	Raw cost for generated ic 220 : (24, 40.000000) count=0.964279
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 221 : (16, 28.000000) count=0.964279
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 222 : (16, 28.000000) count=0.964279
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 223 : (30, 50.000000) count=0.964279
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 224 : (16, 28.000000) count=0.964279
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 225 : (16, 28.000000) count=0.964279
;	genCall
	jsr	___fsadd
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 226 : (30, 50.000000) count=0.964279
;	../_atof.c: 67: fraction*=0.1;
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 227 : (16, 28.000000) count=0.964279
;	genIpush
	lda	#0x3d
	pha
	lda	#0xcc
	pha
	pha
	lda	#0xcd
	pha
;	Raw cost for generated ic 228 : (10, 18.000000) count=0.964279
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x109,x
	lda	*(REGTEMP+0)
	sta	0x10a,x
	lda	*___SDCC_m6502_ret2
	sta	0x10b,x
	lda	*___SDCC_m6502_ret3
	sta	0x10c,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 229 : (30, 50.000000) count=0.964279
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
;	genPlus
;	  genPlusInc
	lda	0x111,x
	clc
	adc	#0x01
	sta	0x111,x
	lda	0x112,x
	adc	#0x00
	sta	0x112,x
;	Raw cost for generated ic 132 : (17, 24.000000) count=0.964279
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 134 : (3, 3.000000) count=0.964279
;	genLabel
00157$:
;	Raw cost for generated ic 197 : (0, 0.000000) count=0.749995
;	genAssign
;	genCopy
	tsx
	lda	0x112,x
	sta	0x10e,x
	lda	0x111,x
	sta	0x10d,x
;	Raw cost for generated ic 198 : (13, 20.000000) count=0.749995
;	genLabel
00112$:
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.999994
;	../_atof.c: 72: if (toupper(*s)=='E')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 138 : (15, 23.000000) count=0.999994
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 139 : (2, 2.000000) count=0.999994
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.999994
;	genCall
;	genSend
	jsr	_toupper
;	assignResultValue
;	Raw cost for generated ic 141 : (3, 6.000000) count=0.999994
;	genCmpEQorNE
	cmp	#0x45
	bne	00266$
	cpx	#0x00
	beq	00267$
00266$:
	jmp	00120$
00267$:
;	Raw cost for generated ic 142 : (14, 15.200001) count=0.999994
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.999994
;	../_atof.c: 74: s++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10d,x
	clc
	adc	#0x01
	sta	0x10d,x
	lda	0x10e,x
	adc	#0x00
	sta	0x10e,x
;	Raw cost for generated ic 147 : (18, 26.000000) count=0.749996
;	../_atof.c: 75: iexp=(signed char)atoi(s);
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.749996
;	genCall
;	genSend
	lda	0x10d,x
	tay
	lda	0x10e,x
	tax
	tya
	jsr	_atoi
;	assignResultValue
;	Raw cost for generated ic 150 : (12, 20.000000) count=0.749996
;	genCast
;	genCopy
	tay
;	Raw cost for generated ic 151 : (1, 2.000000) count=0.749996
;	../_atof.c: 77: while(iexp!=0)
;	genLabel
00116$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=2.999760
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00269$
	jmp	00120$
00269$:
;	Raw cost for generated ic 154 : (7, 7.600000) count=2.999760
;	../_atof.c: 79: if(iexp<0)
;	genCmp
	tya
	sec
	sbc	#0x00
	bvc	00271$
	bpl	00270$
	bmi	00114$
00271$:
	bpl	00114$
00270$:
;	Raw cost for generated ic 157 : (15, 19.400002) count=2.249820
;	skipping generated iCode
;	Raw cost for generated ic 158 : (0, 0.000000) count=2.249820
;	../_atof.c: 81: value*=0.1;
;	genIpush
	tya
	pha
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 230 : (19, 35.000000) count=1.687337
;	genIpush
	lda	#0x3d
	pha
	lda	#0xcc
	pha
	pha
	lda	#0xcd
	pha
;	Raw cost for generated ic 231 : (10, 18.000000) count=1.687337
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	lda	*(REGTEMP+0)
	sta	0x10f,x
	lda	*___SDCC_m6502_ret2
	sta	0x110,x
	lda	*___SDCC_m6502_ret3
	sta	0x111,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 232 : (36, 62.000000) count=1.687337
;	../_atof.c: 82: iexp++;
;	genPlus
;	  genPlusInc
	iny
;	Raw cost for generated ic 164 : (1, 2.000000) count=1.687337
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 166 : (3, 3.000000) count=1.687337
;	genLabel
00114$:
;	Raw cost for generated ic 167 : (0, 0.000000) count=0.562428
;	../_atof.c: 86: value*=10.0;
;	genIpush
	tya
	pha
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 233 : (19, 35.000000) count=0.562428
;	genIpush
	lda	#0x41
	pha
	lda	#0x20
	pha
	lda	#0x00
	pha
	pha
;	Raw cost for generated ic 234 : (10, 18.000000) count=0.562428
;	genCall
	jsr	___fsmul
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10e,x
	lda	*(REGTEMP+0)
	sta	0x10f,x
	lda	*___SDCC_m6502_ret2
	sta	0x110,x
	lda	*___SDCC_m6502_ret3
	sta	0x111,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 235 : (36, 62.000000) count=0.562428
;	../_atof.c: 87: iexp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dey
;	Raw cost for generated ic 171 : (1, 2.000000) count=0.562428
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 174 : (3, 3.000000) count=0.562428
;	genLabel
00120$:
;	Raw cost for generated ic 176 : (0, 0.000000) count=0.999926
;	../_atof.c: 93: if(sign) value*=-1.0;
;	genIfx
	tsx
	lda	0x117,x
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 177 : (9, 11.600000) count=0.999926
;	genUminus
;	genUminusFloat
	lda	0x108,x
	eor	#0x80
	sta	0x108,x
;	Raw cost for generated ic 180 : (8, 11.000000) count=0.749944
;	genLabel
00122$:
;	Raw cost for generated ic 182 : (0, 0.000000) count=0.999926
;	../_atof.c: 94: return (value);
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret3
	lda	0x107,x
	sta	*___SDCC_m6502_ret2
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 183 : (21, 30.000000) count=0.999926
;	genLabel
;	Raw cost for generated ic 184 : (0, 0.000000) count=0.999926
;	../_atof.c: 95: }
;	genEndFunction
;	  adjustStack : cycles stk:106  incdec:60  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x19
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 185 : (16, 30.000000) count=0.999926
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
