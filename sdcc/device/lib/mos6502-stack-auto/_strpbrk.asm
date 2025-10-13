;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strpbrk
	
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
	.globl _strchr
	.globl _strpbrk
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;control       Allocated to stack - sp +11 +2 
;string        Allocated to stack - sp +7 +2 
;ret           Allocated to stack - sp +5 +2 
;ch            Allocated to registers 
;p             Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strpbrk.c: 31: char * strpbrk ( const char * string, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_strpbrk:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strpbrk.c: 33: char *ret = NULL;
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x105,x
	sta	0x106,x
;	Raw cost for generated ic 4 : (8, 12.000000) count=1.000000
;	../_strpbrk.c: 36: while (ch = *control) {
;	genAssign
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 37 : (12, 18.000000) count=1.000000
;	genLabel
00105$:
;	Raw cost for generated ic 5 : (0, 0.000000) count=3.999983
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 7 : (16, 25.000000) count=3.999983
;	genIfx
;	genIfxJump : z
	beq	00107$
;	Raw cost for generated ic 9 : (5, 5.600000) count=3.999983
;	../_strpbrk.c: 37: char * p = strchr(string, ch);
;	genIpush
	txa
	pha
;	Raw cost for generated ic 12 : (2, 5.000000) count=2.999987
;	Raw cost for generated ic 13 : (0, 0.000000) count=2.999987
;	genCall
;	genSend
	tsx
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	_strchr
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x104,x
	lda	*(REGTEMP+0)
	sta	0x105,x
;	  adjustStack : cycles stk:4  incdec:4  adc:10
	pla
;	Raw cost for generated ic 14 : (25, 44.000000) count=2.999987
;	../_strpbrk.c: 38: if (p != NULL && (ret == NULL || p < ret)) {
;	genIfx
	lda	0x105,x
	ora	0x104,x
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 16 : (11, 13.600000) count=2.999987
;	genIfx
	lda	0x107,x
	ora	0x106,x
;	genIfxJump : z
	beq	00101$
;	Raw cost for generated ic 19 : (11, 13.600000) count=2.249990
;	genCmp
	lda	0x104,x
	sec
	sbc	0x106,x
	lda	0x105,x
	sbc	0x107,x
	bcs	00102$
;	Raw cost for generated ic 22 : (18, 23.600000) count=1.687490
;	skipping generated iCode
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.687490
;	genLabel
00101$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.828115
;	../_strpbrk.c: 39: ret = p;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x106,x
	lda	0x103,x
	sta	0x105,x
;	Raw cost for generated ic 26 : (13, 20.000000) count=1.828115
;	genLabel
00102$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=2.999983
;	../_strpbrk.c: 41: control++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 29 : (18, 26.000000) count=2.999983
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 31 : (3, 3.000000) count=2.999983
;	genLabel
00107$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=0.999994
;	../_strpbrk.c: 44: return (ret);
;	genRet
	tsx
	lda	0x106,x
	sta	*(REGTEMP+0)
	lda	0x105,x
;	Raw cost for generated ic 33 : (11, 16.000000) count=0.999994
;	genLabel
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.999994
;	../_strpbrk.c: 45: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 35 : (16, 30.000000) count=0.999994
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
