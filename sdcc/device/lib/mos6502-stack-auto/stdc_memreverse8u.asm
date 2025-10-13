;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module stdc_memreverse8u
	
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
	.globl _stdc_memreverse8
	.globl _stdc_memreverse8u8
	.globl _stdc_memreverse8u16
	.globl _stdc_memreverse8u32
	.globl _stdc_memreverse8u64
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
;Allocation info for local variables in function 'stdc_memreverse8u8'
;------------------------------------------------------------
;value         Allocated to stack - sp +1 +1 
;------------------------------------------------------------
;	./../../include/stdbit.h: 382: __STDC_MEMREVERSE8U(8)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u8
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 1 bytes.
_stdc_memreverse8u8:
;	genReceive: size=1
;	pushreg: ofs=0
	pha
;	Raw cost for generated ic 1 : (1, 3.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 3 : (5, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 5 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	dex
	lda	#0x01
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 7 : (12, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x101,x
;	Raw cost for generated ic 8 : (4, 6.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:10  incdec:12  adc:24
	sta	*(REGTEMP+0)
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 10 : (6, 16.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u16'
;------------------------------------------------------------
;value         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	./../../include/stdbit.h: 383: __STDC_MEMREVERSE8U(16)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u16
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 2 bytes.
_stdc_memreverse8u16:
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
;	genAddrOf
	tsx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 3 : (5, 8.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 5 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	dex
	lda	#0x02
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 7 : (12, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 8 : (11, 16.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 9 : (0, 0.000000) count=1.000000
;	genEndFunction
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 10 : (7, 20.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u32'
;------------------------------------------------------------
;value         Allocated to stack - sp +3 +4 
;------------------------------------------------------------
;	./../../include/stdbit.h: 384: __STDC_MEMREVERSE8U(32)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u32
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u32:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	inx
	inx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 2 : (7, 12.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 4 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	dex
	lda	#0x04
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 6 : (12, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x106,x
	sta	*___SDCC_m6502_ret3
	lda	0x105,x
	sta	*___SDCC_m6502_ret2
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'stdc_memreverse8u64'
;------------------------------------------------------------
;value         Allocated to stack - sp +3 +8 
;------------------------------------------------------------
;	./../../include/stdbit.h: 385: __STDC_MEMREVERSE8U(64)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function stdc_memreverse8u64
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_stdc_memreverse8u64:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genAddrOf
	tsx
	inx
	inx
	inx
	txa
	ldx	#0x01
;	Raw cost for generated ic 2 : (7, 12.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 4 : (5, 12.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	dex
	lda	#0x08
	jsr	_stdc_memreverse8
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
;	Raw cost for generated ic 6 : (12, 24.000000) count=1.000000
;	genRet
	tsx 
	lda	0x10a,x
	sta	*___SDCC_m6502_ret7
	lda	0x109,x
	sta	*___SDCC_m6502_ret6
	lda	0x108,x
	sta	*___SDCC_m6502_ret5
	lda	0x107,x
	sta	*___SDCC_m6502_ret4
	lda	0x106,x
	sta	*___SDCC_m6502_ret3
	lda	0x105,x
	sta	*___SDCC_m6502_ret2
	lda	0x104,x
	sta	*(REGTEMP+0)
	lda	0x103,x
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 7 : (41, 58.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	genEndFunction
	rts
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
