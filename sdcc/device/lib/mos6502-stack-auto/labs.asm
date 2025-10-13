;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module labs
	
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
	.globl _labs
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
;Allocation info for local variables in function 'labs'
;------------------------------------------------------------
;j             Allocated to stack - sp +7 +4 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../labs.c: 63: long int labs(long int j)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function labs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_labs:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	../labs.c: 65: return (j < 0) ? -j : j;
;	genCmp
	tsx
	lda	0x10a,x
	sec
	sbc	#0x00
	bvc	00112$
	bpl	00111$
	bmi	00103$
00112$:
	bpl	00103$
00111$:
;	Raw cost for generated ic 2 : (18, 23.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genUminus
	lda	#0x00
	sec
	sbc	0x107,x
	sta	0x101,x
	lda	#0x00
	sbc	0x108,x
	sta	0x102,x
	lda	#0x00
	sbc	0x109,x
	sta	0x103,x
	lda	#0x00
	sbc	0x10a,x
	sta	0x104,x
;	Raw cost for generated ic 4 : (33, 46.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 6 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genAssign
;	genCopy
	tsx
	lda	0x10a,x
	sta	0x104,x
	lda	0x109,x
	sta	0x103,x
	lda	0x108,x
	sta	0x102,x
	lda	0x107,x
	sta	0x101,x
;	Raw cost for generated ic 8 : (25, 38.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../labs.c: 66: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
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
