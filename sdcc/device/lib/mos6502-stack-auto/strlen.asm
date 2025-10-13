;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strlen
	
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
	.globl _strlen
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
;Allocation info for local variables in function 'strlen'
;------------------------------------------------------------
;str           Allocated to registers 
;i             Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../strlen.c: 35: size_t strlen ( const char * str )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_strlen:
;	  adjustStack : cycles stk:12  incdec:18  adc:24
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genReceive
	stx	*(REGTEMP+0)
	tsx
	sta	0x101,x
	lda	*(REGTEMP+0)
	sta	0x102,x
;	Raw cost for generated ic 2 : (11, 18.000000) count=1.000000
;	../strlen.c: 39: while (*str++)
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 21 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=3.999997
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 8 : (16, 25.000000) count=3.999997
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 6 : (17, 24.000000) count=3.999997
;	genIfx
	cpy	#0x00
;	genIfxJump : z
	beq	00103$
;	Raw cost for generated ic 9 : (7, 7.600000) count=3.999997
;	../strlen.c: 40: i++ ;
;	genPlus
;	  genPlusInc
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 13 : (17, 24.000000) count=2.999997
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 15 : (3, 3.000000) count=2.999997
;	genLabel
00103$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.999999
;	../strlen.c: 42: return i;
;	genRet
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
;	Raw cost for generated ic 17 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.999999
;	../strlen.c: 43: }
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 19 : (11, 24.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
