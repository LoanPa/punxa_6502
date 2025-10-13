;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler
; Version 4.5.10 #15691 (Linux)
;--------------------------------------------------------
	.module wcstoul
	
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
	.globl _wcsncmp
	.globl _wcstoul_PARM_3
	.globl _wcstoul_PARM_2
	.globl _wcstoul
;--------------------------------------------------------
; ZP ram data
;--------------------------------------------------------
	.area ZP      (PAG)
_wcstoul_sloc0_1_0:
	.ds 1
_wcstoul_sloc1_1_0:
	.ds 2
_wcstoul_sloc2_1_0:
	.ds 4
_wcstoul_sloc3_1_0:
	.ds 8
_wcstoul_sloc4_1_0:
	.ds 8
;--------------------------------------------------------
; overlayable items in ram
;--------------------------------------------------------
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area BSS
__isdigit_PARM_1:
	.ds 4
__isdigit_PARM_2:
	.ds 1
_wcstoul_PARM_2:
	.ds 2
_wcstoul_PARM_3:
	.ds 2
_wcstoul_nptr_10000_163:
	.ds 2
_wcstoul_ptr_10000_164:
	.ds 2
_wcstoul_ret_10000_164:
	.ds 4
_wcstoul_range_error_10000_164:
	.ds 1
_wcstoul_neg_10000_164:
	.ds 1
_wcstoul_b_10000_164:
	.ds 1
_wcstoul_digit_30000_181:
	.ds 1
_wcstoul_result_60000_215:
	.ds 8
_wcstoul_result_60000_263:
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
;c             Allocated with name '__isdigit_PARM_1'
;base          Allocated with name '__isdigit_PARM_2'
;v             Allocated to registers a 
;------------------------------------------------------------
;	../wcstoul.c: 42: static signed char _isdigit(const wchar_t c, unsigned char base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function _isdigit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__isdigit:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 46: if (c >= L'0' && c <= L'9')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x30
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00110$
;	Raw cost for generated ic 2 : (26, 31.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 3 : (0, 0.000000) count=1.000000
;	genCmp
	lda	#0x39
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00110$
;	Raw cost for generated ic 6 : (26, 31.600000) count=0.750000
;	skipping generated iCode
;	Raw cost for generated ic 7 : (0, 0.000000) count=0.750000
;	../wcstoul.c: 47: v = c - L'0';
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 10 : (3, 4.000000) count=0.562500
;	genMinus
;	  genMinusDec - size=1  icount=48
	sec
	sbc	#0x30
;	Raw cost for generated ic 11 : (3, 4.000000) count=0.562500
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 13 : (3, 3.000000) count=0.562500
;	genLabel
00110$:
;	Raw cost for generated ic 14 : (0, 0.000000) count=0.437500
;	../wcstoul.c: 48: else if (c >= L'a' && c <= L'z')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x61
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00106$
;	Raw cost for generated ic 15 : (26, 31.600000) count=0.437500
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=0.437500
;	genCmp
	lda	#0x7a
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00106$
;	Raw cost for generated ic 19 : (26, 31.600000) count=0.328125
;	skipping generated iCode
;	Raw cost for generated ic 20 : (0, 0.000000) count=0.328125
;	../wcstoul.c: 49: v = c - L'a' + 10;
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 23 : (3, 4.000000) count=0.246094
;	genCast
;	genCopy
;	Raw cost for generated ic 24 : (0, 0.000000) count=0.246094
;	genPlus
;	  genPlusInc
	clc
	adc	#0xa9
;	Raw cost for generated ic 25 : (3, 4.000000) count=0.246094
;	genGoto
	jmp	00111$
;	Raw cost for generated ic 27 : (3, 3.000000) count=0.246094
;	genLabel
00106$:
;	Raw cost for generated ic 28 : (0, 0.000000) count=0.191406
;	../wcstoul.c: 50: else if (c >= L'A' && c <= L'Z')
;	genCmp
	lda	__isdigit_PARM_1
	sec
	sbc	#0x41
	lda	(__isdigit_PARM_1 + 1)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 2)
	sbc	#0x00
	lda	(__isdigit_PARM_1 + 3)
	sbc	#0x00
	bcc	00102$
;	Raw cost for generated ic 29 : (26, 31.600000) count=0.191406
;	skipping generated iCode
;	Raw cost for generated ic 30 : (0, 0.000000) count=0.191406
;	genCmp
	lda	#0x5a
	sec
	sbc	__isdigit_PARM_1
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 1)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 2)
	lda	#0x00
	sbc	(__isdigit_PARM_1 + 3)
	bcc	00102$
;	Raw cost for generated ic 33 : (26, 31.600000) count=0.143555
;	skipping generated iCode
;	Raw cost for generated ic 34 : (0, 0.000000) count=0.143555
;	../wcstoul.c: 51: v = c - L'A' + 10;
;	genCast
;	genCopy
	lda	__isdigit_PARM_1
;	Raw cost for generated ic 37 : (3, 4.000000) count=0.107666
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
;	../wcstoul.c: 53: return (-1);
;	genRet
	lda	#0xff
	rts
;	Raw cost for generated ic 43 : (5, 5.000000) count=0.083740
;	genLabel
00111$:
;	Raw cost for generated ic 46 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 55: if (v >= base)
;	genCmp
	cmp	__isdigit_PARM_2
	bcc	00114$
;	Raw cost for generated ic 47 : (8, 9.600000) count=1.000000
;	skipping generated iCode
;	Raw cost for generated ic 48 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 56: return (-1);
;	genRet
	lda	#0xff
;	Raw cost for generated ic 51 : (5, 5.000000) count=0.750000
;	genLabel
;	Raw cost for generated ic 52 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 58: return (v);
;	genRet
;	Raw cost for generated ic 53 : (0, 0.000000) count=1.000000
;	genLabel
;	Raw cost for generated ic 54 : (0, 0.000000) count=1.000000
;	../wcstoul.c: 59: }
;	genEndFunction
00114$:
	rts
