;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_store8
	
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
	.globl _stdc_store8_leu8
	.globl _stdc_store8_beu8
	.globl _stdc_store8_leu_aligned8
	.globl _stdc_store8_beu_aligned8
	.globl _stdc_store8_les8
	.globl _stdc_store8_bes8
	.globl _stdc_store8_les_aligned8
	.globl _stdc_store8_bes_aligned8
	.globl _stdc_store8_leu16
	.globl _stdc_store8_beu16
	.globl _stdc_store8_leu_aligned16
	.globl _stdc_store8_beu_aligned16
	.globl _stdc_store8_les16
	.globl _stdc_store8_bes16
	.globl _stdc_store8_les_aligned16
	.globl _stdc_store8_bes_aligned16
	.globl _stdc_store8_leu32
	.globl _stdc_store8_beu32
	.globl _stdc_store8_leu_aligned32
	.globl _stdc_store8_beu_aligned32
	.globl _stdc_store8_les32
	.globl _stdc_store8_bes32
	.globl _stdc_store8_les_aligned32
	.globl _stdc_store8_bes_aligned32
	.globl _stdc_store8_leu64
	.globl _stdc_store8_beu64
	.globl _stdc_store8_leu_aligned64
	.globl _stdc_store8_beu_aligned64
	.globl _stdc_store8_les64
	.globl _stdc_store8_bes64
	.globl _stdc_store8_les_aligned64
	.globl _stdc_store8_bes_aligned64
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
;Allocation info for local variables in function 'stdc_store8_leu8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_leu8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_beu8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genIpush
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_leu_aligned8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_beu_aligned8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genIpush
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_les8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_bes8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genIpush
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_les_aligned8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned8'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +8 +2 
;value         Allocated to stack - sp +5 +1 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 448: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 5 bytes.
_stdc_store8_bes_aligned8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (5, 15.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x102,x
	lda	0x108,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
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
;	genIpush
	tsx
	lda	0x109,x
	pha
	lda	0x108,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:26  incdec:20  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (12, 26.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_leu16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_beu16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_leu_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_beu_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_les16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_bes16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_les_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genLabel
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 11 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned16'
;------------------------------------------------------------
;ptr           Allocated to stack - sp +9 +2 
;value         Allocated to stack - sp +5 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 449: __STDC_STORE8(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 6 bytes.
_stdc_store8_bes_aligned16:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (11, 26.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x05
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x02
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
;	genIpush
	tsx
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 10 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 11 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 12 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:30  incdec:22  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 14 : (13, 28.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_leu32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_beu32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_leu_aligned32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_beu_aligned32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_les32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_bes32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_les_aligned32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned32'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +4 
;ptr           Allocated to stack - sp +11 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 450: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_bes_aligned32:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10c,x
	sta	0x102,x
	lda	0x10b,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_leu64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_beu64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_leu_aligned64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_leu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_leu_aligned64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_beu_aligned64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_beu_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_beu_aligned64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_les64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_bes64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_les_aligned64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: 
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_les_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_les_aligned64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 10 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_store8_bes_aligned64'
;------------------------------------------------------------
;value         Allocated to stack - sp +7 +8 
;ptr           Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +3 +2 
;sloc1         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 451: __STDC_STORE8(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_store8_bes_aligned64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_stdc_store8_bes_aligned64:
;	  adjustStack : cycles stk:12  incdec:12  adc:12
	pha
	pha
	pha
	pha
;	Raw cost for generated ic 1 : (4, 12.000000) count=1.000000
;	genAddrOf
	tsx
	txa
	clc
	adc	#0x07
	sta	0x103,x
	lda	#0x01
	sta	0x104,x
;	Raw cost for generated ic 2 : (13, 20.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x08
	pha
;	Raw cost for generated ic 5 : (6, 10.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 6 : (8, 14.000000) count=1.000000
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
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
;	Raw cost for generated ic 8 : (22, 38.000000) count=1.000000
;	genIpush
	tsx
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 9 : (9, 16.000000) count=1.000000
;	Raw cost for generated ic 10 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 11 : (13, 24.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:22  incdec:18  adc:24
	stx	*(REGTEMP+0)
	tsx
	inx
	inx
	inx
	inx
	txs
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 13 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
