;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module btowc
	
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
	.globl _btowc
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
;Allocation info for local variables in function 'btowc'
;------------------------------------------------------------
;c             Allocated to registers a x 
;d             Allocated to registers a 
;sloc0         Allocated to stack - sp +1 +4 
;------------------------------------------------------------
;	../btowc.c: 35: wint_t btowc(int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function btowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_btowc:
;	  adjustStack : cycles stk:12  incdec:18  adc:24
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../btowc.c: 37: char d = (unsigned char)c;
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../btowc.c: 38: if(d & 0x80)
;	genAnd
	cmp	#0x00
;	genIfxJump : n
	bpl	00102$
;	Raw cost for generated ic 6 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	../btowc.c: 39: return WEOF;
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	jmp	00103$
;	Raw cost for generated ic 10 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../btowc.c: 40: return d;
;	genCast
	tsx
	sta	0x101,x
	lda	#0x00
	sta	0x102,x
	sta	0x103,x
;	Raw cost for generated ic 12 : (15, 24.000000) count=1.000000
;	genRet
	sta	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 13 : (20, 28.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../btowc.c: 41: }
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
;	Raw cost for generated ic 15 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