;	Raw cost for generated ic 55 : (1, 6.000000) count=1.000000
;------------------------------------------------------------
;Allocation info for local variables in function 'wcstoul'
;------------------------------------------------------------
;sloc0         Allocated with name '_wcstoul_sloc0_1_0'
;sloc1         Allocated with name '_wcstoul_sloc1_1_0'
;sloc2         Allocated with name '_wcstoul_sloc2_1_0'
;sloc3         Allocated with name '_wcstoul_sloc3_1_0'
;sloc4         Allocated with name '_wcstoul_sloc4_1_0'
;endptr        Allocated with name '_wcstoul_PARM_2'
;base          Allocated with name '_wcstoul_PARM_3'
;nptr          Allocated with name '_wcstoul_nptr_10000_163'
;__200000005   Allocated to registers 
;ptr           Allocated with name '_wcstoul_ptr_10000_164'
;ret           Allocated with name '_wcstoul_ret_10000_164'
;range_error   Allocated with name '_wcstoul_range_error_10000_164'
;neg           Allocated with name '_wcstoul_neg_10000_164'
;b             Allocated with name '_wcstoul_b_10000_164'
;__200000006   Allocated with name '_wcstoul___200000006_20000_186'
;c             Allocated with name '_wcstoul_c_30000_187'
;__400000128   Allocated to registers a 
;__400000123   Allocated with name '_wcstoul___400000123_40000_181'
;__400000118   Allocated with name '_wcstoul___400000118_40000_181'
;__400000113   Allocated with name '_wcstoul___400000113_40000_181'
;__400000108   Allocated with name '_wcstoul___400000108_40000_181'
;__400000103   Allocated with name '_wcstoul___400000103_40000_181'
;__400000098   Allocated with name '_wcstoul___400000098_40000_181'
;__400000093   Allocated with name '_wcstoul___400000093_40000_181'
;__400000088   Allocated with name '_wcstoul___400000088_40000_181'
;__400000083   Allocated with name '_wcstoul___400000083_40000_181'
;__400000078   Allocated with name '_wcstoul___400000078_40000_181'
;__400000073   Allocated with name '_wcstoul___400000073_40000_181'
;__400000068   Allocated with name '_wcstoul___400000068_40000_181'
;__400000063   Allocated with name '_wcstoul___400000063_40000_181'
;__400000058   Allocated with name '_wcstoul___400000058_40000_181'
;__400000053   Allocated with name '_wcstoul___400000053_40000_181'
;__400000048   Allocated to registers a 
;__400000043   Allocated with name '_wcstoul___400000043_40000_181'
;__400000038   Allocated with name '_wcstoul___400000038_40000_181'
;__400000033   Allocated with name '_wcstoul___400000033_40000_181'
;__400000028   Allocated with name '_wcstoul___400000028_40000_181'
;__400000023   Allocated with name '_wcstoul___400000023_40000_181'
;__400000018   Allocated with name '_wcstoul___400000018_40000_181'
;__400000013   Allocated with name '_wcstoul___400000013_40000_181'
;__400000008   Allocated with name '_wcstoul___400000008_40000_181'
;digit         Allocated with name '_wcstoul_digit_30000_181'
;__400000009   Allocated with name '_wcstoul___400000009_40000_189'
;__400000010   Allocated with name '_wcstoul___400000010_40000_189'
;__400000011   Allocated with name '_wcstoul___400000011_40000_189'
;r             Allocated with name '_wcstoul_r_50000_190'
;a             Allocated with name '_wcstoul_a_50000_190'
;b             Allocated with name '_wcstoul_b_50000_190'
;result        Allocated with name '_wcstoul_result_60000_191'
;__400000014   Allocated with name '_wcstoul___400000014_40000_192'
;__400000015   Allocated with name '_wcstoul___400000015_40000_192'
;__400000016   Allocated with name '_wcstoul___400000016_40000_192'
;r             Allocated with name '_wcstoul_r_50000_193'
;a             Allocated with name '_wcstoul_a_50000_193'
;b             Allocated with name '_wcstoul_b_50000_193'
;result        Allocated with name '_wcstoul_result_60000_194'
;__400000019   Allocated with name '_wcstoul___400000019_40000_195'
;__400000020   Allocated with name '_wcstoul___400000020_40000_195'
;__400000021   Allocated with name '_wcstoul___400000021_40000_195'
;r             Allocated with name '_wcstoul_r_50000_196'
;a             Allocated with name '_wcstoul_a_50000_196'
;b             Allocated with name '_wcstoul_b_50000_196'
;result        Allocated with name '_wcstoul_result_60000_197'
;__400000024   Allocated with name '_wcstoul___400000024_40000_198'
;__400000025   Allocated with name '_wcstoul___400000025_40000_198'
;__400000026   Allocated with name '_wcstoul___400000026_40000_198'
;r             Allocated with name '_wcstoul_r_50000_199'
;a             Allocated with name '_wcstoul_a_50000_199'
;b             Allocated with name '_wcstoul_b_50000_199'
;result        Allocated with name '_wcstoul_result_60000_200'
;__400000029   Allocated with name '_wcstoul___400000029_40000_201'
;__400000030   Allocated with name '_wcstoul___400000030_40000_201'
;__400000031   Allocated with name '_wcstoul___400000031_40000_201'
;r             Allocated with name '_wcstoul_r_50000_202'
;a             Allocated with name '_wcstoul_a_50000_202'
;b             Allocated with name '_wcstoul_b_50000_202'
;result        Allocated with name '_wcstoul_result_60000_203'
;__400000034   Allocated with name '_wcstoul___400000034_40000_204'
;__400000035   Allocated with name '_wcstoul___400000035_40000_204'
;__400000036   Allocated with name '_wcstoul___400000036_40000_204'
;r             Allocated with name '_wcstoul_r_50000_205'
;a             Allocated with name '_wcstoul_a_50000_205'
;b             Allocated with name '_wcstoul_b_50000_205'
;result        Allocated with name '_wcstoul_result_60000_206'
;__400000039   Allocated with name '_wcstoul___400000039_40000_207'
;__400000040   Allocated with name '_wcstoul___400000040_40000_207'
;__400000041   Allocated with name '_wcstoul___400000041_40000_207'
;r             Allocated with name '_wcstoul_r_50000_208'
;a             Allocated with name '_wcstoul_a_50000_208'
;b             Allocated with name '_wcstoul_b_50000_208'
;result        Allocated with name '_wcstoul_result_60000_209'
;__400000044   Allocated with name '_wcstoul___400000044_40000_210'
;__400000045   Allocated with name '_wcstoul___400000045_40000_210'
;__400000046   Allocated with name '_wcstoul___400000046_40000_210'
;r             Allocated with name '_wcstoul_r_50000_211'
;a             Allocated with name '_wcstoul_a_50000_211'
;b             Allocated with name '_wcstoul_b_50000_211'
;result        Allocated with name '_wcstoul_result_60000_212'
;__400000049   Allocated to registers 
;__400000050   Allocated with name '_wcstoul___400000050_40000_213'
;__400000051   Allocated with name '_wcstoul___400000051_40000_213'
;r             Allocated to registers 
;a             Allocated with name '_wcstoul_a_50000_214'
;b             Allocated with name '_wcstoul_b_50000_214'
;result        Allocated with name '_wcstoul_result_60000_215'
;__400000054   Allocated with name '_wcstoul___400000054_40000_216'
;__400000055   Allocated with name '_wcstoul___400000055_40000_216'
;__400000056   Allocated with name '_wcstoul___400000056_40000_216'
;r             Allocated with name '_wcstoul_r_50000_217'
;a             Allocated with name '_wcstoul_a_50000_217'
;b             Allocated with name '_wcstoul_b_50000_217'
;result        Allocated with name '_wcstoul_result_60000_218'
;__400000059   Allocated with name '_wcstoul___400000059_40000_219'
;__400000060   Allocated with name '_wcstoul___400000060_40000_219'
;__400000061   Allocated with name '_wcstoul___400000061_40000_219'
;r             Allocated with name '_wcstoul_r_50000_220'
;a             Allocated with name '_wcstoul_a_50000_220'
;b             Allocated with name '_wcstoul_b_50000_220'
;result        Allocated with name '_wcstoul_result_60000_221'
;__400000064   Allocated with name '_wcstoul___400000064_40000_222'
;__400000065   Allocated with name '_wcstoul___400000065_40000_222'
;__400000066   Allocated with name '_wcstoul___400000066_40000_222'
;r             Allocated with name '_wcstoul_r_50000_223'
;a             Allocated with name '_wcstoul_a_50000_223'
;b             Allocated with name '_wcstoul_b_50000_223'
;result        Allocated with name '_wcstoul_result_60000_224'
;__400000069   Allocated with name '_wcstoul___400000069_40000_225'
;__400000070   Allocated with name '_wcstoul___400000070_40000_225'
;__400000071   Allocated with name '_wcstoul___400000071_40000_225'
;r             Allocated with name '_wcstoul_r_50000_226'
;a             Allocated with name '_wcstoul_a_50000_226'
;b             Allocated with name '_wcstoul_b_50000_226'
;result        Allocated with name '_wcstoul_result_60000_227'
;__400000074   Allocated with name '_wcstoul___400000074_40000_228'
;__400000075   Allocated with name '_wcstoul___400000075_40000_228'
;__400000076   Allocated with name '_wcstoul___400000076_40000_228'
;r             Allocated with name '_wcstoul_r_50000_229'
;a             Allocated with name '_wcstoul_a_50000_229'
;b             Allocated with name '_wcstoul_b_50000_229'
;result        Allocated with name '_wcstoul_result_60000_230'
;__400000079   Allocated with name '_wcstoul___400000079_40000_231'
;__400000080   Allocated with name '_wcstoul___400000080_40000_231'
;__400000081   Allocated with name '_wcstoul___400000081_40000_231'
;r             Allocated with name '_wcstoul_r_50000_232'
;a             Allocated with name '_wcstoul_a_50000_232'
;b             Allocated with name '_wcstoul_b_50000_232'
;result        Allocated with name '_wcstoul_result_60000_233'
;__400000084   Allocated with name '_wcstoul___400000084_40000_234'
;__400000085   Allocated with name '_wcstoul___400000085_40000_234'
;__400000086   Allocated with name '_wcstoul___400000086_40000_234'
;r             Allocated with name '_wcstoul_r_50000_235'
;a             Allocated with name '_wcstoul_a_50000_235'
;b             Allocated with name '_wcstoul_b_50000_235'
;result        Allocated with name '_wcstoul_result_60000_236'
;__400000089   Allocated with name '_wcstoul___400000089_40000_237'
;__400000090   Allocated with name '_wcstoul___400000090_40000_237'
;__400000091   Allocated with name '_wcstoul___400000091_40000_237'
;r             Allocated with name '_wcstoul_r_50000_238'
;a             Allocated with name '_wcstoul_a_50000_238'
;b             Allocated with name '_wcstoul_b_50000_238'
;result        Allocated with name '_wcstoul_result_60000_239'
;__400000094   Allocated with name '_wcstoul___400000094_40000_240'
;__400000095   Allocated with name '_wcstoul___400000095_40000_240'
;__400000096   Allocated with name '_wcstoul___400000096_40000_240'
;r             Allocated with name '_wcstoul_r_50000_241'
;a             Allocated with name '_wcstoul_a_50000_241'
;b             Allocated with name '_wcstoul_b_50000_241'
;result        Allocated with name '_wcstoul_result_60000_242'
;__400000099   Allocated with name '_wcstoul___400000099_40000_243'
;__400000100   Allocated with name '_wcstoul___400000100_40000_243'
;__400000101   Allocated with name '_wcstoul___400000101_40000_243'
;r             Allocated with name '_wcstoul_r_50000_244'
;a             Allocated with name '_wcstoul_a_50000_244'
;b             Allocated with name '_wcstoul_b_50000_244'
;result        Allocated with name '_wcstoul_result_60000_245'
;__400000104   Allocated with name '_wcstoul___400000104_40000_246'
;__400000105   Allocated with name '_wcstoul___400000105_40000_246'
;__400000106   Allocated with name '_wcstoul___400000106_40000_246'
;r             Allocated with name '_wcstoul_r_50000_247'
;a             Allocated with name '_wcstoul_a_50000_247'
;b             Allocated with name '_wcstoul_b_50000_247'
;result        Allocated with name '_wcstoul_result_60000_248'
;__400000109   Allocated with name '_wcstoul___400000109_40000_249'
;__400000110   Allocated with name '_wcstoul___400000110_40000_249'
;__400000111   Allocated with name '_wcstoul___400000111_40000_249'
;r             Allocated with name '_wcstoul_r_50000_250'
;a             Allocated with name '_wcstoul_a_50000_250'
;b             Allocated with name '_wcstoul_b_50000_250'
;result        Allocated with name '_wcstoul_result_60000_251'
;__400000114   Allocated with name '_wcstoul___400000114_40000_252'
;__400000115   Allocated with name '_wcstoul___400000115_40000_252'
;__400000116   Allocated with name '_wcstoul___400000116_40000_252'
;r             Allocated with name '_wcstoul_r_50000_253'
;a             Allocated with name '_wcstoul_a_50000_253'
;b             Allocated with name '_wcstoul_b_50000_253'
;result        Allocated with name '_wcstoul_result_60000_254'
;__400000119   Allocated with name '_wcstoul___400000119_40000_255'
;__400000120   Allocated with name '_wcstoul___400000120_40000_255'
;__400000121   Allocated with name '_wcstoul___400000121_40000_255'
;r             Allocated with name '_wcstoul_r_50000_256'
;a             Allocated with name '_wcstoul_a_50000_256'
;b             Allocated with name '_wcstoul_b_50000_256'
;result        Allocated with name '_wcstoul_result_60000_257'
;__400000124   Allocated with name '_wcstoul___400000124_40000_258'
;__400000125   Allocated with name '_wcstoul___400000125_40000_258'
;__400000126   Allocated with name '_wcstoul___400000126_40000_258'
;r             Allocated with name '_wcstoul_r_50000_259'
;a             Allocated with name '_wcstoul_a_50000_259'
;b             Allocated with name '_wcstoul_b_50000_259'
;result        Allocated with name '_wcstoul_result_60000_260'
;__400000129   Allocated to registers 
;__400000130   Allocated with name '_wcstoul___400000130_40000_261'
;__400000131   Allocated with name '_wcstoul___400000131_40000_261'
;r             Allocated to registers 
;a             Allocated with name '_wcstoul_a_50000_262'
;b             Allocated with name '_wcstoul_b_50000_262'
;result        Allocated with name '_wcstoul_result_60000_263'
;------------------------------------------------------------
;	../wcstoul.c: 63: unsigned long int wcstoul(const wchar_t *nptr, wchar_t **endptr, int base)
;	genLabel
;	Raw cost for generated ic 0 : (0, 0.000000) count=1.000000
;	-----------------------------------------
;	 function wcstoul
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_wcstoul:
;	Raw cost for generated ic 1 : (0, 0.000000) count=1.000000
;	genReceive
	sta	_wcstoul_nptr_10000_163
	stx	(_wcstoul_nptr_10000_163 + 1)
