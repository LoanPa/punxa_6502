;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strtok
	
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
	.globl _strtok
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
_strtok_s_10000_28:
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;control       Allocated to stack - sp +5 +2 
;str           Allocated to registers a x 
;s1            Allocated to stack - sp +1 +2 
;s             Allocated with name '_strtok_s_10000_28'
;------------------------------------------------------------
;	../_strtok.c: 36: char * strtok ( char * str, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_strtok:
;	  adjustStack : cycles stk:6  incdec:14  adc:24
	pha
	pha
;	Raw cost for generated ic 1 : (2, 6.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../_strtok.c: 41: if ( str )
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00176$
	cpx	#0x00
	beq	00102$
00176$:
;	Raw cost for generated ic 3 : (11, 12.200000) count=1.000000
;	../_strtok.c: 42: s = str;
;	genAssign
;	genCopy
	sta	_strtok_s_10000_28
	stx	(_strtok_s_10000_28 + 1)
;	Raw cost for generated ic 7 : (6, 8.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../_strtok.c: 43: if ( !s )
;	genIfx
	lda	(_strtok_s_10000_28 + 1)
	ora	_strtok_s_10000_28
;	genIfxJump : z
	bne	00108$
;	Raw cost for generated ic 9 : (11, 13.600000) count=1.000000
;	../_strtok.c: 44: return NULL;
;	genRet
	lda	#0x00
	tax
	jmp	00119$
;	Raw cost for generated ic 12 : (6, 7.000000) count=0.750000
;	../_strtok.c: 46: while (*s) {
;	genLabel
00108$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=2.285713
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtok_s_10000_28
	stx	*(DPTR+0)
	ldx	(_strtok_s_10000_28 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 16 : (14, 21.000000) count=2.285713
;	genIfx
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 17 : (5, 5.600000) count=2.285713
;	../_strtok.c: 47: if (strchr(control,*s))
;	genIpush
	pha
;	Raw cost for generated ic 22 : (1, 3.000000) count=1.714284
;	Raw cost for generated ic 23 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	tsx
	lda	0x106,x
	tay
	lda	0x107,x
	tax
	tya
	jsr	_strchr
;	assignResultValue
;	  adjustStack : cycles stk:10  incdec:12  adc:24
	sta	*(REGTEMP+0)
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 24 : (18, 32.000000) count=1.714284
;	genIfx
;	genIfxJump : z
	bne	00182$
	cpx	#0x00
	beq	00110$
00182$:
;	Raw cost for generated ic 25 : (9, 10.200000) count=1.714284
;	../_strtok.c: 48: s++;
;	genPlus
;	  genPlusInc
	inc	_strtok_s_10000_28
	bne	00108$
	inc	(_strtok_s_10000_28 + 1)
;	Raw cost for generated ic 29 : (8, 14.600000) count=1.285713
;	genGoto
	jmp	00108$
;	Raw cost for generated ic 32 : (3, 3.000000) count=1.285713
;	../_strtok.c: 50: break;
;	genLabel
00110$:
;	Raw cost for generated ic 37 : (0, 0.000000) count=0.999999
;	../_strtok.c: 53: s1 = s;
;	genAssign
;	genCopy
	lda	(_strtok_s_10000_28 + 1)
	tsx
	sta	0x102,x
	lda	_strtok_s_10000_28
	sta	0x101,x
;	Raw cost for generated ic 38 : (13, 20.000000) count=0.999999
;	../_strtok.c: 55: while (*s) {
;	genLabel
00113$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=3.999984
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtok_s_10000_28
	stx	*(DPTR+0)
	ldx	(_strtok_s_10000_28 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 41 : (14, 21.000000) count=3.999984
;	genIfx
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 42 : (5, 5.600000) count=3.999984
;	../_strtok.c: 56: if (strchr(control,*s)) {
;	genIpush
	pha
;	Raw cost for generated ic 47 : (1, 3.000000) count=2.999988
;	Raw cost for generated ic 48 : (0, 0.000000) count=2.999988
;	genCall
;	genSend
	tsx
	lda	0x106,x
	tay
	lda	0x107,x
	tax
	tya
	jsr	_strchr
;	assignResultValue
;	  adjustStack : cycles stk:10  incdec:12  adc:24
	sta	*(REGTEMP+0)
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 49 : (18, 32.000000) count=2.999988
;	genIfx
;	genIfxJump : z
	bne	00187$
	cpx	#0x00
	beq	00112$
00187$:
;	Raw cost for generated ic 50 : (9, 10.200000) count=2.999988
;	../_strtok.c: 57: *s++ = '\0';
;	genAssign
;	genCopy
	ldx	(_strtok_s_10000_28 + 1)
	lda	_strtok_s_10000_28
;	Raw cost for generated ic 53 : (6, 8.000000) count=2.249989
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	#0x00
	tay
	sta	[DPTR],y
;	Raw cost for generated ic 57 : (9, 16.000000) count=2.249989
;	genPlus
;	  genPlusInc
	inc	_strtok_s_10000_28
	bne	00188$
	inc	(_strtok_s_10000_28 + 1)
00188$:
;	Raw cost for generated ic 54 : (8, 14.600000) count=2.249989
;	../_strtok.c: 58: return s1;
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00119$
;	Raw cost for generated ic 58 : (14, 19.000000) count=2.249989
;	genLabel
00112$:
;	Raw cost for generated ic 59 : (0, 0.000000) count=2.999985
;	../_strtok.c: 60: s++ ;
;	genPlus
;	  genPlusInc
	inc	_strtok_s_10000_28
	bne	00113$
	inc	(_strtok_s_10000_28 + 1)
;	Raw cost for generated ic 61 : (8, 14.600000) count=2.999985
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 64 : (3, 3.000000) count=2.999985
;	genLabel
00115$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.999993
;	../_strtok.c: 63: s = NULL;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_strtok_s_10000_28
	sty	(_strtok_s_10000_28 + 1)
;	Raw cost for generated ic 68 : (8, 10.000000) count=0.999993
;	../_strtok.c: 65: if (*s1)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 70 : (14, 23.000000) count=0.999993
;	genIfx
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 71 : (5, 5.600000) count=0.999993
;	../_strtok.c: 66: return s1;
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
	jmp	00119$
;	Raw cost for generated ic 74 : (14, 19.000000) count=0.749995
;	genLabel
00117$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.999993
;	../_strtok.c: 68: return NULL;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 77 : (3, 4.000000) count=0.999993
;	genLabel
00119$:
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.999993
;	../_strtok.c: 69: }
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 80 : (7, 20.000000) count=0.999993
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
