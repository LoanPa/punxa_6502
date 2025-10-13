;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module strtoul
	
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
	.globl _strncmp
	.globl _strtoul_PARM_3
	.globl _strtoul_PARM_2
	.globl _strtoul
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_strtoul_sloc0_1_0:
	.ds 1
_strtoul_sloc1_1_0:
	.ds 2
_strtoul_sloc2_1_0:
	.ds 8
_strtoul_sloc3_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__isdigit_base_10000_141:
	.ds 1
_strtoul_PARM_2:
	.ds 2
_strtoul_PARM_3:
	.ds 2
_strtoul_nptr_10000_147:
	.ds 2
_strtoul_ptr_10000_148:
	.ds 2
_strtoul_ret_10000_148:
	.ds 4
_strtoul_range_error_10000_148:
	.ds 1
_strtoul_neg_10000_148:
	.ds 1
_strtoul_b_10000_148:
	.ds 1
_strtoul_digit_30000_165:
	.ds 1
_strtoul_result_60000_199:
	.ds 8
_strtoul_result_60000_247:
	.ds 8
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
;Allocation info for local variables in function '_isdigit'
;------------------------------------------------------------
;base          Allocated with name '__isdigit_base_10000_141'
;c             Allocated to registers a 
;v             Allocated to registers a 
;------------------------------------------------------------
;	../strtoul.c: 40: static signed char _isdigit(const char c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
;	Raw cost for generated ic 2 : (0, 0.000000) count=1.000000
;	genReceive
	stx	__isdigit_base_10000_141
;	Raw cost for generated ic 3 : (3, 4.000000) count=1.000000
;	../strtoul.c: 44: if (c >= '0' && c <= '9')
;	genCmp
	cmp	#0x30
	bcc	00110$
;	Raw cost for generated ic 4 : (7, 7.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 5 : (0, 0.000000) count=1.000000
;	genCmp
	cmp	#0x39
	beq	00160$
	bcs	00110$
00160$:
;	Raw cost for generated ic 8 : (9, 10.200000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 9 : (0, 0.000000) count=0.750000
;	../strtoul.c: 45: v = c - '0';
;	genCast
;	genCopy
;	Raw cost for generated ic 12 : (0, 0.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 13 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 15 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	../strtoul.c: 46: else if (c >= 'a' && c <='z')
;	genCmp
	cmp	#0x61
	bcc	00106$
;	Raw cost for generated ic 17 : (7, 7.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 18 : (0, 0.000000) count=0.437500
;	genCmp
	cmp	#0x7a
	beq	00163$
	bcs	00106$
00163$:
;	Raw cost for generated ic 21 : (9, 10.200000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 22 : (0, 0.000000) count=0.328125
;	../strtoul.c: 47: v = c - 'a' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 25 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 26 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 28 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 29 : (0, 0.000000) count=0.191406
;	../strtoul.c: 48: else if (c >= 'A' && c <='Z')
;	genCmp
	cmp	#0x41
	bcc	00102$
;	Raw cost for generated ic 30 : (7, 7.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 31 : (0, 0.000000) count=0.191406
;	genCmp
	cmp	#0x5a
	beq	00166$
	bcs	00102$
00166$:
;	Raw cost for generated ic 34 : (9, 10.200000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 35 : (0, 0.000000) count=0.143555
;	../strtoul.c: 49: v = c - 'A' + 10;
;	genCast
;	genCopy
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.107666
;	genPlus
;	  genPlusInc
	clc
	adc	#0xc9
;	Raw cost for generated ic 39 : (3, 4.000000) count=0.107666
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 41 : (3, 3.000000) count=0.107666
;	genLabel
00102$:
;	Raw cost for generated ic 42 : (0, 0.000000) count=0.083740
;	../strtoul.c: 51: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../strtoul.c: 53: if (v >= base)
;	genCmp
	cmp	__isdigit_base_10000_141
	bcc	00114$
;	Raw cost for generated ic 47 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../strtoul.c: 54: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../strtoul.c: 56: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../strtoul.c: 57: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'strtoul'
;------------------------------------------------------------
;sloc0         Allocated with name '_strtoul_sloc0_1_0'
;sloc1         Allocated with name '_strtoul_sloc1_1_0'
;sloc2         Allocated with name '_strtoul_sloc2_1_0'
;sloc3         Allocated with name '_strtoul_sloc3_1_0'
;endptr        Allocated with name '_strtoul_PARM_2'
;base          Allocated with name '_strtoul_PARM_3'
;nptr          Allocated with name '_strtoul_nptr_10000_147'
;__200000004   Allocated to registers 
;ptr           Allocated with name '_strtoul_ptr_10000_148'
;ret           Allocated with name '_strtoul_ret_10000_148'
;range_error   Allocated with name '_strtoul_range_error_10000_148'
;neg           Allocated with name '_strtoul_neg_10000_148'
;b             Allocated with name '_strtoul_b_10000_148'
;__200000005   Allocated to registers 
;c             Allocated to registers 
;__400000127   Allocated to registers a 
;__400000122   Allocated with name '_strtoul___400000122_40000_165'
;__400000117   Allocated with name '_strtoul___400000117_40000_165'
;__400000112   Allocated with name '_strtoul___400000112_40000_165'
;__400000107   Allocated with name '_strtoul___400000107_40000_165'
;__400000102   Allocated with name '_strtoul___400000102_40000_165'
;__400000097   Allocated with name '_strtoul___400000097_40000_165'
;__400000092   Allocated with name '_strtoul___400000092_40000_165'
;__400000087   Allocated with name '_strtoul___400000087_40000_165'
;__400000082   Allocated with name '_strtoul___400000082_40000_165'
;__400000077   Allocated with name '_strtoul___400000077_40000_165'
;__400000072   Allocated with name '_strtoul___400000072_40000_165'
;__400000067   Allocated with name '_strtoul___400000067_40000_165'
;__400000062   Allocated with name '_strtoul___400000062_40000_165'
;__400000057   Allocated with name '_strtoul___400000057_40000_165'
;__400000052   Allocated with name '_strtoul___400000052_40000_165'
;__400000047   Allocated to registers a 
;__400000042   Allocated with name '_strtoul___400000042_40000_165'
;__400000037   Allocated with name '_strtoul___400000037_40000_165'
;__400000032   Allocated with name '_strtoul___400000032_40000_165'
;__400000027   Allocated with name '_strtoul___400000027_40000_165'
;__400000022   Allocated with name '_strtoul___400000022_40000_165'
;__400000017   Allocated with name '_strtoul___400000017_40000_165'
;__400000012   Allocated with name '_strtoul___400000012_40000_165'
;__400000007   Allocated with name '_strtoul___400000007_40000_165'
;digit         Allocated with name '_strtoul_digit_30000_165'
;__400000008   Allocated with name '_strtoul___400000008_40000_173'
;__400000009   Allocated with name '_strtoul___400000009_40000_173'
;__400000010   Allocated with name '_strtoul___400000010_40000_173'
;r             Allocated with name '_strtoul_r_50000_174'
;a             Allocated with name '_strtoul_a_50000_174'
;b             Allocated with name '_strtoul_b_50000_174'
;result        Allocated with name '_strtoul_result_60000_175'
;__400000013   Allocated with name '_strtoul___400000013_40000_176'
;__400000014   Allocated with name '_strtoul___400000014_40000_176'
;__400000015   Allocated with name '_strtoul___400000015_40000_176'
;r             Allocated with name '_strtoul_r_50000_177'
;a             Allocated with name '_strtoul_a_50000_177'
;b             Allocated with name '_strtoul_b_50000_177'
;result        Allocated with name '_strtoul_result_60000_178'
;__400000018   Allocated with name '_strtoul___400000018_40000_179'
;__400000019   Allocated with name '_strtoul___400000019_40000_179'
;__400000020   Allocated with name '_strtoul___400000020_40000_179'
;r             Allocated with name '_strtoul_r_50000_180'
;a             Allocated with name '_strtoul_a_50000_180'
;b             Allocated with name '_strtoul_b_50000_180'
;result        Allocated with name '_strtoul_result_60000_181'
;__400000023   Allocated with name '_strtoul___400000023_40000_182'
;__400000024   Allocated with name '_strtoul___400000024_40000_182'
;__400000025   Allocated with name '_strtoul___400000025_40000_182'
;r             Allocated with name '_strtoul_r_50000_183'
;a             Allocated with name '_strtoul_a_50000_183'
;b             Allocated with name '_strtoul_b_50000_183'
;result        Allocated with name '_strtoul_result_60000_184'
;__400000028   Allocated with name '_strtoul___400000028_40000_185'
;__400000029   Allocated with name '_strtoul___400000029_40000_185'
;__400000030   Allocated with name '_strtoul___400000030_40000_185'
;r             Allocated with name '_strtoul_r_50000_186'
;a             Allocated with name '_strtoul_a_50000_186'
;b             Allocated with name '_strtoul_b_50000_186'
;result        Allocated with name '_strtoul_result_60000_187'
;__400000033   Allocated with name '_strtoul___400000033_40000_188'
;__400000034   Allocated with name '_strtoul___400000034_40000_188'
;__400000035   Allocated with name '_strtoul___400000035_40000_188'
;r             Allocated with name '_strtoul_r_50000_189'
;a             Allocated with name '_strtoul_a_50000_189'
;b             Allocated with name '_strtoul_b_50000_189'
;result        Allocated with name '_strtoul_result_60000_190'
;__400000038   Allocated with name '_strtoul___400000038_40000_191'
;__400000039   Allocated with name '_strtoul___400000039_40000_191'
;__400000040   Allocated with name '_strtoul___400000040_40000_191'
;r             Allocated with name '_strtoul_r_50000_192'
;a             Allocated with name '_strtoul_a_50000_192'
;b             Allocated with name '_strtoul_b_50000_192'
;result        Allocated with name '_strtoul_result_60000_193'
;__400000043   Allocated with name '_strtoul___400000043_40000_194'
;__400000044   Allocated with name '_strtoul___400000044_40000_194'
;__400000045   Allocated with name '_strtoul___400000045_40000_194'
;r             Allocated with name '_strtoul_r_50000_195'
;a             Allocated with name '_strtoul_a_50000_195'
;b             Allocated with name '_strtoul_b_50000_195'
;result        Allocated with name '_strtoul_result_60000_196'
;__400000048   Allocated to registers 
;__400000049   Allocated with name '_strtoul___400000049_40000_197'
;__400000050   Allocated with name '_strtoul___400000050_40000_197'
;r             Allocated to registers 
;a             Allocated with name '_strtoul_a_50000_198'
;b             Allocated with name '_strtoul_b_50000_198'
;result        Allocated with name '_strtoul_result_60000_199'
;__400000053   Allocated with name '_strtoul___400000053_40000_200'
;__400000054   Allocated with name '_strtoul___400000054_40000_200'
;__400000055   Allocated with name '_strtoul___400000055_40000_200'
;r             Allocated with name '_strtoul_r_50000_201'
;a             Allocated with name '_strtoul_a_50000_201'
;b             Allocated with name '_strtoul_b_50000_201'
;result        Allocated with name '_strtoul_result_60000_202'
;__400000058   Allocated with name '_strtoul___400000058_40000_203'
;__400000059   Allocated with name '_strtoul___400000059_40000_203'
;__400000060   Allocated with name '_strtoul___400000060_40000_203'
;r             Allocated with name '_strtoul_r_50000_204'
;a             Allocated with name '_strtoul_a_50000_204'
;b             Allocated with name '_strtoul_b_50000_204'
;result        Allocated with name '_strtoul_result_60000_205'
;__400000063   Allocated with name '_strtoul___400000063_40000_206'
;__400000064   Allocated with name '_strtoul___400000064_40000_206'
;__400000065   Allocated with name '_strtoul___400000065_40000_206'
;r             Allocated with name '_strtoul_r_50000_207'
;a             Allocated with name '_strtoul_a_50000_207'
;b             Allocated with name '_strtoul_b_50000_207'
;result        Allocated with name '_strtoul_result_60000_208'
;__400000068   Allocated with name '_strtoul___400000068_40000_209'
;__400000069   Allocated with name '_strtoul___400000069_40000_209'
;__400000070   Allocated with name '_strtoul___400000070_40000_209'
;r             Allocated with name '_strtoul_r_50000_210'
;a             Allocated with name '_strtoul_a_50000_210'
;b             Allocated with name '_strtoul_b_50000_210'
;result        Allocated with name '_strtoul_result_60000_211'
;__400000073   Allocated with name '_strtoul___400000073_40000_212'
;__400000074   Allocated with name '_strtoul___400000074_40000_212'
;__400000075   Allocated with name '_strtoul___400000075_40000_212'
;r             Allocated with name '_strtoul_r_50000_213'
;a             Allocated with name '_strtoul_a_50000_213'
;b             Allocated with name '_strtoul_b_50000_213'
;result        Allocated with name '_strtoul_result_60000_214'
;__400000078   Allocated with name '_strtoul___400000078_40000_215'
;__400000079   Allocated with name '_strtoul___400000079_40000_215'
;__400000080   Allocated with name '_strtoul___400000080_40000_215'
;r             Allocated with name '_strtoul_r_50000_216'
;a             Allocated with name '_strtoul_a_50000_216'
;b             Allocated with name '_strtoul_b_50000_216'
;result        Allocated with name '_strtoul_result_60000_217'
;__400000083   Allocated with name '_strtoul___400000083_40000_218'
;__400000084   Allocated with name '_strtoul___400000084_40000_218'
;__400000085   Allocated with name '_strtoul___400000085_40000_218'
;r             Allocated with name '_strtoul_r_50000_219'
;a             Allocated with name '_strtoul_a_50000_219'
;b             Allocated with name '_strtoul_b_50000_219'
;result        Allocated with name '_strtoul_result_60000_220'
;__400000088   Allocated with name '_strtoul___400000088_40000_221'
;__400000089   Allocated with name '_strtoul___400000089_40000_221'
;__400000090   Allocated with name '_strtoul___400000090_40000_221'
;r             Allocated with name '_strtoul_r_50000_222'
;a             Allocated with name '_strtoul_a_50000_222'
;b             Allocated with name '_strtoul_b_50000_222'
;result        Allocated with name '_strtoul_result_60000_223'
;__400000093   Allocated with name '_strtoul___400000093_40000_224'
;__400000094   Allocated with name '_strtoul___400000094_40000_224'
;__400000095   Allocated with name '_strtoul___400000095_40000_224'
;r             Allocated with name '_strtoul_r_50000_225'
;a             Allocated with name '_strtoul_a_50000_225'
;b             Allocated with name '_strtoul_b_50000_225'
;result        Allocated with name '_strtoul_result_60000_226'
;__400000098   Allocated with name '_strtoul___400000098_40000_227'
;__400000099   Allocated with name '_strtoul___400000099_40000_227'
;__400000100   Allocated with name '_strtoul___400000100_40000_227'
;r             Allocated with name '_strtoul_r_50000_228'
;a             Allocated with name '_strtoul_a_50000_228'
;b             Allocated with name '_strtoul_b_50000_228'
;result        Allocated with name '_strtoul_result_60000_229'
;__400000103   Allocated with name '_strtoul___400000103_40000_230'
;__400000104   Allocated with name '_strtoul___400000104_40000_230'
;__400000105   Allocated with name '_strtoul___400000105_40000_230'
;r             Allocated with name '_strtoul_r_50000_231'
;a             Allocated with name '_strtoul_a_50000_231'
;b             Allocated with name '_strtoul_b_50000_231'
;result        Allocated with name '_strtoul_result_60000_232'
;__400000108   Allocated with name '_strtoul___400000108_40000_233'
;__400000109   Allocated with name '_strtoul___400000109_40000_233'
;__400000110   Allocated with name '_strtoul___400000110_40000_233'
;r             Allocated with name '_strtoul_r_50000_234'
;a             Allocated with name '_strtoul_a_50000_234'
;b             Allocated with name '_strtoul_b_50000_234'
;result        Allocated with name '_strtoul_result_60000_235'
;__400000113   Allocated with name '_strtoul___400000113_40000_236'
;__400000114   Allocated with name '_strtoul___400000114_40000_236'
;__400000115   Allocated with name '_strtoul___400000115_40000_236'
;r             Allocated with name '_strtoul_r_50000_237'
;a             Allocated with name '_strtoul_a_50000_237'
;b             Allocated with name '_strtoul_b_50000_237'
;result        Allocated with name '_strtoul_result_60000_238'
;__400000118   Allocated with name '_strtoul___400000118_40000_239'
;__400000119   Allocated with name '_strtoul___400000119_40000_239'
;__400000120   Allocated with name '_strtoul___400000120_40000_239'
;r             Allocated with name '_strtoul_r_50000_240'
;a             Allocated with name '_strtoul_a_50000_240'
;b             Allocated with name '_strtoul_b_50000_240'
;result        Allocated with name '_strtoul_result_60000_241'
;__400000123   Allocated with name '_strtoul___400000123_40000_242'
;__400000124   Allocated with name '_strtoul___400000124_40000_242'
;__400000125   Allocated with name '_strtoul___400000125_40000_242'
;r             Allocated with name '_strtoul_r_50000_243'
;a             Allocated with name '_strtoul_a_50000_243'
;b             Allocated with name '_strtoul_b_50000_243'
;result        Allocated with name '_strtoul_result_60000_244'
;__400000128   Allocated to registers 
;__400000129   Allocated with name '_strtoul___400000129_40000_245'
;__400000130   Allocated with name '_strtoul___400000130_40000_245'
;r             Allocated to registers 
;a             Allocated with name '_strtoul_a_50000_246'
;b             Allocated with name '_strtoul_b_50000_246'
;result        Allocated with name '_strtoul_result_60000_247'
;------------------------------------------------------------
;	../strtoul.c: 61: unsigned long int strtoul(const char *nptr, char **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function strtoul
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_strtoul:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_strtoul_nptr_10000_147
	stx	(_strtoul_nptr_10000_147 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../strtoul.c: 65: bool range_error = false;
;	genAssign
;	genAssignLit
	stz	*_strtoul_sloc0_1_0
;	Raw cost for generated ic 4 : (3, 4.000000) count=1.000000
;	../strtoul.c: 66: bool neg = false;
;	genAssign
;	genAssignLit
	stz	_strtoul_neg_10000_148
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	../strtoul.c: 67: unsigned char b = base;
;	genCast
;	genCopy
	lda	_strtoul_PARM_3
	sta	_strtoul_b_10000_148
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	../strtoul.c: 69: while (isblank (*ptr))
;	genAssign
;	genCopy
	txa
	sta	*(_strtoul_sloc1_1_0 + 1)
	lda	_strtoul_nptr_10000_147
	sta	*_strtoul_sloc1_1_0
;	Raw cost for generated ic 284 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoul_sloc1_1_0],y
;	Raw cost for generated ic 10 : (4, 7.000000) count=5.333324
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
;	genCast
;	genCopy
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x20
	beq	00172$
;	Raw cost for generated ic 15 : (7, 7.600000) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	cmp	#0x09
	bne	00197$
;	Raw cost for generated ic 18 : (7, 7.600000) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 19 : (0, 0.000000) count=3.999992
;	genLabel
00172$:
;	Raw cost for generated ic 23 : (0, 0.000000) count=4.333324
;	../strtoul.c: 70: ptr++;
;	genPlus
;	  genPlusInc
	inc	*_strtoul_sloc1_1_0
	bne	00101$
	inc	*(_strtoul_sloc1_1_0 + 1)
;	Raw cost for generated ic 34 : (6, 12.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 36 : (3, 3.000000) count=4.333324
;	genLabel
00197$:
;	Raw cost for generated ic 285 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_strtoul_sloc1_1_0 + 1)
	sta	(_strtoul_ptr_10000_148 + 1)
	lda	*_strtoul_sloc1_1_0
	sta	_strtoul_ptr_10000_148
;	Raw cost for generated ic 286 : (10, 14.000000) count=0.999997
;	../strtoul.c: 73: switch(*ptr)
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoul_sloc1_1_0],y
;	Raw cost for generated ic 39 : (4, 7.000000) count=0.999997
;	genCmpEQorNE
	cmp	#0x2b
	beq	00105$
;	Raw cost for generated ic 40 : (7, 7.600000) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 41 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	cmp	#0x2d
	bne	00106$
;	Raw cost for generated ic 42 : (7, 7.600000) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 43 : (0, 0.000000) count=0.749996
;	../strtoul.c: 76: neg = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_strtoul_neg_10000_148
;	Raw cost for generated ic 46 : (5, 6.000000) count=0.562496
;	../strtoul.c: 77: case '+':
;	genLabel
00105$:
;	Raw cost for generated ic 47 : (0, 0.000000) count=0.812494
;	../strtoul.c: 78: ptr++;
;	genPlus
;	  genPlusInc
	inc	_strtoul_ptr_10000_148
	bne	00319$
	inc	(_strtoul_ptr_10000_148 + 1)
00319$:
;	Raw cost for generated ic 49 : (8, 14.600000) count=0.812494
;	../strtoul.c: 79: }
;	genLabel
00106$:
;	Raw cost for generated ic 51 : (0, 0.000000) count=0.999993
;	../strtoul.c: 82: if (!b)
;	genIfx
	lda	_strtoul_b_10000_148
;	genIfxJump : z
	beq	00321$
	jmp	00128$
00321$:
;	Raw cost for generated ic 52 : (8, 9.600000) count=0.999993
;	../strtoul.c: 84: if (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 55 : (0, 0.000000) count=0.749995
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 56 : (10, 12.000000) count=0.749995
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 59 : (8, 10.000000) count=0.749995
;	Raw cost for generated ic 57 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 60 : (9, 14.000000) count=0.749995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00323$
	cpx	#0x00
	beq	00114$
00323$:
;	Raw cost for generated ic 61 : (11, 12.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 64 : (0, 0.000000) count=0.562496
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 65 : (10, 12.000000) count=0.562496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 68 : (8, 10.000000) count=0.562496
;	Raw cost for generated ic 66 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 69 : (9, 14.000000) count=0.562496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00115$
	cpx	#0x00
	bne	00115$
;	Raw cost for generated ic 70 : (11, 12.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 72 : (0, 0.000000) count=0.609371
;	../strtoul.c: 86: b = 16;
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_strtoul_b_10000_148
;	Raw cost for generated ic 73 : (5, 6.000000) count=0.609371
;	../strtoul.c: 87: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoul_ptr_10000_148
	clc
	adc	#0x02
	sta	_strtoul_ptr_10000_148
	bcc	00326$
	inc	(_strtoul_ptr_10000_148 + 1)
00326$:
;	Raw cost for generated ic 74 : (14, 20.600000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 76 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	../strtoul.c: 89: else if (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 78 : (0, 0.000000) count=0.140623
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 79 : (10, 12.000000) count=0.140623
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 82 : (8, 10.000000) count=0.140623
;	Raw cost for generated ic 80 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 83 : (9, 14.000000) count=0.140623
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00328$
	cpx	#0x00
	beq	00110$
00328$:
;	Raw cost for generated ic 84 : (11, 12.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 87 : (0, 0.000000) count=0.105467
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 88 : (10, 12.000000) count=0.105467
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 91 : (8, 10.000000) count=0.105467
;	Raw cost for generated ic 89 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 92 : (9, 14.000000) count=0.105467
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 93 : (11, 12.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 95 : (0, 0.000000) count=0.114256
;	../strtoul.c: 91: b = 2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strtoul_b_10000_148
;	Raw cost for generated ic 96 : (5, 6.000000) count=0.114256
;	../strtoul.c: 92: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoul_ptr_10000_148
	clc
	adc	#0x02
	sta	_strtoul_ptr_10000_148
	bcc	00331$
	inc	(_strtoul_ptr_10000_148 + 1)
00331$:
;	Raw cost for generated ic 97 : (14, 20.600000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 99 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 100 : (0, 0.000000) count=0.020970
;	../strtoul.c: 94: else if (*ptr == '0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtoul_ptr_10000_148
	stx	*(DPTR+0)
	ldx	(_strtoul_ptr_10000_148 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 102 : (14, 21.000000) count=0.020970
;	genCmpEQorNE
	cmp	#0x30
	bne	00108$
;	Raw cost for generated ic 103 : (7, 7.600000) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 104 : (0, 0.000000) count=0.020970
;	../strtoul.c: 96: b = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	_strtoul_b_10000_148
;	Raw cost for generated ic 107 : (5, 6.000000) count=0.015727
;	../strtoul.c: 97: ptr++;
;	genPlus
;	  genPlusInc
	inc	_strtoul_ptr_10000_148
	bne	00333$
	inc	(_strtoul_ptr_10000_148 + 1)
00333$:
;	Raw cost for generated ic 109 : (8, 14.600000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 111 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 112 : (0, 0.000000) count=0.000000
;	../strtoul.c: 100: b = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_strtoul_b_10000_148
;	Raw cost for generated ic 113 : (5, 6.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 117 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 118 : (0, 0.000000) count=0.249997
;	../strtoul.c: 103: else if (b == 16 && (!strncmp (ptr, "0x", 2) || !strncmp (ptr, "0X", 2)))
;	genCmpEQorNE
	lda	_strtoul_b_10000_148
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 119 : (10, 11.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 123 : (0, 0.000000) count=0.187496
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 124 : (10, 12.000000) count=0.187496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 127 : (8, 10.000000) count=0.187496
;	Raw cost for generated ic 125 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 128 : (9, 14.000000) count=0.187496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00336$
	cpx	#0x00
	beq	00122$
00336$:
;	Raw cost for generated ic 129 : (11, 12.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 132 : (0, 0.000000) count=0.140622
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 133 : (10, 12.000000) count=0.140622
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 136 : (8, 10.000000) count=0.140622
;	Raw cost for generated ic 134 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 137 : (9, 14.000000) count=0.140622
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	cpx	#0x00
	bne	00123$
;	Raw cost for generated ic 138 : (11, 12.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 140 : (0, 0.000000) count=0.152341
;	../strtoul.c: 104: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoul_ptr_10000_148
	clc
	adc	#0x02
	sta	_strtoul_ptr_10000_148
	bcc	00129$
	inc	(_strtoul_ptr_10000_148 + 1)
;	Raw cost for generated ic 141 : (14, 20.600000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 143 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 144 : (0, 0.000000) count=0.097654
;	../strtoul.c: 105: else if (b == 2 && (!strncmp (ptr, "0b", 2) || !strncmp (ptr, "0B", 2)))
;	genCmpEQorNE
	lda	_strtoul_b_10000_148
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 145 : (10, 11.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 149 : (0, 0.000000) count=0.073241
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 150 : (10, 12.000000) count=0.073241
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 153 : (8, 10.000000) count=0.073241
;	Raw cost for generated ic 151 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 154 : (9, 14.000000) count=0.073241
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00342$
	cpx	#0x00
	beq	00118$
00342$:
;	Raw cost for generated ic 155 : (11, 12.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 158 : (0, 0.000000) count=0.054931
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_strncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_strncmp_PARM_2
;	Raw cost for generated ic 159 : (10, 12.000000) count=0.054931
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_strncmp_PARM_3
	stz	(_strncmp_PARM_3 + 1)
;	Raw cost for generated ic 162 : (8, 10.000000) count=0.054931
;	Raw cost for generated ic 160 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	ldx	(_strtoul_ptr_10000_148 + 1)
	lda	_strtoul_ptr_10000_148
	jsr	_strncmp
;	assignResultValue
;	Raw cost for generated ic 163 : (9, 14.000000) count=0.054931
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00129$
	cpx	#0x00
	bne	00129$
;	Raw cost for generated ic 164 : (11, 12.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 166 : (0, 0.000000) count=0.059508
;	../strtoul.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_strtoul_ptr_10000_148
	clc
	adc	#0x02
	sta	_strtoul_ptr_10000_148
	bcc	00345$
	inc	(_strtoul_ptr_10000_148 + 1)
00345$:
;	Raw cost for generated ic 167 : (14, 20.600000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 171 : (0, 0.000000) count=0.989349
;	../strtoul.c: 109: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_strtoul_ptr_10000_148
	stx	*(DPTR+0)
	ldx	(_strtoul_ptr_10000_148 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
;	Raw cost for generated ic 173 : (14, 21.000000) count=0.989349
;	Raw cost for generated ic 174 : (0, 0.000000) count=0.989349
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	genCall
;	genSend
	ldx	_strtoul_b_10000_148
	jsr	__isdigit
;	assignResultValue
	sta	*_strtoul_sloc1_1_0
;	Raw cost for generated ic 176 : (8, 13.000000) count=0.989349
;	genCmp
	bit	*_strtoul_sloc1_1_0
	bpl	00133$
;	Raw cost for generated ic 177 : (7, 8.600000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 178 : (0, 0.000000) count=0.989349
;	../strtoul.c: 111: if (endptr)
;	genIfx
	lda	(_strtoul_PARM_2 + 1)
	ora	_strtoul_PARM_2
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 181 : (11, 13.600000) count=0.742012
;	../strtoul.c: 112: *endptr = (char*)nptr;
;	genAssign
;	genCopy
	ldx	(_strtoul_PARM_2 + 1)
	lda	_strtoul_PARM_2
;	Raw cost for generated ic 184 : (6, 8.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_strtoul_nptr_10000_147
	ldy	#0x00
	sta	[DPTR],y
	lda	(_strtoul_nptr_10000_147 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 185 : (17, 30.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 186 : (0, 0.000000) count=0.742012
;	../strtoul.c: 113: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 187 : (10, 13.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 188 : (0, 0.000000) count=0.989349
;	../strtoul.c: 116: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	stz	_strtoul_ret_10000_148
	stz	(_strtoul_ret_10000_148 + 1)
	stz	(_strtoul_ret_10000_148 + 2)
	stz	(_strtoul_ret_10000_148 + 3)
;	Raw cost for generated ic 189 : (12, 16.000000) count=0.989349
;	genAssign
;	genCopy
	lda	(_strtoul_ptr_10000_148 + 1)
	sta	*(_strtoul_sloc1_1_0 + 1)
	lda	_strtoul_ptr_10000_148
	sta	*_strtoul_sloc1_1_0
;	Raw cost for generated ic 287 : (10, 14.000000) count=0.989349
;	genLabel
00167$:
;	Raw cost for generated ic 190 : (0, 0.000000) count=3.958003
;	../strtoul.c: 118: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
	ldy	#0x00
	lda	[*_strtoul_sloc1_1_0],y
;	Raw cost for generated ic 192 : (4, 7.000000) count=3.958003
;	Raw cost for generated ic 193 : (0, 0.000000) count=3.958003
;	Raw cost for generated ic 194 : (0, 0.000000) count=3.958003
;	genCall
;	genSend
	ldx	_strtoul_b_10000_148
	jsr	__isdigit
;	assignResultValue
	sta	_strtoul_digit_30000_165
;	Raw cost for generated ic 195 : (9, 14.000000) count=3.958003
;	../strtoul.c: 120: if (digit < 0)
;	genCmp
	bit	_strtoul_digit_30000_165
	bpl	00349$
	jmp	00136$
00349$:
;	Raw cost for generated ic 197 : (8, 9.600000) count=3.958003
;	skipping generated iCode
;	Raw cost for generated ic 198 : (0, 0.000000) count=3.958003
;	../strtoul.c: 124: range_error |= ckd_mul (&ret, ret, b);
;	genCast
;	genCopy
	stz	(__mullonglong_PARM_2 + 7)
	stz	(__mullonglong_PARM_2 + 6)
	stz	(__mullonglong_PARM_2 + 5)
	stz	(__mullonglong_PARM_2 + 4)
	stz	(__mullonglong_PARM_2 + 3)
	stz	(__mullonglong_PARM_2 + 2)
	stz	(__mullonglong_PARM_2 + 1)
	lda	_strtoul_b_10000_148
	sta	__mullonglong_PARM_2
;	Raw cost for generated ic 203 : (27, 36.000000) count=2.968654
;	genCast
;	genCopy
	stz	(__mullonglong_PARM_1 + 7)
	stz	(__mullonglong_PARM_1 + 6)
	stz	(__mullonglong_PARM_1 + 5)
	stz	(__mullonglong_PARM_1 + 4)
	lda	(_strtoul_ret_10000_148 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(_strtoul_ret_10000_148 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(_strtoul_ret_10000_148 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	_strtoul_ret_10000_148
	sta	__mullonglong_PARM_1
;	Raw cost for generated ic 205 : (36, 48.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 207 : (0, 0.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 208 : (0, 0.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 209 : (0, 0.000000) count=2.968654
;	./../../include/stdckdint.h: 77: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	genCall
	jsr	__mullonglong
;	assignResultValue
	sta	*_strtoul_sloc2_1_0
	stx	*(_strtoul_sloc2_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_strtoul_sloc2_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_strtoul_sloc2_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_strtoul_sloc2_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_strtoul_sloc2_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_strtoul_sloc2_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_strtoul_sloc2_1_0 + 7)
;	Raw cost for generated ic 298 : (31, 48.000000) count=2.968654
;	genAssign
;	genCopy
	sta	(_strtoul_result_60000_199 + 7)
	lda	*(_strtoul_sloc2_1_0 + 6)
	sta	(_strtoul_result_60000_199 + 6)
	lda	*(_strtoul_sloc2_1_0 + 5)
	sta	(_strtoul_result_60000_199 + 5)
	lda	*(_strtoul_sloc2_1_0 + 4)
	sta	(_strtoul_result_60000_199 + 4)
	lda	*(_strtoul_sloc2_1_0 + 3)
	sta	(_strtoul_result_60000_199 + 3)
	lda	*(_strtoul_sloc2_1_0 + 2)
	sta	(_strtoul_result_60000_199 + 2)
	txa
	sta	(_strtoul_result_60000_199 + 1)
	lda	*_strtoul_sloc2_1_0
	sta	_strtoul_result_60000_199
;	Raw cost for generated ic 214 : (37, 52.000000) count=2.968654
;	genCast
;	genCopy
	txa
	sta	*(_strtoul_sloc2_1_0 + 1)
;	Raw cost for generated ic 216 : (15, 23.000000) count=2.968654
;	genPointerSet
;	genDataPointerSet
	lda	*(_strtoul_sloc2_1_0 + 3)
	sta	(_strtoul_ret_10000_148 + 3)
	lda	*(_strtoul_sloc2_1_0 + 2)
	sta	(_strtoul_ret_10000_148 + 2)
	lda	*(_strtoul_sloc2_1_0 + 1)
	sta	(_strtoul_ret_10000_148 + 1)
	lda	*_strtoul_sloc2_1_0
	sta	_strtoul_ret_10000_148
;	Raw cost for generated ic 217 : (20, 28.000000) count=2.968654
;	genCast
;	genCopy
	stz	*(_strtoul_sloc2_1_0 + 7)
	stz	*(_strtoul_sloc2_1_0 + 6)
	stz	*(_strtoul_sloc2_1_0 + 5)
	stz	*(_strtoul_sloc2_1_0 + 4)
	lda	*_strtoul_sloc2_1_0
;	Raw cost for generated ic 220 : (28, 40.000000) count=2.968654
;	genCmpEQorNE
	cmp	_strtoul_result_60000_199
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 1)
	cmp	(_strtoul_result_60000_199 + 1)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 2)
	cmp	(_strtoul_result_60000_199 + 2)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 3)
	cmp	(_strtoul_result_60000_199 + 3)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 4)
	cmp	(_strtoul_result_60000_199 + 4)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 5)
	cmp	(_strtoul_result_60000_199 + 5)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 6)
	cmp	(_strtoul_result_60000_199 + 6)
	bne	00351$
	lda	*(_strtoul_sloc2_1_0 + 7)
	cmp	(_strtoul_result_60000_199 + 7)
	beq	00359$
00351$:
	lda	#0x00
	bra	00358$
00359$:
	lda	#0x01
00358$:
;	Raw cost for generated ic 221 : (81, 101.399994) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 222 : (2, 2.000000) count=2.968654
;	../strtoul.c: 124: range_error |= ckd_mul (&ret, ret, b);
;	genOr
	ora	*_strtoul_sloc0_1_0
	sta	_strtoul_range_error_10000_148
;	Raw cost for generated ic 226 : (5, 7.000000) count=2.968654
;	../strtoul.c: 125: range_error |= ckd_add (&ret, ret, digit);
;	genCast
	lda	_strtoul_digit_30000_165
	sta	*_strtoul_sloc2_1_0
	asl	a
	lda	#0x00
	adc	#0xff
	eor	#0xff
	sta	*(_strtoul_sloc2_1_0 + 1)
	sta	*(_strtoul_sloc2_1_0 + 2)
	sta	*(_strtoul_sloc2_1_0 + 3)
	sta	*(_strtoul_sloc2_1_0 + 4)
	sta	*(_strtoul_sloc2_1_0 + 5)
	sta	*(_strtoul_sloc2_1_0 + 6)
	sta	*(_strtoul_sloc2_1_0 + 7)
;	Raw cost for generated ic 228 : (26, 36.000000) count=2.968654
;	genCast
;	genCopy
	stz	*(_strtoul_sloc3_1_0 + 7)
	stz	*(_strtoul_sloc3_1_0 + 6)
	stz	*(_strtoul_sloc3_1_0 + 5)
	stz	*(_strtoul_sloc3_1_0 + 4)
	lda	(_strtoul_ret_10000_148 + 3)
	sta	*(_strtoul_sloc3_1_0 + 3)
	lda	(_strtoul_ret_10000_148 + 2)
	sta	*(_strtoul_sloc3_1_0 + 2)
	lda	(_strtoul_ret_10000_148 + 1)
	sta	*(_strtoul_sloc3_1_0 + 1)
	lda	_strtoul_ret_10000_148
;	Raw cost for generated ic 230 : (32, 44.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 234 : (0, 0.000000) count=2.968654
;	./../../include/stdckdint.h: 59: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	genPlus
	sta	*_strtoul_sloc3_1_0
	ora	#0x00
	clc
	adc	*_strtoul_sloc2_1_0
	sta	*_strtoul_sloc3_1_0
	lda	*(_strtoul_sloc3_1_0 + 1)
	adc	*(_strtoul_sloc2_1_0 + 1)
	sta	*(_strtoul_sloc3_1_0 + 1)
	lda	*(_strtoul_sloc3_1_0 + 2)
	adc	*(_strtoul_sloc2_1_0 + 2)
	sta	*(_strtoul_sloc3_1_0 + 2)
	lda	*(_strtoul_sloc3_1_0 + 3)
	adc	*(_strtoul_sloc2_1_0 + 3)
	sta	*(_strtoul_sloc3_1_0 + 3)
	lda	*(_strtoul_sloc3_1_0 + 4)
	adc	*(_strtoul_sloc2_1_0 + 4)
	sta	*(_strtoul_sloc3_1_0 + 4)
	lda	*(_strtoul_sloc3_1_0 + 5)
	adc	*(_strtoul_sloc2_1_0 + 5)
	sta	*(_strtoul_sloc3_1_0 + 5)
	lda	*(_strtoul_sloc3_1_0 + 6)
	adc	*(_strtoul_sloc2_1_0 + 6)
	sta	*(_strtoul_sloc3_1_0 + 6)
	lda	*(_strtoul_sloc3_1_0 + 7)
	adc	*(_strtoul_sloc2_1_0 + 7)
	sta	*(_strtoul_sloc3_1_0 + 7)
;	Raw cost for generated ic 238 : (49, 74.000000) count=2.968654
;	genAssign
;	genCopy
	sta	(_strtoul_result_60000_247 + 7)
	lda	*(_strtoul_sloc3_1_0 + 6)
	sta	(_strtoul_result_60000_247 + 6)
	lda	*(_strtoul_sloc3_1_0 + 5)
	sta	(_strtoul_result_60000_247 + 5)
	lda	*(_strtoul_sloc3_1_0 + 4)
	sta	(_strtoul_result_60000_247 + 4)
	lda	*(_strtoul_sloc3_1_0 + 3)
	sta	(_strtoul_result_60000_247 + 3)
	lda	*(_strtoul_sloc3_1_0 + 2)
	sta	(_strtoul_result_60000_247 + 2)
	lda	*(_strtoul_sloc3_1_0 + 1)
	sta	(_strtoul_result_60000_247 + 1)
	lda	*_strtoul_sloc3_1_0
	sta	_strtoul_result_60000_247
;	Raw cost for generated ic 239 : (38, 53.000000) count=2.968654
;	genCast
;	genCopy
;	Raw cost for generated ic 241 : (16, 24.000000) count=2.968654
;	genPointerSet
;	genDataPointerSet
	lda	*(_strtoul_sloc3_1_0 + 3)
	sta	(_strtoul_ret_10000_148 + 3)
	lda	*(_strtoul_sloc3_1_0 + 2)
	sta	(_strtoul_ret_10000_148 + 2)
	lda	*(_strtoul_sloc3_1_0 + 1)
	sta	(_strtoul_ret_10000_148 + 1)
	lda	*_strtoul_sloc3_1_0
	sta	_strtoul_ret_10000_148
;	Raw cost for generated ic 242 : (20, 28.000000) count=2.968654
;	genCast
;	genCopy
	stz	*(_strtoul_sloc3_1_0 + 7)
	stz	*(_strtoul_sloc3_1_0 + 6)
	stz	*(_strtoul_sloc3_1_0 + 5)
	stz	*(_strtoul_sloc3_1_0 + 4)
	lda	*_strtoul_sloc3_1_0
;	Raw cost for generated ic 245 : (28, 40.000000) count=2.968654
;	genCmpEQorNE
	cmp	_strtoul_result_60000_247
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 1)
	cmp	(_strtoul_result_60000_247 + 1)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 2)
	cmp	(_strtoul_result_60000_247 + 2)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 3)
	cmp	(_strtoul_result_60000_247 + 3)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 4)
	cmp	(_strtoul_result_60000_247 + 4)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 5)
	cmp	(_strtoul_result_60000_247 + 5)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 6)
	cmp	(_strtoul_result_60000_247 + 6)
	bne	00362$
	lda	*(_strtoul_sloc3_1_0 + 7)
	cmp	(_strtoul_result_60000_247 + 7)
	beq	00370$
00362$:
	lda	#0x00
	bra	00369$
00370$:
	lda	#0x01
00369$:
;	Raw cost for generated ic 246 : (81, 101.399994) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 247 : (2, 2.000000) count=2.968654
;	../strtoul.c: 125: range_error |= ckd_add (&ret, ret, digit);
;	genOr
	ora	_strtoul_range_error_10000_148
	sta	*_strtoul_sloc0_1_0
;	Raw cost for generated ic 251 : (5, 7.000000) count=2.968654
;	../strtoul.c: 116: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	inc	*_strtoul_sloc1_1_0
	bne	00372$
	inc	*(_strtoul_sloc1_1_0 + 1)
00372$:
;	Raw cost for generated ic 255 : (6, 12.600000) count=2.968654
;	genGoto
	jmp	00167$
;	Raw cost for generated ic 257 : (3, 3.000000) count=2.968654
;	genLabel
00136$:
;	Raw cost for generated ic 258 : (0, 0.000000) count=0.989619
;	../strtoul.c: 136: if (endptr)
;	genIfx
	lda	(_strtoul_PARM_2 + 1)
	ora	_strtoul_PARM_2
;	genIfxJump : z
	beq	00138$
;	Raw cost for generated ic 259 : (11, 13.600000) count=0.989619
;	../strtoul.c: 137: *endptr = (char*)ptr;
;	genAssign
;	genCopy
	ldx	(_strtoul_PARM_2 + 1)
	lda	_strtoul_PARM_2
;	Raw cost for generated ic 262 : (6, 8.000000) count=0.742214
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	*_strtoul_sloc1_1_0
	ldy	#0x00
	sta	[DPTR],y
	lda	*(_strtoul_sloc1_1_0 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 263 : (15, 28.000000) count=0.742214
;	genLabel
00138$:
;	Raw cost for generated ic 264 : (0, 0.000000) count=0.989619
;	../strtoul.c: 139: if (range_error)
;	genIfx
	lda	*_strtoul_sloc0_1_0
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 265 : (7, 8.600000) count=0.989619
;	../strtoul.c: 141: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	stz	(_errno + 1)
;	Raw cost for generated ic 269 : (8, 10.000000) count=0.742214
;	../strtoul.c: 142: return (ULONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 270 : (10, 13.000000) count=0.742214
;	genLabel
00140$:
;	Raw cost for generated ic 271 : (0, 0.000000) count=0.989619
;	../strtoul.c: 145: return (neg ? -ret : ret);
;	genIfx
	lda	_strtoul_neg_10000_148
;	genIfxJump : z
	beq	00174$
;	Raw cost for generated ic 272 : (8, 9.600000) count=0.989619
;	genUminus
	lda	#0x00
	sec
	sbc	_strtoul_ret_10000_148
	sta	*_strtoul_sloc3_1_0
	lda	#0x00
	sbc	(_strtoul_ret_10000_148 + 1)
	sta	*(_strtoul_sloc3_1_0 + 1)
	lda	#0x00
	sbc	(_strtoul_ret_10000_148 + 2)
	sta	*(_strtoul_sloc3_1_0 + 2)
	lda	#0x00
	sbc	(_strtoul_ret_10000_148 + 3)
	sta	*(_strtoul_sloc3_1_0 + 3)
;	Raw cost for generated ic 273 : (29, 38.000000) count=0.742214
;	genGoto
	jmp	00175$
;	Raw cost for generated ic 275 : (3, 3.000000) count=0.742214
;	genLabel
00174$:
;	Raw cost for generated ic 276 : (0, 0.000000) count=0.247550
;	genAssign
;	genCopy
	lda	(_strtoul_ret_10000_148 + 3)
	sta	*(_strtoul_sloc3_1_0 + 3)
	lda	(_strtoul_ret_10000_148 + 2)
	sta	*(_strtoul_sloc3_1_0 + 2)
	lda	(_strtoul_ret_10000_148 + 1)
	sta	*(_strtoul_sloc3_1_0 + 1)
	lda	_strtoul_ret_10000_148
	sta	*_strtoul_sloc3_1_0
;	Raw cost for generated ic 277 : (20, 28.000000) count=0.247550
;	genLabel
00175$:
;	Raw cost for generated ic 278 : (0, 0.000000) count=0.989765
;	genRet
	lda	*(_strtoul_sloc3_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_strtoul_sloc3_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_strtoul_sloc3_1_0 + 1)
	lda	*_strtoul_sloc3_1_0
;	Raw cost for generated ic 279 : (12, 18.000000) count=0.989765
;	genLabel
;	Raw cost for generated ic 280 : (0, 0.000000) count=0.989765
;	../strtoul.c: 146: }
;	genEndFunction
	rts
;	Raw cost for generated ic 281 : (1, 6.000000) count=0.989765
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.ascii "0x"
	.db 0x00
	.area CODE
	.area RODATA
___str_1:
	.ascii "0X"
	.db 0x00
	.area CODE
	.area RODATA
___str_2:
	.ascii "0b"
	.db 0x00
	.area CODE
	.area RODATA
___str_3:
	.ascii "0B"
	.db 0x00
	.area CODE
	.area XINIT
	.area CABS    (ABS)
