;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtol
	
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
	.globl _strtoul
	.globl _strtol_PARM_3
	.globl _strtol_PARM_2
	.globl _strtol
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtol_sloc0_1_0:
	.ds 2
_strtol_sloc1_1_0:
	.ds 4
_strtol_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_strtol_PARM_2:
	.ds 2
_strtol_PARM_3:
	.ds 2
_strtol_nptr_10000_62:
	.ds 2
_strtol_ptr_10000_63:
	.ds 2
_strtol_rptr_10000_63:
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
;Allocation info for local variables in function 'strtol'
;------------------------------------------------------------
;sloc0         Allocated with name '_strtol_sloc0_1_0'
;sloc1         Allocated with name '_strtol_sloc1_1_0'
;sloc2         Allocated with name '_strtol_sloc2_1_0'
;endptr        Allocated with name '_strtol_PARM_2'
;base          Allocated with name '_strtol_PARM_3'
;nptr          Allocated with name '_strtol_nptr_10000_62'
;__200000007   Allocated to registers 
;__200000004   Allocated to registers 
;ptr           Allocated with name '_strtol_ptr_10000_63'
;rptr          Allocated with name '_strtol_rptr_10000_63'
;u             Allocated with name '_strtol_u_10000_63'
;neg           Allocated to registers x 
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__300000008   Allocated to registers 
;c             Allocated to registers 
;------------------------------------------------------------
;	../strtol.c: 38: long int strtol(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtol
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtol:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strtol_nptr_10000_62
	stx	(_strtol_nptr_10000_62 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../strtol.c: 45: while (isblank (*ptr))
;	genAssign
;	genCopy
	sta	*_strtol_sloc0_1_0
	stx	*(_strtol_sloc0_1_0 + 1)
;	Raw cost for generated ic 159 : (4, 6.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 4 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_strtol_sloc0_1_0],y
;	Raw cost for generated ic 6 : (4, 7.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 10 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x20
	beq	00132$
;	Raw cost for generated ic 11 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 12 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x09
	bne	00158$
;	Raw cost for generated ic 14 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 15 : (0, 0.000000) count=3.999992
;	genLabel
00132$:
;	Raw cost for generated ic 19 : (0, 0.000000) count=4.333324
;	../strtol.c: 46: ptr++;
;	genPlus
;	  genPlusInc
	inc	*_strtol_sloc0_1_0
	bne	00101$
	inc	*(_strtol_sloc0_1_0 + 1)
;	Raw cost for generated ic 30 : (6, 12.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 32 : (3, 3.000000) count=4.333324
;	genLabel
00158$:
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_strtol_sloc0_1_0 + 1)
	sta	(_strtol_ptr_10000_63 + 1)
	lda	*_strtol_sloc0_1_0
	sta	_strtol_ptr_10000_63
;	Raw cost for generated ic 161 : (10, 14.000000) count=0.999997
;	../strtol.c: 50: if (*ptr == '-')
;	genPointerGet
	ldy	#0x00
	lda	[*_strtol_sloc0_1_0],y
;	Raw cost for generated ic 39 : (4, 7.000000) count=0.999997
;	genCmpEQorNE
	cmp	#0x2d
	bne	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	../strtol.c: 52: neg = true;
;	genAssign
;	genCopy
	ldx	#0x01
;	Raw cost for generated ic 44 : (2, 2.000000) count=0.749996
;	../strtol.c: 53: ptr++;
;	genPlus
;	  genPlusInc
	lda	*_strtol_sloc0_1_0
	clc
	adc	#0x01
	sta	_strtol_ptr_10000_63
	lda	*(_strtol_sloc0_1_0 + 1)
	adc	#0x00
	sta	(_strtol_ptr_10000_63 + 1)
;	Raw cost for generated ic 46 : (15, 20.000000) count=0.749996
;	genGoto
	jmp	00106$
;	Raw cost for generated ic 48 : (3, 3.000000) count=0.749996
;	genLabel
00105$:
;	Raw cost for generated ic 49 : (0, 0.000000) count=0.249999
;	../strtol.c: 56: neg = false;
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 50 : (2, 2.000000) count=0.249999
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999995
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00110$
;	Raw cost for generated ic 52 : (7, 7.600000) count=0.999995
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	_strtol_ptr_10000_63
	sta	*(DPTR+0)
	lda	(_strtol_ptr_10000_63 + 1)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 56 : (14, 21.000000) count=0.749996
;	genAssign
;	genCopy
	tay
;	Raw cost for generated ic 57 : (1, 2.000000) count=0.749996
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 60 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	cpy	#0x20
	beq	00109$
;	Raw cost for generated ic 61 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 62 : (0, 0.000000) count=0.749996
;	genCmpEQorNE
	cpy	#0x09
	beq	00109$
;	Raw cost for generated ic 64 : (7, 7.600000) count=0.562497
;	skipping generated iCode
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.562497
;	../strtol.c: 59: if (neg && (isblank (*ptr) || *ptr == '-' || *ptr == '+'))
;	genCmpEQorNE
	cmp	#0x2d
	beq	00109$
;	Raw cost for generated ic 81 : (7, 7.600000) count=0.421873
;	skipping generated iCode
;	Raw cost for generated ic 82 : (0, 0.000000) count=0.421873
;	genCmpEQorNE
	cmp	#0x2b
	bne	00110$
;	Raw cost for generated ic 87 : (7, 7.600000) count=0.316405
;	skipping generated iCode
;	Raw cost for generated ic 88 : (0, 0.000000) count=0.316405
;	genLabel
00109$:
;	Raw cost for generated ic 90 : (0, 0.000000) count=0.670895
;	../strtol.c: 61: if (endptr)
;	genIfx
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
;	genIfxJump : z
	beq	00108$
;	Raw cost for generated ic 91 : (11, 13.600000) count=0.670895
;	../strtol.c: 62: *endptr = nptr;
;	genAssign
;	genCopy
	ldx	(_strtol_PARM_2 + 1)
	lda	_strtol_PARM_2
;	Raw cost for generated ic 94 : (6, 8.000000) count=0.503171
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_strtol_nptr_10000_62
	ldy	#0x00
	sta	[DPTR],y
	lda	(_strtol_nptr_10000_62 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 95 : (17, 30.000000) count=0.503171
;	genLabel
00108$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.670895
;	../strtol.c: 63: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 97 : (10, 13.000000) count=0.670895
;	genLabel
00110$:
;	Raw cost for generated ic 98 : (0, 0.000000) count=0.999995
;	../strtol.c: 66: u = strtoul(ptr, &rptr, base);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 99 : (0, 0.000000) count=0.999995
;	genCast
;	genCopy
	lda	#>_strtol_rptr_10000_63
	sta	(_strtoul_PARM_2 + 1)
	lda	#_strtol_rptr_10000_63
	sta	_strtoul_PARM_2
;	Raw cost for generated ic 100 : (10, 12.000000) count=0.999995
;	genAssign
;	genCopy
	lda	(_strtol_PARM_3 + 1)
	sta	(_strtoul_PARM_3 + 1)
	lda	_strtol_PARM_3
	sta	_strtoul_PARM_3
;	Raw cost for generated ic 103 : (12, 16.000000) count=0.999995
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.999995
;	genCall
	phx
;	genSend
	ldx	(_strtol_ptr_10000_63 + 1)
	lda	_strtol_ptr_10000_63
	jsr	_strtoul
;	assignResultValue
	sta	*_strtol_sloc1_1_0
	stx	*(_strtol_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_strtol_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_strtol_sloc1_1_0 + 3)
	plx
;	Raw cost for generated ic 104 : (23, 39.000000) count=0.999995
;	../strtol.c: 69: if (rptr == ptr)
;	genCmpEQorNE
	lda	_strtol_rptr_10000_63
	cmp	_strtol_ptr_10000_63
	bne	00117$
	lda	(_strtol_rptr_10000_63 + 1)
	cmp	(_strtol_ptr_10000_63 + 1)
	bne	00117$
;	Raw cost for generated ic 106 : (22, 27.200001) count=0.999995
;	skipping generated iCode
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999995
;	../strtol.c: 71: if (endptr)
;	genIfx
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
;	genIfxJump : z
	beq	00115$
;	Raw cost for generated ic 110 : (11, 13.600000) count=0.749996
;	../strtol.c: 72: *endptr = nptr;
;	genAssign
;	genCopy
	ldx	(_strtol_PARM_2 + 1)
	lda	_strtol_PARM_2
;	Raw cost for generated ic 113 : (6, 8.000000) count=0.562497
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_strtol_nptr_10000_62
	ldy	#0x00
	sta	[DPTR],y
	lda	(_strtol_nptr_10000_62 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 114 : (17, 30.000000) count=0.562497
;	genLabel
00115$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.749996
;	../strtol.c: 73: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 116 : (10, 13.000000) count=0.749996
;	genLabel
00117$:
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.999995
;	../strtol.c: 76: if (endptr)
;	genIfx
	lda	(_strtol_PARM_2 + 1)
	ora	_strtol_PARM_2
;	genIfxJump : z
	beq	00119$
;	Raw cost for generated ic 118 : (11, 13.600000) count=0.999995
;	../strtol.c: 77: *endptr = rptr;
;	genAssign
;	genCopy
	lda	(_strtol_PARM_2 + 1)
	sta	*(_strtol_sloc0_1_0 + 1)
	lda	_strtol_PARM_2
	sta	*_strtol_sloc0_1_0
;	Raw cost for generated ic 121 : (10, 14.000000) count=0.749996
;	genPointerSet
	lda	_strtol_rptr_10000_63
	ldy	#0x00
	sta	[*_strtol_sloc0_1_0],y
	lda	(_strtol_rptr_10000_63 + 1)
	iny
	sta	[*_strtol_sloc0_1_0],y
;	Raw cost for generated ic 122 : (13, 24.000000) count=0.749996
;	genLabel
00119$:
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.999995
;	../strtol.c: 80: if (!neg && u > LONG_MAX)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	bne	00124$
;	Raw cost for generated ic 124 : (7, 7.600000) count=0.999995
;	genCmp
	lda	#0xff
	sec
	sbc	*_strtol_sloc1_1_0
	lda	#0xff
	sbc	*(_strtol_sloc1_1_0 + 1)
	lda	#0xff
	sbc	*(_strtol_sloc1_1_0 + 2)
	lda	#0x7f
	sbc	*(_strtol_sloc1_1_0 + 3)
	bcs	00124$
;	Raw cost for generated ic 127 : (22, 27.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 128 : (0, 0.000000) count=0.749996
;	../strtol.c: 82: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 132 : (8, 10.000000) count=0.562497
;	../strtol.c: 83: return (LONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x7f
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 133 : (12, 15.000000) count=0.562497
;	genLabel
00124$:
;	Raw cost for generated ic 135 : (0, 0.000000) count=0.999995
;	../strtol.c: 85: else if (neg && u > -LONG_MIN)
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00125$
;	Raw cost for generated ic 136 : (7, 7.600000) count=0.999995
;	genCmp
	lda	#0x00
	sec
	sbc	*_strtol_sloc1_1_0
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 1)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 2)
	lda	#0x80
	sbc	*(_strtol_sloc1_1_0 + 3)
	bcs	00125$
;	Raw cost for generated ic 139 : (22, 27.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.749996
;	../strtol.c: 87: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 144 : (8, 10.000000) count=0.562497
;	../strtol.c: 88: return (LONG_MIN);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	ldy	#0x80
	sty	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 145 : (12, 15.000000) count=0.562497
;	genLabel
00125$:
;	Raw cost for generated ic 147 : (0, 0.000000) count=0.999995
;	../strtol.c: 91: return (neg ? -u : u);
;	genIfx
	cpx	#0x00
;	genIfxJump : z
	beq	00137$
;	Raw cost for generated ic 148 : (7, 7.600000) count=0.999995
;	genUminus
	lda	#0x00
	sec
	sbc	*_strtol_sloc1_1_0
	sta	*_strtol_sloc2_1_0
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 1)
	sta	*(_strtol_sloc2_1_0 + 1)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 2)
	sta	*(_strtol_sloc2_1_0 + 2)
	lda	#0x00
	sbc	*(_strtol_sloc1_1_0 + 3)
	sta	*(_strtol_sloc2_1_0 + 3)
;	Raw cost for generated ic 149 : (25, 34.000000) count=0.749996
;	genGoto
	jmp	00138$
;	Raw cost for generated ic 151 : (3, 3.000000) count=0.749996
;	genLabel
00137$:
;	Raw cost for generated ic 152 : (0, 0.000000) count=0.249999
;	genAssign
;	genCopy
	lda	*(_strtol_sloc1_1_0 + 3)
	sta	*(_strtol_sloc2_1_0 + 3)
	lda	*(_strtol_sloc1_1_0 + 2)
	sta	*(_strtol_sloc2_1_0 + 2)
	lda	*(_strtol_sloc1_1_0 + 1)
	sta	*(_strtol_sloc2_1_0 + 1)
	lda	*_strtol_sloc1_1_0
	sta	*_strtol_sloc2_1_0
;	Raw cost for generated ic 153 : (16, 24.000000) count=0.249999
;	genLabel
00138$:
;	Raw cost for generated ic 154 : (0, 0.000000) count=0.999995
;	genRet
	lda	*(_strtol_sloc2_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtol_sloc2_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_strtol_sloc2_1_0 + 1)
	lda	*_strtol_sloc2_1_0
;	Raw cost for generated ic 155 : (12, 18.000000) count=0.999995
;	genLabel
;	Raw cost for generated ic 156 : (0, 0.000000) count=0.999995
;	../strtol.c: 92: }
;	genEndFunction
	rts
;	Raw cost for generated ic 157 : (1, 6.000000) count=0.999995
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
