/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IDENTIFIER = 258,              /* IDENTIFIER  */
    TYPE_NAME = 259,               /* TYPE_NAME  */
    ADDRSPACE_NAME = 260,          /* ADDRSPACE_NAME  */
    CONSTANT = 261,                /* CONSTANT  */
    SIZEOF = 262,                  /* SIZEOF  */
    COUNTOF = 263,                 /* COUNTOF  */
    OFFSETOF = 264,                /* OFFSETOF  */
    PTR_OP = 265,                  /* PTR_OP  */
    INC_OP = 266,                  /* INC_OP  */
    DEC_OP = 267,                  /* DEC_OP  */
    LEFT_OP = 268,                 /* LEFT_OP  */
    RIGHT_OP = 269,                /* RIGHT_OP  */
    LE_OP = 270,                   /* LE_OP  */
    GE_OP = 271,                   /* GE_OP  */
    EQ_OP = 272,                   /* EQ_OP  */
    NE_OP = 273,                   /* NE_OP  */
    AND_OP = 274,                  /* AND_OP  */
    OR_OP = 275,                   /* OR_OP  */
    ATTR_START = 276,              /* ATTR_START  */
    TOK_SEP = 277,                 /* TOK_SEP  */
    MUL_ASSIGN = 278,              /* MUL_ASSIGN  */
    DIV_ASSIGN = 279,              /* DIV_ASSIGN  */
    MOD_ASSIGN = 280,              /* MOD_ASSIGN  */
    ADD_ASSIGN = 281,              /* ADD_ASSIGN  */
    SUB_ASSIGN = 282,              /* SUB_ASSIGN  */
    LEFT_ASSIGN = 283,             /* LEFT_ASSIGN  */
    RIGHT_ASSIGN = 284,            /* RIGHT_ASSIGN  */
    AND_ASSIGN = 285,              /* AND_ASSIGN  */
    XOR_ASSIGN = 286,              /* XOR_ASSIGN  */
    OR_ASSIGN = 287,               /* OR_ASSIGN  */
    TYPEDEF = 288,                 /* TYPEDEF  */
    EXTERN = 289,                  /* EXTERN  */
    STATIC = 290,                  /* STATIC  */
    AUTO = 291,                    /* AUTO  */
    REGISTER = 292,                /* REGISTER  */
    CONSTEXPR = 293,               /* CONSTEXPR  */
    CODE = 294,                    /* CODE  */
    EEPROM = 295,                  /* EEPROM  */
    INTERRUPT = 296,               /* INTERRUPT  */
    SFR = 297,                     /* SFR  */
    SFR16 = 298,                   /* SFR16  */
    SFR32 = 299,                   /* SFR32  */
    ADDRESSMOD = 300,              /* ADDRESSMOD  */
    AT = 301,                      /* AT  */
    SBIT = 302,                    /* SBIT  */
    REENTRANT = 303,               /* REENTRANT  */
    USING = 304,                   /* USING  */
    XDATA = 305,                   /* XDATA  */
    DATA = 306,                    /* DATA  */
    IDATA = 307,                   /* IDATA  */
    PDATA = 308,                   /* PDATA  */
    ELLIPSIS = 309,                /* ELLIPSIS  */
    CRITICAL = 310,                /* CRITICAL  */
    NONBANKED = 311,               /* NONBANKED  */
    BANKED = 312,                  /* BANKED  */
    SHADOWREGS = 313,              /* SHADOWREGS  */
    SD_WPARAM = 314,               /* SD_WPARAM  */
    SD_BOOL = 315,                 /* SD_BOOL  */
    SD_CHAR = 316,                 /* SD_CHAR  */
    SD_SHORT = 317,                /* SD_SHORT  */
    SD_INT = 318,                  /* SD_INT  */
    SD_LONG = 319,                 /* SD_LONG  */
    SIGNED = 320,                  /* SIGNED  */
    UNSIGNED = 321,                /* UNSIGNED  */
    SD_FLOAT = 322,                /* SD_FLOAT  */
    DOUBLE = 323,                  /* DOUBLE  */
    FIXED16X16 = 324,              /* FIXED16X16  */
    SD_CONST = 325,                /* SD_CONST  */
    VOLATILE = 326,                /* VOLATILE  */
    SD_VOID = 327,                 /* SD_VOID  */
    BIT = 328,                     /* BIT  */
    COMPLEX = 329,                 /* COMPLEX  */
    IMAGINARY = 330,               /* IMAGINARY  */
    STRUCT = 331,                  /* STRUCT  */
    UNION = 332,                   /* UNION  */
    ENUM = 333,                    /* ENUM  */
    RANGE = 334,                   /* RANGE  */
    SD_FAR = 335,                  /* SD_FAR  */
    CASE = 336,                    /* CASE  */
    DEFAULT = 337,                 /* DEFAULT  */
    IF = 338,                      /* IF  */
    ELSE = 339,                    /* ELSE  */
    SWITCH = 340,                  /* SWITCH  */
    WHILE = 341,                   /* WHILE  */
    DO = 342,                      /* DO  */
    FOR = 343,                     /* FOR  */
    GOTO = 344,                    /* GOTO  */
    CONTINUE = 345,                /* CONTINUE  */
    BREAK = 346,                   /* BREAK  */
    RETURN = 347,                  /* RETURN  */
    NAKED = 348,                   /* NAKED  */
    JAVANATIVE = 349,              /* JAVANATIVE  */
    OVERLAY = 350,                 /* OVERLAY  */
    TRAP = 351,                    /* TRAP  */
    STRING_LITERAL = 352,          /* STRING_LITERAL  */
    INLINEASM = 353,               /* INLINEASM  */
    FUNC = 354,                    /* FUNC  */
    IFX = 355,                     /* IFX  */
    ADDRESS_OF = 356,              /* ADDRESS_OF  */
    GET_VALUE_AT_ADDRESS = 357,    /* GET_VALUE_AT_ADDRESS  */
    SET_VALUE_AT_ADDRESS = 358,    /* SET_VALUE_AT_ADDRESS  */
    SPIL = 359,                    /* SPIL  */
    UNSPIL = 360,                  /* UNSPIL  */
    GETABIT = 361,                 /* GETABIT  */
    GETBYTE = 362,                 /* GETBYTE  */
    GETWORD = 363,                 /* GETWORD  */
    BITWISEAND = 364,              /* BITWISEAND  */
    UNARYMINUS = 365,              /* UNARYMINUS  */
    IPUSH = 366,                   /* IPUSH  */
    IPUSH_VALUE_AT_ADDRESS = 367,  /* IPUSH_VALUE_AT_ADDRESS  */
    IPOP = 368,                    /* IPOP  */
    PCALL = 369,                   /* PCALL  */
    ENDFUNCTION = 370,             /* ENDFUNCTION  */
    JUMPTABLE = 371,               /* JUMPTABLE  */
    ROT = 372,                     /* ROT  */
    CAST = 373,                    /* CAST  */
    CALL = 374,                    /* CALL  */
    PARAM = 375,                   /* PARAM  */
    NULLOP = 376,                  /* NULLOP  */
    BLOCK = 377,                   /* BLOCK  */
    LABEL = 378,                   /* LABEL  */
    RECEIVE = 379,                 /* RECEIVE  */
    SEND = 380,                    /* SEND  */
    ARRAYINIT = 381,               /* ARRAYINIT  */
    DUMMY_READ_VOLATILE = 382,     /* DUMMY_READ_VOLATILE  */
    ENDCRITICAL = 383,             /* ENDCRITICAL  */
    INLINE = 384,                  /* INLINE  */
    RESTRICT = 385,                /* RESTRICT  */
    SMALLC = 386,                  /* SMALLC  */
    RAISONANCE = 387,              /* RAISONANCE  */
    IAR = 388,                     /* IAR  */
    COSMIC = 389,                  /* COSMIC  */
    SDCCCALL = 390,                /* SDCCCALL  */
    PRESERVES_REGS = 391,          /* PRESERVES_REGS  */
    Z88DK_FASTCALL = 392,          /* Z88DK_FASTCALL  */
    Z88DK_CALLEE = 393,            /* Z88DK_CALLEE  */
    Z88DK_SHORTCALL = 394,         /* Z88DK_SHORTCALL  */
    Z88DK_PARAMS_OFFSET = 395,     /* Z88DK_PARAMS_OFFSET  */
    ALIGNAS = 396,                 /* ALIGNAS  */
    ALIGNOF = 397,                 /* ALIGNOF  */
    ATOMIC = 398,                  /* ATOMIC  */
    GENERIC = 399,                 /* GENERIC  */
    NORETURN = 400,                /* NORETURN  */
    STATIC_ASSERT = 401,           /* STATIC_ASSERT  */
    THREAD_LOCAL = 402,            /* THREAD_LOCAL  */
    TOKEN_FALSE = 403,             /* TOKEN_FALSE  */
    TOKEN_TRUE = 404,              /* TOKEN_TRUE  */
    NULLPTR = 405,                 /* NULLPTR  */
    TYPEOF = 406,                  /* TYPEOF  */
    TYPEOF_UNQUAL = 407,           /* TYPEOF_UNQUAL  */
    SD_BITINT = 408,               /* SD_BITINT  */
    DECIMAL32 = 409,               /* DECIMAL32  */
    DECIMAL64 = 410,               /* DECIMAL64  */
    DECIMAL128 = 411,              /* DECIMAL128  */
    ASM = 412,                     /* ASM  */
    GENERIC_ASSOC_LIST = 413,      /* GENERIC_ASSOC_LIST  */
    GENERIC_ASSOCIATION = 414      /* GENERIC_ASSOCIATION  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define IDENTIFIER 258
#define TYPE_NAME 259
#define ADDRSPACE_NAME 260
#define CONSTANT 261
#define SIZEOF 262
#define COUNTOF 263
#define OFFSETOF 264
#define PTR_OP 265
#define INC_OP 266
#define DEC_OP 267
#define LEFT_OP 268
#define RIGHT_OP 269
#define LE_OP 270
#define GE_OP 271
#define EQ_OP 272
#define NE_OP 273
#define AND_OP 274
#define OR_OP 275
#define ATTR_START 276
#define TOK_SEP 277
#define MUL_ASSIGN 278
#define DIV_ASSIGN 279
#define MOD_ASSIGN 280
#define ADD_ASSIGN 281
#define SUB_ASSIGN 282
#define LEFT_ASSIGN 283
#define RIGHT_ASSIGN 284
#define AND_ASSIGN 285
#define XOR_ASSIGN 286
#define OR_ASSIGN 287
#define TYPEDEF 288
#define EXTERN 289
#define STATIC 290
#define AUTO 291
#define REGISTER 292
#define CONSTEXPR 293
#define CODE 294
#define EEPROM 295
#define INTERRUPT 296
#define SFR 297
#define SFR16 298
#define SFR32 299
#define ADDRESSMOD 300
#define AT 301
#define SBIT 302
#define REENTRANT 303
#define USING 304
#define XDATA 305
#define DATA 306
#define IDATA 307
#define PDATA 308
#define ELLIPSIS 309
#define CRITICAL 310
#define NONBANKED 311
#define BANKED 312
#define SHADOWREGS 313
#define SD_WPARAM 314
#define SD_BOOL 315
#define SD_CHAR 316
#define SD_SHORT 317
#define SD_INT 318
#define SD_LONG 319
#define SIGNED 320
#define UNSIGNED 321
#define SD_FLOAT 322
#define DOUBLE 323
#define FIXED16X16 324
#define SD_CONST 325
#define VOLATILE 326
#define SD_VOID 327
#define BIT 328
#define COMPLEX 329
#define IMAGINARY 330
#define STRUCT 331
#define UNION 332
#define ENUM 333
#define RANGE 334
#define SD_FAR 335
#define CASE 336
#define DEFAULT 337
#define IF 338
#define ELSE 339
#define SWITCH 340
#define WHILE 341
#define DO 342
#define FOR 343
#define GOTO 344
#define CONTINUE 345
#define BREAK 346
#define RETURN 347
#define NAKED 348
#define JAVANATIVE 349
#define OVERLAY 350
#define TRAP 351
#define STRING_LITERAL 352
#define INLINEASM 353
#define FUNC 354
#define IFX 355
#define ADDRESS_OF 356
#define GET_VALUE_AT_ADDRESS 357
#define SET_VALUE_AT_ADDRESS 358
#define SPIL 359
#define UNSPIL 360
#define GETABIT 361
#define GETBYTE 362
#define GETWORD 363
#define BITWISEAND 364
#define UNARYMINUS 365
#define IPUSH 366
#define IPUSH_VALUE_AT_ADDRESS 367
#define IPOP 368
#define PCALL 369
#define ENDFUNCTION 370
#define JUMPTABLE 371
#define ROT 372
#define CAST 373
#define CALL 374
#define PARAM 375
#define NULLOP 376
#define BLOCK 377
#define LABEL 378
#define RECEIVE 379
#define SEND 380
#define ARRAYINIT 381
#define DUMMY_READ_VOLATILE 382
#define ENDCRITICAL 383
#define INLINE 384
#define RESTRICT 385
#define SMALLC 386
#define RAISONANCE 387
#define IAR 388
#define COSMIC 389
#define SDCCCALL 390
#define PRESERVES_REGS 391
#define Z88DK_FASTCALL 392
#define Z88DK_CALLEE 393
#define Z88DK_SHORTCALL 394
#define Z88DK_PARAMS_OFFSET 395
#define ALIGNAS 396
#define ALIGNOF 397
#define ATOMIC 398
#define GENERIC 399
#define NORETURN 400
#define STATIC_ASSERT 401
#define THREAD_LOCAL 402
#define TOKEN_FALSE 403
#define TOKEN_TRUE 404
#define NULLPTR 405
#define TYPEOF 406
#define TYPEOF_UNQUAL 407
#define SD_BITINT 408
#define DECIMAL32 409
#define DECIMAL64 410
#define DECIMAL128 411
#define ASM 412
#define GENERIC_ASSOC_LIST 413
#define GENERIC_ASSOCIATION 414

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 79 "SDCC.y"

    attribute  *attr;       /* attribute                              */
    symbol     *sym;        /* symbol table pointer                   */
    structdef  *sdef;       /* structure definition                   */
    char       yychar[SDCC_NAME_MAX+1];
    sym_link   *lnk;        /* declarator  or specifier               */
    int        yyint;       /* integer value returned                 */
    value      *val;        /* for integer constant                   */
    initList   *ilist;      /* initial list                           */
    designation*dsgn;       /* designator                             */
    const char *yystr;      /* pointer to dynamicaly allocated string */
    ast        *asts;       /* expression tree                        */

#line 399 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