;	Raw cost for generated ic 2 : (6, 8.000000) count=1.000000
;	../wcstoul.c: 67: bool range_error = false;
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	*_wcstoul_sloc0_1_0
;	Raw cost for generated ic 4 : (4, 5.000000) count=1.000000
;	../wcstoul.c: 68: bool neg = false;
;	genAssign
;	genAssignLit
	sty	_wcstoul_neg_10000_164
;	Raw cost for generated ic 5 : (3, 4.000000) count=1.000000
;	../wcstoul.c: 69: unsigned char b = base;
;	genCast
;	genCopy
	lda	_wcstoul_PARM_3
	sta	_wcstoul_b_10000_164
;	Raw cost for generated ic 6 : (6, 8.000000) count=1.000000
;	../wcstoul.c: 71: while (iswblank (*ptr))
;	genAssign
;	genCopy
	txa
	sta	*(_wcstoul_sloc1_1_0 + 1)
	lda	_wcstoul_nptr_10000_163
	sta	*_wcstoul_sloc1_1_0
;	Raw cost for generated ic 281 : (8, 12.000000) count=1.000000
;	genLabel
00101$:
;	Raw cost for generated ic 8 : (0, 0.000000) count=5.333324
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*_wcstoul_sloc2_1_0
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 1)
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 2)
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 3)
;	Raw cost for generated ic 10 : (21, 40.000000) count=5.333324
;	./../../include/wchar.h: 63: return ((wchar_t)c == L' ' || (wchar_t)c == L'\t');
;	genCmpEQorNE
	lda	*_wcstoul_sloc2_1_0
	cmp	#0x20
	bne	00315$
	lda	*(_wcstoul_sloc2_1_0 + 1)
	bne	00315$
	lda	*(_wcstoul_sloc2_1_0 + 2)
	bne	00315$
	lda	*(_wcstoul_sloc2_1_0 + 3)
	beq	00172$
