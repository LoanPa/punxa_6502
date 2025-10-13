;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module mbsinit
	
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
	.globl _mbsinit
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_mbsinit_sloc0_1_0:
	.ds 2
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
;Allocation info for local variables in function 'mbsinit'
;------------------------------------------------------------
;ps            Allocated to registers a x 
;sloc0         Allocated with name '_mbsinit_sloc0_1_0'
;------------------------------------------------------------
;	../mbsinit.c: 31: int mbsinit(const mbstate_t *ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbsinit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mbsinit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../mbsinit.c: 33: return(!ps || !ps->c[0] && !ps->c[1] && !ps->c[2]);
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00130$
	cpx	#0x00
	beq	00104$
00130$:
;	Raw cost for generated ic 4 : (11, 12.200000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
	lda	*(DPTR+0)
;	Raw cost for generated ic 8 : (11, 18.000000) count=0.750000
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 10 : (7, 7.600000) count=0.750000
;	genAssign
;	genCopy
	sta	*_mbsinit_sloc0_1_0
	stx	*(_mbsinit_sloc0_1_0 + 1)
;	Raw cost for generated ic 13 : (4, 6.000000) count=0.562500
;	genPointerGet
	ldy	#0x01
	lda	[*_mbsinit_sloc0_1_0],y
	tay
	lda	*(_mbsinit_sloc0_1_0+0)
;	Raw cost for generated ic 14 : (8, 13.000000) count=0.562500
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 16 : (7, 7.600000) count=0.562500
;	genAssign
;	genCopy
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.421875
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 27 : (8, 13.000000) count=0.421875
;	genIfx
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 29 : (5, 5.600000) count=0.421875
;	genLabel
00103$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.644531
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 38 : (2, 2.000000) count=0.644531
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 39 : (3, 3.000000) count=0.644531
;	genLabel
00104$:
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.355469
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 41 : (2, 2.000000) count=0.355469
;	genLabel
00105$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 43 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 45 : (0, 0.000000) count=1.000000
;	../mbsinit.c: 34: }
;	genEndFunction
	rts
;	Raw cost for generated ic 46 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
