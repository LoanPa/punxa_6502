;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoul
	
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
	.globl _wcsncmp
	.globl _wcstoul
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
;c             Allocated to stack - sp +3 +4 
;base          Allocated to stack - sp +7 +1 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../wcstoul.c: 42: static signed char _isdigit(const wchar_t c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 46: if (c >= L'0' && c <= L'9')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x30
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 2 : (27, 33.599998) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00110$
;	Raw cost for generated ic 6 : (26, 31.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../wcstoul.c: 47: v = c - L'0';
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 10 : (3, 4.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 11 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.437500
;	../wcstoul.c: 48: else if (c >= L'a' && c <= L'z')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x61
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00106$
;	Raw cost for generated ic 15 : (27, 33.599998) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x7a
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00106$
;	Raw cost for generated ic 19 : (26, 31.600000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.328125
;	../wcstoul.c: 49: v = c - L'a' + 10;
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 23 : (3, 4.000000) count=0.246094
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 25 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.191406
;	../wcstoul.c: 50: else if (c >= L'A' && c <= L'Z')
;	genCmp
	tsx
	lda	0x103,x
	sec
	sbc	#0x41
	lda	0x104,x
	sbc	#0x00
	lda	0x105,x
	sbc	#0x00
	lda	0x106,x
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 29 : (27, 33.599998) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x5a
	sec
	sbc	0x103,x
	lda	#0x00
	sbc	0x104,x
	lda	#0x00
	sbc	0x105,x
	lda	#0x00
	sbc	0x106,x
	bcc	00102$
;	Raw cost for generated ic 33 : (26, 31.600000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.143555
;	../wcstoul.c: 51: v = c - L'A' + 10;
;	genCast
;	genCopy
	lda	0x103,x
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.107666
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
;	../wcstoul.c: 53: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 55: if (v >= base)
;	genCmp
	tsx
	cmp	0x107,x
	bcc	00114$
;	Raw cost for generated ic 47 : (9, 11.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 56: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 58: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 59: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'wcstoul'
;------------------------------------------------------------
;endptr        Allocated to stack - sp +51 +2 
;base          Allocated to stack - sp +53 +2 
;nptr          Allocated to stack - sp +47 +2 
;__200000005   Allocated to registers 
;ptr           Allocated to stack - sp +45 +2 
;ret           Allocated to stack - sp +9 +4 
;range_error   Allocated to stack - sp +44 +1 
;neg           Allocated to stack - sp +43 +1 
;b             Allocated to stack - sp +42 +1 
;__200000006   Allocated to stack - sp +32 +4 
;c             Allocated to stack - sp +28 +4 
;__400000128   Allocated to registers a 
;__400000123   Allocated to stack - sp +26 +1 
;__400000118   Allocated to stack - sp +25 +1 
;__400000113   Allocated to stack - sp +24 +1 
;__400000108   Allocated to stack - sp +23 +1 
;__400000103   Allocated to stack - sp +22 +1 
;__400000098   Allocated to stack - sp +21 +1 
;__400000093   Allocated to stack - sp +20 +1 
;__400000088   Allocated to stack - sp +19 +1 
;__400000083   Allocated to stack - sp +18 +1 
;__400000078   Allocated to stack - sp +17 +1 
;__400000073   Allocated to stack - sp +16 +1 
;__400000068   Allocated to stack - sp +15 +1 
;__400000063   Allocated to stack - sp +14 +1 
;__400000058   Allocated to stack - sp +13 +1 
;__400000053   Allocated to stack - sp +12 +1 
;__400000048   Allocated to registers a 
;__400000043   Allocated to stack - sp +10 +1 
;__400000038   Allocated to stack - sp +9 +1 
;__400000033   Allocated to stack - sp +8 +1 
;__400000028   Allocated to stack - sp +7 +1 
;__400000023   Allocated to stack - sp +6 +1 
;__400000018   Allocated to stack - sp +5 +1 
;__400000013   Allocated to stack - sp +4 +1 
;__400000008   Allocated to stack - sp +3 +1 
;digit         Allocated to registers y 
;__400000009   Allocated to stack - sp +0 +2 
;__400000010   Allocated to stack - sp -8 +8 
;__400000011   Allocated to stack - sp -16 +8 
;r             Allocated to stack - sp -18 +2 
;a             Allocated to stack - sp -26 +8 
;b             Allocated to stack - sp -34 +8 
;result        Allocated to stack - sp -42 +8 
;__400000014   Allocated to stack - sp -44 +2 
;__400000015   Allocated to stack - sp -52 +8 
;__400000016   Allocated to stack - sp -60 +8 
;r             Allocated to stack - sp -62 +2 
;a             Allocated to stack - sp -70 +8 
;b             Allocated to stack - sp -78 +8 
;result        Allocated to stack - sp -86 +8 
;__400000019   Allocated to stack - sp -88 +2 
;__400000020   Allocated to stack - sp -96 +8 
;__400000021   Allocated to stack - sp -104 +8 
;r             Allocated to stack - sp -106 +2 
;a             Allocated to stack - sp -114 +8 
;b             Allocated to stack - sp -122 +8 
;result        Allocated to stack - sp -130 +8 
;__400000024   Allocated to stack - sp -132 +2 
;__400000025   Allocated to stack - sp -140 +8 
;__400000026   Allocated to stack - sp -148 +8 
;r             Allocated to stack - sp -150 +2 
;a             Allocated to stack - sp -158 +8 
;b             Allocated to stack - sp -166 +8 
;result        Allocated to stack - sp -174 +8 
;__400000029   Allocated to stack - sp -176 +2 
;__400000030   Allocated to stack - sp -184 +8 
;__400000031   Allocated to stack - sp -192 +8 
;r             Allocated to stack - sp -194 +2 
;a             Allocated to stack - sp -202 +8 
;b             Allocated to stack - sp -210 +8 
;result        Allocated to stack - sp -218 +8 
;__400000034   Allocated to stack - sp -220 +2 
;__400000035   Allocated to stack - sp -228 +8 
;__400000036   Allocated to stack - sp -236 +8 
;r             Allocated to stack - sp -238 +2 
;a             Allocated to stack - sp -246 +8 
;b             Allocated to stack - sp -254 +8 
;result        Allocated to stack - sp -262 +8 
;__400000039   Allocated to stack - sp -264 +2 
;__400000040   Allocated to stack - sp -272 +8 
;__400000041   Allocated to stack - sp -280 +8 
;r             Allocated to stack - sp -282 +2 
;a             Allocated to stack - sp -290 +8 
;b             Allocated to stack - sp -298 +8 
;result        Allocated to stack - sp -306 +8 
;__400000044   Allocated to stack - sp -308 +2 
;__400000045   Allocated to stack - sp -316 +8 
;__400000046   Allocated to stack - sp -324 +8 
;r             Allocated to stack - sp -326 +2 
;a             Allocated to stack - sp -334 +8 
;b             Allocated to stack - sp -342 +8 
;result        Allocated to stack - sp -350 +8 
;__400000049   Allocated to stack - sp +40 +2 
;__400000050   Allocated to stack - sp -360 +8 
;__400000051   Allocated to stack - sp -368 +8 
;r             Allocated to registers 
;a             Allocated to stack - sp -378 +8 
;b             Allocated to stack - sp -386 +8 
;result        Allocated to stack - sp +1 +8 
;__400000054   Allocated to stack - sp -396 +2 
;__400000055   Allocated to stack - sp -404 +8 
;__400000056   Allocated to stack - sp -412 +8 
;r             Allocated to stack - sp -414 +2 
;a             Allocated to stack - sp -422 +8 
;b             Allocated to stack - sp -430 +8 
;result        Allocated to stack - sp -438 +8 
;__400000059   Allocated to stack - sp -440 +2 
;__400000060   Allocated to stack - sp -448 +8 
;__400000061   Allocated to stack - sp -456 +8 
;r             Allocated to stack - sp -458 +2 
;a             Allocated to stack - sp -466 +8 
;b             Allocated to stack - sp -474 +8 
;result        Allocated to stack - sp -482 +8 
;__400000064   Allocated to stack - sp -484 +2 
;__400000065   Allocated to stack - sp -492 +8 
;__400000066   Allocated to stack - sp -500 +8 
;r             Allocated to stack - sp -502 +2 
;a             Allocated to stack - sp -510 +8 
;b             Allocated to stack - sp -518 +8 
;result        Allocated to stack - sp -526 +8 
;__400000069   Allocated to stack - sp -528 +2 
;__400000070   Allocated to stack - sp -536 +8 
;__400000071   Allocated to stack - sp -544 +8 
;r             Allocated to stack - sp -546 +2 
;a             Allocated to stack - sp -554 +8 
;b             Allocated to stack - sp -562 +8 
;result        Allocated to stack - sp -570 +8 
;__400000074   Allocated to stack - sp -572 +2 
;__400000075   Allocated to stack - sp -580 +8 
;__400000076   Allocated to stack - sp -588 +8 
;r             Allocated to stack - sp -590 +2 
;a             Allocated to stack - sp -598 +8 
;b             Allocated to stack - sp -606 +8 
;result        Allocated to stack - sp -614 +8 
;__400000079   Allocated to stack - sp -616 +2 
;__400000080   Allocated to stack - sp -624 +8 
;__400000081   Allocated to stack - sp -632 +8 
;r             Allocated to stack - sp -634 +2 
;a             Allocated to stack - sp -642 +8 
;b             Allocated to stack - sp -650 +8 
;result        Allocated to stack - sp -658 +8 
;__400000084   Allocated to stack - sp -660 +2 
;__400000085   Allocated to stack - sp -668 +8 
;__400000086   Allocated to stack - sp -676 +8 
;r             Allocated to stack - sp -678 +2 
;a             Allocated to stack - sp -686 +8 
;b             Allocated to stack - sp -694 +8 
;result        Allocated to stack - sp -702 +8 
;__400000089   Allocated to stack - sp -704 +2 
;__400000090   Allocated to stack - sp -712 +8 
;__400000091   Allocated to stack - sp -720 +8 
;r             Allocated to stack - sp -722 +2 
;a             Allocated to stack - sp -730 +8 
;b             Allocated to stack - sp -738 +8 
;result        Allocated to stack - sp -746 +8 
;__400000094   Allocated to stack - sp -748 +2 
;__400000095   Allocated to stack - sp -756 +8 
;__400000096   Allocated to stack - sp -764 +8 
;r             Allocated to stack - sp -766 +2 
;a             Allocated to stack - sp -774 +8 
;b             Allocated to stack - sp -782 +8 
;result        Allocated to stack - sp -790 +8 
;__400000099   Allocated to stack - sp -792 +2 
;__400000100   Allocated to stack - sp -800 +8 
;__400000101   Allocated to stack - sp -808 +8 
;r             Allocated to stack - sp -810 +2 
;a             Allocated to stack - sp -818 +8 
;b             Allocated to stack - sp -826 +8 
;result        Allocated to stack - sp -834 +8 
;__400000104   Allocated to stack - sp -836 +2 
;__400000105   Allocated to stack - sp -844 +8 
;__400000106   Allocated to stack - sp -852 +8 
;r             Allocated to stack - sp -854 +2 
;a             Allocated to stack - sp -862 +8 
;b             Allocated to stack - sp -870 +8 
;result        Allocated to stack - sp -878 +8 
;__400000109   Allocated to stack - sp -880 +2 
;__400000110   Allocated to stack - sp -888 +8 
;__400000111   Allocated to stack - sp -896 +8 
;r             Allocated to stack - sp -898 +2 
;a             Allocated to stack - sp -906 +8 
;b             Allocated to stack - sp -914 +8 
;result        Allocated to stack - sp -922 +8 
;__400000114   Allocated to stack - sp -924 +2 
;__400000115   Allocated to stack - sp -932 +8 
;__400000116   Allocated to stack - sp -940 +8 
;r             Allocated to stack - sp -942 +2 
;a             Allocated to stack - sp -950 +8 
;b             Allocated to stack - sp -958 +8 
;result        Allocated to stack - sp -966 +8 
;__400000119   Allocated to stack - sp -968 +2 
;__400000120   Allocated to stack - sp -976 +8 
;__400000121   Allocated to stack - sp -984 +8 
;r             Allocated to stack - sp -986 +2 
;a             Allocated to stack - sp -994 +8 
;b             Allocated to stack - sp -1002 +8 
;result        Allocated to stack - sp -1010 +8 
;__400000124   Allocated to stack - sp -1012 +2 
;__400000125   Allocated to stack - sp -1020 +8 
;__400000126   Allocated to stack - sp -1028 +8 
;r             Allocated to stack - sp -1030 +2 
;a             Allocated to stack - sp -1038 +8 
;b             Allocated to stack - sp -1046 +8 
;result        Allocated to stack - sp -1054 +8 
;__400000129   Allocated to registers 
;__400000130   Allocated to stack - sp -1064 +8 
;__400000131   Allocated to stack - sp -1072 +8 
;r             Allocated to registers 
;a             Allocated to stack - sp -1082 +8 
;b             Allocated to stack - sp -1090 +8 
;result        Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +39 +1 
;sloc1         Allocated to stack - sp +37 +2 
;sloc2         Allocated to stack - sp +33 +4 
;sloc3         Allocated to stack - sp +29 +4 
;sloc4         Allocated to stack - sp +21 +8 
;sloc5         Allocated to stack - sp +13 +8 
;------------------------------------------------------------
;	../wcstoul.c: 63: unsigned long int wcstoul(const wchar_t *nptr, wchar_t **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoul
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 48 bytes.
_wcstoul:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:138  incdec:96  adc:12
	tsx
	txa
	clc
	adc	#0xd2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 67: bool range_error = false;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x127,x
;	Raw cost for generated ic 4 : (5, 7.000000) count=1.000000
;	../wcstoul.c: 68: bool neg = false;
;	genAssign
;	genAssignLit
	sta	0x12b,x
;	Raw cost for generated ic 5 : (3, 5.000000) count=1.000000
;	../wcstoul.c: 69: unsigned char b = base;
;	genCast
;	genCopy
	lda	0x135,x
	sta	0x12a,x
;	Raw cost for generated ic 6 : (6, 9.000000) count=1.000000
;	../wcstoul.c: 71: while (iswblank (*ptr))
;	genAssign
;	genCopy
	lda	0x130,x
	sta	0x126,x
	lda	0x12f,x
	sta	0x125,x
;	Raw cost for generated ic 281 : (12, 18.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x125,x
	sta	*(DPTR+0)
	lda	0x126,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 10 : (36, 64.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	0x121,x
	cmp	#0x20
	bne	00315$
	lda	0x122,x
	bne	00315$
	lda	0x123,x
	bne	00315$
	lda	0x124,x
	beq	00172$
00315$:
;	Raw cost for generated ic 13 : (34, 40.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	0x121,x
	cmp	#0x09
	bne	00197$
	lda	0x122,x
	bne	00197$
	lda	0x123,x
	bne	00197$
	lda	0x124,x
	bne	00197$
;	Raw cost for generated ic 15 : (34, 40.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999992
;	genLabel
00172$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=4.333324
;	../wcstoul.c: 72: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x125,x
	clc
	adc	#0x04
	sta	0x125,x
	lda	0x126,x
	adc	#0x00
	sta	0x126,x
;	Raw cost for generated ic 31 : (18, 26.000000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 33 : (3, 3.000000) count=4.333324
;	genLabel
00197$:
;	Raw cost for generated ic 282 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x126,x
	sta	0x12e,x
;	Raw cost for generated ic 283 : (13, 20.000000) count=0.999997
;	../wcstoul.c: 75: switch(*ptr)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x125,x
	sta	0x12d,x
	sta	*(DPTR+0)
	lda	0x126,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 36 : (35, 62.000000) count=0.999997
;	genCmpEQorNE
	lda	0x121,x
	cmp	#0x2b
	bne	00324$
	lda	0x122,x
	bne	00324$
	lda	0x123,x
	bne	00324$
	lda	0x124,x
	beq	00105$
00324$:
;	Raw cost for generated ic 37 : (34, 40.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	lda	0x121,x
	cmp	#0x2d
	bne	00106$
	lda	0x122,x
	bne	00106$
	lda	0x123,x
	bne	00106$
	lda	0x124,x
	bne	00106$
;	Raw cost for generated ic 39 : (34, 40.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.749996
;	../wcstoul.c: 78: neg = true;
;	genAssign
;	genAssignLit
	lda	#0x01
	sta	0x12b,x
;	Raw cost for generated ic 43 : (5, 7.000000) count=0.562496
;	../wcstoul.c: 79: case L'+':
;	genLabel
00105$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.812494
;	../wcstoul.c: 80: ptr++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x12d,x
	clc
	adc	#0x04
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 46 : (18, 26.000000) count=0.812494
;	../wcstoul.c: 81: }
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999993
;	../wcstoul.c: 84: if (!b)
;	genIfx
	tsx
	lda	0x12a,x
;	genIfxJump : z
	beq	00333$
	jmp	00128$
00333$:
;	Raw cost for generated ic 49 : (9, 11.600000) count=0.999993
;	../wcstoul.c: 86: if (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 53 : (0, 0.000000) count=0.749995
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 54 : (6, 10.000000) count=0.749995
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 55 : (6, 10.000000) count=0.749995
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	lda	0x12d,x
	tay
	lda	0x12e,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 57 : (22, 38.000000) count=0.749995
;	genIfx
;	genIfxJump : z
	bne	00335$
	cmp	#0x00
	beq	00114$
00335$:
;	Raw cost for generated ic 58 : (9, 10.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.562496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.562496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 63 : (6, 10.000000) count=0.562496
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 64 : (6, 10.000000) count=0.562496
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	tsx
	lda	0x131,x
	tay
	lda	0x132,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 66 : (23, 40.000000) count=0.562496
;	genIfx
;	genIfxJump : z
	bne	00115$
	cmp	#0x00
	bne	00115$
;	Raw cost for generated ic 67 : (9, 10.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.609371
;	../wcstoul.c: 88: b = 16;
;	genAssign
;	genAssignLit
	lda	#0x10
	tsx
	sta	0x12a,x
;	Raw cost for generated ic 70 : (6, 9.000000) count=0.609371
;	../wcstoul.c: 89: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x12d,x
	clc
	adc	#0x08
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 71 : (17, 24.000000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.140623
;	../wcstoul.c: 91: else if (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.140623
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 77 : (6, 10.000000) count=0.140623
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 78 : (6, 10.000000) count=0.140623
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	tsx
	lda	0x131,x
	tay
	lda	0x132,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 80 : (23, 40.000000) count=0.140623
;	genIfx
;	genIfxJump : z
	bne	00339$
	cmp	#0x00
	beq	00110$
00339$:
;	Raw cost for generated ic 81 : (9, 10.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.105467
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 85 : (0, 0.000000) count=0.105467
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 86 : (6, 10.000000) count=0.105467
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 87 : (6, 10.000000) count=0.105467
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	tsx
	lda	0x131,x
	tay
	lda	0x132,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 89 : (23, 40.000000) count=0.105467
;	genIfx
;	genIfxJump : z
	bne	00111$
	cmp	#0x00
	bne	00111$
;	Raw cost for generated ic 90 : (9, 10.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.114256
;	../wcstoul.c: 93: b = 2;
;	genAssign
;	genAssignLit
	lda	#0x02
	tsx
	sta	0x12a,x
;	Raw cost for generated ic 93 : (6, 9.000000) count=0.114256
;	../wcstoul.c: 94: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	0x12d,x
	clc
	adc	#0x08
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 94 : (17, 24.000000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.020970
;	../wcstoul.c: 96: else if (*ptr == L'0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x12d,x
	sta	*(DPTR+0)
	lda	0x12e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 99 : (36, 64.000000) count=0.020970
;	genCmpEQorNE
	lda	0x121,x
	cmp	#0x30
	bne	00108$
	lda	0x122,x
	bne	00108$
	lda	0x123,x
	bne	00108$
	lda	0x124,x
	bne	00108$
;	Raw cost for generated ic 100 : (34, 40.400002) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.020970
;	../wcstoul.c: 98: b = 8;
;	genAssign
;	genAssignLit
	lda	#0x08
	sta	0x12a,x
;	Raw cost for generated ic 104 : (5, 7.000000) count=0.015727
;	../wcstoul.c: 99: ptr++;
;	genPlus
;	  genPlusInc
	lda	0x12d,x
	clc
	adc	#0x04
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 106 : (17, 24.000000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.000000
;	../wcstoul.c: 102: b = 10;
;	genAssign
;	genAssignLit
	lda	#0x0a
	tsx
	sta	0x12a,x
;	Raw cost for generated ic 110 : (6, 9.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 114 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.249997
;	../wcstoul.c: 105: else if (b == 16 && (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2)))
;	genCmpEQorNE
	tsx
	lda	0x12a,x
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 116 : (11, 13.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 121 : (0, 0.000000) count=0.187496
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 122 : (6, 10.000000) count=0.187496
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 123 : (6, 10.000000) count=0.187496
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	lda	0x12d,x
	tay
	lda	0x12e,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 125 : (22, 38.000000) count=0.187496
;	genIfx
;	genIfxJump : z
	bne	00349$
	cmp	#0x00
	beq	00122$
00349$:
;	Raw cost for generated ic 126 : (9, 10.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.140622
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 130 : (0, 0.000000) count=0.140622
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 131 : (6, 10.000000) count=0.140622
;	genIpush
	lda	#>___str_1
	pha
	lda	#___str_1
	pha
;	Raw cost for generated ic 132 : (6, 10.000000) count=0.140622
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	tsx
	lda	0x131,x
	tay
	lda	0x132,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 134 : (23, 40.000000) count=0.140622
;	genIfx
;	genIfxJump : z
	bne	00123$
	cmp	#0x00
	bne	00123$
;	Raw cost for generated ic 135 : (9, 10.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.152341
;	../wcstoul.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x12d,x
	clc
	adc	#0x08
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 138 : (18, 26.000000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 140 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.097654
;	../wcstoul.c: 107: else if (b == 2 && (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2)))
;	genCmpEQorNE
	tsx
	lda	0x12a,x
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 142 : (11, 13.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 147 : (0, 0.000000) count=0.073241
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 148 : (6, 10.000000) count=0.073241
;	genIpush
	lda	#>___str_2
	pha
	lda	#___str_2
	pha
;	Raw cost for generated ic 149 : (6, 10.000000) count=0.073241
;	Raw cost for generated ic 150 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	lda	0x12d,x
	tay
	lda	0x12e,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 151 : (22, 38.000000) count=0.073241
;	genIfx
;	genIfxJump : z
	bne	00354$
	cmp	#0x00
	beq	00118$
00354$:
;	Raw cost for generated ic 152 : (9, 10.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.054931
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 156 : (0, 0.000000) count=0.054931
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 157 : (6, 10.000000) count=0.054931
;	genIpush
	lda	#>___str_3
	pha
	lda	#___str_3
	pha
;	Raw cost for generated ic 158 : (6, 10.000000) count=0.054931
;	Raw cost for generated ic 159 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	tsx
	lda	0x131,x
	tay
	lda	0x132,x
	tax
	tya
	jsr	_wcsncmp
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
;	Raw cost for generated ic 160 : (23, 40.000000) count=0.054931
;	genIfx
;	genIfxJump : z
	bne	00129$
	cmp	#0x00
	bne	00129$
;	Raw cost for generated ic 161 : (9, 10.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.059508
;	../wcstoul.c: 108: ptr += 2;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x12d,x
	clc
	adc	#0x08
	sta	0x12d,x
	lda	0x12e,x
	adc	#0x00
	sta	0x12e,x
;	Raw cost for generated ic 164 : (18, 26.000000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 168 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 111: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x12d,x
	sta	*(DPTR+0)
	lda	0x12e,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x121,x
	iny
	lda	[DPTR],y
	sta	0x122,x
	iny
	lda	[DPTR],y
	sta	0x123,x
	iny
	lda	[DPTR],y
	sta	0x124,x
;	Raw cost for generated ic 170 : (36, 64.000000) count=0.989349
;	genIpush
	lda	0x12a,x
	pha
;	Raw cost for generated ic 171 : (4, 7.000000) count=0.989349
;	genIpush
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
;	Raw cost for generated ic 172 : (16, 28.000000) count=0.989349
;	genCall
	jsr	__isdigit
;	assignResultValue
;	  adjustStack : cycles stk:26  incdec:14  adc:18
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 173 : (10, 20.000000) count=0.989349
;	genCmp
	sec
	sbc	#0x00
	bvc	00358$
	bpl	00357$
	bmi	00133$
00358$:
	bpl	00133$
00357$:
;	Raw cost for generated ic 174 : (14, 17.400000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 113: if (endptr)
;	genIfx
	lda	0x134,x
	ora	0x133,x
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 178 : (11, 13.600000) count=0.742012
;	../wcstoul.c: 114: *endptr = (wchar_t*)nptr;
;	genAssign
;	genCopy
	lda	0x133,x
	tay
	lda	0x134,x
	tax
	tya
;	Raw cost for generated ic 181 : (9, 14.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x12f,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x130,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 182 : (18, 32.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 183 : (0, 0.000000) count=0.742012
;	../wcstoul.c: 115: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00169$
;	Raw cost for generated ic 184 : (10, 13.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 118: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x109,x
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 186 : (15, 24.000000) count=0.989349
;	genAssign
;	genCopy
	lda	0x12e,x
	sta	0x122,x
	lda	0x12d,x
	sta	0x121,x
;	Raw cost for generated ic 284 : (12, 18.000000) count=0.989349
;	genLabel
00167$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=3.958003
;	../wcstoul.c: 120: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x121,x
	sta	*(DPTR+0)
	lda	0x122,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x11d,x
	iny
	lda	[DPTR],y
	sta	0x11e,x
	iny
	lda	[DPTR],y
	sta	0x11f,x
	iny
	lda	[DPTR],y
	sta	0x120,x
;	Raw cost for generated ic 189 : (36, 64.000000) count=3.958003
;	genIpush
	lda	0x12a,x
	pha
;	Raw cost for generated ic 190 : (4, 7.000000) count=3.958003
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 191 : (16, 28.000000) count=3.958003
;	genCall
	jsr	__isdigit
;	assignResultValue
	tay
;	  adjustStack : cycles stk:20  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0x05
	tax
	txs
;	Raw cost for generated ic 192 : (11, 20.000000) count=3.958003
;	../wcstoul.c: 122: if (digit < 0)
;	genCmp
	tya
	sec
	sbc	#0x00
	bvs	00363$
	bpl	00362$
	bmi	00364$
00363$:
	bmi	00362$
00364$:
	jmp	00136$
00362$:
;	Raw cost for generated ic 194 : (15, 19.400002) count=3.958003
;	skipping generated iCode
;	Raw cost for generated ic 195 : (0, 0.000000) count=3.958003
;	../wcstoul.c: 126: range_error |= ckd_mul (&ret, ret, b);
;	genCast
;	genCopy
	lda	#0x00
	sta	0x11c,x
	sta	0x11b,x
	sta	0x11a,x
	sta	0x119,x
	sta	0x118,x
	sta	0x117,x
	sta	0x116,x
	lda	0x12a,x
	sta	0x115,x
;	Raw cost for generated ic 200 : (29, 46.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	sta	0x111,x
	lda	0x10c,x
	sta	0x110,x
	lda	0x10b,x
	sta	0x10f,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x109,x
	sta	0x10d,x
;	Raw cost for generated ic 202 : (38, 58.000000) count=2.968654
;	genAddrOf
	txa
	clc
	adc	#0x09
	sta	0x11d,x
	lda	#0x01
;	Raw cost for generated ic 204 : (12, 18.000000) count=2.968654
;	genCast
;	genCopy
	sta	0x11e,x
	sta	0x129,x
	lda	0x11d,x
	sta	0x128,x
;	Raw cost for generated ic 205 : (12, 18.000000) count=2.968654
;	genAssign
;	genCopy
	lda	0x129,x
	sta	0x11e,x
	lda	0x128,x
	sta	0x11d,x
;	Raw cost for generated ic 206 : (12, 18.000000) count=2.968654
;	./../../include/stdckdint.h: 77: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	genIpush
	tya
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
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 293 : (34, 61.000000) count=2.968654
;	genIpush
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
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 294 : (32, 56.000000) count=2.968654
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11e,x
	lda	*(REGTEMP+0)
	sta	0x11f,x
	lda	*___SDCC_m6502_ret2
	sta	0x120,x
	lda	*___SDCC_m6502_ret3
	sta	0x121,x
	lda	*___SDCC_m6502_ret4
	sta	0x122,x
	lda	*___SDCC_m6502_ret5
	sta	0x123,x
	lda	*___SDCC_m6502_ret6
	sta	0x124,x
	lda	*___SDCC_m6502_ret7
	sta	0x125,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
	sta	*(REGTEMP+0)
	pla
	tay
;	Raw cost for generated ic 295 : (56, 94.000000) count=2.968654
;	genAssign
;	genCopy
	lda	0x115,x
	sta	0x109,x
	lda	0x114,x
	sta	0x108,x
	lda	0x113,x
	sta	0x107,x
	lda	0x112,x
	sta	0x106,x
	lda	0x111,x
	sta	0x105,x
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
;	Raw cost for generated ic 211 : (48, 72.000000) count=2.968654
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x102,x
;	Raw cost for generated ic 213 : (24, 36.000000) count=2.968654
;	genPointerSet
	sty	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x11e,x
	sta	*(DPTR+0)
	lda	0x11f,x
	sta	*(DPTR+1)
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
	ldy	*(REGTEMP+0)
;	Raw cost for generated ic 214 : (39, 68.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x115,x
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	lda	0x10e,x
;	Raw cost for generated ic 217 : (38, 58.000000) count=2.968654
;	genCmpEQorNE
	cmp	0x102,x
	bne	00366$
	lda	0x10f,x
	cmp	0x103,x
	bne	00366$
	lda	0x110,x
	cmp	0x104,x
	bne	00366$
	lda	0x111,x
	cmp	0x105,x
	bne	00366$
	lda	0x112,x
	cmp	0x106,x
	bne	00366$
	lda	0x113,x
	cmp	0x107,x
	bne	00366$
	lda	0x114,x
	cmp	0x108,x
	bne	00366$
	lda	0x115,x
	cmp	0x109,x
	beq	00374$
00366$:
	lda	#0x00
	jmp	00373$
00374$:
	lda	#0x01
00373$:
;	Raw cost for generated ic 218 : (89, 108.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 219 : (2, 2.000000) count=2.968654
;	../wcstoul.c: 126: range_error |= ckd_mul (&ret, ret, b);
;	genOr
	ora	0x128,x
	sta	0x12d,x
;	Raw cost for generated ic 223 : (6, 9.000000) count=2.968654
;	../wcstoul.c: 127: range_error |= ckd_add (&ret, ret, digit);
;	genCast
	tya
	sta	0x10e,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10f,x
	sta	0x110,x
	sta	0x111,x
	sta	0x112,x
	sta	0x113,x
	sta	0x114,x
	sta	0x115,x
;	Raw cost for generated ic 225 : (32, 50.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x11d,x
	sta	0x11c,x
	sta	0x11b,x
	sta	0x11a,x
	lda	0x10d,x
	sta	0x119,x
	lda	0x10c,x
	sta	0x118,x
	lda	0x10b,x
	sta	0x117,x
	lda	0x10a,x
	sta	0x116,x
;	Raw cost for generated ic 227 : (38, 58.000000) count=2.968654
;	./../../include/stdckdint.h: 59: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	genPlus
	clc
	adc	0x10e,x
	sta	0x10e,x
	lda	0x117,x
	adc	0x10f,x
	sta	0x10f,x
	lda	0x118,x
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
;	Raw cost for generated ic 235 : (70, 102.000000) count=2.968654
;	genAssign
;	genCopy
	sta	0x109,x
	lda	0x114,x
	sta	0x108,x
	lda	0x113,x
	sta	0x107,x
	lda	0x112,x
	sta	0x106,x
	lda	0x111,x
	sta	0x105,x
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
	lda	0x10e,x
	sta	0x102,x
;	Raw cost for generated ic 236 : (45, 68.000000) count=2.968654
;	genCast
;	genCopy
;	Raw cost for generated ic 238 : (24, 36.000000) count=2.968654
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x129,x
	sta	*(DPTR+0)
	lda	0x12a,x
	sta	*(DPTR+1)
	lda	0x10e,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10f,x
	iny
	sta	[DPTR],y
	lda	0x110,x
	iny
	sta	[DPTR],y
	lda	0x111,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 239 : (35, 62.000000) count=2.968654
;	genCast
;	genCopy
	lda	#0x00
	sta	0x115,x
	sta	0x114,x
	sta	0x113,x
	sta	0x112,x
	lda	0x10e,x
;	Raw cost for generated ic 242 : (38, 58.000000) count=2.968654
;	genCmpEQorNE
	cmp	0x102,x
	bne	00377$
	lda	0x10f,x
	cmp	0x103,x
	bne	00377$
	lda	0x110,x
	cmp	0x104,x
	bne	00377$
	lda	0x111,x
	cmp	0x105,x
	bne	00377$
	lda	0x112,x
	cmp	0x106,x
	bne	00377$
	lda	0x113,x
	cmp	0x107,x
	bne	00377$
	lda	0x114,x
	cmp	0x108,x
	bne	00377$
	lda	0x115,x
	cmp	0x109,x
	beq	00385$
00377$:
	lda	#0x00
	jmp	00384$
00385$:
	lda	#0x01
00384$:
;	Raw cost for generated ic 243 : (89, 108.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 244 : (2, 2.000000) count=2.968654
;	../wcstoul.c: 127: range_error |= ckd_add (&ret, ret, digit);
;	genOr
	ora	0x12d,x
	sta	0x128,x
;	Raw cost for generated ic 248 : (6, 9.000000) count=2.968654
;	../wcstoul.c: 118: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	0x122,x
	clc
	adc	#0x04
	sta	0x122,x
	lda	0x123,x
	adc	#0x00
	sta	0x123,x
;	Raw cost for generated ic 252 : (17, 24.000000) count=2.968654
;	genGoto
	jmp	00167$
;	Raw cost for generated ic 254 : (3, 3.000000) count=2.968654
;	genLabel
00136$:
;	Raw cost for generated ic 255 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 138: if (endptr)
;	genIfx
	tsx
	lda	0x134,x
	ora	0x133,x
;	genIfxJump : z
	beq	00138$
;	Raw cost for generated ic 256 : (12, 15.600000) count=0.989619
;	../wcstoul.c: 139: *endptr = (wchar_t*)ptr;
;	genAssign
;	genCopy
	lda	0x133,x
	tay
	lda	0x134,x
	tax
	tya
;	Raw cost for generated ic 259 : (9, 14.000000) count=0.742214
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	tsx
	lda	0x121,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x122,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 260 : (18, 32.000000) count=0.742214
;	genLabel
00138$:
;	Raw cost for generated ic 261 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 141: if (range_error)
;	genIfx
	tsx
	lda	0x127,x
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 262 : (9, 11.600000) count=0.989619
;	../wcstoul.c: 143: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 266 : (10, 12.000000) count=0.742214
;	../wcstoul.c: 144: return (ULONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00169$
;	Raw cost for generated ic 267 : (10, 13.000000) count=0.742214
;	genLabel
00140$:
;	Raw cost for generated ic 268 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 147: return (neg ? -ret : ret);
;	genIfx
	tsx
	lda	0x12b,x
;	genIfxJump : z
	beq	00174$
;	Raw cost for generated ic 269 : (9, 11.600000) count=0.989619
;	genUminus
	lda	#0x00
	sec
	sbc	0x109,x
	sta	0x10d,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x10e,x
	lda	#0x00
	sbc	0x10b,x
	sta	0x10f,x
	lda	#0x00
	sbc	0x10c,x
	sta	0x110,x
;	Raw cost for generated ic 270 : (33, 46.000000) count=0.742214
;	genGoto
	jmp	00175$
;	Raw cost for generated ic 272 : (3, 3.000000) count=0.742214
;	genLabel
00174$:
;	Raw cost for generated ic 273 : (0, 0.000000) count=0.247550
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x110,x
	lda	0x10b,x
	sta	0x10f,x
	lda	0x10a,x
	sta	0x10e,x
	lda	0x109,x
	sta	0x10d,x
;	Raw cost for generated ic 274 : (25, 38.000000) count=0.247550
;	genLabel
00175$:
;	Raw cost for generated ic 275 : (0, 0.000000) count=0.989765
;	genRet
	tsx
	lda	0x110,x
	sta	*___SDCC_m6502_ret3
	lda	0x10f,x
	sta	*___SDCC_m6502_ret2
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 276 : (21, 30.000000) count=0.989765
;	genLabel
00169$:
;	Raw cost for generated ic 277 : (0, 0.000000) count=0.989765
;	../wcstoul.c: 148: }
;	genEndFunction
;	  adjustStack : cycles stk:198  incdec:106  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x30
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 278 : (16, 30.000000) count=0.989765
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.byte 48,0,0,0
	.byte 120,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_1:
	.byte 48,0,0,0
	.byte 88,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_2:
	.byte 48,0,0,0
	.byte 98,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_3:
	.byte 48,0,0,0
	.byte 66,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area XINIT
	.area CABS    (ABS)