00315$:
;	Raw cost for generated ic 13 : (30, 36.400002) count=5.333324
;	skipping generated iCode
;	Raw cost for generated ic 14 : (0, 0.000000) count=5.333324
;	genCmpEQorNE
	lda	*_wcstoul_sloc2_1_0
	cmp	#0x09
	bne	00197$
	lda	*(_wcstoul_sloc2_1_0 + 1)
	bne	00197$
	lda	*(_wcstoul_sloc2_1_0 + 2)
	bne	00197$
	lda	*(_wcstoul_sloc2_1_0 + 3)
	bne	00197$
;	Raw cost for generated ic 15 : (30, 36.400002) count=3.999992
;	skipping generated iCode
;	Raw cost for generated ic 16 : (0, 0.000000) count=3.999992
;	genLabel
00172$:
;	Raw cost for generated ic 20 : (0, 0.000000) count=4.333324
;	../wcstoul.c: 72: ptr++;
;	genPlus
;	  genPlusInc
	lda	*_wcstoul_sloc1_1_0
	clc
	adc	#0x04
	sta	*_wcstoul_sloc1_1_0
	bcc	00101$
	inc	*(_wcstoul_sloc1_1_0 + 1)
;	Raw cost for generated ic 31 : (11, 17.600000) count=4.333324
;	genGoto
	jmp	00101$
;	Raw cost for generated ic 33 : (3, 3.000000) count=4.333324
;	genLabel
00197$:
;	Raw cost for generated ic 282 : (0, 0.000000) count=0.999997
;	genAssign
;	genCopy
	lda	*(_wcstoul_sloc1_1_0 + 1)
	sta	(_wcstoul_ptr_10000_164 + 1)
	lda	*_wcstoul_sloc1_1_0
	sta	_wcstoul_ptr_10000_164
;	Raw cost for generated ic 283 : (10, 14.000000) count=0.999997
;	../wcstoul.c: 75: switch(*ptr)
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*_wcstoul_sloc2_1_0
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 1)
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 2)
	iny
	lda	[*_wcstoul_sloc1_1_0],y
	sta	*(_wcstoul_sloc2_1_0 + 3)
;	Raw cost for generated ic 36 : (21, 40.000000) count=0.999997
;	genCmpEQorNE
	lda	*_wcstoul_sloc2_1_0
	cmp	#0x2b
	bne	00325$
	lda	*(_wcstoul_sloc2_1_0 + 1)
	bne	00325$
	lda	*(_wcstoul_sloc2_1_0 + 2)
	bne	00325$
	lda	*(_wcstoul_sloc2_1_0 + 3)
	beq	00105$
00325$:
;	Raw cost for generated ic 37 : (30, 36.400002) count=0.999997
;	skipping generated iCode
;	Raw cost for generated ic 38 : (0, 0.000000) count=0.999997
;	genCmpEQorNE
	lda	*_wcstoul_sloc2_1_0
	cmp	#0x2d
	bne	00106$
	lda	*(_wcstoul_sloc2_1_0 + 1)
	bne	00106$
	lda	*(_wcstoul_sloc2_1_0 + 2)
	bne	00106$
	lda	*(_wcstoul_sloc2_1_0 + 3)
	bne	00106$
;	Raw cost for generated ic 39 : (30, 36.400002) count=0.749996
;	skipping generated iCode
;	Raw cost for generated ic 40 : (0, 0.000000) count=0.749996
;	../wcstoul.c: 78: neg = true;
;	genAssign
;	genAssignLit
	ldx	#0x01
	stx	_wcstoul_neg_10000_164
;	Raw cost for generated ic 43 : (5, 6.000000) count=0.562496
;	../wcstoul.c: 79: case L'+':
;	genLabel
00105$:
;	Raw cost for generated ic 44 : (0, 0.000000) count=0.812494
;	../wcstoul.c: 80: ptr++;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x04
	sta	_wcstoul_ptr_10000_164
	bcc	00333$
	inc	(_wcstoul_ptr_10000_164 + 1)
00333$:
;	Raw cost for generated ic 46 : (14, 20.600000) count=0.812494
;	../wcstoul.c: 81: }
;	genLabel
00106$:
;	Raw cost for generated ic 48 : (0, 0.000000) count=0.999993
;	../wcstoul.c: 84: if (!b)
;	genIfx
	lda	_wcstoul_b_10000_164
;	genIfxJump : z
	beq	00335$
	jmp	00128$
00335$:
;	Raw cost for generated ic 49 : (8, 9.600000) count=0.999993
;	../wcstoul.c: 86: if (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 52 : (0, 0.000000) count=0.749995
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 53 : (10, 12.000000) count=0.749995
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 56 : (10, 12.000000) count=0.749995
;	Raw cost for generated ic 54 : (0, 0.000000) count=0.749995
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 57 : (9, 14.000000) count=0.749995
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00337$
	cpx	#0x00
	beq	00114$
00337$:
;	Raw cost for generated ic 58 : (11, 12.200000) count=0.749995
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 61 : (0, 0.000000) count=0.562496
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 62 : (10, 12.000000) count=0.562496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 65 : (10, 12.000000) count=0.562496
;	Raw cost for generated ic 63 : (0, 0.000000) count=0.562496
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 66 : (9, 14.000000) count=0.562496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00115$
	cpx	#0x00
	bne	00115$
;	Raw cost for generated ic 67 : (11, 12.200000) count=0.562496
;	genLabel
00114$:
;	Raw cost for generated ic 69 : (0, 0.000000) count=0.609371
;	../wcstoul.c: 88: b = 16;
;	genAssign
;	genAssignLit
	ldx	#0x10
	stx	_wcstoul_b_10000_164
;	Raw cost for generated ic 70 : (5, 6.000000) count=0.609371
;	../wcstoul.c: 89: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x08
	sta	_wcstoul_ptr_10000_164
	bcc	00340$
	inc	(_wcstoul_ptr_10000_164 + 1)
00340$:
;	Raw cost for generated ic 71 : (14, 20.600000) count=0.609371
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 73 : (3, 3.000000) count=0.609371
;	genLabel
00115$:
;	Raw cost for generated ic 74 : (0, 0.000000) count=0.140623
;	../wcstoul.c: 91: else if (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2))
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 75 : (0, 0.000000) count=0.140623
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 76 : (10, 12.000000) count=0.140623
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 79 : (10, 12.000000) count=0.140623
;	Raw cost for generated ic 77 : (0, 0.000000) count=0.140623
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 80 : (9, 14.000000) count=0.140623
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00342$
	cpx	#0x00
	beq	00110$
00342$:
;	Raw cost for generated ic 81 : (11, 12.200000) count=0.140623
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 84 : (0, 0.000000) count=0.105467
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 85 : (10, 12.000000) count=0.105467
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 88 : (10, 12.000000) count=0.105467
;	Raw cost for generated ic 86 : (0, 0.000000) count=0.105467
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 89 : (9, 14.000000) count=0.105467
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00111$
	cpx	#0x00
	bne	00111$
;	Raw cost for generated ic 90 : (11, 12.200000) count=0.105467
;	genLabel
00110$:
;	Raw cost for generated ic 92 : (0, 0.000000) count=0.114256
;	../wcstoul.c: 93: b = 2;
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcstoul_b_10000_164
;	Raw cost for generated ic 93 : (5, 6.000000) count=0.114256
;	../wcstoul.c: 94: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x08
	sta	_wcstoul_ptr_10000_164
	bcc	00345$
	inc	(_wcstoul_ptr_10000_164 + 1)
