;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module time
	
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
_asctime_sloc0_1_0:
	.ds 2
_asctime_sloc1_1_0:
	.ds 2
_asctime_sloc2_1_0:
	.ds 2
_asctime_sloc3_1_0:
	.ds 2
_asctime_sloc4_1_0:
	.ds 2
_asctime_sloc5_1_0:
	.ds 2
_asctime_sloc6_1_0:
	.ds 2
_gmtime_sloc0_1_0:
	.ds 4
_gmtime_sloc1_1_0:
	.ds 4
_gmtime_sloc2_1_0:
	.ds 4
_mktime_sloc0_1_0:
	.ds 4
_mktime_sloc1_1_0:
	.ds 2
_mktime_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_CheckTime_sloc0_1_0:
	.ds 2
_CheckTime_sloc1_1_0:
	.ds 2
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
_time_timeptr_10000_19:
	.ds 2
_time_now_10000_20:
	.ds 12
_time_t_10000_20:
	.ds 4
_ascTimeBuffer:
	.ds 32
_CheckTime_timeptr_10000_25:
	.ds 2
_asctime_timeptr_10000_35:
	.ds 2
_lastTime:
	.ds 12
_gmtime_epoch_10000_42:
	.ds 4
_gmtime_days_10000_42:
	.ds 4
_mktime_timeptr_10000_55:
	.ds 2
_mktime_year_10000_56:
	.ds 2
_mktime_month_10000_56:
	.ds 2
