;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module call_once
	
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
;func          Allocated to stack - sp +5 +2 
;flag          Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../call_once.c: 36: void call_once(_Bool *flag, void (*func)(void))
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function call_once
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_call_once:
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
;	../call_once.c: 38: if (!*flag)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 4 : (16, 25.000000) count=1.000000
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 5 : (5, 5.600000) count=1.000000
;	../call_once.c: 40: func();
;	genPcall
	tsx
	lda	0x105,x
	sta	*(REGTEMP+0)
	lda	0x106,x
	sta	*(REGTEMP+1)
	jsr	__sdcc_indirect_jsr
;	Raw cost for generated ic 8 : (14, 22.000000) count=0.750000
;	../call_once.c: 41: *flag = true;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	#0x01
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 10 : (17, 26.000000) count=0.750000
;	genLabel
00103$:
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	../call_once.c: 43: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (7, 20.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
