;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module iscntrl
	
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
	.globl _iscntrl
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
;Allocation info for local variables in function 'iscntrl'
;------------------------------------------------------------
;c             Allocated to registers a x 
;------------------------------------------------------------
;	../iscntrl.c: 33: int iscntrl (int c)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function iscntrl
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_iscntrl:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../iscntrl.c: 35: return (c < ' ' || c == 0x7f);
;	genCmp
	sta	*(REGTEMP+0)
	sec
	sbc	#0x20
	txa
	sbc	#0x00
	php
	lda	*(REGTEMP+0)
	plp
	bvs	00119$
	bpl	00118$
	bmi	00104$
00119$:
	bpl	00104$
00118$:
;	Raw cost for generated ic 3 : (23, 34.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCmpEQorNE
	cmp	#0x7f
	bne	00122$
	cpx	#0x00
	beq	00104$
00122$:
;	Raw cost for generated ic 5 : (14, 15.200001) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 6 : (0, 0.000000) count=0.750000
;	genAssign
;	genCopy
	lda	#0x00
;	Raw cost for generated ic 8 : (2, 2.000000) count=0.562500
;	genGoto
	jmp	00105$
;	Raw cost for generated ic 9 : (3, 3.000000) count=0.562500
;	genLabel
00104$:
;	Raw cost for generated ic 10 : (0, 0.000000) count=0.437500
;	genAssign
;	genCopy
	lda	#0x01
;	Raw cost for generated ic 11 : (2, 2.000000) count=0.437500
;	genLabel
00105$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 13 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 15 : (0, 0.000000) count=1.000000
;	../iscntrl.c: 36: }
;	genEndFunction
	rts
;	Raw cost for generated ic 16 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
