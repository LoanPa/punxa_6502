;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strcspn
	
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
	.globl _strchr
	.globl _strcspn
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
;Allocation info for local variables in function 'strcspn'
;------------------------------------------------------------
;control       Allocated to stack - sp +7 +2 
;string        Allocated to registers 
;count         Allocated to stack - sp +3 +2 
;ch            Allocated to registers 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../_strcspn.c: 31: size_t strcspn ( const char * string, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strcspn
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_strcspn:
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
;	../_strcspn.c: 36: while (ch = *string) {
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 33 : (8, 12.000000) count=1.000000
;	genLabel
00104$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=2.285713
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
;	Raw cost for generated ic 6 : (16, 25.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00106$
;	Raw cost for generated ic 8 : (5, 5.600000) count=2.285713
;	../_strcspn.c: 37: if (strchr(control,ch))
;	genIpush
	txa
	pha
;	Raw cost for generated ic 11 : (2, 5.000000) count=1.714284
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	tsx
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	_strchr
;	assignResultValue
;	  adjustStack : cycles stk:10  incdec:12  adc:24
	sta	*(REGTEMP+0)
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 13 : (18, 32.000000) count=1.714284
;	genIfx
;	genIfxJump : z
	bne	00106$
	cpx	#0x00
	bne	00106$
;	Raw cost for generated ic 14 : (9, 10.200000) count=1.714284
;	../_strcspn.c: 40: count++;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x103,x
	clc
	adc	#0x01
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 21 : (18, 26.000000) count=1.285713
;	../_strcspn.c: 41: string++;
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 25 : (17, 24.000000) count=1.285713
;	genGoto
	jmp	00104$
;	Raw cost for generated ic 27 : (3, 3.000000) count=1.285713
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.999999
;	../_strcspn.c: 44: return count;
;	genRet
	tsx
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
;	Raw cost for generated ic 29 : (11, 16.000000) count=0.999999
;	genLabel
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.999999
;	../_strcspn.c: 45: }  
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
;	Raw cost for generated ic 31 : (11, 24.000000) count=0.999999
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
