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
_atof_sloc0_1_0:
	.ds 2
_atof_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_atof_value_10000_63:
	.ds 4
_atof_fraction_10000_63:
	.ds 4
_atof_iexp_10000_63:
	.ds 1
_atof_sign_10000_63:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0         Allocated with name '_atof_sloc0_1_0'
;sloc1         Allocated with name '_atof_sloc1_1_0'
;s             Allocated to registers a x 
;__200000004   Allocated to registers 
;value         Allocated with name '_atof_value_10000_63'
;fraction      Allocated with name '_atof_fraction_10000_63'
;iexp          Allocated with name '_atof_iexp_10000_63'
;sign          Allocated with name '_atof_sign_10000_63'
;__300000005   Allocated to registers 
;c             Allocated to registers 
;__400000007   Allocated to registers 
;__500000008   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../_atof.c: 33: float atof(const char * s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atof:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_atof_sloc0_1_0
	stx	*(_atof_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../_atof.c: 40: while (isspace(*s)) s++;
;	genLabel
00101$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=3.999997
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 5 : (4, 7.000000) count=3.999997
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 6 : (2, 2.000000) count=3.999997
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
	inc	*_atof_sloc0_1_0
	bne	00101$
	inc	*(_atof_sloc0_1_0 + 1)
;	Raw cost for generated ic 13 : (6, 12.600000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 15 : (3, 3.000000) count=2.999997
;	genLabel
00155$:
;	Raw cost for generated ic 191 : (0, 0.000000) count=0.999999
;	genAssign
;	genCopy
	ldx	*(_atof_sloc0_1_0 + 1)
	lda	*_atof_sloc0_1_0
;	Raw cost for generated ic 192 : (4, 6.000000) count=0.999999
;	../_atof.c: 43: if (*s == '-')
;	genPointerGet
	sta	*(REGTEMP+0)
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
	tay
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 18 : (9, 15.000000) count=0.999999
;	genCmpEQorNE
	cpy	#0x2d
	bne	00107$
;	Raw cost for generated ic 19 : (7, 7.600000) count=0.999999
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.999999
;	../_atof.c: 45: sign=1;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_atof_sign_10000_63
;	Raw cost for generated ic 23 : (5, 6.000000) count=0.749999
;	../_atof.c: 46: s++;
;	genPlus
;	  genPlusInc
	ldx	*(_atof_sloc0_1_0 + 1)
	lda	*_atof_sloc0_1_0
	clc
	adc	#0x01
	bcc	00108$
	inx
;	Raw cost for generated ic 25 : (10, 14.600000) count=0.749999
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.749999
;	genLabel
00107$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.249999
;	../_atof.c: 50: sign=0;
;	genAssign
;	genAssignLit
	pha
	lda	#0x00
	sta	_atof_sign_10000_63
	pla
;	Raw cost for generated ic 29 : (7, 13.000000) count=0.249999
;	../_atof.c: 51: if (*s == '+') s++;
;	genCmpEQorNE
	cpy	#0x2b
	bne	00108$
;	Raw cost for generated ic 32 : (7, 7.600000) count=0.249999
;	skipping generated iCode
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.249999
;	genPlus
;	  genPlusInc
	ldx	*(_atof_sloc0_1_0 + 1)
	lda	*_atof_sloc0_1_0
	clc
	adc	#0x01
	bcc	00258$
	inx
00258$:
;	Raw cost for generated ic 37 : (10, 14.600000) count=0.187499
;	genLabel
00108$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.999997
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_atof_value_10000_63
	sty	(_atof_value_10000_63 + 1)
	sty	(_atof_value_10000_63 + 2)
	sty	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 41 : (14, 18.000000) count=0.999997
;	genAssign
;	genCopy
	sta	*_atof_sloc0_1_0
	stx	*(_atof_sloc0_1_0 + 1)
;	Raw cost for generated ic 193 : (4, 6.000000) count=0.999997
;	genLabel
00126$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=2.285706
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 44 : (4, 7.000000) count=2.285706
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
;	Raw cost for generated ic 48 : (0, 0.000000) count=2.285706
;	genCmp
	cmp	#0x30
	bcs	00259$
	jmp	00156$
00259$:
;	Raw cost for generated ic 49 : (7, 7.600000) count=2.285706
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=2.285706
;	genCmp
	cmp	#0x39
	beq	00260$
	bcc	00260$
	jmp	00156$
00260$:
;	Raw cost for generated ic 53 : (9, 10.200000) count=1.714278
;	skipping generated iCode
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.714278
;	../_atof.c: 57: value=10.0*value+(*s-'0');
;	genAssign
;	genAssignLit
	sty	___fsmul_PARM_1
	sty	(___fsmul_PARM_1 + 1)
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x41
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 211 : (16, 20.000000) count=1.285709
;	genAssign
;	genCopy
	lda	(_atof_value_10000_63 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atof_value_10000_63 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_10000_63 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atof_value_10000_63
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 212 : (24, 32.000000) count=1.285709
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	*_atof_sloc1_1_0
	stx	*(_atof_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_atof_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_atof_sloc1_1_0 + 3)
;	Raw cost for generated ic 213 : (15, 24.000000) count=1.285709
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 71 : (4, 7.000000) count=1.285709
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 72 : (2, 2.000000) count=1.285709
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00262$
	dex
00262$:
;	Raw cost for generated ic 73 : (6, 8.600000) count=1.285709
;	Raw cost for generated ic 214 : (0, 0.000000) count=1.285709
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 215 : (19, 28.000000) count=1.285709
;	genAssign
;	genCopy
	lda	*(_atof_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	*(_atof_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_atof_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*_atof_sloc1_1_0
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 216 : (20, 28.000000) count=1.285709
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atof_value_10000_63
	stx	(_atof_value_10000_63 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_10000_63 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 218 : (19, 28.000000) count=1.285709
;	../_atof.c: 55: for (value=0.0; isdigit(*s); s++)
;	genPlus
;	  genPlusInc
	inc	*_atof_sloc0_1_0
	bne	00263$
	inc	*(_atof_sloc0_1_0 + 1)
00263$:
;	Raw cost for generated ic 79 : (6, 12.600000) count=1.285709
;	genGoto
	jmp	00126$
;	Raw cost for generated ic 81 : (3, 3.000000) count=1.285709
;	genLabel
00156$:
;	Raw cost for generated ic 194 : (0, 0.000000) count=0.999996
;	genAssign
;	genCopy
	lda	*(_atof_sloc0_1_0 + 1)
	sta	*(_atof_sloc1_1_0 + 1)
	lda	*_atof_sloc0_1_0
	sta	*_atof_sloc1_1_0
;	Raw cost for generated ic 195 : (8, 12.000000) count=0.999996
;	../_atof.c: 61: if (*s == '.')
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 84 : (4, 7.000000) count=0.999996
;	genCmpEQorNE
	cmp	#0x2e
	beq	00264$
	jmp	00112$
00264$:
;	Raw cost for generated ic 85 : (7, 7.600000) count=0.999996
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.999996
;	../_atof.c: 63: s++;
;	genPlus
;	  genPlusInc
	lda	*_atof_sloc0_1_0
	clc
	adc	#0x01
	sta	*_atof_sloc1_1_0
	lda	*(_atof_sloc0_1_0 + 1)
	adc	#0x00
	sta	*(_atof_sloc1_1_0 + 1)
;	Raw cost for generated ic 90 : (13, 18.000000) count=0.749996
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
;	genAssign
;	genAssignLit
	ldx	#0xcd
	stx	_atof_fraction_10000_63
	dex
	stx	(_atof_fraction_10000_63 + 1)
	stx	(_atof_fraction_10000_63 + 2)
	ldx	#0x3d
	stx	(_atof_fraction_10000_63 + 3)
;	Raw cost for generated ic 92 : (17, 22.000000) count=0.749996
;	genAssign
;	genCopy
	sta	*(_atof_sloc0_1_0 + 1)
	lda	*_atof_sloc1_1_0
	sta	*_atof_sloc0_1_0
;	Raw cost for generated ic 196 : (6, 9.000000) count=0.749996
;	genLabel
00129$:
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.714275
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 95 : (4, 7.000000) count=1.714275
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
;	genCast
;	genCopy
;	Raw cost for generated ic 99 : (0, 0.000000) count=1.714275
;	genCmp
	cmp	#0x30
	bcs	00265$
	jmp	00157$
00265$:
;	Raw cost for generated ic 100 : (7, 7.600000) count=1.714275
;	skipping generated iCode
;	Raw cost for generated ic 102 : (0, 0.000000) count=1.714275
;	genCmp
	cmp	#0x39
	beq	00266$
	bcc	00266$
	jmp	00157$
00266$:
;	Raw cost for generated ic 104 : (9, 10.200000) count=1.285705
;	skipping generated iCode
;	Raw cost for generated ic 106 : (0, 0.000000) count=1.285705
;	../_atof.c: 66: value+=(*s-'0')*fraction;
;	genPointerGet
	lda	[*_atof_sloc0_1_0],y
;	Raw cost for generated ic 121 : (2, 5.000000) count=0.964279
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 122 : (2, 2.000000) count=0.964279
;	genMinus
;	  genMinusDec - size=2  icount=48
	sec
	sbc	#0x30
	bcs	00268$
	dex
00268$:
;	Raw cost for generated ic 123 : (6, 8.600000) count=0.964279
;	Raw cost for generated ic 219 : (0, 0.000000) count=0.964279
;	genCall
;	genSend
	jsr	___sint2fs
;	assignResultValue
	sta	___fsmul_PARM_1
	stx	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 220 : (19, 28.000000) count=0.964279
;	genAssign
;	genCopy
	lda	(_atof_fraction_10000_63 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atof_fraction_10000_63 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_10000_63 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atof_fraction_10000_63
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 222 : (24, 32.000000) count=0.964279
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	___fsadd_PARM_2
	stx	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(___fsadd_PARM_2 + 3)
;	Raw cost for generated ic 223 : (19, 28.000000) count=0.964279
;	genAssign
;	genCopy
	lda	(_atof_value_10000_63 + 3)
	sta	(___fsadd_PARM_1 + 3)
	lda	(_atof_value_10000_63 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	(_atof_value_10000_63 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	_atof_value_10000_63
	sta	___fsadd_PARM_1
;	Raw cost for generated ic 224 : (24, 32.000000) count=0.964279
;	genCall
	jsr	___fsadd
;	assignResultValue
	sta	_atof_value_10000_63
	stx	(_atof_value_10000_63 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_10000_63 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 226 : (19, 28.000000) count=0.964279
;	../_atof.c: 67: fraction*=0.1;
;	genAssign
;	genAssignLit
	ldx	#0xcd
	stx	___fsmul_PARM_1
	dex
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 227 : (17, 22.000000) count=0.964279
;	genAssign
;	genCopy
	lda	(_atof_fraction_10000_63 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atof_fraction_10000_63 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_fraction_10000_63 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atof_fraction_10000_63
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 228 : (24, 32.000000) count=0.964279
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_atof_fraction_10000_63
	stx	(_atof_fraction_10000_63 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_fraction_10000_63 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_fraction_10000_63 + 3)
;	Raw cost for generated ic 229 : (19, 28.000000) count=0.964279
;	../_atof.c: 64: for (fraction=0.1; isdigit(*s); s++)
;	genPlus
;	  genPlusInc
	inc	*_atof_sloc0_1_0
	bne	00269$
	inc	*(_atof_sloc0_1_0 + 1)
00269$:
;	Raw cost for generated ic 132 : (6, 12.600000) count=0.964279
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 134 : (3, 3.000000) count=0.964279
;	genLabel
00157$:
;	Raw cost for generated ic 197 : (0, 0.000000) count=0.749995
;	genAssign
;	genCopy
	lda	*(_atof_sloc0_1_0 + 1)
	sta	*(_atof_sloc1_1_0 + 1)
	lda	*_atof_sloc0_1_0
	sta	*_atof_sloc1_1_0
;	Raw cost for generated ic 198 : (8, 12.000000) count=0.749995
;	genLabel
00112$:
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.999994
;	../_atof.c: 72: if (toupper(*s)=='E')
;	genPointerGet
	ldy	#0x00
	lda	[*_atof_sloc1_1_0],y
;	Raw cost for generated ic 138 : (4, 7.000000) count=0.999994
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
	bne	00271$
	cpx	#0x00
	beq	00272$
00271$:
	jmp	00120$
00272$:
;	Raw cost for generated ic 142 : (14, 15.200001) count=0.999994
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.999994
;	../_atof.c: 74: s++;
;	genPlus
;	  genPlusInc
	inc	*_atof_sloc1_1_0
	bne	00273$
	inc	*(_atof_sloc1_1_0 + 1)
00273$:
;	Raw cost for generated ic 147 : (6, 12.600000) count=0.749996
;	../_atof.c: 75: iexp=(signed char)atoi(s);
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.749996
;	genCall
;	genSend
	ldx	*(_atof_sloc1_1_0 + 1)
	lda	*_atof_sloc1_1_0
	jsr	_atoi
;	assignResultValue
;	Raw cost for generated ic 150 : (7, 12.000000) count=0.749996
;	genCast
;	genCopy
	sta	_atof_iexp_10000_63
;	Raw cost for generated ic 151 : (3, 4.000000) count=0.749996
;	../_atof.c: 77: while(iexp!=0)
;	genLabel
00116$:
;	Raw cost for generated ic 153 : (0, 0.000000) count=2.999760
;	genIfx
	lda	_atof_iexp_10000_63
;	genIfxJump : z
	bne	00275$
	jmp	00120$
00275$:
;	Raw cost for generated ic 154 : (8, 9.600000) count=2.999760
;	../_atof.c: 79: if(iexp<0)
;	genCmp
	bit	_atof_iexp_10000_63
	bpl	00114$
;	Raw cost for generated ic 157 : (8, 9.600000) count=2.249820
;	skipping generated iCode
;	Raw cost for generated ic 158 : (0, 0.000000) count=2.249820
;	../_atof.c: 81: value*=0.1;
;	genAssign
;	genAssignLit
	ldx	#0xcd
	stx	___fsmul_PARM_1
	dex
	stx	(___fsmul_PARM_1 + 1)
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x3d
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 230 : (17, 22.000000) count=1.687337
;	genAssign
;	genCopy
	lda	(_atof_value_10000_63 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atof_value_10000_63 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_10000_63 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atof_value_10000_63
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 231 : (24, 32.000000) count=1.687337
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_atof_value_10000_63
	stx	(_atof_value_10000_63 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_10000_63 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 232 : (19, 28.000000) count=1.687337
;	../_atof.c: 82: iexp++;
;	genPlus
;	  genPlusInc
	inc	_atof_iexp_10000_63
;	Raw cost for generated ic 164 : (3, 6.000000) count=1.687337
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 166 : (3, 3.000000) count=1.687337
;	genLabel
00114$:
;	Raw cost for generated ic 167 : (0, 0.000000) count=0.562428
;	../_atof.c: 86: value*=10.0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	___fsmul_PARM_1
	sty	(___fsmul_PARM_1 + 1)
	ldx	#0x20
	stx	(___fsmul_PARM_1 + 2)
	ldx	#0x41
	stx	(___fsmul_PARM_1 + 3)
;	Raw cost for generated ic 233 : (18, 22.000000) count=0.562428
;	genAssign
;	genCopy
	lda	(_atof_value_10000_63 + 3)
	sta	(___fsmul_PARM_2 + 3)
	lda	(_atof_value_10000_63 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_10000_63 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	_atof_value_10000_63
	sta	___fsmul_PARM_2
;	Raw cost for generated ic 234 : (24, 32.000000) count=0.562428
;	genCall
	jsr	___fsmul
;	assignResultValue
	sta	_atof_value_10000_63
	stx	(_atof_value_10000_63 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_atof_value_10000_63 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 235 : (19, 28.000000) count=0.562428
;	../_atof.c: 87: iexp--;
;	genMinus
;	  genMinusDec - size=1  icount=1
	dec	_atof_iexp_10000_63
;	Raw cost for generated ic 171 : (3, 6.000000) count=0.562428
;	genGoto
	jmp	00116$
;	Raw cost for generated ic 174 : (3, 3.000000) count=0.562428
;	genLabel
00120$:
;	Raw cost for generated ic 176 : (0, 0.000000) count=0.999926
;	../_atof.c: 93: if(sign) value*=-1.0;
;	genIfx
	lda	_atof_sign_10000_63
;	genIfxJump : z
	beq	00122$
;	Raw cost for generated ic 177 : (8, 9.600000) count=0.999926
;	genUminus
;	genUminusFloat
	lda	(_atof_value_10000_63 + 3)
	eor	#0x80
	sta	(_atof_value_10000_63 + 3)
;	Raw cost for generated ic 180 : (8, 10.000000) count=0.749944
;	genLabel
00122$:
;	Raw cost for generated ic 182 : (0, 0.000000) count=0.999926
;	../_atof.c: 94: return (value);
;	genRet
	lda	(_atof_value_10000_63 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_atof_value_10000_63 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_atof_value_10000_63 + 1)
	lda	_atof_value_10000_63
;	Raw cost for generated ic 183 : (16, 22.000000) count=0.999926
;	genLabel
;	Raw cost for generated ic 184 : (0, 0.000000) count=0.999926
;	../_atof.c: 95: }
;	genEndFunction
	rts
;	Raw cost for generated ic 185 : (1, 6.000000) count=0.999926
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
