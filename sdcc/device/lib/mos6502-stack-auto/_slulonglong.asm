;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _slulonglong
	
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
	.globl __slulonglong
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
;Allocation info for local variables in function '_slulonglong'
;------------------------------------------------------------
;l             Allocated to stack - sp +25 +8 
;s             Allocated to stack - sp +33 +1 
;top           Allocated to stack - sp +21 +2 
;middle        Allocated to stack - sp +19 +2 
;bottom        Allocated to stack - sp +17 +2 
;w             Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;sloc3         Allocated to stack - sp +5 +4 
;sloc4         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../_slulonglong.c: 63: unsigned long long _slulonglong(unsigned long long l, char s) __SDCC_NONBANKED
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _slulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
__slulonglong:
;	  adjustStack : cycles stk:66  incdec:48  adc:12
	tsx
	txa
	clc
	adc	#0xea
	tax
	txs
;	Raw cost for generated ic 1 : (7, 12.000000) count=1.000000
;	../_slulonglong.c: 65: _AUTOMEM uint32_t * const top =    (_AUTOMEM uint32_t *)((_AUTOMEM char *)(&l) + 4);
;	genAddrOf
	txa
	clc
	adc	#0x19
	sta	0x10d,x
	lda	#0x01
;	Raw cost for generated ic 2 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x116,x
	lda	0x10b,x
	sta	0x115,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	../_slulonglong.c: 66: _AUTOMEM uint16_t * const middle = (_AUTOMEM uint16_t *)((_AUTOMEM char *)(&l) + 2);
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x114,x
	lda	0x10b,x
	sta	0x113,x
;	Raw cost for generated ic 9 : (12, 18.000000) count=1.000000
;	../_slulonglong.c: 67: _AUTOMEM uint32_t * const bottom = (_AUTOMEM uint32_t *)((_AUTOMEM char *)(&l) + 0);
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x112,x
	lda	0x10d,x
	sta	0x111,x
;	Raw cost for generated ic 14 : (12, 18.000000) count=1.000000
;	../_slulonglong.c: 68: _AUTOMEM uint16_t * const w =      (_AUTOMEM uint16_t *)(&l);
;	genAddrOf
	txa
	clc
	adc	#0x19
	sta	0x10b,x
	lda	#0x01
;	Raw cost for generated ic 16 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10c,x
	sta	0x110,x
	lda	0x10b,x
	sta	0x10f,x
;	Raw cost for generated ic 18 : (12, 18.000000) count=1.000000
;	../_slulonglong.c: 78: (*top) <<= s;
;	genLabel
00103$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999997
;	../_slulonglong.c: 70: for (; s >= 16; s-= 16)
;	genCmp
	tsx
	lda	0x121,x
	cmp	#0x10
	bcs	00119$
	jmp	00101$
00119$:
;	Raw cost for generated ic 21 : (11, 13.600000) count=3.999997
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=3.999997
;	../_slulonglong.c: 72: w[3] = w[2];
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10b,x
;	Raw cost for generated ic 25 : (12, 18.000000) count=2.999997
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 26 : (12, 18.000000) count=2.999997
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
;	Raw cost for generated ic 27 : (20, 34.000000) count=2.999997
;	genPointerSet
;	  setupDPTR - off=6 remat=(null) savea=0
	lda	0x10b,x
	sta	*(DPTR+0)
	lda	0x10c,x
	sta	*(DPTR+1)
	lda	0x109,x
	iny
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 28 : (22, 38.000000) count=2.999997
;	../_slulonglong.c: 73: w[2] = w[1];
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x109,x
;	Raw cost for generated ic 30 : (12, 18.000000) count=2.999997
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 31 : (20, 34.000000) count=2.999997
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	0x10d,x
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 32 : (22, 38.000000) count=2.999997
;	../_slulonglong.c: 74: w[1] = w[0];
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10f,x
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x10b,x
	iny
	lda	[DPTR],y
	sta	0x10c,x
;	Raw cost for generated ic 35 : (23, 38.000000) count=2.999997
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 36 : (22, 38.000000) count=2.999997
;	../_slulonglong.c: 75: w[0] = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10f,x
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 38 : (18, 32.000000) count=2.999997
;	../_slulonglong.c: 70: for (; s >= 16; s-= 16)
;	genCast
;	genCopy
	lda	0x121,x
