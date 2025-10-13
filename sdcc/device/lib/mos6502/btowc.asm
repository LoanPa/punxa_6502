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
	.area	OSEG    (PAG, OVR)
_btowc_sloc0_1_0:
	.ds 4
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
;sloc0         Allocated with name '_btowc_sloc0_1_0'
;------------------------------------------------------------
;	../btowc.c: 35: wint_t btowc(int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function btowc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_btowc:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
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
	rts
;	Raw cost for generated ic 10 : (10, 13.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	../btowc.c: 40: return d;
;	genCast
	sta	*_btowc_sloc0_1_0
	ldy	#0x00
	sty	*(_btowc_sloc0_1_0 + 1)
	sty	*(_btowc_sloc0_1_0 + 2)
	sty	*(_btowc_sloc0_1_0 + 3)
;	Raw cost for generated ic 12 : (10, 14.000000) count=1.000000
;	genRet
	lda	*(_btowc_sloc0_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_btowc_sloc0_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_btowc_sloc0_1_0 + 1)
	lda	*_btowc_sloc0_1_0
;	Raw cost for generated ic 13 : (12, 18.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	../btowc.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 15 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
