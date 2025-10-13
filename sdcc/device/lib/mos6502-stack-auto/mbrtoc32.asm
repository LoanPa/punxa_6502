;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	
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
	.globl _mbrtowc
	.globl _mbrtoc32
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
_mbrtoc32_sps_10000_22:
	.ds 3
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
;Allocation info for local variables in function 'mbrtoc32'
;------------------------------------------------------------
;s             Allocated to stack - sp +11 +2 
;n             Allocated to stack - sp +13 +2 
;ps            Allocated to stack - sp +15 +2 
;pc32          Allocated to stack - sp +7 +2 
;wc            Allocated to stack - sp +1 +4 
;ret           Allocated to registers a x 
;sloc0         Allocated to stack - sp +5 +2 
;sps           Allocated with name '_mbrtoc32_sps_10000_22'
;------------------------------------------------------------
;	../mbrtoc32.c: 34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_mbrtoc32:
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
;	../mbrtoc32.c: 40: if(!ps)
;	genIfx
	lda	0x110,x
	ora	0x10f,x
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtoc32.c: 41: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_mbrtoc32_sps_10000_22
	sta	0x110,x
	lda	#_mbrtoc32_sps_10000_22
	sta	0x10f,x
;	Raw cost for generated ic 7 : (10, 14.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 43: if(!pc32)
;	genIfx
	tsx
	lda	0x108,x
	ora	0x107,x
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 10 : (12, 15.600000) count=1.000000
;	../mbrtoc32.c: 44: return(mbrtowc(0, s, n, ps));
;	genIpush
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 13 : (8, 14.000000) count=0.750000
;	genIpush
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 14 : (8, 14.000000) count=0.750000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 15 : (8, 14.000000) count=0.750000
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	#0x00
	txa
	jsr	_mbrtowc
;	assignResultValue
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 17 : (18, 32.000000) count=0.750000
;	genRet
	jmp	00107$
;	Raw cost for generated ic 18 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 46: ret = mbrtowc(&wc, s, n, ps);
;	genAddrOf
	tsx
	inx
	txa
	sta	0x104,x
	lda	#0x01
	sta	0x105,x
;	Raw cost for generated ic 20 : (11, 18.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x10f,x
	pha
	lda	0x10e,x
	pha
;	Raw cost for generated ic 22 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 23 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 24 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	_mbrtowc
;	assignResultValue
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 26 : (24, 42.000000) count=1.000000
;	../mbrtoc32.c: 48: if(ret <= MB_LEN_MAX)
;	genCmp
	sta	*(REGTEMP+0)
	lda	#0x04
	sec
	sbc	*(REGTEMP+0)
	lda	#0x00
	stx	*(REGTEMP+1)
	sbc	*(REGTEMP+1)
	lda	*(REGTEMP+0)
	bcc	00106$
;	Raw cost for generated ic 28 : (20, 26.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 49: *pc32 = wc;
;	genPointerSet
	sta	*(REGTEMP+0)
	stx	*(REGTEMP+1)
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x107,x
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x00
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
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 33 : (44, 76.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 51: return(ret);
;	genRet
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genLabel
00107$:
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 52: }
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 37 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
