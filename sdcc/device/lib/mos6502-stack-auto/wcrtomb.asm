;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcrtomb
	
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
	.globl _wctomb
	.globl _wcrtomb
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
;Allocation info for local variables in function 'wcrtomb'
;------------------------------------------------------------
;wc            Allocated to stack - sp +5 +4 
;ps            Allocated to stack - sp +9 +2 
;s             Allocated to stack - sp +1 +2 
;ret           Allocated to registers a x 
;------------------------------------------------------------
;	../wcrtomb.c: 34: size_t wcrtomb(char *restrict s, wchar_t wc, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcrtomb
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_wcrtomb:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	Raw cost for generated ic 1 : (7, 14.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 40: ret = wctomb(s, wc);
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 3 : (17, 30.000000) count=1.000000
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	_wctomb
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
;	Raw cost for generated ic 5 : (22, 38.000000) count=1.000000
;	../wcrtomb.c: 42: if(ret == (size_t)(-1))
;	genCmpEQorNE
	cmp	#0xff
	bne	00102$
	cpx	#0xff
	bne	00102$
;	Raw cost for generated ic 7 : (14, 15.200001) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 43: errno = EILSEQ;
;	genAssign
;	genAssignLit
	ldy	#0x54
	sty	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 12 : (10, 12.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 45: return(ret);
;	genRet
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../wcrtomb.c: 46: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 16 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
