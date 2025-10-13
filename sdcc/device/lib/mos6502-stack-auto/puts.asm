;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module puts
	
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
	.globl _putchar
	.globl _puts
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
;Allocation info for local variables in function 'puts'
;------------------------------------------------------------
;s             Allocated to registers 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../puts.c: 31: int puts (const char *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_puts:
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
;	../puts.c: 33: while (*s)
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
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
;	Raw cost for generated ic 5 : (16, 25.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00105$
;	Raw cost for generated ic 6 : (5, 5.600000) count=2.285713
;	../puts.c: 34: if (putchar(*s++) == EOF)
;	genAssign
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.714284
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x01
	sta	0x101,x
	lda	0x102,x
	adc	#0x00
	sta	0x102,x
;	Raw cost for generated ic 10 : (17, 24.000000) count=1.714284
;	genCast
;	genCopy
	ldx	#0x00
	tya
;	Raw cost for generated ic 13 : (3, 4.000000) count=1.714284
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	jsr	_putchar
;	assignResultValue
;	Raw cost for generated ic 15 : (3, 6.000000) count=1.714284
;	genCmpEQorNE
	cmp	#0xff
	bne	00103$
	cpx	#0xff
	bne	00103$
;	Raw cost for generated ic 16 : (14, 15.200001) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 17 : (0, 0.000000) count=1.714284
;	../puts.c: 35: return EOF;
;	genRet
	lda	#0xff
	tax
	jmp	00106$
;	Raw cost for generated ic 20 : (6, 7.000000) count=0.428570
;	genLabel
00105$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=0.999998
;	../puts.c: 36: return putchar('\n');
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.999998
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	_putchar
;	assignResultValue
;	Raw cost for generated ic 25 : (7, 10.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999998
;	genLabel
00106$:
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999998
;	../puts.c: 37: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 28 : (7, 20.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
