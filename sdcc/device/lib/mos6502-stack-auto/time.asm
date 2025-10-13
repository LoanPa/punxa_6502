;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module time
	
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
	.globl ___day
	.globl ___month
	.globl _RtcRead
	.globl _sprintf
	.globl _time
	.globl _asctime
	.globl _ctime
	.globl _localtime
	.globl _gmtime
	.globl _mktime
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
_ascTimeBuffer:
	.ds 32
_lastTime:
	.ds 12
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
;Allocation info for local variables in function 'RtcRead'
;------------------------------------------------------------
;timeptr       Allocated to registers 
;------------------------------------------------------------
;	../time.c: 42: unsigned char RtcRead(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function RtcRead
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_RtcRead:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../time.c: 45: return 0;
;	genRet
	lda	#0x00
;	Raw cost for generated ic 3 : (2, 2.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	../time.c: 46: }
;	genEndFunction
	rts
;	Raw cost for generated ic 5 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'time'
;------------------------------------------------------------
;timeptr       Allocated to stack - sp +21 +2 
;now           Allocated to stack - sp +5 +12 
;t             Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +19 +2 
;sloc1         Allocated to stack - sp +17 +2 
;------------------------------------------------------------
;	../time.c: 50: time_t time(time_t *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function time
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_time:
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
;	../time.c: 52: time_t t=(time_t) -1;
;	genAssign
;	genAssignLit
	lda	#0xff
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 3 : (14, 22.000000) count=1.000000
;	../time.c: 54: if (RtcRead(&now)) {
;	genAddrOf
	txa
	clc
	adc	#0x05
	sta	0x113,x
	lda	#0x01
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genCast
;	genCopy
	sta	0x114,x
	sta	0x112,x
	lda	0x113,x
	sta	0x111,x
;	Raw cost for generated ic 5 : (12, 18.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	tay
	lda	0x112,x
	tax
	tya
	jsr	_RtcRead
;	assignResultValue
;	Raw cost for generated ic 7 : (9, 16.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	../time.c: 55: t=mktime(&now);
;	genCast
;	genCopy
	tsx
	lda	0x114,x
	sta	0x112,x
	lda	0x113,x
	sta	0x111,x
;	Raw cost for generated ic 12 : (13, 20.000000) count=0.750000
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	tay
	lda	0x112,x
	tax
	tya
	jsr	_mktime
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x101,x
	lda	*(REGTEMP+0)
	sta	0x102,x
	lda	*___SDCC_m6502_ret2
	sta	0x103,x
	lda	*___SDCC_m6502_ret3
	sta	0x104,x
;	Raw cost for generated ic 14 : (30, 50.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../time.c: 57: if (timeptr) {
;	genIfx
	tsx
	lda	0x116,x
	ora	0x115,x
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 17 : (12, 15.600000) count=1.000000
;	../time.c: 58: *timeptr=t;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	lda	0x101,x
	ldy	#0x00
	sta	[DPTR],y
	lda	0x102,x
	iny
	sta	[DPTR],y
	lda	0x103,x
	iny
	sta	[DPTR],y
	lda	0x104,x
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 21 : (35, 62.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../time.c: 60: return t;
;	genRet
	tsx
	lda	0x104,x
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 23 : (21, 30.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../time.c: 61: }
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 25 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr       Allocated to stack - sp +3 +2 
;sloc0         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_CheckTime:
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
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
;	genCast
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 4 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 5 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x3b
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 6 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	#0x3b
	sta	[DPTR],y
;	Raw cost for generated ic 12 : (4, 8.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 15 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 16 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x3b
	beq	00104$
	bcc	00104$
;	Raw cost for generated ic 17 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=1 remat=(null) savea=0
	lda	#0x3b
	sta	[DPTR],y
;	Raw cost for generated ic 23 : (4, 8.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 26 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 27 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x17
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 28 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=2 remat=(null) savea=0
	lda	#0x17
	sta	[DPTR],y
;	Raw cost for generated ic 34 : (4, 8.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 37 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=7 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x07
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 38 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x06
	beq	00108$
	bcc	00108$
;	Raw cost for generated ic 39 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=7 remat=(null) savea=0
	lda	#0x06
	sta	[DPTR],y
;	Raw cost for generated ic 45 : (4, 8.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 48 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 49 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x01
	bcs	00112$
;	Raw cost for generated ic 50 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=3 remat=(null) savea=0
	lda	#0x01
	sta	[DPTR],y
;	Raw cost for generated ic 56 : (4, 8.000000) count=0.750000
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 57 : (3, 3.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.250000
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
;	genCmp
	cpx	#0x1f
	beq	00113$
	bcc	00113$
;	Raw cost for generated ic 62 : (9, 10.200000) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.250000
;	genPointerSet
;	  setupDPTR - off=3 remat=(null) savea=0
	tsx
	lda	0x101,x
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	lda	#0x1f
	ldy	#0x03
	sta	[DPTR],y
;	Raw cost for generated ic 68 : (17, 26.000000) count=0.187500
;	genLabel
00113$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 72 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
	tax
;	Raw cost for generated ic 73 : (12, 19.000000) count=1.000000
;	genCmp
	cpx	#0x0b
	beq	00115$
	bcc	00115$
;	Raw cost for generated ic 74 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=4 remat=(null) savea=0
	lda	#0x0b
	sta	[DPTR],y
;	Raw cost for generated ic 80 : (4, 8.000000) count=0.750000
;	genLabel
00115$:
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
;	genAssign
;	genCopy
	tsx
	lda	0x104,x
	sta	0x102,x
	lda	0x103,x
	sta	0x101,x
;	Raw cost for generated ic 83 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=5 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x06
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 84 : (15, 26.000000) count=1.000000
;	genCmp
	txa
	sec
	sbc	#0x00
	bvc	00182$
	bpl	00181$
	bmi	00118$
00182$:
	bpl	00118$
00181$:
;	Raw cost for generated ic 85 : (15, 19.400002) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	genPointerSet
;	  setupDPTR - off=5 remat=(null) savea=0
	lda	#0x00
	sta	[DPTR],y
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 91 : (7, 16.000000) count=0.750000
;	genLabel
00118$:
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.000000
;	../time.c: 92: }
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
;	Raw cost for generated ic 94 : (11, 24.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;timeptr       Allocated to stack - sp +15 +2 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +11 +2 
;sloc2         Allocated to stack - sp +9 +2 
;sloc3         Allocated to stack - sp +7 +2 
;sloc4         Allocated to stack - sp +5 +2 
;sloc5         Allocated to stack - sp +3 +2 
;sloc6         Allocated to stack - sp +1 +2 
;------------------------------------------------------------
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_asctime:
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
;	../time.c: 96: CheckTime(timeptr);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
	jsr	_CheckTime
;	Raw cost for generated ic 4 : (12, 20.000000) count=1.000000
;	../time.c: 100: timeptr->tm_year+1900);
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 6 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=5 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x06
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 7 : (15, 26.000000) count=1.000000
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x6c
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	adc	#0x07
	sta	0x10e,x
;	Raw cost for generated ic 8 : (16, 24.000000) count=1.000000
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x10f,x
	sta	*(DPTR+0)
	lda	0x110,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 11 : (15, 23.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10c,x
	tya
	sta	0x10b,x
;	Raw cost for generated ic 12 : (9, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x10a,x
	lda	0x10f,x
	sta	0x109,x
;	Raw cost for generated ic 14 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10a,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 15 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x10a,x
	tya
	sta	0x109,x
;	Raw cost for generated ic 16 : (9, 14.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x108,x
	lda	0x10f,x
	sta	0x107,x
;	Raw cost for generated ic 18 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x108,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 19 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	tya
	sta	0x107,x
;	Raw cost for generated ic 20 : (9, 14.000000) count=1.000000
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x106,x
	lda	0x10f,x
	sta	0x105,x
;	Raw cost for generated ic 22 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 23 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x106,x
	tya
	sta	0x105,x
;	Raw cost for generated ic 24 : (9, 14.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x110,x
	sta	0x104,x
	lda	0x10f,x
	sta	0x103,x
;	Raw cost for generated ic 27 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x104,x
	sta	*(DPTR+1)
	ldy	#0x04
	lda	[DPTR],y
;	Raw cost for generated ic 28 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 29 : (3, 4.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 30 : (7, 13.000000) count=1.000000
;	genAssign
;	genCopy
;	Raw cost for generated ic 31 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=___month savea=0
	clc
	adc	#<(___month+0)
	sta	*(DPTR+0)
	txa
	adc	#>(___month+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x103,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x104,x
;	Raw cost for generated ic 32 : (33, 54.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x102,x
	lda	0x10f,x
	sta	0x101,x
;	Raw cost for generated ic 35 : (13, 20.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=7 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x102,x
	sta	*(DPTR+1)
	ldy	#0x07
	lda	[DPTR],y
;	Raw cost for generated ic 36 : (12, 19.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 37 : (3, 4.000000) count=1.000000
;	genLeftShift
;	genLeftShiftLiteral
;	  genlsh16 - shift=1
	stx	*(REGTEMP+0)
	asl	a
	rol	*(REGTEMP+0)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 38 : (7, 13.000000) count=1.000000
;	genAssign
;	genCopy
;	Raw cost for generated ic 39 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=0 remat=___day savea=0
	clc
	adc	#<(___day+0)
	sta	*(DPTR+0)
	txa
	adc	#>(___day+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x101,x
	ldx	*(REGTEMP+0)
	iny
	lda	[DPTR],y
	stx	*(REGTEMP+0)
	tsx
	sta	0x102,x
;	Raw cost for generated ic 40 : (33, 54.000000) count=1.000000
;	../time.c: 97: sprintf (ascTimeBuffer, "%s %s %2d %02d:%02d:%02d %04d\n",
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 41 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 42 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 43 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 44 : (0, 0.000000) count=1.000000
;	genIpush
	tsx
	lda	0x10e,x
	pha
	lda	0x10d,x
	pha
;	Raw cost for generated ic 45 : (9, 16.000000) count=1.000000
;	genIpush
	lda	0x10c,x
	pha
	lda	0x10b,x
	pha
;	Raw cost for generated ic 46 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 47 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
;	Raw cost for generated ic 48 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 49 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x104,x
	pha
	lda	0x103,x
	pha
;	Raw cost for generated ic 50 : (8, 14.000000) count=1.000000
;	genIpush
	lda	0x102,x
	pha
	lda	0x101,x
	pha
;	Raw cost for generated ic 51 : (8, 14.000000) count=1.000000
;	genIpush
	lda	#>___str_0
	pha
	lda	#___str_0
	pha
;	Raw cost for generated ic 52 : (6, 10.000000) count=1.000000
;	genIpush
	lda	#>_ascTimeBuffer
	pha
	lda	#_ascTimeBuffer
	pha
;	Raw cost for generated ic 53 : (6, 10.000000) count=1.000000
;	genCall
	jsr	_sprintf
;	  adjustStack : cycles stk:72  incdec:40  adc:12
	tsx
	txa
	clc
	adc	#0x12
	tax
	txs
;	Raw cost for generated ic 54 : (10, 18.000000) count=1.000000
;	../time.c: 101: return ascTimeBuffer;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=1.000000
;	genRet
	ldx	#>_ascTimeBuffer
	lda	#_ascTimeBuffer
;	Raw cost for generated ic 57 : (4, 4.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 58 : (0, 0.000000) count=1.000000
;	../time.c: 102: }
;	genEndFunction
;	  adjustStack : cycles stk:70  incdec:42  adc:24
	stx	*(REGTEMP+0)
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
;	Raw cost for generated ic 59 : (16, 30.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'ctime'
;------------------------------------------------------------
;timep         Allocated to registers a x 
;------------------------------------------------------------
;	../time.c: 104: char *ctime(time_t *timep) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function ctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_ctime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../time.c: 105: return asctime(localtime(timep));
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_localtime
;	assignResultValue
;	Raw cost for generated ic 4 : (3, 6.000000) count=1.000000
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 6 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 8 : (0, 0.000000) count=1.000000
;	../time.c: 106: }
;	genEndFunction
	jmp	_asctime
;	Raw cost for generated ic 9 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'localtime'
;------------------------------------------------------------
;timep         Allocated to registers a x 
;------------------------------------------------------------
;	../time.c: 121: struct tm *localtime(time_t *timep) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function localtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_localtime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../time.c: 122: return gmtime(timep);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
;	assignResultValue
;	Raw cost for generated ic 4 : (3, 6.000000) count=1.000000
;	genRet
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	../time.c: 123: }
;	genEndFunction
	jmp	_gmtime
;	Raw cost for generated ic 7 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'gmtime'
;------------------------------------------------------------
;timep         Allocated to registers a x 
;epoch         Allocated to stack - sp +5 +4 
;year          Allocated to stack - sp +24 +2 
;month         Allocated to stack - sp +23 +1 
;monthLength   Allocated to registers a 
;days          Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +19 +4 
;sloc1         Allocated to stack - sp +15 +4 
;sloc2         Allocated to stack - sp +13 +2 
;sloc3         Allocated to stack - sp +9 +4 
;------------------------------------------------------------
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 25 bytes.
_gmtime:
;	  adjustStack : cycles stk:75  incdec:60  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0xe7
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
;	Raw cost for generated ic 1 : (15, 24.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../time.c: 126: unsigned long epoch=*timep;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	tsx
	sta	0x113,x
	iny
	lda	[DPTR],y
	sta	0x114,x
	iny
	lda	[DPTR],y
	sta	0x115,x
	iny
	lda	[DPTR],y
	sta	0x116,x
;	Raw cost for generated ic 4 : (30, 56.000000) count=1.000000
;	../time.c: 131: lastTime.tm_sec=epoch%60;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
;	Raw cost for generated ic 157 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 158 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__modulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x117,x
	lda	*(REGTEMP+0)
	sta	0x118,x
	lda	*___SDCC_m6502_ret2
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 159 : (30, 50.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10f,x
;	Raw cost for generated ic 9 : (3, 4.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	_lastTime
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	../time.c: 132: epoch/=60; // now it is minutes
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
;	Raw cost for generated ic 160 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x116,x
	pha
	lda	0x115,x
	pha
	lda	0x114,x
	pha
	lda	0x113,x
	pha
;	Raw cost for generated ic 161 : (16, 28.000000) count=1.000000
;	../time.c: 133: lastTime.tm_min=epoch%60;
;	genCall
	jsr	__divulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x117,x
	lda	*(REGTEMP+0)
	sta	0x118,x
	lda	*___SDCC_m6502_ret2
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 162 : (30, 50.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
;	Raw cost for generated ic 163 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 164 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__modulong
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 165 : (30, 50.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x113,x
;	Raw cost for generated ic 16 : (3, 4.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0001)
;	Raw cost for generated ic 17 : (3, 4.000000) count=1.000000
;	../time.c: 134: epoch/=60; // now it is hours
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x3c
	pha
;	Raw cost for generated ic 166 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 167 : (16, 28.000000) count=1.000000
;	../time.c: 135: lastTime.tm_hour=epoch%24;
;	genCall
	jsr	__divulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x117,x
	lda	*(REGTEMP+0)
	sta	0x118,x
	lda	*___SDCC_m6502_ret2
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 168 : (30, 50.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x18
	pha
;	Raw cost for generated ic 169 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 170 : (16, 28.000000) count=1.000000
;	genCall
	jsr	__modulong
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
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 171 : (30, 50.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x113,x
;	Raw cost for generated ic 23 : (3, 4.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0002)
;	Raw cost for generated ic 24 : (3, 4.000000) count=1.000000
;	../time.c: 136: epoch/=24; // now it is days
;	genIpush
	lda	#0x00
	pha
	pha
	pha
	lda	#0x18
	pha
;	Raw cost for generated ic 172 : (8, 16.000000) count=1.000000
;	genIpush
	lda	0x112,x
	pha
	lda	0x111,x
	pha
	lda	0x110,x
	pha
	lda	0x10f,x
	pha
;	Raw cost for generated ic 173 : (16, 28.000000) count=1.000000
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
;	genCall
	jsr	__divulong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x117,x
	lda	*(REGTEMP+0)
	sta	0x118,x
	lda	*___SDCC_m6502_ret2
	sta	0x119,x
	lda	*___SDCC_m6502_ret3
	sta	0x11a,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 174 : (30, 50.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
;	Raw cost for generated ic 152 : (9, 14.000000) count=1.000000
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x04
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	adc	#0x00
	sta	0x114,x
;	Raw cost for generated ic 29 : (16, 24.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 175 : (0, 0.000000) count=1.000000
;	genIpush
	lda	#0x00
	pha
	lda	#0x07
	pha
;	Raw cost for generated ic 177 : (6, 10.000000) count=1.000000
;	Raw cost for generated ic 178 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x113,x
	tay
	lda	0x114,x
	tax
	tya
	jsr	__moduint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 179 : (18, 34.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 176 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 149 : (0, 0.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0007)
;	Raw cost for generated ic 32 : (3, 4.000000) count=1.000000
;	../time.c: 140: days=0;
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x101,x
	sta	0x102,x
	sta	0x103,x
	sta	0x104,x
;	Raw cost for generated ic 34 : (15, 24.000000) count=1.000000
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
;	genAssign
;	genAssignLit
	lda	#0xb2
	sta	0x118,x
	lda	#0x07
	sta	0x119,x
;	Raw cost for generated ic 142 : (10, 14.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=3.999988
;	genAnd
	tsx
	lda	0x118,x
	and	#0x03
;	genIfxJump : z
	bne	00118$
;	Raw cost for generated ic 36 : (13, 16.200001) count=3.999988
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=3.999988
;	genAssign
;	genAssignLit
	lda	#0x6e
	sta	0x113,x
	lda	#0x01
	sta	0x114,x
;	Raw cost for generated ic 39 : (10, 14.000000) count=2.999989
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 40 : (3, 3.000000) count=2.999989
;	genLabel
00118$:
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999995
;	genAssign
;	genAssignLit
	lda	#0x6d
	tsx
	sta	0x113,x
	lda	#0x01
	sta	0x114,x
;	Raw cost for generated ic 42 : (11, 16.000000) count=0.999995
;	genLabel
00119$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=3.999985
;	genCast
	tsx
	lda	0x114,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x115,x
	sta	0x116,x
;	Raw cost for generated ic 44 : (26, 38.000000) count=3.999985
;	genPlus
	lda	0x101,x
	clc
	adc	0x113,x
	sta	0x113,x
	lda	0x102,x
	adc	0x114,x
	sta	0x114,x
	lda	0x103,x
	adc	0x115,x
	sta	0x115,x
	lda	0x104,x
	adc	0x116,x
	sta	0x116,x
;	Raw cost for generated ic 45 : (37, 54.000000) count=3.999985
;	genAssign
;	genCopy
	sta	0x104,x
	lda	0x115,x
	sta	0x103,x
	lda	0x114,x
	sta	0x102,x
	lda	0x113,x
	sta	0x101,x
;	Raw cost for generated ic 46 : (21, 32.000000) count=3.999985
;	genCmp
	lda	0x10f,x
	sec
	sbc	0x113,x
	lda	0x110,x
	sbc	0x114,x
	lda	0x111,x
	sbc	0x115,x
	lda	0x112,x
	sbc	0x116,x
	bcc	00103$
;	Raw cost for generated ic 47 : (30, 39.599998) count=3.999985
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=3.999985
;	../time.c: 142: year++;
;	genPlus
;	  genPlusInc
	lda	0x118,x
	clc
	adc	#0x01
	sta	0x118,x
	lda	0x119,x
	adc	#0x00
	sta	0x119,x
;	Raw cost for generated ic 52 : (17, 24.000000) count=2.999988
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 54 : (3, 3.000000) count=2.999988
;	genLabel
00103$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.999995
;	../time.c: 144: lastTime.tm_year=year-1900;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.999995
;	genMinus
;	  genMinusDec - size=2  icount=1900
	tsx
	lda	0x118,x
	sec
	sbc	#0x6c
	pha
	lda	0x119,x
	sbc	#0x07
	tax
	pla
;	Raw cost for generated ic 58 : (15, 25.000000) count=0.999995
;	genPointerSet
;	genDataPointerSet
	stx	((_lastTime + 0x0005) + 1)
	sta	(_lastTime + 0x0005)
;	Raw cost for generated ic 59 : (6, 8.000000) count=0.999995
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
;	genAnd
	tsx
	lda	0x118,x
	and	#0x03
	sta	0x113,x
	lda	#0x00
;	Raw cost for generated ic 60 : (14, 20.000000) count=0.999995
;	genIfx
	sta	0x114,x
	ora	0x113,x
;	genIfxJump : z
	bne	00120$
;	Raw cost for generated ic 62 : (11, 13.600000) count=0.999995
;	genAssign
;	genAssignLit
	lda	#0x6e
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
;	Raw cost for generated ic 63 : (10, 14.000000) count=0.749996
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 64 : (3, 3.000000) count=0.749996
;	genLabel
00120$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.249998
;	genAssign
;	genAssignLit
	lda	#0x6d
	tsx
	sta	0x10d,x
	lda	#0x01
	sta	0x10e,x
;	Raw cost for generated ic 66 : (11, 16.000000) count=0.249998
;	genLabel
00121$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.999994
;	genCast
	tsx
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 68 : (26, 38.000000) count=0.999994
;	genMinus
	lda	0x101,x
	sec
	sbc	0x109,x
	sta	0x101,x
	lda	0x102,x
	sbc	0x10a,x
	sta	0x102,x
	lda	0x103,x
	sbc	0x10b,x
	sta	0x103,x
	lda	0x104,x
	sbc	0x10c,x
	sta	0x104,x
;	Raw cost for generated ic 69 : (37, 54.000000) count=0.999994
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
;	genMinus
	lda	0x10f,x
	sec
	sbc	0x101,x
	sta	0x109,x
	lda	0x110,x
	sbc	0x102,x
	sta	0x10a,x
	lda	0x111,x
	sbc	0x103,x
	sta	0x10b,x
	lda	0x112,x
	sbc	0x104,x
	sta	0x10c,x
;	Raw cost for generated ic 71 : (37, 54.000000) count=0.999994
;	genAssign
;	genCopy
	sta	0x108,x
	lda	0x10b,x
	sta	0x107,x
	lda	0x10a,x
	sta	0x106,x
;	Raw cost for generated ic 72 : (21, 32.000000) count=0.999994
;	../time.c: 148: lastTime.tm_yday=epoch;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.999994
;	genCast
;	genCopy
	lda	0x109,x
	sta	0x105,x
	tay
	lda	0x10a,x
	tax
	tya
;	Raw cost for generated ic 75 : (9, 14.000000) count=0.999994
;	genPointerSet
;	genDataPointerSet
	stx	((_lastTime + 0x0008) + 1)
	sta	(_lastTime + 0x0008)
;	Raw cost for generated ic 76 : (6, 8.000000) count=0.999994
;	../time.c: 153: for (month=0; month<12; month++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999994
;	genAssign
;	genAssignLit
	lda	#0x00
	tsx
	sta	0x117,x
;	Raw cost for generated ic 145 : (6, 9.000000) count=0.999994
;	genLabel
00114$:
;	Raw cost for generated ic 81 : (0, 0.000000) count=2.285690
;	../time.c: 154: if (month==1) { // februari
;	genCmpEQorNE
	tsx
	lda	0x117,x
	cmp	#0x01
	bne	00108$
;	Raw cost for generated ic 82 : (11, 13.600000) count=2.285690
;	skipping generated iCode
;	Raw cost for generated ic 83 : (0, 0.000000) count=2.285690
;	../time.c: 155: if (LEAP_YEAR(year)) {
;	genIfx
	lda	0x114,x
	ora	0x113,x
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 87 : (11, 13.600000) count=1.714267
;	../time.c: 156: monthLength=29;
;	genAssign
;	genCopy
	lda	#0x1d
;	Raw cost for generated ic 90 : (2, 2.000000) count=1.285700
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 91 : (3, 3.000000) count=1.285700
;	genLabel
00105$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.428564
;	../time.c: 158: monthLength=28;
;	genAssign
;	genCopy
	lda	#0x1c
;	Raw cost for generated ic 93 : (2, 2.000000) count=0.428564
;	genGoto
	jmp	00109$
;	Raw cost for generated ic 95 : (3, 3.000000) count=0.428564
;	genLabel
00108$:
;	Raw cost for generated ic 96 : (0, 0.000000) count=0.571421
;	../time.c: 161: monthLength = monthDays[month];
;	genAssign
;	genCopy
	tsx
	lda	0x117,x
;	Raw cost for generated ic 98 : (6, 8.000000) count=0.571421
;	genPointerGet
	tax
	lda	(_monthDays+0+0x0000),x
;	Raw cost for generated ic 99 : (4, 6.000000) count=0.571421
;	genLabel
00109$:
;	Raw cost for generated ic 101 : (0, 0.000000) count=2.285686
;	../time.c: 164: if (epoch>=monthLength) {
;	genCast
	tsx
	sta	0x109,x
	lda	#0x00
	sta	0x10a,x
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 102 : (15, 24.000000) count=2.285686
;	genCmp
	lda	0x105,x
	sec
	sbc	0x109,x
	lda	0x106,x
	sbc	0x10a,x
	lda	0x107,x
	sbc	0x10b,x
	lda	0x108,x
	sbc	0x10c,x
	bcc	00113$
;	Raw cost for generated ic 103 : (30, 39.599998) count=2.285686
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=2.285686
;	../time.c: 165: epoch-=monthLength;
;	genMinus
	lda	0x105,x
	sec
	sbc	0x109,x
	sta	0x105,x
	lda	0x106,x
	sbc	0x10a,x
	sta	0x106,x
	lda	0x107,x
	sbc	0x10b,x
	sta	0x107,x
	lda	0x108,x
	sbc	0x10c,x
	sta	0x108,x
;	Raw cost for generated ic 109 : (37, 54.000000) count=1.714264
;	../time.c: 153: for (month=0; month<12; month++) {
;	genPlus
;	  genPlusInc
	lda	0x117,x
	clc
	adc	#0x01
	sta	0x117,x
;	Raw cost for generated ic 117 : (9, 13.000000) count=1.714264
;	genCmp
	cmp	#0x0c
	bcc	00114$
;	Raw cost for generated ic 119 : (7, 7.600000) count=1.714264
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=1.714264
;	genLabel
00113$:
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.999986
;	../time.c: 170: lastTime.tm_mon=month;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 124 : (0, 0.000000) count=0.999986
;	genPointerSet
;	genDataPointerSet
	tsx
	lda	0x117,x
	sta	(_lastTime + 0x0004)
;	Raw cost for generated ic 125 : (7, 10.000000) count=0.999986
;	../time.c: 171: lastTime.tm_mday=epoch+1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.999986
;	genCast
;	genCopy
	lda	0x105,x
;	Raw cost for generated ic 128 : (3, 4.000000) count=0.999986
;	genCast
;	genCopy
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.999986
;	genPlus
;	  genPlusInc
	tax
	inx
;	Raw cost for generated ic 130 : (2, 4.000000) count=0.999986
;	genPointerSet
;	genDataPointerSet
	stx	(_lastTime + 0x0003)
;	Raw cost for generated ic 131 : (3, 4.000000) count=0.999986
;	../time.c: 173: lastTime.tm_isdst=0;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.999986
;	genPointerSet
;	genDataPointerSet
	ldy	#0x00
	sty	(_lastTime + 0x000a)
;	Raw cost for generated ic 134 : (5, 6.000000) count=0.999986
;	../time.c: 175: return &lastTime;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 136 : (0, 0.000000) count=0.999986
;	genRet
	ldx	#>_lastTime
	lda	#_lastTime
;	Raw cost for generated ic 137 : (4, 4.000000) count=0.999986
;	genLabel
;	Raw cost for generated ic 138 : (0, 0.000000) count=0.999986
;	../time.c: 176: }
;	genEndFunction
;	  adjustStack : cycles stk:106  incdec:60  adc:24
	stx	*(REGTEMP+0)
	sta	*(REGTEMP+1)
	tsx
	txa
	clc
	adc	#0x19
	tax
	txs
	lda	*(REGTEMP+1)
	ldx	*(REGTEMP+0)
	rts
;	Raw cost for generated ic 139 : (16, 30.000000) count=0.999986
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;timeptr       Allocated to stack - sp +21 +2 
;year          Allocated to stack - sp +19 +2 
;month         Allocated to stack - sp +17 +2 
;i             Allocated to stack - sp +15 +2 
;seconds       Allocated to stack - sp +1 +4 
;sloc0         Allocated to stack - sp +13 +2 
;sloc1         Allocated to stack - sp +9 +4 
;sloc2         Allocated to stack - sp +5 +4 
;------------------------------------------------------------
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 22 bytes.
_mktime:
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
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x10e,x
	lda	0x115,x
	sta	0x10d,x
;	Raw cost for generated ic 4 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=5 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	ldy	#0x06
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 5 : (15, 26.000000) count=1.000000
;	genPlus
;	  genPlusInc
	stx	*(REGTEMP+0)
	clc
	adc	#0x6c
	tsx
	sta	0x113,x
	lda	*(REGTEMP+0)
	adc	#0x07
	sta	0x114,x
;	Raw cost for generated ic 6 : (16, 24.000000) count=1.000000
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x10e,x
	lda	0x115,x
	sta	0x10d,x
;	Raw cost for generated ic 9 : (12, 18.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x10e,x
	sta	*(DPTR+1)
	dey
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 10 : (11, 19.000000) count=1.000000
;	genCast
;	genCopy
	lda	#0x00
	sta	0x112,x
	tya
	sta	0x111,x
;	Raw cost for generated ic 11 : (9, 14.000000) count=1.000000
;	../time.c: 183: CheckTime(timeptr);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	lda	0x115,x
	tay
	lda	0x116,x
	tax
	tya
	jsr	_CheckTime
;	Raw cost for generated ic 14 : (12, 20.000000) count=1.000000
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
;	genMinus
;	  genMinusDec - size=2  icount=1970
	tsx
	lda	0x113,x
	sec
	sbc	#0xb2
	sta	0x10d,x
	lda	0x114,x
	sbc	#0x07
	sta	0x10e,x
;	Raw cost for generated ic 15 : (18, 26.000000) count=1.000000
;	genCast
	lda	0x10d,x
	sta	0x109,x
	lda	0x10e,x
	sta	0x10a,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x10b,x
	sta	0x10c,x
;	Raw cost for generated ic 16 : (25, 36.000000) count=1.000000
;	genIpush
	pha
	lda	0x10b,x
	pha
	lda	0x10a,x
	pha
	lda	0x109,x
	pha
;	Raw cost for generated ic 120 : (13, 24.000000) count=1.000000
;	genIpush
	lda	#0x01
	pha
	lda	#0xe1
	pha
	lda	#0x33
	pha
	lda	#0x80
	pha
;	Raw cost for generated ic 121 : (12, 20.000000) count=1.000000
;	../time.c: 189: for (i=1970; i<year; i++) {
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x111,x
	lda	*(REGTEMP+0)
	sta	0x112,x
	lda	*___SDCC_m6502_ret2
	sta	0x113,x
	lda	*___SDCC_m6502_ret3
	sta	0x114,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 122 : (30, 50.000000) count=1.000000
;	genAssign
;	genAssignLit
	lda	#0xb2
	sta	0x10f,x
	lda	#0x07
	sta	0x110,x
;	Raw cost for generated ic 109 : (10, 14.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999993
;	genCmp
	tsx
	lda	0x10f,x
	sec
	sbc	0x113,x
	lda	0x110,x
	sbc	0x114,x
	bvc	00162$
	bpl	00161$
	bmi	00124$
00162$:
	bpl	00124$
00161$:
;	Raw cost for generated ic 21 : (25, 33.400002) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=3.999993
;	../time.c: 190: if (LEAP_YEAR(i)) {
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 123 : (6, 10.000000) count=2.999995
;	Raw cost for generated ic 124 : (0, 0.000000) count=2.999995
;	genCall
;	genSend
	lda	0x10f,x
	tay
	lda	0x110,x
	tax
	tya
	jsr	__modsint
;	assignResultValue
;	  adjustStack : cycles stk:14  incdec:14  adc:24
	sta	*(REGTEMP+0)
	pla
	pla
	lda	*(REGTEMP+0)
;	Raw cost for generated ic 125 : (18, 34.000000) count=2.999995
;	genIfx
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 26 : (9, 10.200000) count=2.999995
;	../time.c: 191: seconds+= 60*60*24L;
;	genPlus
;	  genPlusInc
	tsx
	lda	0x109,x
	clc
	adc	#0x80
	sta	0x109,x
	lda	0x10a,x
	adc	#0x51
	sta	0x10a,x
	lda	0x10b,x
	adc	#0x01
	sta	0x10b,x
	lda	0x10c,x
	adc	#0x00
	sta	0x10c,x
;	Raw cost for generated ic 29 : (34, 48.000000) count=2.249995
;	genLabel
00111$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999993
;	../time.c: 189: for (i=1970; i<year; i++) {
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 34 : (18, 26.000000) count=2.999993
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 36 : (3, 3.000000) count=2.999993
;	genLabel
00124$:
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	tsx
	lda	0x10c,x
	sta	0x104,x
	lda	0x10b,x
	sta	0x103,x
	lda	0x10a,x
	sta	0x102,x
	lda	0x109,x
	sta	0x101,x
;	Raw cost for generated ic 108 : (25, 38.000000) count=0.999997
;	../time.c: 196: for (i=0; i<month; i++) {
;	genIpush
	lda	#0x00
	pha
	lda	#0x04
	pha
;	Raw cost for generated ic 126 : (6, 10.000000) count=0.999997
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.999997
;	genCall
;	genSend
	lda	0x113,x
	tay
	lda	0x114,x
	tax
	tya
	jsr	__modsint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10b,x
	lda	*(REGTEMP+0)
	sta	0x10c,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
;	Raw cost for generated ic 128 : (26, 44.000000) count=0.999997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999997
;	genAssign
;	genAssignLit
	lda	#0x00
	sta	0x10f,x
	sta	0x110,x
;	Raw cost for generated ic 111 : (8, 12.000000) count=0.999997
;	genLabel
00113$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=3.999964
;	genCmp
	tsx
	lda	0x10f,x
	sec
	sbc	0x111,x
	lda	0x110,x
	sbc	0x112,x
	bvc	00167$
	bpl	00166$
	bmi	00168$
00167$:
	bmi	00166$
00168$:
	jmp	00108$
00166$:
;	Raw cost for generated ic 40 : (25, 33.400002) count=3.999964
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=3.999964
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
;	genCmpEQorNE
	lda	0x10f,x
	cmp	#0x01
	bne	00105$
	lda	0x110,x
	bne	00105$
;	Raw cost for generated ic 44 : (18, 21.200001) count=2.999970
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=2.999970
;	genIfx
	lda	0x10a,x
	ora	0x109,x
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 49 : (11, 13.600000) count=2.249978
;	../time.c: 198: seconds+= 60*60*24L*29;
;	genPlus
;	  genPlusInc
	lda	0x101,x
	clc
	adc	#0x80
	sta	0x101,x
	lda	0x102,x
	adc	#0x3b
	sta	0x102,x
	lda	0x103,x
	adc	#0x26
	sta	0x103,x
	lda	0x104,x
	adc	#0x00
	sta	0x104,x
;	Raw cost for generated ic 52 : (33, 46.000000) count=1.687483
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 54 : (3, 3.000000) count=1.687483
;	genLabel
00105$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.312484
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
;	genAssign
;	genCopy
	tsx
	lda	0x110,x
	sta	0x10e,x
	lda	0x10f,x
	sta	0x10d,x
;	Raw cost for generated ic 57 : (13, 20.000000) count=1.312484
;	genPointerGet
;	  setupDPTR - off=0 remat=_monthDays savea=0
	clc
	adc	#<(_monthDays+0)
	sta	*(DPTR+0)
	lda	0x10e,x
	adc	#>(_monthDays+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 58 : (16, 23.000000) count=1.312484
;	genCast
	sta	0x105,x
	tya
	sta	0x106,x
	sta	0x107,x
;	Raw cost for generated ic 59 : (13, 22.000000) count=1.312484
;	genIpush
	sta	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 129 : (16, 28.000000) count=1.312484
;	genIpush
	tya
	pha
	lda	#0x01
	pha
	lda	#0x51
	pha
	lda	#0x80
	pha
;	Raw cost for generated ic 130 : (11, 20.000000) count=1.312484
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 131 : (30, 50.000000) count=1.312484
;	genPlus
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 61 : (37, 54.000000) count=1.312484
;	genLabel
00114$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=2.999967
;	../time.c: 196: for (i=0; i<month; i++) {
;	genPlus
;	  genPlusInc
	tsx
	lda	0x10f,x
	clc
	adc	#0x01
	sta	0x10f,x
	lda	0x110,x
	adc	#0x00
	sta	0x110,x
;	Raw cost for generated ic 66 : (18, 26.000000) count=2.999967
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 68 : (3, 3.000000) count=2.999967
;	genLabel
00108$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999990
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
;	genAssign
;	genCopy
	tsx
	lda	0x116,x
	sta	0x106,x
	lda	0x115,x
	sta	0x105,x
;	Raw cost for generated ic 71 : (13, 20.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
;	Raw cost for generated ic 72 : (11, 17.000000) count=0.999990
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 73 : (2, 2.000000) count=0.999990
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	tsx
	sta	0x105,x
	lda	#0x00
	sbc	#0x00
;	Raw cost for generated ic 74 : (14, 20.000000) count=0.999990
;	genCast
	sta	0x106,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 75 : (25, 36.000000) count=0.999990
;	genIpush
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 132 : (13, 24.000000) count=0.999990
;	genIpush
	lda	#0x00
	pha
	lda	#0x01
	pha
	lda	#0x51
	pha
	lda	#0x80
	pha
;	Raw cost for generated ic 133 : (12, 20.000000) count=0.999990
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 134 : (30, 50.000000) count=0.999990
;	genPlus
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 77 : (37, 54.000000) count=0.999990
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x106,x
	lda	0x115,x
	sta	0x105,x
;	Raw cost for generated ic 80 : (12, 18.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
	tay
;	Raw cost for generated ic 81 : (12, 19.000000) count=0.999990
;	genCast
;	genCopy
	lda	#0x00
	sta	0x108,x
	sta	0x107,x
	sta	0x106,x
	tya
	sta	0x105,x
;	Raw cost for generated ic 82 : (15, 24.000000) count=0.999990
;	genIpush
	lda	0x108,x
	pha
	lda	0x107,x
	pha
	lda	0x106,x
	pha
	lda	0x105,x
	pha
;	Raw cost for generated ic 135 : (16, 28.000000) count=0.999990
;	genIpush
	lda	#0x00
	pha
	pha
	lda	#0x0e
	pha
	lda	#0x10
	pha
;	Raw cost for generated ic 136 : (10, 18.000000) count=0.999990
;	genCall
	jsr	__mullong
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x10d,x
	lda	*(REGTEMP+0)
	sta	0x10e,x
	lda	*___SDCC_m6502_ret2
	sta	0x10f,x
	lda	*___SDCC_m6502_ret3
	sta	0x110,x
;	  adjustStack : cycles stk:32  incdec:18  adc:10
	txa
	clc
	adc	#0x08
	tax
	txs
;	Raw cost for generated ic 137 : (30, 50.000000) count=0.999990
;	genPlus
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 84 : (37, 54.000000) count=0.999990
;	../time.c: 206: seconds+= timeptr->tm_min*60;
;	genAssign
;	genCopy
	lda	0x116,x
	sta	0x106,x
	lda	0x115,x
	sta	0x105,x
;	Raw cost for generated ic 87 : (12, 18.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	lda	0x106,x
	sta	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
;	Raw cost for generated ic 88 : (11, 17.000000) count=0.999990
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 89 : (2, 2.000000) count=0.999990
;	genIpush
	tay
	txa
	pha
	tya
	pha
;	Raw cost for generated ic 138 : (5, 12.000000) count=0.999990
;	Raw cost for generated ic 139 : (0, 0.000000) count=0.999990
;	genCall
;	genSend
	lda	#0x3c
	jsr	__mulint
;	assignResultValue
	stx	*(REGTEMP+0)
	tsx
	sta	0x107,x
	lda	*(REGTEMP+0)
	sta	0x108,x
;	  adjustStack : cycles stk:8  incdec:6  adc:10
	inx
	inx
	txs
;	Raw cost for generated ic 140 : (19, 32.000000) count=0.999990
;	genCast
	lda	0x106,x
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 91 : (25, 36.000000) count=0.999990
;	genPlus
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 92 : (37, 54.000000) count=0.999990
;	../time.c: 207: seconds+= timeptr->tm_sec;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	lda	0x115,x
	sta	*(DPTR+0)
	lda	0x116,x
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 96 : (14, 21.000000) count=0.999990
;	genCast
;	genCopy
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999990
;	genCast
	sta	0x105,x
	tya
	sta	0x106,x
	sta	0x107,x
	sta	0x108,x
;	Raw cost for generated ic 98 : (13, 22.000000) count=0.999990
;	genPlus
	lda	0x101,x
	clc
	adc	0x105,x
	sta	0x101,x
	lda	0x102,x
	adc	0x106,x
	sta	0x102,x
	lda	0x103,x
	adc	0x107,x
	sta	0x103,x
	lda	0x104,x
	adc	0x108,x
	sta	0x104,x
;	Raw cost for generated ic 99 : (37, 54.000000) count=0.999990
;	../time.c: 208: return seconds;
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	0x103,x
	sta	*___SDCC_m6502_ret2
	lda	0x102,x
	sta	*(REGTEMP+0)
	lda	0x101,x
;	Raw cost for generated ic 101 : (17, 24.000000) count=0.999990
;	genLabel
;	Raw cost for generated ic 102 : (0, 0.000000) count=0.999990
;	../time.c: 209: }
;	genEndFunction
;	  adjustStack : cycles stk:94  incdec:54  adc:24
	ldx	*(REGTEMP+0)
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
;	Raw cost for generated ic 103 : (16, 30.000000) count=0.999990
	.area CODE
	.area RODATA
	.area RODATA
_monthDays:
	.db #0x1f	; 31
	.db #0x1c	; 28
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x1f	; 31
	.area CODE
	.area RODATA
___month:
	.dw __str_1
	.dw __str_2
	.dw __str_3
	.dw __str_4
	.dw __str_5
	.dw __str_6
	.dw __str_7
	.dw __str_8
	.dw __str_9
	.dw __str_10
	.dw __str_11
	.dw __str_12
	.area CODE
	.area RODATA
___day:
	.dw __str_13
	.dw __str_14
	.dw __str_15
	.dw __str_16
	.dw __str_17
	.dw __str_18
	.dw __str_19
	.area CODE
	.area RODATA
___str_0:
	.ascii "%s %s %2d %02d:%02d:%02d %04d"
	.db 0x0a
	.db 0x00
	.area CODE
	.area RODATA
__str_1:
	.ascii "Jan"
	.db 0x00
	.area CODE
	.area RODATA
__str_2:
	.ascii "Feb"
	.db 0x00
	.area CODE
	.area RODATA
__str_3:
	.ascii "Mar"
	.db 0x00
	.area CODE
	.area RODATA
__str_4:
	.ascii "Apr"
	.db 0x00
	.area CODE
	.area RODATA
__str_5:
	.ascii "May"
	.db 0x00
	.area CODE
	.area RODATA
__str_6:
	.ascii "Jun"
	.db 0x00
	.area CODE
	.area RODATA
__str_7:
	.ascii "Jul"
	.db 0x00
	.area CODE
	.area RODATA
__str_8:
	.ascii "Aug"
	.db 0x00
	.area CODE
	.area RODATA
__str_9:
	.ascii "Sep"
	.db 0x00
	.area CODE
	.area RODATA
__str_10:
	.ascii "Oct"
	.db 0x00
	.area CODE
	.area RODATA
__str_11:
	.ascii "Nov"
	.db 0x00
	.area CODE
	.area RODATA
__str_12:
	.ascii "Dec"
	.db 0x00
	.area CODE
	.area RODATA
__str_13:
	.ascii "Sun"
	.db 0x00
	.area CODE
	.area RODATA
__str_14:
	.ascii "Mon"
	.db 0x00
	.area CODE
	.area RODATA
__str_15:
	.ascii "Tue"
	.db 0x00
	.area CODE
	.area RODATA
__str_16:
	.ascii "Wed"
	.db 0x00
	.area CODE
	.area RODATA
__str_17:
	.ascii "Thu"
	.db 0x00
	.area CODE
	.area RODATA
__str_18:
	.ascii "Fri"
	.db 0x00
	.area CODE
	.area RODATA
__str_19:
	.ascii "Sat"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
