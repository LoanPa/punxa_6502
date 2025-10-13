;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module call_once
	
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
	.globl _call_once_PARM_2
	.globl _call_once
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
_call_once_PARM_2:
	.ds 2
_call_once_flag_10000_42:
	.ds 2
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
;Allocation info for local variables in function 'call_once'
;------------------------------------------------------------
;func          Allocated with name '_call_once_PARM_2'
;flag          Allocated with name '_call_once_flag_10000_42'
;------------------------------------------------------------
;	../call_once.c: 36: void call_once(_Bool *flag, void (*func)(void))
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function call_once
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_call_once:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_call_once_flag_10000_42
	stx	(_call_once_flag_10000_42 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../call_once.c: 38: if (!*flag)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 4 : (8, 13.000000) count=1.000000
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 5 : (5, 5.600000) count=1.000000
;	../call_once.c: 40: func();
;	genPcall
	lda	_call_once_PARM_2
	sta	*(REGTEMP+0)
	lda	(_call_once_PARM_2 + 1)
	sta	*(REGTEMP+1)
	jsr	__sdcc_indirect_jsr
;	Raw cost for generated ic 8 : (13, 20.000000) count=0.750000
;	../call_once.c: 41: *flag = true;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_call_once_flag_10000_42
	stx	*(DPTR+0)
	ldx	(_call_once_flag_10000_42 + 1)
	stx	*(DPTR+1)
	lda	#0x01
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 10 : (16, 24.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../call_once.c: 43: }
;	genEndFunction
	rts
;	Raw cost for generated ic 13 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
