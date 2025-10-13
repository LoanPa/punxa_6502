;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module cotf
	
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
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
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
;Allocation info for local variables in function 'cotf'
;------------------------------------------------------------
;x             Allocated to stack - sp +7 +4 
;y             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../cotf.c: 37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function cotf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_cotf:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../cotf.c: 41: y=fabsf(x);
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 2 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_fabsf
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x105,x
	lda	*(REGTEMP+0)
	sta	0x106,x
	lda	*___SDCC_m6502_ret2
	sta	0x107,x
	lda	*___SDCC_m6502_ret3
	sta	0x108,x
;	  adjustStack : cycles stk:16  incdec:10  adc:10
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 3 : (29, 50.000000) count=1.000000
;	../cotf.c: 42: if (y<1.0E-30) //This one requires more thinking...
;	genIpush
	lda	#0x0d
	pha
	lda	#0xa2
	pha
	lda	#0x42
	pha
	lda	#0x60
	pha
;	Raw cost for generated ic 27 : (12, 20.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 28 : (16, 28.000000) count=1.000000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 29 : (11, 20.000000) count=1.000000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	../cotf.c: 44: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldy	#0x22
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 10 : (10, 12.000000) count=0.750000
;	../cotf.c: 45: if (x<0.0)
;	genIpush
	tya
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 30 : (5, 14.000000) count=0.750000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 31 : (16, 28.000000) count=0.750000
;	genCall
	jsr	___fslt
;	assignResultValue
	tay
;	  adjustStack : cycles stk:32  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 32 : (11, 20.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 12 : (7, 7.600000) count=0.750000
;	../cotf.c: 46: return -HUGE_VALF;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00106$
;	Raw cost for generated ic 15 : (12, 15.000000) count=0.562500
;	genLabel
00102$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.750000
;	../cotf.c: 48: return +HUGE_VALF;
;	genRet
	lda	#0xff
	tax
	ldy	#0x7f
	sty	*___SDCC_m6502_ret2
	sty	*___SDCC_m6502_ret3
	jmp	00106$
;	Raw cost for generated ic 18 : (12, 15.000000) count=0.750000
;	genLabel
00105$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	../cotf.c: 50: return tancotf(x, 1);
;	genIpush
	lda	#0x01
	pha
;	Raw cost for generated ic 21 : (3, 5.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 22 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_tancotf
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x106,x
	lda	*(REGTEMP+0)
	sta	0x107,x
	lda	*___SDCC_m6502_ret2
	sta	0x108,x
	lda	*___SDCC_m6502_ret3
	sta	0x109,x
;	  adjustStack : cycles stk:20  incdec:12  adc:10
	txa
	clc
	adc	#0x05
	tax
	txs
;	Raw cost for generated ic 23 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 24 : (20, 28.000000) count=1.000000
;	genLabel
00106$:
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	../cotf.c: 51: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 26 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
