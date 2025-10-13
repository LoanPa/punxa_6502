;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module cosf
	
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
	.globl _sincosf
	.globl _cosf
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
;Allocation info for local variables in function 'cosf'
;------------------------------------------------------------
;x             Allocated to stack - sp +7 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../cosf.c: 36: float cosf(float x) _FLOAT_FUNC_REENTRANT
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function cosf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_cosf:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../cosf.c: 38: if (x==0.0) return 1.0;
;	genIfx
	tsx
	lda	0x10a,x
	and	#0x7F
	ora	0x109,x
	ora	0x108,x
	ora	0x107,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 2 : (20, 25.600000) count=1.000000
;	genRet
	lda	#0x00
	tax
	ldy	#0x80
	sty	*___SDCC_m6502_ret2
	ldy	#0x3f
	sty	*___SDCC_m6502_ret3
	jmp	00103$
;	Raw cost for generated ic 5 : (14, 17.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../cosf.c: 39: return sincosf(x, 1);
;	genIpush
	lda	#0x01
	pha
;	Raw cost for generated ic 7 : (3, 5.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (17, 30.000000) count=1.000000
;	genCall
	jsr	_sincosf
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
;	Raw cost for generated ic 9 : (30, 50.000000) count=1.000000
;	genRet
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 10 : (20, 28.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../cosf.c: 40: }
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
;	Raw cost for generated ic 12 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
