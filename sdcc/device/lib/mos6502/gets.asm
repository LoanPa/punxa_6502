;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module gets
	
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
	.globl _gets
	.globl _putchar
	.globl _getchar
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
_gets_s_10000_11:
	.ds 2
_gets_count_10000_12:
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s             Allocated with name '_gets_s_10000_11'
;c             Allocated to registers a 
;count         Allocated with name '_gets_count_10000_12'
;------------------------------------------------------------
;	../gets.c: 32: gets (char *s)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gets:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_gets_s_10000_11
	stx	(_gets_s_10000_11 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../gets.c: 35: unsigned int count = 0;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_gets_count_10000_12
	sty	(_gets_count_10000_12 + 1)
;	Raw cost for generated ic 3 : (8, 10.000000) count=1.000000
;	../gets.c: 37: while (1)
;	genLabel
00109$:
;	Raw cost for generated ic 6 : (0, 0.000000) count=72.000000
;	../gets.c: 39: c = getchar ();
;	genCall
	jsr	_getchar
;	assignResultValue
;	Raw cost for generated ic 7 : (3, 6.000000) count=72.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 8 : (0, 0.000000) count=72.000000
;	../gets.c: 40: switch(c)
;	genCmpEQorNE
	cmp	#0x08
	beq	00101$
;	Raw cost for generated ic 10 : (7, 7.600000) count=72.000000
;	skipping generated iCode
;	Raw cost for generated ic 11 : (0, 0.000000) count=72.000000
;	genCmpEQorNE
	cmp	#0x0a
	beq	00105$
;	Raw cost for generated ic 12 : (7, 7.600000) count=54.000000
;	skipping generated iCode
;	Raw cost for generated ic 13 : (0, 0.000000) count=54.000000
;	genCmpEQorNE
	cmp	#0x0d
	beq	00105$
;	Raw cost for generated ic 14 : (7, 7.600000) count=40.500000
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=40.500000
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 16 : (3, 3.000000) count=30.375000
;	../gets.c: 42: case '\b': /* backspace */
;	genLabel
00101$:
;	Raw cost for generated ic 17 : (0, 0.000000) count=18.000000
;	../gets.c: 43: if (count)
;	genIfx
	lda	(_gets_count_10000_12 + 1)
	ora	_gets_count_10000_12
;	genIfxJump : z
	beq	00109$
;	Raw cost for generated ic 18 : (11, 13.600000) count=18.000000
;	../gets.c: 45: putchar ('\b');
;	Raw cost for generated ic 21 : (0, 0.000000) count=4.500000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	Raw cost for generated ic 22 : (7, 10.000000) count=4.500000
;	../gets.c: 46: putchar (' ');
;	Raw cost for generated ic 23 : (0, 0.000000) count=4.500000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x20
	jsr	_putchar
;	Raw cost for generated ic 24 : (7, 10.000000) count=4.500000
;	../gets.c: 47: putchar ('\b');
;	Raw cost for generated ic 25 : (0, 0.000000) count=4.500000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_putchar
;	Raw cost for generated ic 26 : (7, 10.000000) count=4.500000
;	../gets.c: 48: --s;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	_gets_s_10000_11
	bne	00148$
	dec	(_gets_s_10000_11 + 1)
00148$:
	dec	_gets_s_10000_11
;	Raw cost for generated ic 27 : (11, 18.600000) count=4.500000
;	../gets.c: 49: --count;
;	genMinus
;	  genMinusDec - size=2  icount=1
	lda	_gets_count_10000_12
	bne	00149$
	dec	(_gets_count_10000_12 + 1)
00149$:
	dec	_gets_count_10000_12
;	Raw cost for generated ic 29 : (11, 18.600000) count=4.500000
;	../gets.c: 51: break;
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 32 : (3, 3.000000) count=4.500000
;	../gets.c: 54: case '\r': /* CR or LF */
;	genLabel
00105$:
;	Raw cost for generated ic 34 : (0, 0.000000) count=23.625000
;	../gets.c: 55: putchar ('\r');
;	Raw cost for generated ic 35 : (0, 0.000000) count=23.625000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0d
	jsr	_putchar
;	Raw cost for generated ic 36 : (7, 10.000000) count=23.625000
;	../gets.c: 56: putchar ('\n');
;	Raw cost for generated ic 37 : (0, 0.000000) count=23.625000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x0a
	jsr	_putchar
;	Raw cost for generated ic 38 : (7, 10.000000) count=23.625000
;	../gets.c: 57: *s = 0;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_gets_s_10000_11
	stx	*(DPTR+0)
	ldx	(_gets_s_10000_11 + 1)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 40 : (15, 24.000000) count=23.625000
;	../gets.c: 58: return s;
;	genRet
	lda	_gets_s_10000_11
	rts
;	Raw cost for generated ic 41 : (6, 7.000000) count=23.625000
;	../gets.c: 60: default:
;	genLabel
00106$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=54.000000
;	../gets.c: 61: *s++ = c;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_gets_s_10000_11
	stx	*(DPTR+0)
	ldx	(_gets_s_10000_11 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	sta	[DPTR],y
;	Raw cost for generated ic 46 : (14, 22.000000) count=54.000000
;	genPlus
;	  genPlusInc
	inc	_gets_s_10000_11
	bne	00150$
	inc	(_gets_s_10000_11 + 1)
00150$:
;	Raw cost for generated ic 44 : (8, 14.600000) count=54.000000
;	../gets.c: 62: ++count;
;	genPlus
;	  genPlusInc
	inc	_gets_count_10000_12
	bne	00151$
	inc	(_gets_count_10000_12 + 1)
00151$:
;	Raw cost for generated ic 47 : (8, 14.600000) count=54.000000
;	../gets.c: 63: putchar (c);
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 49 : (2, 2.000000) count=54.000000
;	Raw cost for generated ic 50 : (0, 0.000000) count=54.000000
;	genCall
;	genSend
	jsr	_putchar
;	Raw cost for generated ic 51 : (3, 6.000000) count=54.000000
;	../gets.c: 65: }
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 54 : (3, 3.000000) count=54.000000
;	genLabel
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.000000
;	../gets.c: 67: }
;	genEndFunction
	rts
;	Raw cost for generated ic 57 : (1, 6.000000) count=0.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
