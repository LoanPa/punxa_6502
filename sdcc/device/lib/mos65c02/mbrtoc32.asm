;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrtoc32
	
	.r65c02
	.optsdcc -mmos65c02

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
	.globl _mbrtoc32_PARM_4
	.globl _mbrtoc32_PARM_3
	.globl _mbrtoc32_PARM_2
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
_mbrtoc32_PARM_2:
	.ds 2
_mbrtoc32_PARM_3:
	.ds 2
_mbrtoc32_PARM_4:
	.ds 2
_mbrtoc32_pc32_10000_21:
	.ds 2
_mbrtoc32_wc_10000_22:
	.ds 4
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
;s             Allocated with name '_mbrtoc32_PARM_2'
;n             Allocated with name '_mbrtoc32_PARM_3'
;ps            Allocated with name '_mbrtoc32_PARM_4'
;pc32          Allocated with name '_mbrtoc32_pc32_10000_21'
;wc            Allocated with name '_mbrtoc32_wc_10000_22'
;ret           Allocated to registers a x 
;sps           Allocated with name '_mbrtoc32_sps_10000_22'
;------------------------------------------------------------
;	../mbrtoc32.c: 34: size_t mbrtoc32(char32_t *restrict pc32, const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrtoc32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrtoc32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mbrtoc32_pc32_10000_21
	stx	(_mbrtoc32_pc32_10000_21 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mbrtoc32.c: 40: if(!ps)
;	genIfx
	lda	(_mbrtoc32_PARM_4 + 1)
	ora	_mbrtoc32_PARM_4
;	genIfxJump : z
	bne	00102$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	../mbrtoc32.c: 41: ps = &sps;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genCast
;	genCopy
	lda	#>_mbrtoc32_sps_10000_22
	sta	(_mbrtoc32_PARM_4 + 1)
	lda	#_mbrtoc32_sps_10000_22
	sta	_mbrtoc32_PARM_4
;	Raw cost for generated ic 7 : (10, 12.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 43: if(!pc32)
;	genIfx
	lda	(_mbrtoc32_pc32_10000_21 + 1)
	ora	_mbrtoc32_pc32_10000_21
;	genIfxJump : z
	bne	00104$
;	Raw cost for generated ic 10 : (11, 13.600000) count=1.000000
;	../mbrtoc32.c: 44: return(mbrtowc(0, s, n, ps));
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc32_PARM_2
	sta	_mbrtowc_PARM_2
;	Raw cost for generated ic 14 : (12, 16.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc32_PARM_3
	sta	_mbrtowc_PARM_3
;	Raw cost for generated ic 15 : (12, 16.000000) count=0.750000
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	lda	_mbrtoc32_PARM_4
	sta	_mbrtowc_PARM_4
;	Raw cost for generated ic 16 : (12, 16.000000) count=0.750000
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	#0x00
	txa
;	assignResultValue
;	Raw cost for generated ic 17 : (6, 10.000000) count=0.750000
;	genRet
	jmp	_mbrtowc
;	Raw cost for generated ic 18 : (3, 3.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 46: ret = mbrtowc(&wc, s, n, ps);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 20 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_2 + 1)
	sta	(_mbrtowc_PARM_2 + 1)
	lda	_mbrtoc32_PARM_2
	sta	_mbrtowc_PARM_2
;	Raw cost for generated ic 23 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_3 + 1)
	sta	(_mbrtowc_PARM_3 + 1)
	lda	_mbrtoc32_PARM_3
	sta	_mbrtowc_PARM_3
;	Raw cost for generated ic 24 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	lda	(_mbrtoc32_PARM_4 + 1)
	sta	(_mbrtowc_PARM_4 + 1)
	lda	_mbrtoc32_PARM_4
	sta	_mbrtowc_PARM_4
;	Raw cost for generated ic 25 : (12, 16.000000) count=1.000000
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_mbrtoc32_wc_10000_22
	lda	#_mbrtoc32_wc_10000_22
	jsr	_mbrtowc
;	assignResultValue
;	Raw cost for generated ic 26 : (7, 10.000000) count=1.000000
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
	ldx	_mbrtoc32_pc32_10000_21
	stx	*(DPTR+0)
	ldx	(_mbrtoc32_pc32_10000_21 + 1)
	stx	*(DPTR+1)
	lda	_mbrtoc32_wc_10000_22
	ldy	#0x00
	sta	[DPTR],y
	lda	(_mbrtoc32_wc_10000_22 + 1)
	iny
	sta	[DPTR],y
	lda	(_mbrtoc32_wc_10000_22 + 2)
	iny
	sta	[DPTR],y
	lda	(_mbrtoc32_wc_10000_22 + 3)
	iny
	sta	[DPTR],y
	ldx	*(REGTEMP+1)
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 33 : (43, 74.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 51: return(ret);
;	genRet
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 36 : (0, 0.000000) count=1.000000
;	../mbrtoc32.c: 52: }
;	genEndFunction
	rts
;	Raw cost for generated ic 37 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
