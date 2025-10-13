;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module ckd_mul
	
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
	.globl ___ckd_mul_schar
	.globl ___ckd_mul_uchar
	.globl ___ckd_mul_short
	.globl ___ckd_mul_ushort
	.globl ___ckd_mul_int
	.globl ___ckd_mul_uint
	.globl ___ckd_mul_long
	.globl ___ckd_mul_ulong
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
;Allocation info for local variables in function '__ckd_mul_schar'
;------------------------------------------------------------
;a             Allocated to stack - sp +21 +8 
;b             Allocated to stack - sp +29 +8 
;r             Allocated to stack - sp +17 +2 
;result        Allocated to stack - sp +9 +8 
;sloc0         Allocated to stack - sp +9 +8 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 70: inline _Bool __ckd_mul_schar __CKD_DEFAULT_IMPL(signed char, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_schar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 18 bytes.
___ckd_mul_schar:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	lda	*___SDCC_m6502_ret4
	sta	0x11d,x
	lda	*___SDCC_m6502_ret5
	sta	0x11e,x
	lda	*___SDCC_m6502_ret6
	sta	0x11f,x
	lda	*___SDCC_m6502_ret7
	sta	0x120,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
;	Raw cost for generated ic 6 : (3, 4.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (20, 31.000000) count=1.000000
;	genCast
	sta	0x101,x
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (30, 48.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x109,x
	bne	00104$
	lda	0x102,x
	cmp	0x10a,x
	bne	00104$
	lda	0x103,x
	cmp	0x10b,x
	bne	00104$
	lda	0x104,x
	cmp	0x10c,x
	bne	00104$
	lda	0x105,x
	cmp	0x10d,x
	bne	00104$
	lda	0x106,x
	cmp	0x10e,x
	bne	00104$
	lda	0x107,x
	cmp	0x10f,x
	bne	00104$
	lda	0x108,x
	cmp	0x110,x
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (91, 112.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uchar'
;------------------------------------------------------------
;a             Allocated to stack - sp +21 +8 
;b             Allocated to stack - sp +29 +8 
;r             Allocated to stack - sp +17 +2 
;result        Allocated to stack - sp +9 +8 
;sloc0         Allocated to stack - sp +9 +8 
;sloc1         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 71: inline _Bool __ckd_mul_uchar __CKD_DEFAULT_IMPL(unsigned char, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_uchar
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 18 bytes.
___ckd_mul_uchar:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:48  incdec:36  adc:12
	tsx
	txa
	clc
	adc	#0xf0
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
	lda	0x116,x
	pha
	lda	0x115,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x119,x
	lda	*(REGTEMP+0)
	sta	0x11a,x
	lda	*___SDCC_m6502_ret2
	sta	0x11b,x
	lda	*___SDCC_m6502_ret3
	sta	0x11c,x
	lda	*___SDCC_m6502_ret4
	sta	0x11d,x
	lda	*___SDCC_m6502_ret5
	sta	0x11e,x
	lda	*___SDCC_m6502_ret6
	sta	0x11f,x
	lda	*___SDCC_m6502_ret7
	sta	0x120,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
;	Raw cost for generated ic 6 : (3, 4.000000) count=1.000000
;	genPointerSet
	sta	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x111,x
	sta	*(DPTR+0)
	lda	0x112,x
	sta	*(DPTR+1)
	lda	*(REGTEMP+0)
	ldy	#0x00
	sta	[DPTR],y
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (20, 31.000000) count=1.000000
;	genCast
	sta	0x101,x
	tya
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (25, 42.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x109,x
	bne	00104$
	lda	0x102,x
	cmp	0x10a,x
	bne	00104$
	lda	0x103,x
	cmp	0x10b,x
	bne	00104$
	lda	0x104,x
	cmp	0x10c,x
	bne	00104$
	lda	0x105,x
	cmp	0x10d,x
	bne	00104$
	lda	0x106,x
	cmp	0x10e,x
	bne	00104$
	lda	0x107,x
	cmp	0x10f,x
	bne	00104$
	lda	0x108,x
	cmp	0x110,x
	beq	00112$
00104$:
	tya
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (91, 112.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:78  incdec:46  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_short'
;------------------------------------------------------------
;a             Allocated to stack - sp +23 +8 
;b             Allocated to stack - sp +31 +8 
;r             Allocated to stack - sp +19 +2 
;result        Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +11 +8 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 72: inline _Bool __ckd_mul_short __CKD_DEFAULT_IMPL(short, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_short
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_short:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (23, 38.000000) count=1.000000
;	genCast
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (37, 56.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
;	Raw cost for generated ic 11 : (91, 112.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ushort'
;------------------------------------------------------------
;a             Allocated to stack - sp +23 +8 
;b             Allocated to stack - sp +31 +8 
;r             Allocated to stack - sp +19 +2 
;result        Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +11 +8 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 73: inline _Bool __ckd_mul_ushort __CKD_DEFAULT_IMPL(unsigned short, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_ushort
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_ushort:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (23, 38.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	sta	0x105,x
	sta	0x104,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 10 : (32, 50.000000) count=1.000000
;	genCmpEQorNE
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
;	Raw cost for generated ic 11 : (88, 108.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_int'
;------------------------------------------------------------
;a             Allocated to stack - sp +23 +8 
;b             Allocated to stack - sp +31 +8 
;r             Allocated to stack - sp +19 +2 
;result        Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +11 +8 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 74: inline _Bool __ckd_mul_int __CKD_DEFAULT_IMPL(int, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_int
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_int:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (23, 38.000000) count=1.000000
;	genCast
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x103,x
	sta	0x104,x
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (37, 56.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
;	Raw cost for generated ic 11 : (91, 112.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_uint'
;------------------------------------------------------------
;a             Allocated to stack - sp +23 +8 
;b             Allocated to stack - sp +31 +8 
;r             Allocated to stack - sp +19 +2 
;result        Allocated to stack - sp +11 +8 
;sloc0         Allocated to stack - sp +11 +8 
;sloc1         Allocated to stack - sp +9 +2 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 75: inline _Bool __ckd_mul_uint __CKD_DEFAULT_IMPL(unsigned int, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_uint
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 20 bytes.
___ckd_mul_uint:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:54  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0xee
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
	lda	0x118,x
	pha
	lda	0x117,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11b,x
	lda	*(REGTEMP+0)
	sta	0x11c,x
	lda	*___SDCC_m6502_ret2
	sta	0x11d,x
	lda	*___SDCC_m6502_ret3
	sta	0x11e,x
	lda	*___SDCC_m6502_ret4
	sta	0x11f,x
	lda	*___SDCC_m6502_ret5
	sta	0x120,x
	lda	*___SDCC_m6502_ret6
	sta	0x121,x
	lda	*___SDCC_m6502_ret7
	sta	0x122,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (12, 18.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x113,x
	sta	*(DPTR+0)
	lda	0x114,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (23, 38.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	sta	0x105,x
	sta	0x104,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 10 : (32, 50.000000) count=1.000000
;	genCmpEQorNE
	cmp	0x10b,x
	bne	00104$
	lda	0x102,x
	cmp	0x10c,x
	bne	00104$
	lda	0x103,x
	cmp	0x10d,x
	bne	00104$
	lda	0x104,x
	cmp	0x10e,x
	bne	00104$
	lda	0x105,x
	cmp	0x10f,x
	bne	00104$
	lda	0x106,x
	cmp	0x110,x
	bne	00104$
	lda	0x107,x
	cmp	0x111,x
	bne	00104$
	lda	0x108,x
	cmp	0x112,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	tya
00111$:
;	Raw cost for generated ic 11 : (88, 108.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:86  incdec:50  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x14
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_long'
;------------------------------------------------------------
;a             Allocated to stack - sp +25 +8 
;b             Allocated to stack - sp +33 +8 
;r             Allocated to stack - sp +21 +2 
;result        Allocated to stack - sp +13 +8 
;sloc0         Allocated to stack - sp +13 +8 
;sloc1         Allocated to stack - sp +9 +4 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 76: inline _Bool __ckd_mul_long __CKD_DEFAULT_IMPL(long, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_long
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_mul_long:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:60  incdec:44  adc:12
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
	lda	*___SDCC_m6502_ret2
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	lda	*___SDCC_m6502_ret4
	sta	0x121,x
	lda	*___SDCC_m6502_ret5
	sta	0x122,x
	lda	*___SDCC_m6502_ret6
	sta	0x123,x
	lda	*___SDCC_m6502_ret7
	sta	0x124,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10b,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10d,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (24, 36.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (35, 62.000000) count=1.000000
;	genCast
	lda	0x109,x
	sta	0x101,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10c,x
	sta	0x104,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x105,x
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 10 : (43, 64.000000) count=1.000000
;	genCmpEQorNE
	lda	0x101,x
	cmp	0x10d,x
	bne	00104$
	lda	0x102,x
	cmp	0x10e,x
	bne	00104$
	lda	0x103,x
	cmp	0x10f,x
	bne	00104$
	lda	0x104,x
	cmp	0x110,x
	bne	00104$
	lda	0x105,x
	cmp	0x111,x
	bne	00104$
	lda	0x106,x
	cmp	0x112,x
	bne	00104$
	lda	0x107,x
	cmp	0x113,x
	bne	00104$
	lda	0x108,x
	cmp	0x114,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (92, 112.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function '__ckd_mul_ulong'
;------------------------------------------------------------
;a             Allocated to stack - sp +25 +8 
;b             Allocated to stack - sp +33 +8 
;r             Allocated to stack - sp +21 +2 
;result        Allocated to stack - sp +13 +8 
;sloc0         Allocated to stack - sp +13 +8 
;sloc1         Allocated to stack - sp +9 +4 
;sloc2         Allocated to stack - sp +1 +8 
;------------------------------------------------------------
;	./../../include/stdckdint.h: 77: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function __ckd_mul_ulong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
___ckd_mul_ulong:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:60  incdec:44  adc:12
	tsx
	txa
	clc
	adc	#0xec
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genIpush
	lda	0x128,x
	pha
	lda	0x127,x
	pha
	lda	0x126,x
	pha
	lda	0x125,x
	pha
	lda	0x124,x
	pha
	lda	0x123,x
	pha
	lda	0x122,x
	pha
	lda	0x121,x
	pha
;	Raw cost for generated ic 16 : (32, 56.000000) count=1.000000
;	genIpush
	lda	0x120,x
	pha
	lda	0x11f,x
	pha
	lda	0x11e,x
	pha
	lda	0x11d,x
	pha
	lda	0x11c,x
	pha
	lda	0x11b,x
	pha
	lda	0x11a,x
	pha
	lda	0x119,x
	pha
;	Raw cost for generated ic 17 : (32, 56.000000) count=1.000000
;	genCall
	jsr	__mullonglong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x11d,x
	lda	*(REGTEMP+0)
	sta	0x11e,x
	lda	*___SDCC_m6502_ret2
	sta	0x11f,x
	lda	*___SDCC_m6502_ret3
	sta	0x120,x
	lda	*___SDCC_m6502_ret4
	sta	0x121,x
	lda	*___SDCC_m6502_ret5
	sta	0x122,x
	lda	*___SDCC_m6502_ret6
	sta	0x123,x
	lda	*___SDCC_m6502_ret7
	sta	0x124,x
;	  adjustStack : cycles stk:64  incdec:34  adc:10
	txa
	clc
	adc	#0x10
	tax
	txs
;	Raw cost for generated ic 18 : (50, 82.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10c,x
	lda	0x10f,x
	sta	0x10b,x
	lda	0x10e,x
	sta	0x10a,x
	lda	0x10d,x
	sta	0x109,x
;	Raw cost for generated ic 6 : (24, 36.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	0x109,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x10a,x
	iny
	sta	[DPTR],y
	lda	0x10b,x
	iny
	sta	[DPTR],y
	lda	0x10c,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 7 : (35, 62.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	sta	0x105,x
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 10 : (38, 58.000000) count=1.000000
;	genCmpEQorNE
	cmp	0x10d,x
	bne	00104$
	lda	0x102,x
	cmp	0x10e,x
	bne	00104$
	lda	0x103,x
	cmp	0x10f,x
	bne	00104$
	lda	0x104,x
	cmp	0x110,x
	bne	00104$
	lda	0x105,x
	cmp	0x111,x
	bne	00104$
	lda	0x106,x
	cmp	0x112,x
	bne	00104$
	lda	0x107,x
	cmp	0x113,x
	bne	00104$
	lda	0x108,x
	cmp	0x114,x
	beq	00112$
00104$:
	lda	#0x00
	jmp	00111$
00112$:
	lda	#0x01
00111$:
;	Raw cost for generated ic 11 : (89, 108.799995) count=1.000000
;	genNot
	eor	#0x01
;	Raw cost for generated ic 12 : (2, 2.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x16
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 15 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
