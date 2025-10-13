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
;ps            Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../mbsinit.c: 31: int mbsinit(const mbstate_t *ps)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mbsinit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_mbsinit:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:6  incdec:8  adc:12
	pha
	pha
;	Raw cost for generated ic 1 : (9, 20.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../mbsinit.c: 33: return(!ps || !ps->c[0] && !ps->c[1] && !ps->c[2]);
;	genIfx
	tsx
	lda	0x104,x
	ora	0x103,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 4 : (12, 15.600000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x103,x
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 8 : (15, 23.000000) count=0.750000
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 10 : (5, 5.600000) count=0.750000
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 13 : (13, 20.000000) count=0.562500
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 14 : (11, 19.000000) count=0.562500
;	genIfx
;	genIfxJump : z
	bne	00103$
;	Raw cost for generated ic 16 : (5, 5.600000) count=0.562500
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 26 : (13, 20.000000) count=0.421875
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	iny
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 27 : (11, 19.000000) count=0.421875
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
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 46 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
