;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcslen
	
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
	.globl _wcslen
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_wcslen_n_10000_16:
	.ds 2
_wcslen_sloc0_1_0:
	.ds 2
_wcslen_sloc1_1_0:
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
;Allocation info for local variables in function 'wcslen'
;------------------------------------------------------------
;s             Allocated to registers 
;n             Allocated with name '_wcslen_n_10000_16'
;sloc0         Allocated with name '_wcslen_sloc0_1_0'
;sloc1         Allocated with name '_wcslen_sloc1_1_0'
;------------------------------------------------------------
;	../wcslen.c: 31: size_t wcslen(const wchar_t *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcslen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_wcslen:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_wcslen_sloc0_1_0
	stx	*(_wcslen_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../wcslen.c: 34: while (*s)
;	genAssign
;	genAssignLit
	stz	*_wcslen_n_10000_16
	stz	*(_wcslen_n_10000_16 + 1)
;	Raw cost for generated ic 22 : (6, 8.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genPointerGet
	ldy	#0x00
	lda	[*_wcslen_sloc0_1_0],y
	sta	*_wcslen_sloc1_1_0
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 1)
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 2)
	iny
	lda	[*_wcslen_sloc0_1_0],y
	sta	*(_wcslen_sloc1_1_0 + 3)
;	Raw cost for generated ic 6 : (21, 40.000000) count=3.999997
;	genIfx
	ora	*(_wcslen_sloc1_1_0 + 2)
	ora	*(_wcslen_sloc1_1_0 + 1)
	ora	*_wcslen_sloc1_1_0
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 7 : (11, 14.600000) count=3.999997
;	../wcslen.c: 36: n++;
;	genPlus
;	  genPlusInc
	inc	*_wcslen_n_10000_16
	bne	00121$
	inc	*(_wcslen_n_10000_16 + 1)
00121$:
;	Raw cost for generated ic 11 : (6, 12.600000) count=2.999997
;	../wcslen.c: 37: s++;
;	genPlus
;	  genPlusInc
	lda	*_wcslen_sloc0_1_0
	clc
	adc	#0x04
	sta	*_wcslen_sloc0_1_0
	bcc	00101$
	inc	*(_wcslen_sloc0_1_0 + 1)
;	Raw cost for generated ic 14 : (11, 17.600000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 16 : (3, 3.000000) count=2.999997
;	genLabel
00103$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=0.999999
;	../wcslen.c: 40: return n;
;	genRet
	ldx	*(_wcslen_n_10000_16 + 1)
	lda	*_wcslen_n_10000_16
;	Raw cost for generated ic 18 : (4, 6.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 19 : (0, 0.000000) count=0.999999
;	../wcslen.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 20 : (1, 6.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
