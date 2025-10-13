;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strdup
	
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
	.globl _malloc
	.globl _strlen
	.globl _strcpy
	.globl _strdup
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
;Allocation info for local variables in function 'strdup'
;------------------------------------------------------------
;s             Allocated to stack - sp +5 +2 
;r             Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../strdup.c: 33: char *strdup (const char *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strdup
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_strdup:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../strdup.c: 35: char *r = malloc(strlen(s) + 1);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tsx
	lda	0x105,x
	tay
	lda	0x106,x
	tax
	tya
	jsr	_strlen
;	assignResultValue
;	Raw cost for generated ic 4 : (13, 22.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x01
	bcc	00111$
	inx
00111$:
;	Raw cost for generated ic 5 : (6, 8.600000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_malloc
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x101,x
	lda	*(REGTEMP+0)
	sta	0x102,x
;	Raw cost for generated ic 7 : (14, 24.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x104,x
	lda	0x101,x
	sta	0x103,x
;	Raw cost for generated ic 8 : (9, 14.000000) count=1.000000
;	../strdup.c: 36: if (r)
;	genIfx
	lda	0x104,x
	ora	0x103,x
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 10 : (11, 13.600000) count=1.000000
;	../strdup.c: 37: strcpy(r, s);
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 13 : (8, 14.000000) count=0.750000
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	lda	0x103,x
	tay
	lda	0x104,x
	tax
	tya
	jsr	_strcpy
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 15 : (18, 34.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../strdup.c: 38: return (r);
;	genRet
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
;	Raw cost for generated ic 17 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	../strdup.c: 39: }
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 19 : (13, 28.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
