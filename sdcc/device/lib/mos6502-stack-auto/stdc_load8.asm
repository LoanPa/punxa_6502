;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_load8
	
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
	.globl ___memcpy
	.globl _stdc_memreverse8
	.globl _stdc_load8_leu8
	.globl _stdc_load8_beu8
	.globl _stdc_load8_leu_aligned8
	.globl _stdc_load8_beu_aligned8
	.globl _stdc_load8_les8
	.globl _stdc_load8_bes8
	.globl _stdc_load8_les_aligned8
	.globl _stdc_load8_bes_aligned8
	.globl _stdc_load8_leu16
	.globl _stdc_load8_beu16
	.globl _stdc_load8_leu_aligned16
	.globl _stdc_load8_beu_aligned16
	.globl _stdc_load8_les16
	.globl _stdc_load8_bes16
	.globl _stdc_load8_les_aligned16
	.globl _stdc_load8_bes_aligned16
	.globl _stdc_load8_leu32
	.globl _stdc_load8_beu32
	.globl _stdc_load8_leu_aligned32
	.globl _stdc_load8_beu_aligned32
	.globl _stdc_load8_les32
	.globl _stdc_load8_bes32
	.globl _stdc_load8_les_aligned32
	.globl _stdc_load8_bes_aligned32
	.globl _stdc_load8_leu64
	.globl _stdc_load8_beu64
	.globl _stdc_load8_leu_aligned64
	.globl _stdc_load8_beu_aligned64
	.globl _stdc_load8_les64
	.globl _stdc_load8_bes64
	.globl _stdc_load8_les_aligned64
	.globl _stdc_load8_bes_aligned64
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
;Allocation info for local variables in function 'stdc_load8_leu8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +6 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +4 +2 
;sloc1         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_stdc_load8_leu8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x101,x
	lda	#0x01
	sta	0x102,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x101,x
