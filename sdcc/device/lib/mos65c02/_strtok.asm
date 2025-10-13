;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module _strtok
	
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
	.globl _strchr
	.globl _strtok_PARM_2
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
_strtok_PARM_2:
	.ds 2
_strtok_s_10000_28:
	.ds 2
_strtok_s1_10000_28:
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
;control       Allocated with name '_strtok_PARM_2'
;str           Allocated to registers a x 
;s             Allocated with name '_strtok_s_10000_28'
;s1            Allocated with name '_strtok_s1_10000_28'
;------------------------------------------------------------
;	../_strtok.c: 36: char * strtok ( char * str, const char * control )
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtok:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
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
	rts
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
;	genAssign
;	genCopy
	sta	_strchr_PARM_2
;	Raw cost for generated ic 23 : (3, 4.000000) count=1.714284
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.714284
;	genCall
;	genSend
	ldx	(_strtok_PARM_2 + 1)
	lda	_strtok_PARM_2
	jsr	_strchr
;	assignResultValue
;	Raw cost for generated ic 24 : (9, 14.000000) count=1.714284
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00182$
	cpx	#0x00
	beq	00110$
00182$:
;	Raw cost for generated ic 25 : (11, 12.200000) count=1.714284
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
	sta	(_strtok_s1_10000_28 + 1)
	lda	_strtok_s_10000_28
	sta	_strtok_s1_10000_28
;	Raw cost for generated ic 38 : (12, 16.000000) count=0.999999
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
;	genAssign
;	genCopy
	sta	_strchr_PARM_2
;	Raw cost for generated ic 48 : (3, 4.000000) count=2.999988
;	Raw cost for generated ic 47 : (0, 0.000000) count=2.999988
;	genCall
;	genSend
	ldx	(_strtok_PARM_2 + 1)
	lda	_strtok_PARM_2
	jsr	_strchr
;	assignResultValue
;	Raw cost for generated ic 49 : (9, 14.000000) count=2.999988
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00187$
	cpx	#0x00
	beq	00112$
00187$:
;	Raw cost for generated ic 50 : (11, 12.200000) count=2.999988
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
	ldx	(_strtok_s1_10000_28 + 1)
	lda	_strtok_s1_10000_28
	rts
;	Raw cost for generated ic 58 : (9, 11.000000) count=2.249989
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
	stz	_strtok_s_10000_28
	stz	(_strtok_s_10000_28 + 1)
;	Raw cost for generated ic 68 : (6, 8.000000) count=0.999993
;	../_strtok.c: 65: if (*s1)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtok_s1_10000_28
	stx	*(DPTR+0)
	ldx	(_strtok_s1_10000_28 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 70 : (14, 21.000000) count=0.999993
;	genIfx
;	genIfxJump : z
	beq	00117$
;	Raw cost for generated ic 71 : (5, 5.600000) count=0.999993
;	../_strtok.c: 66: return s1;
;	genRet
	lda	_strtok_s1_10000_28
	rts
;	Raw cost for generated ic 74 : (6, 7.000000) count=0.749995
;	genLabel
00117$:
;	Raw cost for generated ic 76 : (0, 0.000000) count=0.999993
;	../_strtok.c: 68: return NULL;
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 77 : (3, 4.000000) count=0.999993
;	genLabel
;	Raw cost for generated ic 79 : (0, 0.000000) count=0.999993
;	../_strtok.c: 69: }
;	genEndFunction
	rts
;	Raw cost for generated ic 80 : (1, 6.000000) count=0.999993
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
