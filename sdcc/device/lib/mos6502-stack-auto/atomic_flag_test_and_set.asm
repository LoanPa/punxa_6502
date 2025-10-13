;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module atomic_flag_test_and_set
	
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
	.globl _atomic_flag_test_and_set
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
;Allocation info for local variables in function 'atomic_flag_test_and_set'
;------------------------------------------------------------
;object        Allocated to stack - sp +3 +2 
;t             Allocated to registers x 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	atomic_flag_test_and_set.c: 31: _Bool atomic_flag_test_and_set(volatile atomic_flag *object)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function atomic_flag_test_and_set
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_atomic_flag_test_and_set:
;	genReceive: size=2
;	pushreg: ofs=1
	sta	*(REGTEMP+0)
	txa
	pha
	lda	*(REGTEMP+0)
;	pushreg: ofs=0
	pha
;	  adjustStack : cycles stk:6  incdec:8  adc:12
	pha
	pha
;	Raw cost for generated ic 1 : (9, 20.000000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	atomic_flag_test_and_set.c: 34: t=object->flag;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 3 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 5 : (12, 19.000000) count=1.000000
;	atomic_flag_test_and_set.c: 35: object->flag=0;
;	genPointerSet
	stx	*(REGTEMP+0)
;	  setupDPTR - off=0 remat=(null) savea=0
	tya
	sta	[DPTR],y
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 9 : (7, 14.000000) count=1.000000
;	atomic_flag_test_and_set.c: 36: return t^0x01;
;	genXor
	txa
	eor	#0x01
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	genCast
	beq	00104$
	lda	#0x01
00104$:
;	Raw cost for generated ic 11 : (4, 4.600000) count=1.000000
;	genRet
;	Raw cost for generated ic 12 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	atomic_flag_test_and_set.c: 37: }
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
;	Raw cost for generated ic 14 : (11, 24.000000) count=1.000000
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
