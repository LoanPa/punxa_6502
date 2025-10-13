;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrlen
	
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
	.globl _mbrlen
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
_mbrlen_sps_10000_16:
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
;Allocation info for local variables in function 'mbrlen'
;------------------------------------------------------------
;n             Allocated to stack - sp +5 +2 
;ps            Allocated to stack - sp +7 +2 
;s             Allocated to stack - sp +1 +2 
;sps           Allocated with name '_mbrlen_sps_10000_16'
;------------------------------------------------------------
;	../mbrlen.c: 31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_mbrlen:
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
;	../mbrlen.c: 35: return(mbrtowc(0, s, n, ps ? ps : &sps));
;	genIfx
	tsx
	lda	0x108,x
	ora	0x107,x
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 3 : (12, 15.600000) count=1.000000
;	genAssign
;	genCopy
	lda	0x107,x
	tay
	lda	0x108,x
	tax
	tya
;	Raw cost for generated ic 4 : (9, 14.000000) count=0.750000
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 5 : (3, 3.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.250000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.250000
;	genCast
;	genCopy
	ldx	#>_mbrlen_sps_10000_16
	lda	#_mbrlen_sps_10000_16
;	Raw cost for generated ic 8 : (4, 4.000000) count=0.250000
;	genLabel
00104$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 11 : (5, 12.000000) count=1.000000
;	genIpush
	tsx
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 12 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 13 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 15 : (18, 32.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../mbrlen.c: 36: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 18 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
