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
_puts_sloc0_1_0:
	.ds 2
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
;sloc0         Allocated with name '_puts_sloc0_1_0'
;s             Allocated to registers 
;------------------------------------------------------------
;	../puts.c: 31: int puts (const char *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_puts:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	*_puts_sloc0_1_0
	stx	*(_puts_sloc0_1_0 + 1)
;	Raw cost for generated ic 2 : (4, 6.000000) count=1.000000
;	../puts.c: 33: while (*s)
;	genLabel
00103$:
;	Raw cost for generated ic 3 : (0, 0.000000) count=2.285713
;	genPointerGet
	ldy	#0x00
	lda	[*_puts_sloc0_1_0],y
;	Raw cost for generated ic 5 : (4, 7.000000) count=2.285713
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
	inc	*_puts_sloc0_1_0
	bne	00128$
	inc	*(_puts_sloc0_1_0 + 1)
00128$:
;	Raw cost for generated ic 10 : (6, 12.600000) count=1.714284
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 13 : (2, 2.000000) count=1.714284
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
	rts
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
;	assignResultValue
;	Raw cost for generated ic 25 : (7, 10.000000) count=0.999998
;	genRet
;	Raw cost for generated ic 26 : (0, 0.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.999998
;	../puts.c: 37: }
;	genEndFunction
	jmp	_putchar
;	Raw cost for generated ic 28 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
