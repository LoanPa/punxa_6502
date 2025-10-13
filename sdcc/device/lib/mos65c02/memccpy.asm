;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module memccpy
	
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
	.globl _memccpy_PARM_4
	.globl _memccpy_PARM_3
	.globl _memccpy_PARM_2
	.globl _memccpy
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memccpy_sloc0_1_0:
	.ds 2
_memccpy_sloc1_1_0:
	.ds 2
_memccpy_sloc2_1_0:
	.ds 2
_memccpy_sloc3_1_0:
	.ds 1
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_memccpy_PARM_2:
	.ds 2
_memccpy_PARM_3:
	.ds 2
_memccpy_PARM_4:
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
;Allocation info for local variables in function 'memccpy'
;------------------------------------------------------------
;src           Allocated with name '_memccpy_PARM_2'
;c             Allocated with name '_memccpy_PARM_3'
;n             Allocated with name '_memccpy_PARM_4'
;dst           Allocated to registers a x 
;d             Allocated to registers a x 
;s             Allocated to registers 
;sloc0         Allocated with name '_memccpy_sloc0_1_0'
;sloc1         Allocated with name '_memccpy_sloc1_1_0'
;sloc2         Allocated with name '_memccpy_sloc2_1_0'
;sloc3         Allocated with name '_memccpy_sloc3_1_0'
;------------------------------------------------------------
;	../memccpy.c: 31: void *memccpy (void *restrict dst, const void *restrict src, int c, size_t n)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function memccpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memccpy:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../memccpy.c: 33: char *d = dst;
;	genCast
;	genCopy
	sta	*_memccpy_sloc0_1_0
	stx	*(_memccpy_sloc0_1_0 + 1)
;	Raw cost for generated ic 3 : (4, 6.000000) count=1.000000
;	../memccpy.c: 34: const char *s = src;
;	genCast
;	genCopy
	lda	(_memccpy_PARM_2 + 1)
	sta	*(_memccpy_sloc1_1_0 + 1)
	lda	_memccpy_PARM_2
	sta	*_memccpy_sloc1_1_0
;	Raw cost for generated ic 5 : (10, 14.000000) count=1.000000
;	../memccpy.c: 36: while (n--)
;	genAssign
;	genCopy
	lda	(_memccpy_PARM_4 + 1)
	sta	*(_memccpy_sloc2_1_0 + 1)
	lda	_memccpy_PARM_4
	sta	*_memccpy_sloc2_1_0
;	Raw cost for generated ic 38 : (10, 14.000000) count=1.000000
;	genLabel
00103$:
;	Raw cost for generated ic 7 : (0, 0.000000) count=2.285713
;	genAssign
;	genCopy
	ldx	*(_memccpy_sloc2_1_0 + 1)
	lda	*_memccpy_sloc2_1_0
;	Raw cost for generated ic 8 : (4, 6.000000) count=2.285713
;	genMinus
;	  genMinusDec - size=2  icount=1
	ldy	*_memccpy_sloc2_1_0
	bne	00129$
	dec	*(_memccpy_sloc2_1_0 + 1)
00129$:
	dec	*_memccpy_sloc2_1_0
;	Raw cost for generated ic 9 : (8, 15.600000) count=2.285713
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00131$
	cpx	#0x00
	beq	00105$
00131$:
;	Raw cost for generated ic 11 : (11, 12.200000) count=2.285713
;	../memccpy.c: 37: if ((*d++ = *s++) == (unsigned char)c)
;	genPointerGet
	ldy	#0x00
	lda	[*_memccpy_sloc1_1_0],y
	sta	*_memccpy_sloc3_1_0
;	Raw cost for generated ic 20 : (6, 10.000000) count=1.714284
;	genPlus
;	  genPlusInc
	inc	*_memccpy_sloc1_1_0
	bne	00132$
	inc	*(_memccpy_sloc1_1_0 + 1)
00132$:
;	Raw cost for generated ic 18 : (6, 12.600000) count=1.714284
;	genPointerSet
	sta	[*_memccpy_sloc0_1_0],y
;	Raw cost for generated ic 21 : (2, 6.000000) count=1.714284
;	genPlus
;	  genPlusInc
	inc	*_memccpy_sloc0_1_0
	bne	00133$
	inc	*(_memccpy_sloc0_1_0 + 1)
00133$:
;	Raw cost for generated ic 15 : (6, 12.600000) count=1.714284
;	genAssign
;	genCopy
	ldx	*(_memccpy_sloc0_1_0 + 1)
	lda	*_memccpy_sloc0_1_0
;	Raw cost for generated ic 16 : (4, 6.000000) count=1.714284
;	genCast
;	genCopy
	ldy	_memccpy_PARM_3
;	Raw cost for generated ic 22 : (3, 4.000000) count=1.714284
;	genCmpEQorNE
	cpy	*_memccpy_sloc3_1_0
	bne	00103$
;	Raw cost for generated ic 23 : (7, 8.600000) count=1.714284
;	skipping generated iCode
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.714284
;	../memccpy.c: 38: return (d);
;	genCast
;	genCopy
;	Raw cost for generated ic 27 : (0, 0.000000) count=0.428570
;	genRet
	rts
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.428570
;	genLabel
00105$:
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.999998
;	../memccpy.c: 40: return (0);
;	genRet
	lda	#0x00
	tax
;	Raw cost for generated ic 32 : (3, 4.000000) count=0.999998
;	genLabel
;	Raw cost for generated ic 33 : (0, 0.000000) count=0.999998
;	../memccpy.c: 41: }
;	genEndFunction
	rts
;	Raw cost for generated ic 34 : (1, 6.000000) count=0.999998
	.area CODE
	.area RODATA
	.area XINIT
	.area CABS    (ABS)