_mktime_seconds_10000_56:
	.ds 4
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
;timeptr       Allocated with name '_time_timeptr_10000_19'
;now           Allocated with name '_time_now_10000_20'
;t             Allocated with name '_time_t_10000_20'
;------------------------------------------------------------
;	../time.c: 50: time_t time(time_t *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function time
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_time:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_time_timeptr_10000_19
	stx	(_time_timeptr_10000_19 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../time.c: 52: time_t t=(time_t) -1;
;	genAssign
;	genAssignLit
	ldx	#0xff
	stx	_time_t_10000_20
	stx	(_time_t_10000_20 + 1)
	stx	(_time_t_10000_20 + 2)
	stx	(_time_t_10000_20 + 3)
;	Raw cost for generated ic 3 : (14, 18.000000) count=1.000000
;	../time.c: 54: if (RtcRead(&now)) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	#>_time_now_10000_20
	lda	#_time_now_10000_20
	jsr	_RtcRead
;	assignResultValue
;	Raw cost for generated ic 7 : (7, 10.000000) count=1.000000
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	beq	00102$
;	Raw cost for generated ic 8 : (7, 7.600000) count=1.000000
;	../time.c: 55: t=mktime(&now);
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.750000
;	Raw cost for generated ic 13 : (0, 0.000000) count=0.750000
;	genCall
;	genSend
	ldx	#>_time_now_10000_20
	lda	#_time_now_10000_20
	jsr	_mktime
;	assignResultValue
	sta	_time_t_10000_20
	stx	(_time_t_10000_20 + 1)
	lda	*___SDCC_m6502_ret2
	sta	(_time_t_10000_20 + 2)
	lda	*___SDCC_m6502_ret3
	sta	(_time_t_10000_20 + 3)
;	Raw cost for generated ic 14 : (23, 32.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=1.000000
;	../time.c: 57: if (timeptr) {
;	genIfx
	lda	(_time_timeptr_10000_19 + 1)
	ora	_time_timeptr_10000_19
;	genIfxJump : z
	beq	00104$
;	Raw cost for generated ic 17 : (11, 13.600000) count=1.000000
;	../time.c: 58: *timeptr=t;
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_time_timeptr_10000_19
	stx	*(DPTR+0)
	ldx	(_time_timeptr_10000_19 + 1)
	stx	*(DPTR+1)
	lda	_time_t_10000_20
	ldy	#0x00
	sta	[DPTR],y
	lda	(_time_t_10000_20 + 1)
	iny
	sta	[DPTR],y
	lda	(_time_t_10000_20 + 2)
	iny
	sta	[DPTR],y
	lda	(_time_t_10000_20 + 3)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 21 : (35, 62.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 22 : (0, 0.000000) count=1.000000
;	../time.c: 60: return t;
;	genRet
	lda	(_time_t_10000_20 + 3)
	sta	*___SDCC_m6502_ret3
	lda	(_time_t_10000_20 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_time_t_10000_20 + 1)
	lda	_time_t_10000_20
;	Raw cost for generated ic 23 : (16, 22.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../time.c: 61: }
;	genEndFunction
	rts
;	Raw cost for generated ic 25 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckTime'
;------------------------------------------------------------
;timeptr       Allocated with name '_CheckTime_timeptr_10000_25'
;sloc0         Allocated with name '_CheckTime_sloc0_1_0'
;sloc1         Allocated with name '_CheckTime_sloc1_1_0'
;------------------------------------------------------------
;	../time.c: 73: static void CheckTime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function CheckTime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_CheckTime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_CheckTime_timeptr_10000_25
	stx	(_CheckTime_timeptr_10000_25 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../time.c: 84: if (timeptr->tm_sec>59) timeptr->tm_sec=59;
;	genCast
;	genCopy
	sta	*_CheckTime_sloc0_1_0
	stx	*(_CheckTime_sloc0_1_0 + 1)
;	Raw cost for generated ic 4 : (4, 6.000000) count=1.000000
;	genPointerGet
	ldy	#0x00
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 5 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x3b
	beq	00102$
	bcc	00102$
;	Raw cost for generated ic 6 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x3b
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 12 : (4, 8.000000) count=0.750000
;	genLabel
00102$:
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	../time.c: 85: if (timeptr->tm_min>59) timeptr->tm_min=59;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 15 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x01
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 16 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x3b
	beq	00104$
	bcc	00104$
;	Raw cost for generated ic 17 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x3b
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 23 : (4, 8.000000) count=0.750000
;	genLabel
00104$:
;	Raw cost for generated ic 24 : (0, 0.000000) count=1.000000
;	../time.c: 86: if (timeptr->tm_hour>23) timeptr->tm_hour=23;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 26 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x02
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 27 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x17
	beq	00106$
	bcc	00106$
;	Raw cost for generated ic 28 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 29 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x17
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 34 : (4, 8.000000) count=0.750000
;	genLabel
00106$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=1.000000
;	../time.c: 87: if (timeptr->tm_wday>6) timeptr->tm_wday=6;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 37 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x07
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 38 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x06
	beq	00108$
	bcc	00108$
;	Raw cost for generated ic 39 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x06
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 45 : (4, 8.000000) count=0.750000
;	genLabel
00108$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../time.c: 88: if (timeptr->tm_mday<1) timeptr->tm_mday=1;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 48 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x03
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 49 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x01
	bcs	00112$
;	Raw cost for generated ic 50 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 51 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x01
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 56 : (4, 8.000000) count=0.750000
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 57 : (3, 3.000000) count=0.750000
;	genLabel
00112$:
;	Raw cost for generated ic 58 : (0, 0.000000) count=0.250000
;	../time.c: 89: else if (timeptr->tm_mday>31) timeptr->tm_mday=31;
;	genCmp
	cmp	#0x1f
	beq	00113$
	bcc	00113$
;	Raw cost for generated ic 62 : (9, 10.200000) count=0.250000
;	skipping generated iCode
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.250000
;	genPointerSet
	lda	#0x1f
	ldy	#0x03
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 68 : (6, 10.000000) count=0.187500
;	genLabel
00113$:
;	Raw cost for generated ic 70 : (0, 0.000000) count=1.000000
;	../time.c: 90: if (timeptr->tm_mon>11) timeptr->tm_mon=11;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 72 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x04
	lda	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 73 : (4, 7.000000) count=1.000000
;	genCmp
	cmp	#0x0b
	beq	00115$
	bcc	00115$
;	Raw cost for generated ic 74 : (9, 10.200000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 75 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x0b
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 80 : (4, 8.000000) count=0.750000
;	genLabel
00115$:
;	Raw cost for generated ic 81 : (0, 0.000000) count=1.000000
;	../time.c: 91: if (timeptr->tm_year<0) timeptr->tm_year=0;
;	genAssign
;	genCopy
	lda	(_CheckTime_timeptr_10000_25 + 1)
	sta	*(_CheckTime_sloc0_1_0 + 1)
	lda	_CheckTime_timeptr_10000_25
	sta	*_CheckTime_sloc0_1_0
;	Raw cost for generated ic 83 : (10, 14.000000) count=1.000000
;	genPointerGet
	ldy	#0x05
	lda	[*_CheckTime_sloc0_1_0],y
	sta	*_CheckTime_sloc1_1_0
	iny
	lda	[*_CheckTime_sloc0_1_0],y
	sta	*(_CheckTime_sloc1_1_0 + 1)
;	Raw cost for generated ic 84 : (11, 20.000000) count=1.000000
;	genCmp
	bit	*(_CheckTime_sloc1_1_0 + 1)
	bpl	00118$
;	Raw cost for generated ic 85 : (7, 8.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 86 : (0, 0.000000) count=1.000000
;	genPointerSet
	lda	#0x00
	dey
	sta	[*_CheckTime_sloc0_1_0],y
	iny
	sta	[*_CheckTime_sloc0_1_0],y
;	Raw cost for generated ic 91 : (8, 18.000000) count=0.750000
;	genLabel
00118$:
;	Raw cost for generated ic 93 : (0, 0.000000) count=1.000000
;	../time.c: 92: }
;	genEndFunction
	rts
;	Raw cost for generated ic 94 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'asctime'
;------------------------------------------------------------
;sloc0         Allocated with name '_asctime_sloc0_1_0'
;sloc1         Allocated with name '_asctime_sloc1_1_0'
;sloc2         Allocated with name '_asctime_sloc2_1_0'
;sloc3         Allocated with name '_asctime_sloc3_1_0'
;sloc4         Allocated with name '_asctime_sloc4_1_0'
;sloc5         Allocated with name '_asctime_sloc5_1_0'
;sloc6         Allocated with name '_asctime_sloc6_1_0'
;timeptr       Allocated with name '_asctime_timeptr_10000_35'
;------------------------------------------------------------
;	../time.c: 95: char *asctime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function asctime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_asctime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_asctime_timeptr_10000_35
	stx	(_asctime_timeptr_10000_35 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../time.c: 96: CheckTime(timeptr);
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	_CheckTime
;	Raw cost for generated ic 4 : (3, 6.000000) count=1.000000
;	../time.c: 100: timeptr->tm_year+1900);
;	genAssign
;	genCopy
	ldx	(_asctime_timeptr_10000_35 + 1)
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=5 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x06
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 7 : (12, 22.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x6c
	sta	*_asctime_sloc0_1_0
	txa
	adc	#0x07
	sta	*(_asctime_sloc0_1_0 + 1)
;	Raw cost for generated ic 8 : (10, 14.000000) count=1.000000
;	../time.c: 99: timeptr->tm_hour, timeptr->tm_min, timeptr->tm_sec, 
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_asctime_timeptr_10000_35
	stx	*(DPTR+0)
	ldx	(_asctime_timeptr_10000_35 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 11 : (14, 21.000000) count=1.000000
;	genCast
	sta	*_asctime_sloc1_1_0
	sty	*(_asctime_sloc1_1_0 + 1)
;	Raw cost for generated ic 12 : (4, 6.000000) count=1.000000
;	genAssign
;	genCopy
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 14 : (3, 4.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
;	Raw cost for generated ic 15 : (7, 13.000000) count=1.000000
;	genCast
	sta	*_asctime_sloc2_1_0
	stz	*(_asctime_sloc2_1_0 + 1)
;	Raw cost for generated ic 16 : (5, 7.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	(_asctime_timeptr_10000_35 + 1)
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 18 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
;	Raw cost for generated ic 19 : (7, 13.000000) count=1.000000
;	genCast
	sta	*_asctime_sloc3_1_0
	stz	*(_asctime_sloc3_1_0 + 1)
;	Raw cost for generated ic 20 : (5, 7.000000) count=1.000000
;	../time.c: 98: __day[timeptr->tm_wday], __month[timeptr->tm_mon], timeptr->tm_mday,
;	genAssign
;	genCopy
	ldx	(_asctime_timeptr_10000_35 + 1)
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 22 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
;	Raw cost for generated ic 23 : (7, 13.000000) count=1.000000
;	genCast
	sta	*_asctime_sloc4_1_0
	stz	*(_asctime_sloc4_1_0 + 1)
;	Raw cost for generated ic 24 : (5, 7.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 25 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	(_asctime_timeptr_10000_35 + 1)
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 27 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	iny
	lda	[DPTR],y
;	Raw cost for generated ic 28 : (7, 13.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 29 : (2, 2.000000) count=1.000000
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
	sta	*_asctime_sloc5_1_0
	iny
	lda	[DPTR],y
	sta	*(_asctime_sloc5_1_0 + 1)
;	Raw cost for generated ic 32 : (21, 34.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 33 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	(_asctime_timeptr_10000_35 + 1)
	lda	_asctime_timeptr_10000_35
;	Raw cost for generated ic 35 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=7 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x07
	lda	[DPTR],y
;	Raw cost for generated ic 36 : (8, 13.000000) count=1.000000
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 37 : (2, 2.000000) count=1.000000
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
	sta	*_asctime_sloc6_1_0
	iny
	lda	[DPTR],y
	sta	*(_asctime_sloc6_1_0 + 1)
;	Raw cost for generated ic 40 : (21, 34.000000) count=1.000000
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
	lda	*(_asctime_sloc0_1_0 + 1)
	pha
	lda	*_asctime_sloc0_1_0
	pha
;	Raw cost for generated ic 45 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc1_1_0 + 1)
	pha
	lda	*_asctime_sloc1_1_0
	pha
;	Raw cost for generated ic 46 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc2_1_0 + 1)
	pha
	lda	*_asctime_sloc2_1_0
	pha
;	Raw cost for generated ic 47 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc3_1_0 + 1)
	pha
	lda	*_asctime_sloc3_1_0
	pha
;	Raw cost for generated ic 48 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc4_1_0 + 1)
	pha
	lda	*_asctime_sloc4_1_0
	pha
;	Raw cost for generated ic 49 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc5_1_0 + 1)
	pha
	lda	*_asctime_sloc5_1_0
	pha
;	Raw cost for generated ic 50 : (6, 12.000000) count=1.000000
;	genIpush
	lda	*(_asctime_sloc6_1_0 + 1)
	pha
	lda	*_asctime_sloc6_1_0
	pha
;	Raw cost for generated ic 51 : (6, 12.000000) count=1.000000
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
	rts
;	Raw cost for generated ic 59 : (1, 6.000000) count=1.000000
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
;sloc0         Allocated with name '_gmtime_sloc0_1_0'
;sloc1         Allocated with name '_gmtime_sloc1_1_0'
;sloc2         Allocated with name '_gmtime_sloc2_1_0'
;timep         Allocated to registers a x 
;epoch         Allocated with name '_gmtime_epoch_10000_42'
;year          Allocated to registers 
;month         Allocated to registers 
;monthLength   Allocated to registers a 
;days          Allocated with name '_gmtime_days_10000_42'
;------------------------------------------------------------
;	../time.c: 125: struct tm *gmtime(time_t *timep) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function gmtime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gmtime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	../time.c: 126: unsigned long epoch=*timep;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_gmtime_sloc0_1_0
	iny
	lda	[DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_gmtime_sloc0_1_0 + 3)
;	Raw cost for generated ic 4 : (25, 46.000000) count=1.000000
;	../time.c: 131: lastTime.tm_sec=epoch%60;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 6 : (0, 0.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 7 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(__modulong_PARM_1 + 3)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	*_gmtime_sloc0_1_0
	sta	__modulong_PARM_1
;	Raw cost for generated ic 157 : (18, 25.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	__modulong_PARM_2
	stz	(__modulong_PARM_2 + 1)
	stz	(__modulong_PARM_2 + 2)
	stz	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 158 : (14, 18.000000) count=1.000000
;	genCall
	jsr	__modulong
;	assignResultValue
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 159 : (15, 24.000000) count=1.000000
;	genCast
;	genCopy
	lda	*_gmtime_sloc1_1_0
;	Raw cost for generated ic 9 : (2, 3.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	_lastTime
;	Raw cost for generated ic 10 : (3, 4.000000) count=1.000000
;	../time.c: 132: epoch/=60; // now it is minutes
;	genAssign
;	genCopy
	lda	*(_gmtime_sloc0_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	lda	*(_gmtime_sloc0_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc0_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*_gmtime_sloc0_1_0
	sta	__divulong_PARM_1
;	Raw cost for generated ic 160 : (20, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	__divulong_PARM_2
	stz	(__divulong_PARM_2 + 1)
	stz	(__divulong_PARM_2 + 2)
	stz	(__divulong_PARM_2 + 3)
;	Raw cost for generated ic 161 : (14, 18.000000) count=1.000000
;	../time.c: 133: lastTime.tm_min=epoch%60;
;	genCall
	jsr	__divulong
;	assignResultValue
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 162 : (15, 24.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 14 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(__modulong_PARM_1 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	txa
	sta	(__modulong_PARM_1 + 1)
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
;	Raw cost for generated ic 163 : (17, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	__modulong_PARM_2
	stz	(__modulong_PARM_2 + 1)
	stz	(__modulong_PARM_2 + 2)
	stz	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 164 : (14, 18.000000) count=1.000000
;	genCall
	jsr	__modulong
;	assignResultValue
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc0_1_0 + 3)
;	Raw cost for generated ic 165 : (15, 24.000000) count=1.000000
;	genCast
;	genCopy
	lda	*_gmtime_sloc0_1_0
;	Raw cost for generated ic 16 : (2, 3.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0001)
;	Raw cost for generated ic 17 : (3, 4.000000) count=1.000000
;	../time.c: 134: epoch/=60; // now it is hours
;	genAssign
;	genCopy
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
;	Raw cost for generated ic 166 : (20, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x3c
	stx	__divulong_PARM_2
	stz	(__divulong_PARM_2 + 1)
	stz	(__divulong_PARM_2 + 2)
	stz	(__divulong_PARM_2 + 3)
;	Raw cost for generated ic 167 : (14, 18.000000) count=1.000000
;	../time.c: 135: lastTime.tm_hour=epoch%24;
;	genCall
	jsr	__divulong
;	assignResultValue
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 168 : (15, 24.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 21 : (0, 0.000000) count=1.000000
;	genAssign
;	genCopy
	sta	(__modulong_PARM_1 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__modulong_PARM_1 + 2)
	txa
	sta	(__modulong_PARM_1 + 1)
	lda	*_gmtime_sloc1_1_0
	sta	__modulong_PARM_1
;	Raw cost for generated ic 169 : (17, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x18
	stx	__modulong_PARM_2
	stz	(__modulong_PARM_2 + 1)
	stz	(__modulong_PARM_2 + 2)
	stz	(__modulong_PARM_2 + 3)
;	Raw cost for generated ic 170 : (14, 18.000000) count=1.000000
;	genCall
	jsr	__modulong
;	assignResultValue
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc0_1_0 + 3)
;	Raw cost for generated ic 171 : (15, 24.000000) count=1.000000
;	genCast
;	genCopy
	lda	*_gmtime_sloc0_1_0
;	Raw cost for generated ic 23 : (2, 3.000000) count=1.000000
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0002)
;	Raw cost for generated ic 24 : (3, 4.000000) count=1.000000
;	../time.c: 136: epoch/=24; // now it is days
;	genAssign
;	genCopy
	lda	*(_gmtime_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*_gmtime_sloc1_1_0
	sta	__divulong_PARM_1
;	Raw cost for generated ic 172 : (20, 28.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x18
	stx	__divulong_PARM_2
	stz	(__divulong_PARM_2 + 1)
	stz	(__divulong_PARM_2 + 2)
	stz	(__divulong_PARM_2 + 3)
;	Raw cost for generated ic 173 : (14, 18.000000) count=1.000000
;	../time.c: 137: lastTime.tm_wday=(epoch+4)%7;
;	genCall
	jsr	__divulong
;	assignResultValue
	sta	*_gmtime_sloc1_1_0
	stx	*(_gmtime_sloc1_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 174 : (15, 24.000000) count=1.000000
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 28 : (0, 0.000000) count=1.000000
;	genCast
;	genCopy
	lda	*_gmtime_sloc1_1_0
;	Raw cost for generated ic 152 : (2, 3.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x04
	bcc	00172$
	inx
00172$:
;	Raw cost for generated ic 29 : (6, 8.600000) count=1.000000
;	genCast
;	genCopy
;	Raw cost for generated ic 175 : (0, 0.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldy	#0x07
	sty	__moduint_PARM_2
	stz	(__moduint_PARM_2 + 1)
;	Raw cost for generated ic 178 : (8, 10.000000) count=1.000000
;	Raw cost for generated ic 177 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	jsr	__moduint
;	assignResultValue
;	Raw cost for generated ic 179 : (3, 6.000000) count=1.000000
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
	stz	_gmtime_days_10000_42
	stz	(_gmtime_days_10000_42 + 1)
	stz	(_gmtime_days_10000_42 + 2)
	stz	(_gmtime_days_10000_42 + 3)
;	Raw cost for generated ic 34 : (12, 16.000000) count=1.000000
;	../time.c: 141: while((days += (LEAP_YEAR(year) ? 366 : 365)) <= epoch) {
;	genAssign
;	genAssignLit
	ldx	#0xb2
	stx	*_gmtime_sloc0_1_0
	ldx	#0x07
	stx	*(_gmtime_sloc0_1_0 + 1)
;	Raw cost for generated ic 142 : (8, 10.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 35 : (0, 0.000000) count=3.999988
;	genAnd
	lda	*_gmtime_sloc0_1_0
	and	#0x03
;	genIfxJump : z
	bne	00118$
;	Raw cost for generated ic 36 : (11, 13.200000) count=3.999988
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=3.999988
;	genAssign
;	genCopy
	ldx	#0x01
	lda	#0x6e
;	Raw cost for generated ic 39 : (4, 4.000000) count=2.999989
;	genGoto
	jmp	00119$
;	Raw cost for generated ic 40 : (3, 3.000000) count=2.999989
;	genLabel
00118$:
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999995
;	genAssign
;	genCopy
	ldx	#0x01
	lda	#0x6d
;	Raw cost for generated ic 42 : (4, 4.000000) count=0.999995
;	genLabel
00119$:
;	Raw cost for generated ic 43 : (0, 0.000000) count=3.999985
;	genCast
	sta	*_gmtime_sloc2_1_0
	stx	*(_gmtime_sloc2_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00175$
	dex
00175$:
	stx	*(_gmtime_sloc2_1_0 + 2)
	stx	*(_gmtime_sloc2_1_0 + 3)
;	Raw cost for generated ic 44 : (15, 20.600000) count=3.999985
;	genPlus
	lda	_gmtime_days_10000_42
	clc
	adc	*_gmtime_sloc2_1_0
	sta	*_gmtime_sloc2_1_0
	lda	(_gmtime_days_10000_42 + 1)
	adc	*(_gmtime_sloc2_1_0 + 1)
	sta	*(_gmtime_sloc2_1_0 + 1)
	lda	(_gmtime_days_10000_42 + 2)
	adc	*(_gmtime_sloc2_1_0 + 2)
	sta	*(_gmtime_sloc2_1_0 + 2)
	lda	(_gmtime_days_10000_42 + 3)
	adc	*(_gmtime_sloc2_1_0 + 3)
	sta	*(_gmtime_sloc2_1_0 + 3)
;	Raw cost for generated ic 45 : (29, 42.000000) count=3.999985
;	genAssign
;	genCopy
	sta	(_gmtime_days_10000_42 + 3)
	lda	*(_gmtime_sloc2_1_0 + 2)
	sta	(_gmtime_days_10000_42 + 2)
	lda	*(_gmtime_sloc2_1_0 + 1)
	sta	(_gmtime_days_10000_42 + 1)
	lda	*_gmtime_sloc2_1_0
	sta	_gmtime_days_10000_42
;	Raw cost for generated ic 46 : (18, 25.000000) count=3.999985
;	genCmp
	lda	*_gmtime_sloc1_1_0
	sec
	sbc	*_gmtime_sloc2_1_0
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	*(_gmtime_sloc2_1_0 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	*(_gmtime_sloc2_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sbc	*(_gmtime_sloc2_1_0 + 3)
	bcc	00103$
;	Raw cost for generated ic 47 : (22, 31.600000) count=3.999985
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=3.999985
;	../time.c: 142: year++;
;	genPlus
;	  genPlusInc
	inc	*_gmtime_sloc0_1_0
	bne	00101$
	inc	*(_gmtime_sloc0_1_0 + 1)
;	Raw cost for generated ic 52 : (6, 12.600000) count=2.999988
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
	lda	*_gmtime_sloc0_1_0
	sec
	sbc	#0x6c
	pha
	lda	*(_gmtime_sloc0_1_0 + 1)
	sbc	#0x07
	tax
	pla
;	Raw cost for generated ic 58 : (12, 21.000000) count=0.999995
;	genPointerSet
;	genDataPointerSet
	stx	((_lastTime + 0x0005) + 1)
	sta	(_lastTime + 0x0005)
;	Raw cost for generated ic 59 : (6, 8.000000) count=0.999995
;	../time.c: 146: days -= LEAP_YEAR(year) ? 366 : 365;
;	genAnd
	lda	*_gmtime_sloc0_1_0
	and	#0x03
	sta	*_gmtime_sloc2_1_0
	stz	*(_gmtime_sloc2_1_0 + 1)
;	Raw cost for generated ic 60 : (9, 12.000000) count=0.999995
;	genIfx
	lda	*(_gmtime_sloc2_1_0 + 1)
	ora	*_gmtime_sloc2_1_0
;	genIfxJump : z
	bne	00120$
;	Raw cost for generated ic 62 : (9, 11.600000) count=0.999995
;	genAssign
;	genCopy
	ldx	#0x01
	lda	#0x6e
;	Raw cost for generated ic 63 : (4, 4.000000) count=0.749996
;	genGoto
	jmp	00121$
;	Raw cost for generated ic 64 : (3, 3.000000) count=0.749996
;	genLabel
00120$:
;	Raw cost for generated ic 65 : (0, 0.000000) count=0.249998
;	genAssign
;	genCopy
	ldx	#0x01
	lda	#0x6d
;	Raw cost for generated ic 66 : (4, 4.000000) count=0.249998
;	genLabel
00121$:
;	Raw cost for generated ic 67 : (0, 0.000000) count=0.999994
;	genCast
	sta	*_gmtime_sloc0_1_0
	stx	*(_gmtime_sloc0_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00180$
	dex
00180$:
	stx	*(_gmtime_sloc0_1_0 + 2)
	stx	*(_gmtime_sloc0_1_0 + 3)
;	Raw cost for generated ic 68 : (15, 20.600000) count=0.999994
;	genMinus
	lda	_gmtime_days_10000_42
	sec
	sbc	*_gmtime_sloc0_1_0
	sta	_gmtime_days_10000_42
	lda	(_gmtime_days_10000_42 + 1)
	sbc	*(_gmtime_sloc0_1_0 + 1)
	sta	(_gmtime_days_10000_42 + 1)
	lda	(_gmtime_days_10000_42 + 2)
	sbc	*(_gmtime_sloc0_1_0 + 2)
	sta	(_gmtime_days_10000_42 + 2)
	lda	(_gmtime_days_10000_42 + 3)
	sbc	*(_gmtime_sloc0_1_0 + 3)
	sta	(_gmtime_days_10000_42 + 3)
;	Raw cost for generated ic 69 : (33, 46.000000) count=0.999994
;	../time.c: 147: epoch -= days; // now it is days in this year, starting at 0
;	genMinus
	lda	*_gmtime_sloc1_1_0
	sec
	sbc	_gmtime_days_10000_42
	sta	*_gmtime_sloc1_1_0
	lda	*(_gmtime_sloc1_1_0 + 1)
	sbc	(_gmtime_days_10000_42 + 1)
	sta	*(_gmtime_sloc1_1_0 + 1)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sbc	(_gmtime_days_10000_42 + 2)
	sta	*(_gmtime_sloc1_1_0 + 2)
	lda	*(_gmtime_sloc1_1_0 + 3)
	sbc	(_gmtime_days_10000_42 + 3)
	sta	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 71 : (29, 42.000000) count=0.999994
;	genAssign
;	genCopy
	sta	(_gmtime_epoch_10000_42 + 3)
	lda	*(_gmtime_sloc1_1_0 + 2)
	sta	(_gmtime_epoch_10000_42 + 2)
	lda	*(_gmtime_sloc1_1_0 + 1)
	sta	(_gmtime_epoch_10000_42 + 1)
	lda	*_gmtime_sloc1_1_0
	sta	_gmtime_epoch_10000_42
;	Raw cost for generated ic 72 : (18, 25.000000) count=0.999994
;	../time.c: 148: lastTime.tm_yday=epoch;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.999994
;	genCast
;	genCopy
	ldx	*(_gmtime_sloc1_1_0 + 1)
	lda	*_gmtime_sloc1_1_0
;	Raw cost for generated ic 75 : (4, 6.000000) count=0.999994
;	genPointerSet
;	genDataPointerSet
	stx	((_lastTime + 0x0008) + 1)
	sta	(_lastTime + 0x0008)
;	Raw cost for generated ic 76 : (6, 8.000000) count=0.999994
;	../time.c: 153: for (month=0; month<12; month++) {
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999994
;	genAssign
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 145 : (2, 2.000000) count=0.999994
;	genLabel
00114$:
;	Raw cost for generated ic 81 : (0, 0.000000) count=2.285690
;	../time.c: 154: if (month==1) { // februari
;	genCmpEQorNE
	cpx	#0x01
	bne	00108$
;	Raw cost for generated ic 82 : (7, 7.600000) count=2.285690
;	skipping generated iCode
;	Raw cost for generated ic 83 : (0, 0.000000) count=2.285690
;	../time.c: 155: if (LEAP_YEAR(year)) {
;	genIfx
	lda	*(_gmtime_sloc2_1_0 + 1)
	ora	*_gmtime_sloc2_1_0
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 87 : (9, 11.600000) count=1.714267
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
	stz	*(_gmtime_sloc1_1_0 + 1)
	stx	*_gmtime_sloc1_1_0
;	Raw cost for generated ic 98 : (5, 7.000000) count=0.571421
;	genPointerGet
;	  setupDPTR - off=0 remat=_monthDays savea=0
	clc
	txa
	adc	#<(_monthDays+0)
	sta	*(DPTR+0)
	lda	*(_gmtime_sloc1_1_0 + 1)
	adc	#>(_monthDays+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 99 : (16, 24.000000) count=0.571421
;	genLabel
00109$:
;	Raw cost for generated ic 101 : (0, 0.000000) count=2.285686
;	../time.c: 164: if (epoch>=monthLength) {
;	genCast
	sta	*_gmtime_sloc1_1_0
	stz	*(_gmtime_sloc1_1_0 + 1)
	stz	*(_gmtime_sloc1_1_0 + 2)
	stz	*(_gmtime_sloc1_1_0 + 3)
;	Raw cost for generated ic 102 : (11, 15.000000) count=2.285686
;	genCmp
	lda	_gmtime_epoch_10000_42
	sec
	sbc	*_gmtime_sloc1_1_0
	lda	(_gmtime_epoch_10000_42 + 1)
	sbc	*(_gmtime_sloc1_1_0 + 1)
	lda	(_gmtime_epoch_10000_42 + 2)
	sbc	*(_gmtime_sloc1_1_0 + 2)
	lda	(_gmtime_epoch_10000_42 + 3)
	sbc	*(_gmtime_sloc1_1_0 + 3)
	bcc	00113$
;	Raw cost for generated ic 103 : (26, 35.599998) count=2.285686
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=2.285686
;	../time.c: 165: epoch-=monthLength;
;	genMinus
	lda	_gmtime_epoch_10000_42
	sec
	sbc	*_gmtime_sloc1_1_0
	sta	_gmtime_epoch_10000_42
	lda	(_gmtime_epoch_10000_42 + 1)
	sbc	*(_gmtime_sloc1_1_0 + 1)
	sta	(_gmtime_epoch_10000_42 + 1)
	lda	(_gmtime_epoch_10000_42 + 2)
	sbc	*(_gmtime_sloc1_1_0 + 2)
	sta	(_gmtime_epoch_10000_42 + 2)
	lda	(_gmtime_epoch_10000_42 + 3)
	sbc	*(_gmtime_sloc1_1_0 + 3)
	sta	(_gmtime_epoch_10000_42 + 3)
;	Raw cost for generated ic 109 : (33, 46.000000) count=1.714264
;	../time.c: 153: for (month=0; month<12; month++) {
;	genPlus
;	  genPlusInc
	inx
;	Raw cost for generated ic 117 : (1, 2.000000) count=1.714264
;	genCmp
	cpx	#0x0c
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
	stx	(_lastTime + 0x0004)
;	Raw cost for generated ic 125 : (3, 4.000000) count=0.999986
;	../time.c: 171: lastTime.tm_mday=epoch+1;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 127 : (0, 0.000000) count=0.999986
;	genCast
;	genCopy
	lda	_gmtime_epoch_10000_42
;	Raw cost for generated ic 128 : (3, 4.000000) count=0.999986
;	genCast
;	genCopy
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.999986
;	genPlus
;	  genPlusInc
	inc	a
;	Raw cost for generated ic 130 : (1, 2.000000) count=0.999986
;	genPointerSet
;	genDataPointerSet
	sta	(_lastTime + 0x0003)
;	Raw cost for generated ic 131 : (3, 4.000000) count=0.999986
;	../time.c: 173: lastTime.tm_isdst=0;
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 133 : (0, 0.000000) count=0.999986
;	genPointerSet
;	genDataPointerSet
	stz	(_lastTime + 0x000a)
;	Raw cost for generated ic 134 : (3, 4.000000) count=0.999986
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
	rts
;	Raw cost for generated ic 139 : (1, 6.000000) count=0.999986
;------------------------------------------------------------
;Allocation info for local variables in function 'mktime'
;------------------------------------------------------------
;sloc0         Allocated with name '_mktime_sloc0_1_0'
;sloc1         Allocated with name '_mktime_sloc1_1_0'
;sloc2         Allocated with name '_mktime_sloc2_1_0'
;timeptr       Allocated with name '_mktime_timeptr_10000_55'
;year          Allocated with name '_mktime_year_10000_56'
;month         Allocated with name '_mktime_month_10000_56'
;i             Allocated to registers 
;seconds       Allocated with name '_mktime_seconds_10000_56'
;------------------------------------------------------------
;	../time.c: 179: time_t mktime(struct tm *timeptr) {
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function mktime
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_mktime:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_mktime_timeptr_10000_55
	stx	(_mktime_timeptr_10000_55 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../time.c: 180: int year=timeptr->tm_year+1900, month=timeptr->tm_mon, i;
;	genAssign
;	genCopy
;	Raw cost for generated ic 4 : (0, 0.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=5 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x06
	lda	[DPTR],y
	tax
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 5 : (12, 22.000000) count=1.000000
;	genPlus
;	  genPlusInc
	clc
	adc	#0x6c
	sta	_mktime_year_10000_56
	txa
	adc	#0x07
	sta	(_mktime_year_10000_56 + 1)
;	Raw cost for generated ic 6 : (12, 16.000000) count=1.000000
;	genAssign
;	genCopy
	ldx	(_mktime_timeptr_10000_55 + 1)
	lda	_mktime_timeptr_10000_55
;	Raw cost for generated ic 9 : (6, 8.000000) count=1.000000
;	genPointerGet
;	  setupDPTR - off=4 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	dey
	lda	[DPTR],y
;	Raw cost for generated ic 10 : (7, 13.000000) count=1.000000
;	genCast
	sta	_mktime_month_10000_56
	stz	(_mktime_month_10000_56 + 1)
;	Raw cost for generated ic 11 : (6, 8.000000) count=1.000000
;	../time.c: 183: CheckTime(timeptr);
;	Raw cost for generated ic 13 : (0, 0.000000) count=1.000000
;	genCall
;	genSend
	ldx	(_mktime_timeptr_10000_55 + 1)
	lda	_mktime_timeptr_10000_55
	jsr	_CheckTime
;	Raw cost for generated ic 14 : (9, 14.000000) count=1.000000
;	../time.c: 186: seconds= (year-1970)*(60*60*24L*365);
;	genMinus
;	  genMinusDec - size=2  icount=1970
	lda	_mktime_year_10000_56
	sec
	sbc	#0xb2
	pha
	lda	(_mktime_year_10000_56 + 1)
	sbc	#0x07
	tax
	pla
;	Raw cost for generated ic 15 : (14, 23.000000) count=1.000000
;	genCast
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00161$
	dex
00161$:
	stx	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 3)
;	Raw cost for generated ic 16 : (19, 24.600000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x33
	stx	(__mullong_PARM_1 + 1)
	ldx	#0xe1
	stx	(__mullong_PARM_1 + 2)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 3)
;	Raw cost for generated ic 120 : (20, 24.000000) count=1.000000
;	../time.c: 189: for (i=1970; i<year; i++) {
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*_mktime_sloc0_1_0
	stx	*(_mktime_sloc0_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc0_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc0_1_0 + 3)
;	Raw cost for generated ic 122 : (15, 24.000000) count=1.000000
;	genAssign
;	genAssignLit
	ldx	#0xb2
	stx	*_mktime_sloc1_1_0
	ldx	#0x07
	stx	*(_mktime_sloc1_1_0 + 1)
;	Raw cost for generated ic 109 : (8, 10.000000) count=1.000000
;	genLabel
00110$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=3.999993
;	genCmp
	lda	*_mktime_sloc1_1_0
	sec
	sbc	_mktime_year_10000_56
	lda	*(_mktime_sloc1_1_0 + 1)
	sbc	(_mktime_year_10000_56 + 1)
	bvc	00163$
	bpl	00162$
	bmi	00124$
00163$:
	bpl	00124$
00162$:
;	Raw cost for generated ic 21 : (22, 29.400002) count=3.999993
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=3.999993
;	../time.c: 190: if (LEAP_YEAR(i)) {
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	__modsint_PARM_2
	stz	(__modsint_PARM_2 + 1)
;	Raw cost for generated ic 124 : (8, 10.000000) count=2.999995
;	Raw cost for generated ic 123 : (0, 0.000000) count=2.999995
;	genCall
;	genSend
	ldx	*(_mktime_sloc1_1_0 + 1)
	lda	*_mktime_sloc1_1_0
	jsr	__modsint
;	assignResultValue
;	Raw cost for generated ic 125 : (7, 12.000000) count=2.999995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 26 : (11, 12.200000) count=2.999995
;	../time.c: 191: seconds+= 60*60*24L;
;	genPlus
;	  genPlusInc
	lda	*_mktime_sloc0_1_0
	clc
	adc	#0x80
	sta	*_mktime_sloc0_1_0
	lda	*(_mktime_sloc0_1_0 + 1)
	adc	#0x51
	sta	*(_mktime_sloc0_1_0 + 1)
	lda	*(_mktime_sloc0_1_0 + 2)
	adc	#0x01
	sta	*(_mktime_sloc0_1_0 + 2)
	lda	*(_mktime_sloc0_1_0 + 3)
	adc	#0x00
	sta	*(_mktime_sloc0_1_0 + 3)
;	Raw cost for generated ic 29 : (25, 34.000000) count=2.249995
;	genLabel
00111$:
;	Raw cost for generated ic 32 : (0, 0.000000) count=2.999993
;	../time.c: 189: for (i=1970; i<year; i++) {
;	genPlus
;	  genPlusInc
	inc	*_mktime_sloc1_1_0
	bne	00110$
	inc	*(_mktime_sloc1_1_0 + 1)
;	Raw cost for generated ic 34 : (6, 12.600000) count=2.999993
;	genGoto
	jmp	00110$
;	Raw cost for generated ic 36 : (3, 3.000000) count=2.999993
;	genLabel
00124$:
;	Raw cost for generated ic 107 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_mktime_sloc0_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
	lda	*(_mktime_sloc0_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	*(_mktime_sloc0_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	*_mktime_sloc0_1_0
	sta	_mktime_seconds_10000_56
;	Raw cost for generated ic 108 : (20, 28.000000) count=0.999997
;	../time.c: 196: for (i=0; i<month; i++) {
;	genAssign
;	genAssignLit
	ldx	#0x04
	stx	__modsint_PARM_2
	stz	(__modsint_PARM_2 + 1)
;	Raw cost for generated ic 127 : (8, 10.000000) count=0.999997
;	Raw cost for generated ic 126 : (0, 0.000000) count=0.999997
;	genCall
;	genSend
	ldx	(_mktime_year_10000_56 + 1)
	lda	_mktime_year_10000_56
	jsr	__modsint
;	assignResultValue
	sta	*_mktime_sloc1_1_0
	stx	*(_mktime_sloc1_1_0 + 1)
;	Raw cost for generated ic 128 : (13, 20.000000) count=0.999997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 56 : (0, 0.000000) count=0.999997
;	genAssign
;	genAssignLit
	stz	*_mktime_sloc0_1_0
	stz	*(_mktime_sloc0_1_0 + 1)
;	Raw cost for generated ic 111 : (6, 8.000000) count=0.999997
;	genLabel
00113$:
;	Raw cost for generated ic 39 : (0, 0.000000) count=3.999964
;	genCmp
	lda	*_mktime_sloc0_1_0
	sec
	sbc	_mktime_month_10000_56
	lda	*(_mktime_sloc0_1_0 + 1)
	sbc	(_mktime_month_10000_56 + 1)
	bvc	00169$
	bpl	00168$
	bmi	00170$
00169$:
	bmi	00168$
00170$:
	jmp	00108$
00168$:
;	Raw cost for generated ic 40 : (22, 29.400002) count=3.999964
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=3.999964
;	../time.c: 197: if (i==1 && LEAP_YEAR(year)) { 
;	genCmpEQorNE
	lda	*_mktime_sloc0_1_0
	cmp	#0x01
	bne	00105$
	lda	*(_mktime_sloc0_1_0 + 1)
	bne	00105$
;	Raw cost for generated ic 44 : (16, 19.200001) count=2.999970
;	skipping generated iCode
;	Raw cost for generated ic 45 : (0, 0.000000) count=2.999970
;	genIfx
	lda	*(_mktime_sloc1_1_0 + 1)
	ora	*_mktime_sloc1_1_0
;	genIfxJump : z
	bne	00105$
;	Raw cost for generated ic 49 : (9, 11.600000) count=2.249978
;	../time.c: 198: seconds+= 60*60*24L*29;
;	genPlus
;	  genPlusInc
	lda	_mktime_seconds_10000_56
	clc
	adc	#0x80
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	#0x3b
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	#0x26
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	#0x00
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 52 : (33, 42.000000) count=1.687483
;	genGoto
	jmp	00114$
;	Raw cost for generated ic 54 : (3, 3.000000) count=1.687483
;	genLabel
00105$:
;	Raw cost for generated ic 55 : (0, 0.000000) count=1.312484
;	../time.c: 200: seconds+= 60*60*24L*monthDays[i];
;	genAssign
;	genCopy
	ldx	*(_mktime_sloc0_1_0 + 1)
	lda	*_mktime_sloc0_1_0
;	Raw cost for generated ic 57 : (4, 6.000000) count=1.312484
;	genPointerGet
;	  setupDPTR - off=0 remat=_monthDays savea=0
	clc
	adc	#<(_monthDays+0)
	sta	*(DPTR+0)
	txa
	adc	#>(_monthDays+0)
	sta	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 58 : (14, 21.000000) count=1.312484
;	genCast
	sta	__mullong_PARM_2
	sty	(__mullong_PARM_2 + 1)
	sty	(__mullong_PARM_2 + 2)
	sty	(__mullong_PARM_2 + 3)
;	Raw cost for generated ic 59 : (12, 16.000000) count=1.312484
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x51
	stx	(__mullong_PARM_1 + 1)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 2)
	sty	(__mullong_PARM_1 + 3)
;	Raw cost for generated ic 129 : (18, 22.000000) count=1.312484
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
;	Raw cost for generated ic 131 : (15, 24.000000) count=1.312484
;	genPlus
	lda	_mktime_seconds_10000_56
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 61 : (33, 46.000000) count=1.312484
;	genLabel
00114$:
;	Raw cost for generated ic 64 : (0, 0.000000) count=2.999967
;	../time.c: 196: for (i=0; i<month; i++) {
;	genPlus
;	  genPlusInc
	inc	*_mktime_sloc0_1_0
	bne	00176$
	inc	*(_mktime_sloc0_1_0 + 1)
00176$:
;	Raw cost for generated ic 66 : (6, 12.600000) count=2.999967
;	genGoto
	jmp	00113$
;	Raw cost for generated ic 68 : (3, 3.000000) count=2.999967
;	genLabel
00108$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.999990
;	../time.c: 204: seconds+= (timeptr->tm_mday-1)*60*60*24L;
;	genAssign
;	genCopy
	ldx	(_mktime_timeptr_10000_55 + 1)
	lda	_mktime_timeptr_10000_55
;	Raw cost for generated ic 71 : (6, 8.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=3 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x03
	lda	[DPTR],y
;	Raw cost for generated ic 72 : (8, 13.000000) count=0.999990
;	genCast
;	genCopy
	ldx	#0x00
;	Raw cost for generated ic 73 : (2, 2.000000) count=0.999990
;	genMinus
;	  genMinusDec - size=2  icount=1
	sec
	sbc	#0x01
	bcs	00177$
	dex
00177$:
;	Raw cost for generated ic 74 : (6, 8.600000) count=0.999990
;	genCast
	sta	__mullong_PARM_2
	stx	(__mullong_PARM_2 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00178$
	dex
00178$:
	stx	(__mullong_PARM_2 + 2)
	stx	(__mullong_PARM_2 + 3)
;	Raw cost for generated ic 75 : (19, 24.600000) count=0.999990
;	genAssign
;	genAssignLit
	ldx	#0x80
	stx	__mullong_PARM_1
	ldx	#0x51
	stx	(__mullong_PARM_1 + 1)
	ldx	#0x01
	stx	(__mullong_PARM_1 + 2)
	stz	(__mullong_PARM_1 + 3)
;	Raw cost for generated ic 132 : (18, 22.000000) count=0.999990
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
;	Raw cost for generated ic 134 : (15, 24.000000) count=0.999990
;	genPlus
	lda	_mktime_seconds_10000_56
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 77 : (33, 46.000000) count=0.999990
;	../time.c: 205: seconds+= timeptr->tm_hour*60*60L;
;	genAssign
;	genCopy
	ldx	(_mktime_timeptr_10000_55 + 1)
	lda	_mktime_timeptr_10000_55
;	Raw cost for generated ic 80 : (6, 8.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=2 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x02
	lda	[DPTR],y
;	Raw cost for generated ic 81 : (8, 13.000000) count=0.999990
;	genCast
	sta	__mullong_PARM_2
	stz	(__mullong_PARM_2 + 1)
	stz	(__mullong_PARM_2 + 2)
	stz	(__mullong_PARM_2 + 3)
;	Raw cost for generated ic 82 : (12, 16.000000) count=0.999990
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	__mullong_PARM_1
	ldx	#0x0e
	stx	(__mullong_PARM_1 + 1)
	stz	(__mullong_PARM_1 + 2)
	stz	(__mullong_PARM_1 + 3)
;	Raw cost for generated ic 135 : (16, 20.000000) count=0.999990
;	genCall
	jsr	__mullong
;	assignResultValue
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_mktime_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_mktime_sloc2_1_0 + 3)
;	Raw cost for generated ic 137 : (15, 24.000000) count=0.999990
;	genPlus
	lda	_mktime_seconds_10000_56
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 84 : (33, 46.000000) count=0.999990
;	../time.c: 206: seconds+= timeptr->tm_min*60;
;	genAssign
;	genCopy
	ldx	(_mktime_timeptr_10000_55 + 1)
	lda	_mktime_timeptr_10000_55
;	Raw cost for generated ic 87 : (6, 8.000000) count=0.999990
;	genPointerGet
;	  setupDPTR - off=1 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	ldy	#0x01
	lda	[DPTR],y
;	Raw cost for generated ic 88 : (8, 13.000000) count=0.999990
;	genCast
	sta	__mulint_PARM_2
	stz	(__mulint_PARM_2 + 1)
;	Raw cost for generated ic 89 : (6, 8.000000) count=0.999990
;	Raw cost for generated ic 138 : (0, 0.000000) count=0.999990
;	genCall
;	genSend
	ldx	#0x00
	lda	#0x3c
	jsr	__mulint
;	assignResultValue
;	Raw cost for generated ic 140 : (7, 10.000000) count=0.999990
;	genCast
	sta	*_mktime_sloc2_1_0
	stx	*(_mktime_sloc2_1_0 + 1)
	cpx	#0x80
	ldx	#0x00
	bcc	00179$
	dex
00179$:
	stx	*(_mktime_sloc2_1_0 + 2)
	stx	*(_mktime_sloc2_1_0 + 3)
;	Raw cost for generated ic 91 : (15, 20.600000) count=0.999990
;	genPlus
	lda	_mktime_seconds_10000_56
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 92 : (33, 46.000000) count=0.999990
;	../time.c: 207: seconds+= timeptr->tm_sec;
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_mktime_timeptr_10000_55
	stx	*(DPTR+0)
	ldx	(_mktime_timeptr_10000_55 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 96 : (14, 21.000000) count=0.999990
;	genCast
;	genCopy
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.999990
;	genCast
	sta	*_mktime_sloc2_1_0
	sty	*(_mktime_sloc2_1_0 + 1)
	sty	*(_mktime_sloc2_1_0 + 2)
	sty	*(_mktime_sloc2_1_0 + 3)
;	Raw cost for generated ic 98 : (8, 12.000000) count=0.999990
;	genPlus
	lda	_mktime_seconds_10000_56
	clc
	adc	*_mktime_sloc2_1_0
	sta	_mktime_seconds_10000_56
	lda	(_mktime_seconds_10000_56 + 1)
	adc	*(_mktime_sloc2_1_0 + 1)
	sta	(_mktime_seconds_10000_56 + 1)
	lda	(_mktime_seconds_10000_56 + 2)
	adc	*(_mktime_sloc2_1_0 + 2)
	sta	(_mktime_seconds_10000_56 + 2)
	lda	(_mktime_seconds_10000_56 + 3)
	adc	*(_mktime_sloc2_1_0 + 3)
	sta	(_mktime_seconds_10000_56 + 3)
;	Raw cost for generated ic 99 : (33, 46.000000) count=0.999990
;	../time.c: 208: return seconds;
;	genRet
	sta	*___SDCC_m6502_ret3
	lda	(_mktime_seconds_10000_56 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	(_mktime_seconds_10000_56 + 1)
	lda	_mktime_seconds_10000_56
;	Raw cost for generated ic 101 : (13, 18.000000) count=0.999990
;	genLabel
;	Raw cost for generated ic 102 : (0, 0.000000) count=0.999990
;	../time.c: 209: }
;	genEndFunction
	rts
;	Raw cost for generated ic 103 : (1, 6.000000) count=0.999990
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