00345$:
;	Raw cost for generated ic 94 : (14, 20.600000) count=0.114256
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 96 : (3, 3.000000) count=0.114256
;	genLabel
00111$:
;	Raw cost for generated ic 97 : (0, 0.000000) count=0.020970
;	../wcstoul.c: 96: else if (*ptr == L'0')
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wcstoul_ptr_10000_164
	stx	*(DPTR+0)
	ldx	(_wcstoul_ptr_10000_164 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	*_wcstoul_sloc2_1_0
	iny
	lda	[DPTR],y
	sta	*(_wcstoul_sloc2_1_0 + 1)
	iny
	lda	[DPTR],y
	sta	*(_wcstoul_sloc2_1_0 + 2)
	iny
	lda	[DPTR],y
	sta	*(_wcstoul_sloc2_1_0 + 3)
;	Raw cost for generated ic 99 : (31, 54.000000) count=0.020970
;	genCmpEQorNE
	lda	*_wcstoul_sloc2_1_0
	cmp	#0x30
	bne	00108$
	lda	*(_wcstoul_sloc2_1_0 + 1)
	bne	00108$
	lda	*(_wcstoul_sloc2_1_0 + 2)
	bne	00108$
	lda	*(_wcstoul_sloc2_1_0 + 3)
	bne	00108$
;	Raw cost for generated ic 100 : (30, 36.400002) count=0.020970
;	skipping generated iCode
;	Raw cost for generated ic 101 : (0, 0.000000) count=0.020970
;	../wcstoul.c: 98: b = 8;
;	genAssign
;	genAssignLit
	ldx	#0x08
	stx	_wcstoul_b_10000_164
;	Raw cost for generated ic 104 : (5, 6.000000) count=0.015727
;	../wcstoul.c: 99: ptr++;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x04
	sta	_wcstoul_ptr_10000_164
	bcc	00351$
	inc	(_wcstoul_ptr_10000_164 + 1)
00351$:
;	Raw cost for generated ic 106 : (14, 20.600000) count=0.015727
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 108 : (3, 3.000000) count=0.015727
;	genLabel
00108$:
;	Raw cost for generated ic 109 : (0, 0.000000) count=0.000000
;	../wcstoul.c: 102: b = 10;
;	genAssign
;	genAssignLit
	ldx	#0x0a
	stx	_wcstoul_b_10000_164
;	Raw cost for generated ic 110 : (5, 6.000000) count=0.000000
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 114 : (3, 3.000000) count=0.000000
;	genLabel
00128$:
;	Raw cost for generated ic 115 : (0, 0.000000) count=0.249997
;	../wcstoul.c: 105: else if (b == 16 && (!wcsncmp (ptr, L"0x", 2) || !wcsncmp (ptr, L"0X", 2)))
;	genCmpEQorNE
	lda	_wcstoul_b_10000_164
	cmp	#0x10
	bne	00123$
;	Raw cost for generated ic 116 : (10, 11.600000) count=0.249997
;	skipping generated iCode
;	Raw cost for generated ic 117 : (0, 0.000000) count=0.249997
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 120 : (0, 0.000000) count=0.187496
;	genCast
;	genCopy
	lda	#>___str_0
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_0
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 121 : (10, 12.000000) count=0.187496
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 124 : (10, 12.000000) count=0.187496
;	Raw cost for generated ic 122 : (0, 0.000000) count=0.187496
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 125 : (9, 14.000000) count=0.187496
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00354$
	cpx	#0x00
	beq	00122$
00354$:
;	Raw cost for generated ic 126 : (11, 12.200000) count=0.187496
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 129 : (0, 0.000000) count=0.140622
;	genCast
;	genCopy
	lda	#>___str_1
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_1
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 130 : (10, 12.000000) count=0.140622
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 133 : (10, 12.000000) count=0.140622
;	Raw cost for generated ic 131 : (0, 0.000000) count=0.140622
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 134 : (9, 14.000000) count=0.140622
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00123$
	cpx	#0x00
	bne	00123$
;	Raw cost for generated ic 135 : (11, 12.200000) count=0.140622
;	genLabel
00122$:
;	Raw cost for generated ic 137 : (0, 0.000000) count=0.152341
;	../wcstoul.c: 106: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x08
	sta	_wcstoul_ptr_10000_164
	bcc	00129$
	inc	(_wcstoul_ptr_10000_164 + 1)
;	Raw cost for generated ic 138 : (14, 20.600000) count=0.152341
;	genGoto
	jmp	00129$
;	Raw cost for generated ic 140 : (3, 3.000000) count=0.152341
;	genLabel
00123$:
;	Raw cost for generated ic 141 : (0, 0.000000) count=0.097654
;	../wcstoul.c: 107: else if (b == 2 && (!wcsncmp (ptr, L"0b", 2) || !wcsncmp (ptr, L"0B", 2)))
;	genCmpEQorNE
	lda	_wcstoul_b_10000_164
	cmp	#0x02
	bne	00129$
;	Raw cost for generated ic 142 : (10, 11.600000) count=0.097654
;	skipping generated iCode
;	Raw cost for generated ic 143 : (0, 0.000000) count=0.097654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 146 : (0, 0.000000) count=0.073241
;	genCast
;	genCopy
	lda	#>___str_2
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_2
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 147 : (10, 12.000000) count=0.073241
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 150 : (10, 12.000000) count=0.073241
;	Raw cost for generated ic 148 : (0, 0.000000) count=0.073241
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 151 : (9, 14.000000) count=0.073241
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00360$
	cpx	#0x00
	beq	00118$
00360$:
;	Raw cost for generated ic 152 : (11, 12.200000) count=0.073241
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 155 : (0, 0.000000) count=0.054931
;	genCast
;	genCopy
	lda	#>___str_3
	sta	(_wcsncmp_PARM_2 + 1)
	lda	#___str_3
	sta	_wcsncmp_PARM_2
;	Raw cost for generated ic 156 : (10, 12.000000) count=0.054931
;	genAssign
;	genAssignLit
	ldx	#0x02
	stx	_wcsncmp_PARM_3
	ldy	#0x00
	sty	(_wcsncmp_PARM_3 + 1)
;	Raw cost for generated ic 159 : (10, 12.000000) count=0.054931
;	Raw cost for generated ic 157 : (0, 0.000000) count=0.054931
;	genCall
;	genSend
	ldx	(_wcstoul_ptr_10000_164 + 1)
	lda	_wcstoul_ptr_10000_164
	jsr	_wcsncmp
;	assignResultValue
;	Raw cost for generated ic 160 : (9, 14.000000) count=0.054931
;	genIfx
	cmp	#0x00
;	genIfxJump : z
	bne	00129$
	cpx	#0x00
	bne	00129$
;	Raw cost for generated ic 161 : (11, 12.200000) count=0.054931
;	genLabel
00118$:
;	Raw cost for generated ic 163 : (0, 0.000000) count=0.059508
;	../wcstoul.c: 108: ptr += 2;
;	genPlus
;	  genPlusInc
	lda	_wcstoul_ptr_10000_164
	clc
	adc	#0x08
	sta	_wcstoul_ptr_10000_164
	bcc	00363$
	inc	(_wcstoul_ptr_10000_164 + 1)
00363$:
;	Raw cost for generated ic 164 : (14, 20.600000) count=0.059508
;	genLabel
00129$:
;	Raw cost for generated ic 168 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 111: if (_isdigit (*ptr, b) < 0)
;	genPointerGet
;	  setupDPTR - off=0 remat=(null) savea=0
	ldx	_wcstoul_ptr_10000_164
	stx	*(DPTR+0)
	ldx	(_wcstoul_ptr_10000_164 + 1)
	stx	*(DPTR+1)
	ldy	#0x00
	lda	[DPTR],y
	sta	__isdigit_PARM_1
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 1)
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 2)
	iny
	lda	[DPTR],y
	sta	(__isdigit_PARM_1 + 3)
