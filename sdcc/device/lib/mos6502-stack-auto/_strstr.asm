;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strstr
	
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
	.globl _strstr
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
;Allocation info for local variables in function 'strstr'
;------------------------------------------------------------
;str2          Allocated to stack - sp +17 +2 
;str1          Allocated to stack - sp +13 +2 
;cp            Allocated to stack - sp +11 +2 
;s1            Allocated to stack - sp +9 +2 
;s2            Allocated to stack - sp +7 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;sloc2         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strstr.c: 31: char *strstr ( const char *str1, const char *str2 )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_strstr:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strstr.c: 33: const char *cp = str1;
;	genAssign
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	../_strstr.c: 37: if (!*str2)
;	genAssign
;	genCopy
	lda	0x112,x
	sta	0x108,x
	lda	0x111,x
	sta	0x107,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 5 : (12, 19.000000) count=1.000000
;	genIfx
;	genIfxJump : z
	bne	00122$
;	Raw cost for generated ic 6 : (5, 5.600000) count=1.000000
;	../_strstr.c: 38: return ((char*)str1);
;	genRet
	tsx
	lda	0x10e,x
	sta	*(REGTEMP+0)
	lda	0x10d,x
	ldx	*(REGTEMP+0)
	jmp	00113$
;	Raw cost for generated ic 9 : (14, 19.000000) count=0.750000
;	../_strstr.c: 40: while (*cp)
;	genLabel
00122$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10d,x
	sta	0x109,x
;	Raw cost for generated ic 70 : (13, 20.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=3.999937
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x109,x
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 13 : (16, 25.000000) count=3.999937
;	genIfx
;	genIfxJump : z
	bne	00167$
	jmp	00112$
00167$:
;	Raw cost for generated ic 14 : (5, 5.600000) count=3.999937
;	../_strstr.c: 43: s2 = str2;
;	genAssign
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 18 : (13, 20.000000) count=2.999953
;	../_strstr.c: 45: while (*s1 && *s2 && !(*s1-*s2))
;	genAssign
;	genCopy
	lda	0x10a,x
	sta	0x104,x
	lda	0x109,x
	sta	0x103,x
;	Raw cost for generated ic 65 : (12, 18.000000) count=2.999953
;	genLabel
00105$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=5.189096
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 21 : (16, 25.000000) count=5.189096
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 22 : (5, 5.600000) count=5.189096
;	genPointerGet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tay
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 26 : (18, 29.000000) count=3.891822
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 27 : (7, 7.600000) count=3.891822
;	genCast
;	genCopy
	txa
	ldx	#0x00
;	Raw cost for generated ic 32 : (3, 4.000000) count=2.918866
;	genCast
;	genCopy
	sta	*(REGTEMP+0)
	txa
	tsx
	sta	0x102,x
	tya
	sta	0x101,x
	ldx	#0x00
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 35 : (15, 24.000000) count=2.918866
;	genMinus
	sec
	tsx
	sbc	0x101,x
	sta	0x101,x
	lda	#0x00
	sbc	0x102,x
	sta	0x102,x
;	Raw cost for generated ic 36 : (16, 24.000000) count=2.918866
;	genIfx
	ora	0x101,x
;	genIfxJump : z
	bne	00107$
;	Raw cost for generated ic 37 : (8, 9.600000) count=2.918866
;	../_strstr.c: 46: s1++, s2++;
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 41 : (17, 24.000000) count=2.189143
;	genPlus
;	  genPlusInc
	lda	0x105,x
	clc
	adc	#0x01
	sta	0x105,x
	lda	0x106,x
	adc	#0x00
	sta	0x106,x
;	Raw cost for generated ic 44 : (17, 24.000000) count=2.189143
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 46 : (3, 3.000000) count=2.189143
;	genLabel
00107$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=2.999946
;	../_strstr.c: 48: if (!*s2)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x105,x
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 49 : (15, 23.000000) count=2.999946
;	genIfx
;	genIfxJump : z
	bne	00109$
;	Raw cost for generated ic 50 : (5, 5.600000) count=2.999946
;	../_strstr.c: 49: return ((char*)cp);
;	genRet
	lda	0x10c,x
	sta	*(REGTEMP+0)
	lda	0x10b,x
	ldx	*(REGTEMP+0)
	jmp	00113$
;	Raw cost for generated ic 53 : (13, 17.000000) count=2.249953
;	genLabel
00109$:
;	Raw cost for generated ic 54 : (0, 0.000000) count=2.999937
;	../_strstr.c: 51: cp++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x109,x
	clc
	adc	#0x01
	sta	0x109,x
	lda	0x10a,x
	adc	#0x00
	sta	0x10a,x
;	Raw cost for generated ic 56 : (18, 26.000000) count=2.999937
;	genAssign
;	genCopy
	sta	0x10c,x
	lda	0x109,x
	sta	0x10b,x
;	Raw cost for generated ic 57 : (9, 14.000000) count=2.999937
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 58 : (3, 3.000000) count=2.999937
;	genLabel
00112$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=0.999984
;	../_strstr.c: 54: return (NULL) ;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 60 : (3, 4.000000) count=0.999984
;	genLabel
00113$:
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.999984
;	../_strstr.c: 55: }
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 62 : (16, 30.000000) count=0.999984
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