;	Raw cost for generated ic 40 : (4, 6.000000) count=2.999997
;	genMinus
;	  genMinusDec - size=1  icount=16
	tay
	sec
	sbc	#0x10
	sta	0x121,x
;	Raw cost for generated ic 41 : (7, 11.000000) count=2.999997
;	genGoto
	jmp	00103$
;	Raw cost for generated ic 43 : (3, 3.000000) count=2.999997
;	genLabel
00101$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.999999
;	../_slulonglong.c: 78: (*top) <<= s;
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	tsx
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
	sta	0x105,x
	iny
	lda	[DPTR],y
	sta	0x106,x
	iny
	lda	[DPTR],y
	sta	0x107,x
	iny
	lda	[DPTR],y
	sta	0x108,x
;	Raw cost for generated ic 47 : (36, 64.000000) count=0.999999
;	genLeftShift
	lda	0x121,x
	tay
	beq	00121$
00120$:
	asl	0x105,x
	rol	0x106,x
	rol	0x107,x
	rol	0x108,x
	dey
	bne	00120$
00121$:
;	Raw cost for generated ic 48 : (21, 37.199997) count=0.999999
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	0x105,x
	ldy	#0x04
	sta	[DPTR],y
	lda	0x106,x
	iny
	sta	[DPTR],y
	lda	0x107,x
	iny
	sta	[DPTR],y
	lda	0x108,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 49 : (25, 48.000000) count=0.999999
;	../_slulonglong.c: 79: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	sta	0x109,x
	iny
	lda	[DPTR],y
	sta	0x10a,x
;	Raw cost for generated ic 54 : (23, 38.000000) count=0.999999
;	genCast
;	genCopy
	lda	#0x00
	sta	0x104,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 57 : (20, 30.000000) count=0.999999
;	genLeftShift
	lda	0x121,x
	tay
	beq	00123$
00122$:
	asl	0x101,x
	rol	0x102,x
	rol	0x103,x
	rol	0x104,x
	dey
	bne	00122$
00123$:
;	Raw cost for generated ic 58 : (21, 37.199997) count=0.999999
;	genRightShift
;	genRightShiftLiteral
;	  genrsh32 - shift=16
	lda	0x103,x
	sta	0x101,x
	lda	0x104,x
	sta	0x102,x
	tya
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 59 : (19, 30.000000) count=0.999999
;	genOr
	lda	0x105,x
	ora	0x101,x
	sta	0x101,x
	lda	0x106,x
	ora	0x102,x
	sta	0x102,x
	lda	0x107,x
	ora	0x103,x
	sta	0x103,x
	lda	0x108,x
	ora	0x104,x
	sta	0x104,x
;	Raw cost for generated ic 60 : (36, 52.000000) count=0.999999
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x04
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 61 : (35, 62.000000) count=0.999999
;	../_slulonglong.c: 80: (*bottom) <<= s;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	0x101,x
	iny
	lda	[DPTR],y
	sta	0x102,x
	iny
	lda	[DPTR],y
	sta	0x103,x
	iny
	lda	[DPTR],y
	sta	0x104,x
;	Raw cost for generated ic 64 : (35, 62.000000) count=0.999999
;	genLeftShift
	lda	0x121,x
	tay
	beq	00125$
00124$:
	asl	0x101,x
	rol	0x102,x
	rol	0x103,x
	rol	0x104,x
	dey
	bne	00124$
00125$:
;	Raw cost for generated ic 65 : (21, 37.199997) count=0.999999
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x101,x
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 66 : (23, 46.000000) count=0.999999
;	../_slulonglong.c: 82: return(l);
;	genRet
	lda	0x120,x
	sta	*___SDCC_m6502_ret7
	lda	0x11f,x
	sta	*___SDCC_m6502_ret6
	lda	0x11e,x
	sta	*___SDCC_m6502_ret5
	lda	0x11d,x
	sta	*___SDCC_m6502_ret4
	lda	0x11c,x
	sta	*___SDCC_m6502_ret3
	lda	0x11b,x
	sta	*___SDCC_m6502_ret2
	lda	0x11a,x
	sta	*(REGTEMP+0)
	lda	0x119,x
;	Raw cost for generated ic 67 : (40, 56.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 68 : (0, 0.000000) count=0.999999
;	../_slulonglong.c: 83: }
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 69 : (16, 30.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