;	Raw cost for generated ic 170 : (35, 58.000000) count=0.989349
;	genAssign
;	genCopy
	lda	_wcstoul_b_10000_164
	sta	__isdigit_PARM_2
;	Raw cost for generated ic 172 : (6, 8.000000) count=0.989349
;	genCall
	jsr	__isdigit
;	assignResultValue
	sta	*_wcstoul_sloc2_1_0
;	Raw cost for generated ic 173 : (5, 9.000000) count=0.989349
;	genCmp
	bit	*_wcstoul_sloc2_1_0
	bpl	00133$
;	Raw cost for generated ic 174 : (7, 8.600000) count=0.989349
;	skipping generated iCode
;	Raw cost for generated ic 175 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 113: if (endptr)
;	genIfx
	lda	(_wcstoul_PARM_2 + 1)
	ora	_wcstoul_PARM_2
;	genIfxJump : z
	beq	00131$
;	Raw cost for generated ic 178 : (11, 13.600000) count=0.742012
;	../wcstoul.c: 114: *endptr = (wchar_t*)nptr;
;	genAssign
;	genCopy
	ldx	(_wcstoul_PARM_2 + 1)
	lda	_wcstoul_PARM_2
;	Raw cost for generated ic 181 : (6, 8.000000) count=0.556509
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	_wcstoul_nptr_10000_163
	ldy	#0x00
	sta	[DPTR],y
	lda	(_wcstoul_nptr_10000_163 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 182 : (17, 30.000000) count=0.556509
;	genLabel
00131$:
;	Raw cost for generated ic 183 : (0, 0.000000) count=0.742012
;	../wcstoul.c: 115: return (0);
;	genRet
	lda	#0x00
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 184 : (10, 13.000000) count=0.742012
;	genLabel
00133$:
;	Raw cost for generated ic 185 : (0, 0.000000) count=0.989349
;	../wcstoul.c: 118: for (ret = 0;; ptr++)
;	genAssign
;	genAssignLit
	ldy	#0x00
	sty	_wcstoul_ret_10000_164
	sty	(_wcstoul_ret_10000_164 + 1)
	sty	(_wcstoul_ret_10000_164 + 2)
	sty	(_wcstoul_ret_10000_164 + 3)
;	Raw cost for generated ic 186 : (14, 18.000000) count=0.989349
;	genAssign
;	genCopy
	lda	(_wcstoul_ptr_10000_164 + 1)
	sta	*(_wcstoul_sloc2_1_0 + 1)
	lda	_wcstoul_ptr_10000_164
	sta	*_wcstoul_sloc2_1_0
;	Raw cost for generated ic 284 : (10, 14.000000) count=0.989349
;	genLabel
00167$:
;	Raw cost for generated ic 187 : (0, 0.000000) count=3.958003
;	../wcstoul.c: 120: signed char digit = _isdigit (*ptr, b);
;	genPointerGet
	ldy	#0x00
	lda	[*_wcstoul_sloc2_1_0],y
	sta	__isdigit_PARM_1
	iny
	lda	[*_wcstoul_sloc2_1_0],y
	sta	(__isdigit_PARM_1 + 1)
	iny
	lda	[*_wcstoul_sloc2_1_0],y
	sta	(__isdigit_PARM_1 + 2)
	iny
	lda	[*_wcstoul_sloc2_1_0],y
	sta	(__isdigit_PARM_1 + 3)
;	Raw cost for generated ic 189 : (25, 44.000000) count=3.958003
;	genAssign
;	genCopy
	lda	_wcstoul_b_10000_164
	sta	__isdigit_PARM_2
;	Raw cost for generated ic 191 : (6, 8.000000) count=3.958003
;	genCall
	jsr	__isdigit
;	assignResultValue
	sta	_wcstoul_digit_30000_181
;	Raw cost for generated ic 192 : (6, 10.000000) count=3.958003
;	../wcstoul.c: 122: if (digit < 0)
;	genCmp
	bit	_wcstoul_digit_30000_181
	bpl	00367$
	jmp	00136$
00367$:
;	Raw cost for generated ic 194 : (8, 9.600000) count=3.958003
;	skipping generated iCode
;	Raw cost for generated ic 195 : (0, 0.000000) count=3.958003
;	../wcstoul.c: 126: range_error |= ckd_mul (&ret, ret, b);
;	genCast
;	genCopy
	ldy	#0x00
	sty	(__mullonglong_PARM_2 + 7)
	sty	(__mullonglong_PARM_2 + 6)
	sty	(__mullonglong_PARM_2 + 5)
	sty	(__mullonglong_PARM_2 + 4)
	sty	(__mullonglong_PARM_2 + 3)
	sty	(__mullonglong_PARM_2 + 2)
	sty	(__mullonglong_PARM_2 + 1)
	lda	_wcstoul_b_10000_164
	sta	__mullonglong_PARM_2
;	Raw cost for generated ic 200 : (29, 38.000000) count=2.968654
;	genCast
;	genCopy
	sty	(__mullonglong_PARM_1 + 7)
	sty	(__mullonglong_PARM_1 + 6)
	sty	(__mullonglong_PARM_1 + 5)
	sty	(__mullonglong_PARM_1 + 4)
	lda	(_wcstoul_ret_10000_164 + 3)
	sta	(__mullonglong_PARM_1 + 3)
	lda	(_wcstoul_ret_10000_164 + 2)
	sta	(__mullonglong_PARM_1 + 2)
	lda	(_wcstoul_ret_10000_164 + 1)
	sta	(__mullonglong_PARM_1 + 1)
	lda	_wcstoul_ret_10000_164
	sta	__mullonglong_PARM_1
;	Raw cost for generated ic 202 : (36, 48.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 204 : (0, 0.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 205 : (0, 0.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 206 : (0, 0.000000) count=2.968654
;	./../../include/stdckdint.h: 77: inline _Bool __ckd_mul_ulong __CKD_DEFAULT_IMPL(unsigned long, *)
;	genCall
	jsr	__mullonglong
;	assignResultValue
	sta	*_wcstoul_sloc3_1_0
	stx	*(_wcstoul_sloc3_1_0 + 1)
	lda	*___SDCC_m6502_ret2
	sta	*(_wcstoul_sloc3_1_0 + 2)
	lda	*___SDCC_m6502_ret3
	sta	*(_wcstoul_sloc3_1_0 + 3)
	lda	*___SDCC_m6502_ret4
	sta	*(_wcstoul_sloc3_1_0 + 4)
	lda	*___SDCC_m6502_ret5
	sta	*(_wcstoul_sloc3_1_0 + 5)
	lda	*___SDCC_m6502_ret6
	sta	*(_wcstoul_sloc3_1_0 + 6)
	lda	*___SDCC_m6502_ret7
	sta	*(_wcstoul_sloc3_1_0 + 7)
;	Raw cost for generated ic 295 : (31, 48.000000) count=2.968654
;	genAssign
;	genCopy
	sta	(_wcstoul_result_60000_215 + 7)
	lda	*(_wcstoul_sloc3_1_0 + 6)
	sta	(_wcstoul_result_60000_215 + 6)
	lda	*(_wcstoul_sloc3_1_0 + 5)
	sta	(_wcstoul_result_60000_215 + 5)
	lda	*(_wcstoul_sloc3_1_0 + 4)
	sta	(_wcstoul_result_60000_215 + 4)
	lda	*(_wcstoul_sloc3_1_0 + 3)
	sta	(_wcstoul_result_60000_215 + 3)
	lda	*(_wcstoul_sloc3_1_0 + 2)
	sta	(_wcstoul_result_60000_215 + 2)
	txa
	sta	(_wcstoul_result_60000_215 + 1)
	lda	*_wcstoul_sloc3_1_0
	sta	_wcstoul_result_60000_215
;	Raw cost for generated ic 211 : (37, 52.000000) count=2.968654
;	genCast
;	genCopy
	txa
	sta	*(_wcstoul_sloc3_1_0 + 1)
;	Raw cost for generated ic 213 : (15, 23.000000) count=2.968654
;	genPointerSet
;	genDataPointerSet
	lda	*(_wcstoul_sloc3_1_0 + 3)
	sta	(_wcstoul_ret_10000_164 + 3)
	lda	*(_wcstoul_sloc3_1_0 + 2)
	sta	(_wcstoul_ret_10000_164 + 2)
	lda	*(_wcstoul_sloc3_1_0 + 1)
	sta	(_wcstoul_ret_10000_164 + 1)
	lda	*_wcstoul_sloc3_1_0
	sta	_wcstoul_ret_10000_164
;	Raw cost for generated ic 214 : (20, 28.000000) count=2.968654
;	genCast
;	genCopy
	ldy	#0x00
	sty	*(_wcstoul_sloc3_1_0 + 7)
	sty	*(_wcstoul_sloc3_1_0 + 6)
	sty	*(_wcstoul_sloc3_1_0 + 5)
	sty	*(_wcstoul_sloc3_1_0 + 4)
	lda	*_wcstoul_sloc3_1_0
;	Raw cost for generated ic 217 : (26, 38.000000) count=2.968654
;	genCmpEQorNE
	cmp	_wcstoul_result_60000_215
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 1)
	cmp	(_wcstoul_result_60000_215 + 1)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 2)
	cmp	(_wcstoul_result_60000_215 + 2)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 3)
	cmp	(_wcstoul_result_60000_215 + 3)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 4)
	cmp	(_wcstoul_result_60000_215 + 4)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 5)
	cmp	(_wcstoul_result_60000_215 + 5)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 6)
	cmp	(_wcstoul_result_60000_215 + 6)
	bne	00369$
	lda	*(_wcstoul_sloc3_1_0 + 7)
	cmp	(_wcstoul_result_60000_215 + 7)
	beq	00377$
