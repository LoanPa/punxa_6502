;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbrlen
	
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
	.globl _mbrlen_PARM_3
	.globl _mbrlen_PARM_2
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
_mbrlen_PARM_2:
	.ds 2
_mbrlen_PARM_3:
	.ds 2
_mbrlen_s_10000_15:
	.ds 2
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
;n             Allocated with name '_mbrlen_PARM_2'
;ps            Allocated with name '_mbrlen_PARM_3'
;s             Allocated with name '_mbrlen_s_10000_15'
;sps           Allocated with name '_mbrlen_sps_10000_16'
;------------------------------------------------------------
;	../mbrlen.c: 31: size_t mbrlen(const char *restrict s, size_t n, mbstate_t *restrict ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbrlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbrlen:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mbrlen_s_10000_15
	stx	(_mbrlen_s_10000_15 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../mbrlen.c: 35: return(mbrtowc(0, s, n, ps ? ps : &sps));
;	genIfx
	lda	(_mbrlen_PARM_3 + 1)
	ora	_mbrlen_PARM_3
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 3 : (11, 13.600000) count=1.000000
;	genAssign
;	genCopy
	ldx	(_mbrlen_PARM_3 + 1)
	lda	_mbrlen_PARM_3
;	Raw cost for generated ic 4 : (6, 8.000000) count=0.750000
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
;	genAssign
;	genCopy
	ldy	(_mbrlen_s_10000_15 + 1)
	sty	(_mbrtowc_PARM_2 + 1)
	ldy	_mbrlen_s_10000_15
	sty	_mbrtowc_PARM_2
;	Raw cost for generated ic 12 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldy	(_mbrlen_PARM_2 + 1)
	sty	(_mbrtowc_PARM_3 + 1)
	ldy	_mbrlen_PARM_2
	sty	_mbrtowc_PARM_3
;	Raw cost for generated ic 13 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	sta	_mbrtowc_PARM_4
	stx	(_mbrtowc_PARM_4 + 1)
;	Raw cost for generated ic 14 : (6, 8.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	txa
;	assignResultValue
;	Raw cost for generated ic 15 : (6, 10.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.000000
;	../mbrlen.c: 36: }
;	genEndFunction
	jmp	_mbrtowc
;	Raw cost for generated ic 18 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