;	Raw cost for generated ic 10 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:34  incdec:24  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (14, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +6 +2 
;sloc1         Allocated to stack - sp +4 +2 
;sloc2         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_stdc_load8_beu8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:21  incdec:18  adc:12
	tsx
	txa
	clc
	adc	#0xf9
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x107,x
	lda	0x108,x
	sta	0x106,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x103,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x101,x
;	Raw cost for generated ic 15 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +6 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +4 +2 
;sloc1         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_stdc_load8_leu_aligned8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x101,x
	lda	#0x01
	sta	0x102,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x101,x
;	Raw cost for generated ic 10 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:34  incdec:24  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (14, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +6 +2 
;sloc1         Allocated to stack - sp +4 +2 
;sloc2         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_stdc_load8_beu_aligned8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:21  incdec:18  adc:12
	tsx
	txa
	clc
	adc	#0xf9
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x107,x
	lda	0x108,x
	sta	0x106,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x103,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x101,x
;	Raw cost for generated ic 15 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +6 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +4 +2 
;sloc1         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_stdc_load8_les8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x101,x
	lda	#0x01
	sta	0x102,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x101,x
;	Raw cost for generated ic 10 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:34  incdec:24  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (14, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +6 +2 
;sloc1         Allocated to stack - sp +4 +2 
;sloc2         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_stdc_load8_bes8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:21  incdec:18  adc:12
	tsx
	txa
	clc
	adc	#0xf9
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x107,x
	lda	0x108,x
	sta	0x106,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x103,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x101,x
;	Raw cost for generated ic 15 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +6 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +4 +2 
;sloc1         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 7 bytes.
_stdc_load8_les_aligned8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:15  incdec:14  adc:12
	tsx
	txa
	clc
	adc	#0xfb
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x101,x
	lda	#0x01
	sta	0x102,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x101,x
;	Raw cost for generated ic 10 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:34  incdec:24  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (14, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +1 +1 
;sloc0         Allocated to stack - sp +6 +2 
;sloc1         Allocated to stack - sp +4 +2 
;sloc2         Allocated to stack - sp +2 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 421: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 9 bytes.
_stdc_load8_bes_aligned8:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:21  incdec:18  adc:12
	tsx
	txa
	clc
	adc	#0xf9
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x107,x
	lda	0x108,x
	sta	0x106,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x103,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x101,x
	tay
	lda	0x102,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x103,x
	pha
	lda	0x102,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x101,x
;	Raw cost for generated ic 15 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:42  incdec:28  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x09
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +7 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_stdc_load8_leu16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x102,x
	lda	#0x01
	sta	0x103,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x105,x
	pha
	lda	0x104,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_beu16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +7 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_stdc_load8_leu_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x102,x
	lda	#0x01
	sta	0x103,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x105,x
	pha
	lda	0x104,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_beu_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +7 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_stdc_load8_les16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x102,x
	lda	#0x01
	sta	0x103,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x105,x
	pha
	lda	0x104,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_bes16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +7 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +5 +2 
;sloc1         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 8 bytes.
_stdc_load8_les_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:18  incdec:16  adc:12
	tsx
	txa
	clc
	adc	#0xfa
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x102,x
	lda	#0x01
	sta	0x103,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x105,x
	pha
	lda	0x104,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:38  incdec:26  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x08
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +2 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;sloc2         Allocated to stack - sp +3 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 422: __STDC_LOAD8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_bes_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x105,x
	sta	0x103,x
	lda	0x104,x
	sta	0x102,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x102,x
	tay
	lda	0x103,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x106,x
	sta	0x104,x
	lda	0x105,x
	sta	0x103,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_leu32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
	sta	0x105,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +11 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_stdc_load8_beu32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x106,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_leu_aligned32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
	sta	0x105,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +11 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_stdc_load8_beu_aligned32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x106,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_les32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
	sta	0x105,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +11 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_stdc_load8_bes32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x106,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +7 +2 
;sloc1         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 10 bytes.
_stdc_load8_les_aligned32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:24  incdec:20  adc:12
	tsx
	txa
	clc
	adc	#0xf8
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x108,x
	lda	0x109,x
	sta	0x107,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x104,x
	lda	#0x01
	sta	0x105,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x107,x
	pha
	lda	0x106,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:46  incdec:30  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0a
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned32'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +11 +2 
;value         Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +9 +2 
;sloc1         Allocated to stack - sp +7 +2 
;sloc2         Allocated to stack - sp +5 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 423: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 12 bytes.
_stdc_load8_bes_aligned32:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:30  incdec:24  adc:12
	tsx
	txa
	clc
	adc	#0xf6
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x106,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x107,x
	sta	0x105,x
	lda	0x106,x
	sta	0x104,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x104,x
	tay
	lda	0x105,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x108,x
	sta	0x106,x
	lda	0x107,x
	sta	0x105,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:54  incdec:34  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0c
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +13 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_stdc_load8_leu64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +15 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_stdc_load8_beu64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_leu_aligned64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +13 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_leu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_stdc_load8_leu_aligned64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_beu_aligned64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +15 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_beu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_stdc_load8_beu_aligned64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +13 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_stdc_load8_les64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +15 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_stdc_load8_bes64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_les_aligned64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +13 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +11 +2 
;sloc1         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_les_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 14 bytes.
_stdc_load8_les_aligned64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:36  incdec:28  adc:12
	tsx
	txa
	clc
	adc	#0xf4
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10e,x
	sta	0x10c,x
	lda	0x10d,x
	sta	0x10b,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x108,x
	lda	#0x01
	sta	0x109,x
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genRet
	tsx
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 10 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:62  incdec:38  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x0e
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 12 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_load8_bes_aligned64'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +15 +2 
;value         Allocated to stack - sp +1 +8 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 424: __STDC_LOAD8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_load8_bes_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_stdc_load8_bes_aligned64:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:42  incdec:32  adc:12
	tsx
	txa
	clc
	adc	#0xf2
	tax
	txs
;	Raw cost for generated ic 1 : (14, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 3 : (12, 18.000000) count=1.000000
;	genAddrOf
	inx
	txa
	sta	0x10a,x
	lda	#0x01
;	Raw cost for generated ic 4 : (10, 16.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x10b,x
	sta	0x109,x
	lda	0x10a,x
	sta	0x108,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 6 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x10d,x
	pha
	lda	0x10c,x
	pha
;	Raw cost for generated ic 7 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x108,x
	tay
	lda	0x109,x
	tax
	tya
	jsr	___memcpy
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
;	Raw cost for generated ic 9 : (22, 38.000000) count=1.000000
;	genCast
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x10a,x
	lda	0x10b,x
	sta	0x109,x
;	Raw cost for generated ic 11 : (13, 20.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 12 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 14 : (13, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x108,x
	sta	*___SDCC_m6502_ret7
	lda	0x107,x
	sta	*___SDCC_m6502_ret6
	lda	0x106,x
	sta	*___SDCC_m6502_ret5
	lda	0x105,x
	sta	*___SDCC_m6502_ret4
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 15 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	ldx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x10
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 17 : (16, 30.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