00369$:
	tya
	jmp	00376$
00377$:
	lda	#0x01
00376$:
;	Raw cost for generated ic 218 : (81, 101.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 219 : (2, 2.000000) count=2.968654
;	../wcstoul.c: 126: range_error |= ckd_mul (&ret, ret, b);
;	genOr
	ora	*_wcstoul_sloc0_1_0
	sta	_wcstoul_range_error_10000_164
;	Raw cost for generated ic 223 : (5, 7.000000) count=2.968654
;	../wcstoul.c: 127: range_error |= ckd_add (&ret, ret, digit);
;	genCast
	lda	_wcstoul_digit_30000_181
	sta	*_wcstoul_sloc3_1_0
	asl	a
	tya
	adc	#0xff
	eor	#0xff
	sta	*(_wcstoul_sloc3_1_0 + 1)
	sta	*(_wcstoul_sloc3_1_0 + 2)
	sta	*(_wcstoul_sloc3_1_0 + 3)
	sta	*(_wcstoul_sloc3_1_0 + 4)
	sta	*(_wcstoul_sloc3_1_0 + 5)
	sta	*(_wcstoul_sloc3_1_0 + 6)
	sta	*(_wcstoul_sloc3_1_0 + 7)
;	Raw cost for generated ic 225 : (25, 36.000000) count=2.968654
;	genCast
;	genCopy
	sty	*(_wcstoul_sloc4_1_0 + 7)
	sty	*(_wcstoul_sloc4_1_0 + 6)
	sty	*(_wcstoul_sloc4_1_0 + 5)
	sty	*(_wcstoul_sloc4_1_0 + 4)
	lda	(_wcstoul_ret_10000_164 + 3)
	sta	*(_wcstoul_sloc4_1_0 + 3)
	lda	(_wcstoul_ret_10000_164 + 2)
	sta	*(_wcstoul_sloc4_1_0 + 2)
	lda	(_wcstoul_ret_10000_164 + 1)
	sta	*(_wcstoul_sloc4_1_0 + 1)
	lda	_wcstoul_ret_10000_164
;	Raw cost for generated ic 227 : (28, 40.000000) count=2.968654
;	skipping iCode since result will be rematerialized
;	Raw cost for generated ic 231 : (0, 0.000000) count=2.968654
;	./../../include/stdckdint.h: 59: inline _Bool __ckd_add_ulong __CKD_DEFAULT_IMPL(unsigned long, +)
;	genPlus
	sta	*_wcstoul_sloc4_1_0
	clc
	adc	*_wcstoul_sloc3_1_0
	sta	*_wcstoul_sloc4_1_0
	lda	*(_wcstoul_sloc4_1_0 + 1)
	adc	*(_wcstoul_sloc3_1_0 + 1)
	sta	*(_wcstoul_sloc4_1_0 + 1)
	lda	*(_wcstoul_sloc4_1_0 + 2)
	adc	*(_wcstoul_sloc3_1_0 + 2)
	sta	*(_wcstoul_sloc4_1_0 + 2)
	lda	*(_wcstoul_sloc4_1_0 + 3)
	adc	*(_wcstoul_sloc3_1_0 + 3)
	sta	*(_wcstoul_sloc4_1_0 + 3)
	lda	*(_wcstoul_sloc4_1_0 + 4)
	adc	*(_wcstoul_sloc3_1_0 + 4)
	sta	*(_wcstoul_sloc4_1_0 + 4)
	lda	*(_wcstoul_sloc4_1_0 + 5)
	adc	*(_wcstoul_sloc3_1_0 + 5)
	sta	*(_wcstoul_sloc4_1_0 + 5)
	lda	*(_wcstoul_sloc4_1_0 + 6)
	adc	*(_wcstoul_sloc3_1_0 + 6)
	sta	*(_wcstoul_sloc4_1_0 + 6)
	lda	*(_wcstoul_sloc4_1_0 + 7)
	adc	*(_wcstoul_sloc3_1_0 + 7)
	sta	*(_wcstoul_sloc4_1_0 + 7)
;	Raw cost for generated ic 235 : (49, 74.000000) count=2.968654
;	genAssign
;	genCopy
	sta	(_wcstoul_result_60000_263 + 7)
	lda	*(_wcstoul_sloc4_1_0 + 6)
	sta	(_wcstoul_result_60000_263 + 6)
	lda	*(_wcstoul_sloc4_1_0 + 5)
	sta	(_wcstoul_result_60000_263 + 5)
	lda	*(_wcstoul_sloc4_1_0 + 4)
	sta	(_wcstoul_result_60000_263 + 4)
	lda	*(_wcstoul_sloc4_1_0 + 3)
	sta	(_wcstoul_result_60000_263 + 3)
	lda	*(_wcstoul_sloc4_1_0 + 2)
	sta	(_wcstoul_result_60000_263 + 2)
	lda	*(_wcstoul_sloc4_1_0 + 1)
	sta	(_wcstoul_result_60000_263 + 1)
	lda	*_wcstoul_sloc4_1_0
	sta	_wcstoul_result_60000_263
;	Raw cost for generated ic 236 : (38, 53.000000) count=2.968654
;	genCast
;	genCopy
;	Raw cost for generated ic 238 : (16, 24.000000) count=2.968654
;	genPointerSet
;	genDataPointerSet
	lda	*(_wcstoul_sloc4_1_0 + 3)
	sta	(_wcstoul_ret_10000_164 + 3)
	lda	*(_wcstoul_sloc4_1_0 + 2)
	sta	(_wcstoul_ret_10000_164 + 2)
	lda	*(_wcstoul_sloc4_1_0 + 1)
	sta	(_wcstoul_ret_10000_164 + 1)
	lda	*_wcstoul_sloc4_1_0
	sta	_wcstoul_ret_10000_164
;	Raw cost for generated ic 239 : (20, 28.000000) count=2.968654
;	genCast
;	genCopy
	sty	*(_wcstoul_sloc4_1_0 + 7)
	sty	*(_wcstoul_sloc4_1_0 + 6)
	sty	*(_wcstoul_sloc4_1_0 + 5)
	sty	*(_wcstoul_sloc4_1_0 + 4)
	lda	*_wcstoul_sloc4_1_0
;	Raw cost for generated ic 242 : (24, 36.000000) count=2.968654
;	genCmpEQorNE
	cmp	_wcstoul_result_60000_263
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 1)
	cmp	(_wcstoul_result_60000_263 + 1)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 2)
	cmp	(_wcstoul_result_60000_263 + 2)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 3)
	cmp	(_wcstoul_result_60000_263 + 3)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 4)
	cmp	(_wcstoul_result_60000_263 + 4)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 5)
	cmp	(_wcstoul_result_60000_263 + 5)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 6)
	cmp	(_wcstoul_result_60000_263 + 6)
	bne	00380$
	lda	*(_wcstoul_sloc4_1_0 + 7)
	cmp	(_wcstoul_result_60000_263 + 7)
	beq	00388$
