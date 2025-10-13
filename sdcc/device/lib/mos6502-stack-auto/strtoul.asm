;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoul
	
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
	.globl _strncmp
	.globl _strtoul
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base          Allocated to registers x 
;c             Allocated to registers a 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../strtoul.c: 40: static signed char _isdigit(const char c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	../strtoul.c: 44: if (c >= '0' && c <= '9')
;	genCmp
	cmp	#0x30
	bcc	00110$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00160$
	bcs	00110$
00160$:
;	Raw cost for generated ic 8 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	../strtoul.c: 45: v = c - '0';
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	../strtoul.c: 46: else if (c >= 'a' && c <='z')
;	genCmp
	cmp	#0x61
	bcc	00106$
;	Raw cost for generated ic 17 : (7, 7.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.437500
;	genCmp
	cmp	#0x7a
	beq	00163$
	bcs	00106$
00163$:
;	Raw cost for generated ic 21 : (9, 10.200000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.328125
;	../strtoul.c: 47: v = c - 'a' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 26 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	../strtoul.c: 48: else if (c >= 'A' && c <='Z')
;	genCmp
	cmp	#0x41
	bcc	00102$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.191406
;	genCmp
	cmp	#0x5a
	beq	00166$
	bcs	00102$
00166$:
;	Raw cost for generated ic 34 : (9, 10.200000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.143555
;	../strtoul.c: 49: v = c - 'A' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.107666
;	genPlus
;	  genPlusInc
	clc
	adc	#0xc9
;	Raw cost for generated ic 39 : (3, 4.000000) count=0.107666
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 41 : (3, 3.000000) count=0.107666
;	genLabel
00102$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.083740
;	../strtoul.c: 51: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../strtoul.c: 53: if (v >= base)
;	genCmp
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
	cmp	*(REGTEMP+1)
	lda	*(REGTEMP+0)
	bcc	00114$
;	Raw cost for generated ic 47 : (13, 17.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../strtoul.c: 54: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../strtoul.c: 56: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../strtoul.c: 57: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +45 +2 
;base          Allocated to stack - sp +47 +2 
;nptr          Allocated to stack - sp +41 +2 
;__200000004   Allocated to registers 
;ptr           Allocated to stack - sp +39 +2 
;ret           Allocated to stack - sp +9 +4 
;range_error   Allocated to stack - sp +38 +1 
;neg           Allocated to stack - sp +37 +1 
;b             Allocated to stack - sp +36 +1 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__400000127   Allocated to registers a 
;__400000122   Allocated to stack - sp +24 +1 
;__400000117   Allocated to stack - sp +23 +1 
;__400000112   Allocated to stack - sp +22 +1 
;__400000107   Allocated to stack - sp +21 +1 
;__400000102   Allocated to stack - sp +20 +1 
;__400000097   Allocated to stack - sp +19 +1 
;__400000092   Allocated to stack - sp +18 +1 
;__400000087   Allocated to stack - sp +17 +1 
;__400000082   Allocated to stack - sp +16 +1 
;__400000077   Allocated to stack - sp +15 +1 
;__400000072   Allocated to stack - sp +14 +1 
;__400000067   Allocated to stack - sp +13 +1 
;__400000062   Allocated to stack - sp +12 +1 
;__400000057   Allocated to stack - sp +11 +1 
;__400000052   Allocated to stack - sp +10 +1 
;__400000047   Allocated to registers a 
;__400000042   Allocated to stack - sp +8 +1 
;__400000037   Allocated to stack - sp +7 +1 
;__400000032   Allocated to stack - sp +6 +1 
;__400000027   Allocated to stack - sp +5 +1 
;__400000022   Allocated to stack - sp +4 +1 
;__400000017   Allocated to stack - sp +3 +1 
;__400000012   Allocated to stack - sp +2 +1 
;__400000007   Allocated to stack - sp +1 +1 
;digit         Allocated to registers y 
;__400000008   Allocated to stack - sp -2 +2 
;__400000009   Allocated to stack - sp -10 +8 
;__400000010   Allocated to stack - sp -18 +8 
;r             Allocated to stack - sp -20 +2 
;a             Allocated to stack - sp -28 +8 
;b             Allocated to stack - sp -36 +8 
;result        Allocated to stack - sp -44 +8 
;__400000013   Allocated to stack - sp -46 +2 
;__400000014   Allocated to stack - sp -54 +8 
;__400000015   Allocated to stack - sp -62 +8 
;r             Allocated to stack - sp -64 +2 
;a             Allocated to stack - sp -72 +8 
;b             Allocated to stack - sp -80 +8 
;result        Allocated to stack - sp -88 +8 
;__400000018   Allocated to stack - sp -90 +2 
;__400000019   Allocated to stack - sp -98 +8 
;__400000020   Allocated to stack - sp -106 +8 
;r             Allocated to stack - sp -108 +2 
;a             Allocated to stack - sp -116 +8 
;b             Allocated to stack - sp -124 +8 
;result        Allocated to stack - sp -132 +8 
;__400000023   Allocated to stack - sp -134 +2 
;__400000024   Allocated to stack - sp -142 +8 
;__400000025   Allocated to stack - sp -150 +8 
;r             Allocated to stack - sp -152 +2 
;a             Allocated to stack - sp -160 +8 
;b             Allocated to stack - sp -168 +8 
;result        Allocated to stack - sp -176 +8 
;__400000028   Allocated to stack - sp -178 +2 
;__400000029   Allocated to stack - sp -186 +8 
;__400000030   Allocated to stack - sp -194 +8 
;r             Allocated to stack - sp -196 +2 
;a             Allocated to stack - sp -204 +8 
;b             Allocated to stack - sp -212 +8 
;result        Allocated to stack - sp -220 +8 
;__400000033   Allocated to stack - sp -222 +2 
;__400000034   Allocated to stack - sp -230 +8 
;__400000035   Allocated to stack - sp -238 +8 
;r             Allocated to stack - sp -240 +2 
;a             Allocated to stack - sp -248 +8 
;b             Allocated to stack - sp -256 +8 
;result        Allocated to stack - sp -264 +8 
;__400000038   Allocated to stack - sp -266 +2 
;__400000039   Allocated to stack - sp -274 +8 
;__400000040   Allocated to stack - sp -282 +8 
;r             Allocated to stack - sp -284 +2 
;a             Allocated to stack - sp -292 +8 
;b             Allocated to stack - sp -300 +8 
;result        Allocated to stack - sp -308 +8 
;__400000043   Allocated to stack - sp -310 +2 
;__400000044   Allocated to stack - sp -318 +8 
;__400000045   Allocated to stack - sp -326 +8 
;r             Allocated to stack - sp -328 +2 
;a             Allocated to stack - sp -336 +8 
;b             Allocated to stack - sp -344 +8 
;result        Allocated to stack - sp -352 +8 
;__400000048   Allocated to stack - sp +34 +2 
;__400000049   Allocated to stack - sp -362 +8 
;__400000050   Allocated to stack - sp -370 +8 
;r             Allocated to registers 
;a             Allocated to stack - sp -380 +8 
;b             Allocated to stack - sp -388 +8 
;result        Allocated to stack - sp +1 +8 
;__400000053   Allocated to stack - sp -398 +2 
;__400000054   Allocated to stack - sp -406 +8 
;__400000055   Allocated to stack - sp -414 +8 
;r             Allocated to stack - sp -416 +2 
;a             Allocated to stack - sp -424 +8 
;b             Allocated to stack - sp -432 +8 
;result        Allocated to stack - sp -440 +8 
;__400000058   Allocated to stack - sp -442 +2 
;__400000059   Allocated to stack - sp -450 +8 
;__400000060   Allocated to stack - sp -458 +8 
;r             Allocated to stack - sp -460 +2 
;a             Allocated to stack - sp -468 +8 
;b             Allocated to stack - sp -476 +8 
;result        Allocated to stack - sp -484 +8 
;__400000063   Allocated to stack - sp -486 +2 
;__400000064   Allocated to stack - sp -494 +8 
;__400000065   Allocated to stack - sp -502 +8 
;r             Allocated to stack - sp -504 +2 
;a             Allocated to stack - sp -512 +8 
;b             Allocated to stack - sp -520 +8 
;result        Allocated to stack - sp -528 +8 
;__400000068   Allocated to stack - sp -530 +2 
;__400000069   Allocated to stack - sp -538 +8 
;__400000070   Allocated to stack - sp -546 +8 
;r             Allocated to stack - sp -548 +2 
;a             Allocated to stack - sp -556 +8 
;b             Allocated to stack - sp -564 +8 
;result        Allocated to stack - sp -572 +8 
;__400000073   Allocated to stack - sp -574 +2 
;__400000074   Allocated to stack - sp -582 +8 
;__400000075   Allocated to stack - sp -590 +8 
;r             Allocated to stack - sp -592 +2 
;a             Allocated to stack - sp -600 +8 
;b             Allocated to stack - sp -608 +8 
;result        Allocated to stack - sp -616 +8 
;__400000078   Allocated to stack - sp -618 +2 
;__400000079   Allocated to stack - sp -626 +8 
;__400000080   Allocated to stack - sp -634 +8 
;r             Allocated to stack - sp -636 +2 
;a             Allocated to stack - sp -644 +8 
;b             Allocated to stack - sp -652 +8 
;result        Allocated to stack - sp -660 +8 
;__400000083   Allocated to stack - sp -662 +2 
;__400000084   Allocated to stack - sp -670 +8 
;__400000085   Allocated to stack - sp -678 +8 
;r             Allocated to stack - sp -680 +2 
;a             Allocated to stack - sp -688 +8 
;b             Allocated to stack - sp -696 +8 
;result        Allocated to stack - sp -704 +8 
;__400000088   Allocated to stack - sp -706 +2 
;__400000089   Allocated to stack - sp -714 +8 
;__400000090   Allocated to stack - sp -722 +8 
;r             Allocated to stack - sp -724 +2 
;a             Allocated to stack - sp -732 +8 
;b             Allocated to stack - sp -740 +8 
;result        Allocated to stack - sp -748 +8 
;__400000093   Allocated to stack - sp -750 +2 
;__400000094   Allocated to stack - sp -758 +8 
;__400000095   Allocated to stack - sp -766 +8 
;r             Allocated to stack - sp -768 +2 
;a             Allocated to stack - sp -776 +8 
;b             Allocated to stack - sp -784 +8 
;result        Allocated to stack - sp -792 +8 
;__400000098   Allocated to stack - sp -794 +2 
;__400000099   Allocated to stack - sp -802 +8 
;__400000100   Allocated to stack - sp -810 +8 
;r             Allocated to stack - sp -812 +2 
;a             Allocated to stack - sp -820 +8 
;b             Allocated to stack - sp -828 +8 
;result        Allocated to stack - sp -836 +8 
;__400000103   Allocated to stack - sp -838 +2 
;__400000104   Allocated to stack - sp -846 +8 
;__400000105   Allocated to stack - sp -854 +8 
;r             Allocated to stack - sp -856 +2 
;a             Allocated to stack - sp -864 +8 
;b             Allocated to stack - sp -872 +8 
;result        Allocated to stack - sp -880 +8 
;__400000108   Allocated to stack - sp -882 +2 
;__400000109   Allocated to stack - sp -890 +8 
;__400000110   Allocated to stack - sp -898 +8 
;r             Allocated to stack - sp -900 +2 
;a             Allocated to stack - sp -908 +8 
;b             Allocated to stack - sp -916 +8 
;result        Allocated to stack - sp -924 +8 
;__400000113   Allocated to stack - sp -926 +2 
;__400000114   Allocated to stack - sp -934 +8 
;__400000115   Allocated to stack - sp -942 +8 
;r             Allocated to stack - sp -944 +2 
;a             Allocated to stack - sp -952 +8 
;b             Allocated to stack - sp -960 +8 
;result        Allocated to stack - sp -968 +8 
;__400000118   Allocated to stack - sp -970 +2 
;__400000119   Allocated to stack - sp -978 +8 
;__400000120   Allocated to stack - sp -986 +8 
;r             Allocated to stack - sp -988 +2 
;a             Allocated to stack - sp -996 +8 
;b             Allocated to stack - sp -1004 +8 
;result        Allocated to stack - sp -1012 +8 
;__400000123   Allocated to stack - sp -1014 +2 
;__400000124   Allocated to stack - sp -1022 +8 
;__400000125   Allocated to stack - sp -1030 +8 
;r             Allocated to stack - sp -1032 +2 
;a             Allocated to stack - sp -1040 +8 
;b             Allocated to stack - sp -1048 +8 
;result        Allocated to stack - sp -1056 +8 
;__400000128   Allocated to registers 
;__400000129   Allocated to stack - sp -1066 +8 
;__400000130   Allocated to stack - sp -1074 +8 
;r             Allocated to registers 
;a             Allocated to stack - sp -1084 +8 
;b             Allocated to stack - sp -1092 +8 
;result        Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +33 +1 
;sloc1         Allocated to stack - sp +31 +2 
;sloc2         Allocated to stack - sp +23 +8 
;sloc3         Allocated to stack - sp +15 +8 
;sloc4         Allocated to stack - sp +13 +2 
;------------------------------------------------------------
;	../strtoul.c: 61: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 42 bytes.
_strtoul:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:120  incdec:84  adc:12
	tsx
	txa
	clc
	adc	#0xd8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strtoul.c: 65: bool range_error = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x121,x
;	Raw cost for generated ic 4 : (5, 7.000000) count=1.000000
;	../strtoul.c: 66: bool neg = false;
;	genAssign
;	genAssignLit
	sta	0x125,x
;	Raw cost for generated ic 5 : (3, 5.000000) count=1.000000
;	../strtoul.c: 67: unsigned char b = base;
;	genCast
;	genCopy
	lda	0x12f,x
	sta	0x124,x
;	Raw cost for generated ic 6 : (6, 9.000000) count=1.000000
;	../strtoul.c: 69: while (isblank (*ptr))
;	genAssign
;	genCopy
	lda	0x12a,x
	sta	0x120,x
	lda	0x129,x
	sta	0x11f,x
;	Raw cost for generated ic 284 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 10 : (15, 23.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
	tax
;	Raw cost for generated ic 14 : (1, 2.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x20
	beq	00172$
;	Raw cost for generated ic 15 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cpx	#0x09
	bne	00197$
;	Raw cost for generated ic 18 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999992
;	genLabel
00172$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=4.333324
;	../strtoul.c: 70: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x11f,x
	clc
	adc	#0x01
	sta	0x11f,x
	lda	0x120,x
	adc	#0x00
	sta	0x120,x
;	Raw cost for generated ic 34 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 36 : (3, 3.000000) count=4.333324
;	genLabel
00197$:
;	Raw cost for generated ic 285 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x120,x
	sta	0x128,x
;	Raw cost for generated ic 286 : (13, 20.000000) count=0.999997
;	../strtoul.c: 73: switch(*ptr)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11f,x
	sta	0x127,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 39 : (15, 23.000000) count=0.999997
;	genCmpEQorNE
	cpx	#0x2b
	beq	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cpx	#0x2d
	bne	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.749996
;	../strtoul.c: 76: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	tsx
	sta	0x125,x
;	Raw cost for generated ic 46 : (6, 9.000000) count=0.562496
;	../strtoul.c: 77: case '+':
;	genLabel
00105$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.812494
;	../strtoul.c: 78: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x127,x
	clc
	adc	#0x01
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 49 : (18, 26.000000) count=0.812494
;	../strtoul.c: 79: }
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999993
;	../strtoul.c: 82: if (!b)
;	genIfx
	tsx
	lda	0x124,x
;	genIfxJump : z
	beq	00319$
	jmp	00128$
00319$:
;	Raw cost for generated ic 52 : (9, 11.600000) count=0.999993
;	../strtoul.c: 84: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.749995
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 57 : (6, 10.000000) count=0.749995
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 58 : (6, 10.000000) count=0.749995
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	lda	0x127,x
	tay
	lda	0x128,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 60 : (22, 38.000000) count=0.749995
;	genIfx
;	genIfxJump : z
	bne	00321$
	cmp	#0x00
	beq	00114$
00321$:
;	Raw cost for generated ic 61 : (9, 10.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.562496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 66 : (6, 10.000000) count=0.562496
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 67 : (6, 10.000000) count=0.562496
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	tsx
	lda	0x12b,x
	tay
	lda	0x12c,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 69 : (23, 40.000000) count=0.562496
;	genIfx
;	genIfxJump : z
	bne	00115$
	cmp	#0x00
	bne	00115$
;	Raw cost for generated ic 70 : (9, 10.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.609371
;	../strtoul.c: 86: b = 16;
;	genAssign
;	genAssignLit
	lda	#0x10
	tsx
	sta	0x124,x
;	Raw cost for generated ic 73 : (6, 9.000000) count=0.609371
;	../strtoul.c: 87: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x127,x
	clc
	adc	#0x02
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 74 : (17, 24.000000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	../strtoul.c: 89: else if (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.140623
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 80 : (6, 10.000000) count=0.140623
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 81 : (6, 10.000000) count=0.140623
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	tsx
	lda	0x12b,x
	tay
	lda	0x12c,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 83 : (23, 40.000000) count=0.140623
;	genIfx
;	genIfxJump : z
	bne	00325$
	cmp	#0x00
	beq	00110$
00325$:
;	Raw cost for generated ic 84 : (9, 10.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.105467
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.105467
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 89 : (6, 10.000000) count=0.105467
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 90 : (6, 10.000000) count=0.105467
;	Raw cost for generated ic 91 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	tsx
	lda	0x12b,x
	tay
	lda	0x12c,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 92 : (23, 40.000000) count=0.105467
;	genIfx
;	genIfxJump : z
	bne	00111$
	cmp	#0x00
	bne	00111$
;	Raw cost for generated ic 93 : (9, 10.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.114256
;	../strtoul.c: 91: b = 2;
;	genAssign
;	genAssignLit
	lda	#0x02
	tsx
	sta	0x124,x
;	Raw cost for generated ic 96 : (6, 9.000000) count=0.114256
;	../strtoul.c: 92: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x127,x
	clc
	adc	#0x02
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 97 : (17, 24.000000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 99 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.020970
;	../strtoul.c: 94: else if (*ptr == '0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x127,x
	sta	*(DPTR+0)
	lda	0x128,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 102 : (16, 25.000000) count=0.020970
;	genCmpEQorNE
	cpx	#0x30
	bne	00108$
;	Raw cost for generated ic 103 : (7, 7.600000) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.020970
;	../strtoul.c: 96: b = 8;
;	genAssign
;	genAssignLit
	lda	#0x08
	tsx
	sta	0x124,x
;	Raw cost for generated ic 107 : (6, 9.000000) count=0.015727
;	../strtoul.c: 97: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x127,x
	clc
	adc	#0x01
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 109 : (17, 24.000000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 111 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=0.000000
;	../strtoul.c: 100: b = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	tsx
	sta	0x124,x
;	Raw cost for generated ic 113 : (6, 9.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 117 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.249997
;	../strtoul.c: 103: else if (b == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
;	genCmpEQorNE
	tsx
	lda	0x124,x
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 119 : (11, 13.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.187496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 125 : (6, 10.000000) count=0.187496
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 126 : (6, 10.000000) count=0.187496
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	lda	0x127,x
	tay
	lda	0x128,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 128 : (22, 38.000000) count=0.187496
;	genIfx
;	genIfxJump : z
	bne	00331$
	cmp	#0x00
	beq	00122$
00331$:
;	Raw cost for generated ic 129 : (9, 10.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.140622
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.140622
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 134 : (6, 10.000000) count=0.140622
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 135 : (6, 10.000000) count=0.140622
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	tsx
	lda	0x12b,x
	tay
	lda	0x12c,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 137 : (23, 40.000000) count=0.140622
;	genIfx
;	genIfxJump : z
	bne	00123$
	cmp	#0x00
	bne	00123$
;	Raw cost for generated ic 138 : (9, 10.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.152341
;	../strtoul.c: 104: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x127,x
	clc
	adc	#0x02
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 141 : (18, 26.000000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 143 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.097654
;	../strtoul.c: 105: else if (b == 2 && (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2)))
;	genCmpEQorNE
	tsx
	lda	0x124,x
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 145 : (11, 13.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.073241
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 151 : (6, 10.000000) count=0.073241
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 152 : (6, 10.000000) count=0.073241
;	Raw cost for generated ic 153 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	lda	0x127,x
	tay
	lda	0x128,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 154 : (22, 38.000000) count=0.073241
;	genIfx
;	genIfxJump : z
	bne	00336$
	cmp	#0x00
	beq	00118$
00336$:
;	Raw cost for generated ic 155 : (9, 10.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.054931
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.054931
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 160 : (6, 10.000000) count=0.054931
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 161 : (6, 10.000000) count=0.054931
;	Raw cost for generated ic 162 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	tsx
	lda	0x12b,x
	tay
	lda	0x12c,x
	tax
	tya
	jsr	_strncmp
;	assignResultValue
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 163 : (23, 40.000000) count=0.054931
;	genIfx
;	genIfxJump : z
	bne	00129$
	cmp	#0x00
	bne	00129$
;	Raw cost for generated ic 164 : (9, 10.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.059508
;	../strtoul.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x127,x
	clc
	adc	#0x02
	sta	0x127,x
	lda	0x128,x
	adc	#0x00
	sta	0x128,x
;	Raw cost for generated ic 167 : (18, 26.000000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 171 : (0, 0.000000) count=0.989349
;	../strtoul.c: 109: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x127,x
	sta	*(DPTR+0)
	lda	0x128,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (16, 25.000000) count=0.989349
;	Raw cost for generated ic 174 : (0, 0.000000) count=0.989349
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	genCall
;	genSend
	tay
	sta	*(REGTEMP+0)
	lda	0x124,x
	tax
	lda	*(REGTEMP+0)
	jsr	__isdigit
;	assignResultValue
;	Raw cost for generated ic 176 : (12, 20.000000) count=0.989349
;	genCmp
	sec
	sbc	#0x00
	bvc	00340$
	bpl	00339$
	bmi	00133$
00340$:
	bpl	00133$
00339$:
;	Raw cost for generated ic 177 : (14, 17.400000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.989349
;	../strtoul.c: 111: if (endptr)
;	genIfx
	tsx
	lda	0x12e,x
	ora	0x12d,x
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 181 : (12, 15.600000) count=0.742012
;	../strtoul.c: 112: *endptr = (char*)nptr;
;	genAssign
;	genCopy
	lda	0x12d,x
	tay
	lda	0x12e,x
	tax
	tya
;	Raw cost for generated ic 184 : (9, 14.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x129,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x12a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 185 : (18, 32.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 186 : (0, 0.000000) count=0.742012
;	../strtoul.c: 113: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00169$
;	Raw cost for generated ic 187 : (10, 13.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.989349
;	../strtoul.c: 116: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 189 : (15, 24.000000) count=0.989349
;	genAssign
;	genCopy
	lda	0x128,x
	sta	0x120,x
	lda	0x127,x
	sta	0x11f,x
;	Raw cost for generated ic 287 : (12, 18.000000) count=0.989349
;	genLabel
00167$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=3.958003
;	../strtoul.c: 118: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x11f,x
	sta	*(DPTR+0)
	lda	0x120,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 192 : (16, 25.000000) count=3.958003
;	Raw cost for generated ic 193 : (0, 0.000000) count=3.958003
;	Raw cost for generated ic 194 : (0, 0.000000) count=3.958003
;	genCall
;	genSend
	tay
	sta	*(REGTEMP+0)
	lda	0x124,x
	tax
	lda	*(REGTEMP+0)
	jsr	__isdigit
;	assignResultValue
;	Raw cost for generated ic 195 : (13, 22.000000) count=3.958003
;	../strtoul.c: 120: if (digit < 0)
;	genCmp
	tay
	sec
	sbc	#0x00
	bvs	00345$
	bpl	00344$
	bmi	00346$
00345$:
	bmi	00344$
00346$:
	jmp	00136$
00344$:
;	Raw cost for generated ic 197 : (15, 19.400002) count=3.958003
;	skipping generated iCode
;	Raw cost for generated ic 198 : (0, 0.000000) count=3.958003
;	../strtoul.c: 124: range_error |= ckd_mul (&ret, ret, b);
;	genCast
;	genCopy
	lda	#0x00
	tsx
	sta	0x11e,x
	sta	0x11d,x
	sta	0x11c,x
	sta	0x11b,x
	sta	0x11a,x
	sta	0x119,x
	sta	0x118,x
	lda	0x124,x
	sta	0x117,x
;	Raw cost for generated ic 203 : (30, 48.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x116,x
	sta	0x115,x
	sta	0x114,x
	sta	0x113,x
	lda	0x10c,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x111,x
	lda	0x10a,x
	sta	0x110,x
	lda	0x109,x
	sta	0x10f,x
;	Raw cost for generated ic 205 : (38, 58.000000) count=2.968654
;	genAddrOf
	txa
	clc
	adc	#0x09
	sta	0x10d,x
	lda	#0x01
;	Raw cost for generated ic 207 : (12, 18.000000) count=2.968654
;	genCast
;	genCopy
	sta	0x10e,x
	sta	0x123,x
	lda	0x10d,x
	sta	0x122,x
;	Raw cost for generated ic 208 : (12, 18.000000) count=2.968654
;	genAssign
;	genCopy
	lda	0x123,x
	sta	0x10e,x
	lda	0x122,x
	sta	0x10d,x
;	Raw cost for generated ic 209 : (12, 18.000000) count=2.968654
;	./../../include/stdckdint.h: 77: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	genIpush
	tya
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 296 : (34, 61.000000) count=2.968654
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 297 : (32, 56.000000) count=2.968654
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x120,x
	lda	*(REGTEMP+0)
	sta	0x121,x
	lda	*___SDCC_m6502_ret2
	sta	0x122,x
	lda	*___SDCC_m6502_ret3
	sta	0x123,x
	lda	*___SDCC_m6502_ret4
	sta	0x124,x
	lda	*___SDCC_m6502_ret5
	sta	0x125,x
	lda	*___SDCC_m6502_ret6
	sta	0x126,x
	lda	*___SDCC_m6502_ret7
	sta	0x127,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 298 : (56, 94.000000) count=2.968654
;	genAssign
;	genCopy
	lda	0x117,x
	sta	0x109,x
	lda	0x116,x
	sta	0x108,x
	lda	0x115,x
	sta	0x107,x
	lda	0x114,x
	sta	0x106,x
	lda	0x113,x
	sta	0x105,x
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
;	Raw cost for generated ic 214 : (48, 72.000000) count=2.968654
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
;	Raw cost for generated ic 216 : (24, 36.000000) count=2.968654
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10e,x
	sta	*(DPTR+0)
	lda	0x10f,x
	sta	*(DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
	lda	0x112,x
	iny
	sta	[DPTR],y
	lda	0x113,x
	iny
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 217 : (39, 68.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x117,x
	sta	0x116,x
	sta	0x115,x
	sta	0x114,x
	lda	0x110,x
;	Raw cost for generated ic 220 : (38, 58.000000) count=2.968654
;	genCmpEQorNE
	cmp	0x102,x
	bne	00348$
	lda	0x111,x
	cmp	0x103,x
	bne	00348$
	lda	0x112,x
	cmp	0x104,x
	bne	00348$
	lda	0x113,x
	cmp	0x105,x
	bne	00348$
	lda	0x114,x
	cmp	0x106,x
	bne	00348$
	lda	0x115,x
	cmp	0x107,x
	bne	00348$
	lda	0x116,x
	cmp	0x108,x
	bne	00348$
	lda	0x117,x
	cmp	0x109,x
	beq	00356$
00348$:
	lda	#0x00
	jmp	00355$
00356$:
	lda	#0x01
00355$:
;	Raw cost for generated ic 221 : (89, 108.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 222 : (2, 2.000000) count=2.968654
;	../strtoul.c: 124: range_error |= ckd_mul (&ret, ret, b);
;	genOr
	ora	0x122,x
	sta	0x127,x
;	Raw cost for generated ic 226 : (6, 9.000000) count=2.968654
;	../strtoul.c: 125: range_error |= ckd_add (&ret, ret, digit);
;	genCast
	tya
	sta	0x110,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
	sta	0x115,x
	sta	0x116,x
	sta	0x117,x
;	Raw cost for generated ic 228 : (32, 50.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x11f,x
	sta	0x11e,x
	sta	0x11d,x
	sta	0x11c,x
	lda	0x10d,x
	sta	0x11b,x
	lda	0x10c,x
	sta	0x11a,x
	lda	0x10b,x
	sta	0x119,x
	lda	0x10a,x
	sta	0x118,x
;	Raw cost for generated ic 230 : (38, 58.000000) count=2.968654
;	./../../include/stdckdint.h: 59: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	genPlus
	clc
	adc	0x110,x
	sta	0x110,x
	lda	0x119,x
	adc	0x111,x
	sta	0x111,x
	lda	0x11a,x
	adc	0x112,x
	sta	0x112,x
	lda	0x11b,x
	adc	0x113,x
	sta	0x113,x
	lda	0x11c,x
	adc	0x114,x
	sta	0x114,x
	lda	0x11d,x
	adc	0x115,x
	sta	0x115,x
	lda	0x11e,x
	adc	0x116,x
	sta	0x116,x
	lda	0x11f,x
	adc	0x117,x
	sta	0x117,x
;	Raw cost for generated ic 238 : (70, 102.000000) count=2.968654
;	genAssign
;	genCopy
	sta	0x109,x
	lda	0x116,x
	sta	0x108,x
	lda	0x115,x
	sta	0x107,x
	lda	0x114,x
	sta	0x106,x
	lda	0x113,x
	sta	0x105,x
	lda	0x112,x
	sta	0x104,x
	lda	0x111,x
	sta	0x103,x
	lda	0x110,x
	sta	0x102,x
;	Raw cost for generated ic 239 : (45, 68.000000) count=2.968654
;	genCast
;	genCopy
;	Raw cost for generated ic 241 : (24, 36.000000) count=2.968654
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x123,x
	sta	*(DPTR+0)
	lda	0x124,x
	sta	*(DPTR+1)
	lda	0x110,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
	lda	0x112,x
	iny
	sta	[DPTR],y
	lda	0x113,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 242 : (35, 62.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x117,x
	sta	0x116,x
	sta	0x115,x
	sta	0x114,x
	lda	0x110,x
;	Raw cost for generated ic 245 : (38, 58.000000) count=2.968654
;	genCmpEQorNE
	cmp	0x102,x
	bne	00359$
	lda	0x111,x
	cmp	0x103,x
	bne	00359$
	lda	0x112,x
	cmp	0x104,x
	bne	00359$
	lda	0x113,x
	cmp	0x105,x
	bne	00359$
	lda	0x114,x
	cmp	0x106,x
	bne	00359$
	lda	0x115,x
	cmp	0x107,x
	bne	00359$
	lda	0x116,x
	cmp	0x108,x
	bne	00359$
	lda	0x117,x
	cmp	0x109,x
	beq	00367$
00359$:
	lda	#0x00
	jmp	00366$
00367$:
	lda	#0x01
00366$:
;	Raw cost for generated ic 246 : (89, 108.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 247 : (2, 2.000000) count=2.968654
;	../strtoul.c: 125: range_error |= ckd_add (&ret, ret, digit);
;	genOr
	ora	0x127,x
	sta	0x122,x
;	Raw cost for generated ic 251 : (6, 9.000000) count=2.968654
;	../strtoul.c: 116: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	0x120,x
	clc
	adc	#0x01
	sta	0x120,x
	lda	0x121,x
	adc	#0x00
	sta	0x121,x
;	Raw cost for generated ic 255 : (17, 24.000000) count=2.968654
;	genGoto
	jmp	00167$
;	Raw cost for generated ic 257 : (3, 3.000000) count=2.968654
;	genLabel
00136$:
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.989619
;	../strtoul.c: 136: if (endptr)
;	genIfx
	tsx
	lda	0x12e,x
	ora	0x12d,x
;	genIfxJump : z
	beq	00138$
;	Raw cost for generated ic 259 : (12, 15.600000) count=0.989619
;	../strtoul.c: 137: *endptr = (char*)ptr;
;	genAssign
;	genCopy
	lda	0x12d,x
	tay
	lda	0x12e,x
	tax
	tya
;	Raw cost for generated ic 262 : (9, 14.000000) count=0.742214
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x11f,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x120,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 263 : (18, 32.000000) count=0.742214
;	genLabel
00138$:
;	Raw cost for generated ic 264 : (0, 0.000000) count=0.989619
;	../strtoul.c: 139: if (range_error)
;	genIfx
	tsx
	lda	0x121,x
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 265 : (9, 11.600000) count=0.989619
;	../strtoul.c: 141: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 269 : (10, 12.000000) count=0.742214
;	../strtoul.c: 142: return (ULONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00169$
;	Raw cost for generated ic 270 : (10, 13.000000) count=0.742214
;	genLabel
00140$:
;	Raw cost for generated ic 271 : (0, 0.000000) count=0.989619
;	../strtoul.c: 145: return (neg ? -ret : ret);
;	genIfx
	tsx
	lda	0x125,x
;	genIfxJump : z
	beq	00174$
;	Raw cost for generated ic 272 : (9, 11.600000) count=0.989619
;	genUminus
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x10f,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x110,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x111,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x112,x
;	Raw cost for generated ic 273 : (33, 46.000000) count=0.742214
;	genGoto
	jmp	00175$
;	Raw cost for generated ic 275 : (3, 3.000000) count=0.742214
;	genLabel
00174$:
;	Raw cost for generated ic 276 : (0, 0.000000) count=0.247550
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x112,x
	lda	0x10b,x
	sta	0x111,x
	lda	0x10a,x
	sta	0x110,x
	lda	0x109,x
	sta	0x10f,x
;	Raw cost for generated ic 277 : (25, 38.000000) count=0.247550
;	genLabel
00175$:
;	Raw cost for generated ic 278 : (0, 0.000000) count=0.989765
;	genRet
	tsx
	lda	0x112,x
	sta	*___SDCC_m6502_ret3
	lda	0x111,x
	sta	*___SDCC_m6502_ret2
	lda	0x110,x
	sta	*(REGTEMP+0)
	lda	0x10f,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 279 : (21, 30.000000) count=0.989765
;	genLabel
00169$:
;	Raw cost for generated ic 280 : (0, 0.000000) count=0.989765
;	../strtoul.c: 146: }
;	genEndFunction
;	  adjustStack : cycles stk:174  incdec:94  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x2a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 281 : (16, 30.000000) count=0.989765
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area RODATA
___str_2:
	.ascii "0b"
	.db 0x00
	.area CODE
	.area RODATA
___str_3:
	.ascii "0B"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