00380$:
	tya
	jmp	00387$
00388$:
	lda	#0x01
00387$:
;	Raw cost for generated ic 243 : (81, 101.799995) count=2.968654
;	genNot
	eor	#0x01
;	Raw cost for generated ic 244 : (2, 2.000000) count=2.968654
;	../wcstoul.c: 127: range_error |= ckd_add (&ret, ret, digit);
;	genOr
	ora	_wcstoul_range_error_10000_164
	sta	*_wcstoul_sloc0_1_0
;	Raw cost for generated ic 248 : (5, 7.000000) count=2.968654
;	../wcstoul.c: 118: for (ret = 0;; ptr++)
;	genPlus
;	  genPlusInc
	lda	*_wcstoul_sloc2_1_0
	clc
	adc	#0x04
	sta	*_wcstoul_sloc2_1_0
	bcc	00390$
	inc	*(_wcstoul_sloc2_1_0 + 1)
00390$:
;	Raw cost for generated ic 252 : (11, 17.600000) count=2.968654
;	genGoto
	jmp	00167$
;	Raw cost for generated ic 254 : (3, 3.000000) count=2.968654
;	genLabel
00136$:
;	Raw cost for generated ic 255 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 138: if (endptr)
;	genIfx
	lda	(_wcstoul_PARM_2 + 1)
	ora	_wcstoul_PARM_2
;	genIfxJump : z
	beq	00138$
;	Raw cost for generated ic 256 : (11, 13.600000) count=0.989619
;	../wcstoul.c: 139: *endptr = (wchar_t*)ptr;
;	genAssign
;	genCopy
	ldx	(_wcstoul_PARM_2 + 1)
	lda	_wcstoul_PARM_2
;	Raw cost for generated ic 259 : (6, 8.000000) count=0.742214
;	genPointerSet
;	  setupDPTR - off=0 remat=(null) savea=0
	sta	*(DPTR+0)
	stx	*(DPTR+1)
	lda	*_wcstoul_sloc2_1_0
	ldy	#0x00
	sta	[DPTR],y
	lda	*(_wcstoul_sloc2_1_0 + 1)
	iny
	sta	[DPTR],y
;	Raw cost for generated ic 260 : (15, 28.000000) count=0.742214
;	genLabel
00138$:
;	Raw cost for generated ic 261 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 141: if (range_error)
;	genIfx
	lda	*_wcstoul_sloc0_1_0
;	genIfxJump : z
	beq	00140$
;	Raw cost for generated ic 262 : (7, 8.600000) count=0.989619
;	../wcstoul.c: 143: errno = ERANGE;
;	genAssign
;	genAssignLit
	ldx	#0x22
	stx	_errno
	ldy	#0x00
	sty	(_errno + 1)
;	Raw cost for generated ic 266 : (10, 12.000000) count=0.742214
;	../wcstoul.c: 144: return (ULONG_MAX);
;	genRet
	lda	#0xff
	tax
	sta	*___SDCC_m6502_ret2
	sta	*___SDCC_m6502_ret3
	rts
;	Raw cost for generated ic 267 : (10, 13.000000) count=0.742214
;	genLabel
00140$:
;	Raw cost for generated ic 268 : (0, 0.000000) count=0.989619
;	../wcstoul.c: 147: return (neg ? -ret : ret);
;	genIfx
	lda	_wcstoul_neg_10000_164
;	genIfxJump : z
	beq	00174$
;	Raw cost for generated ic 269 : (8, 9.600000) count=0.989619
;	genUminus
	lda	#0x00
	sec
	sbc	_wcstoul_ret_10000_164
	sta	*_wcstoul_sloc4_1_0
	lda	#0x00
	sbc	(_wcstoul_ret_10000_164 + 1)
	sta	*(_wcstoul_sloc4_1_0 + 1)
	lda	#0x00
	sbc	(_wcstoul_ret_10000_164 + 2)
	sta	*(_wcstoul_sloc4_1_0 + 2)
	lda	#0x00
	sbc	(_wcstoul_ret_10000_164 + 3)
	sta	*(_wcstoul_sloc4_1_0 + 3)
;	Raw cost for generated ic 270 : (29, 38.000000) count=0.742214
;	genGoto
	jmp	00175$
;	Raw cost for generated ic 272 : (3, 3.000000) count=0.742214
;	genLabel
00174$:
;	Raw cost for generated ic 273 : (0, 0.000000) count=0.247550
;	genAssign
;	genCopy
	lda	(_wcstoul_ret_10000_164 + 3)
	sta	*(_wcstoul_sloc4_1_0 + 3)
	lda	(_wcstoul_ret_10000_164 + 2)
	sta	*(_wcstoul_sloc4_1_0 + 2)
	lda	(_wcstoul_ret_10000_164 + 1)
	sta	*(_wcstoul_sloc4_1_0 + 1)
	lda	_wcstoul_ret_10000_164
	sta	*_wcstoul_sloc4_1_0
;	Raw cost for generated ic 274 : (20, 28.000000) count=0.247550
;	genLabel
00175$:
;	Raw cost for generated ic 275 : (0, 0.000000) count=0.989765
;	genRet
	lda	*(_wcstoul_sloc4_1_0 + 3)
	sta	*___SDCC_m6502_ret3
	lda	*(_wcstoul_sloc4_1_0 + 2)
	sta	*___SDCC_m6502_ret2
	ldx	*(_wcstoul_sloc4_1_0 + 1)
	lda	*_wcstoul_sloc4_1_0
;	Raw cost for generated ic 276 : (12, 18.000000) count=0.989765
;	genLabel
;	Raw cost for generated ic 277 : (0, 0.000000) count=0.989765
;	../wcstoul.c: 148: }
;	genEndFunction
	rts
;	Raw cost for generated ic 278 : (1, 6.000000) count=0.989765
	.area CODE
	.area RODATA
	.area RODATA
___str_0:
	.byte 48,0,0,0
	.byte 120,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_1:
	.byte 48,0,0,0
	.byte 88,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_2:
	.byte 48,0,0,0
	.byte 98,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area RODATA
___str_3:
	.byte 48,0,0,0
	.byte 66,0,0,0
	.byte 0,0,0,0
	.area CODE
	.area XINIT
	.area CABS    (ABS)
