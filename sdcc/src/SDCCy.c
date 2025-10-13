/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 27 "SDCC.y"

#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include "SDCCglobl.h"
#include "SDCCattr.h"
#include "SDCCsymt.h"
#include "SDCChasht.h"
#include "SDCCval.h"
#include "SDCCmem.h"
#include "SDCCast.h"
#include "port.h"
#include "newalloc.h"
#include "SDCCerr.h"
#include "SDCCutil.h"
#include "SDCCbtree.h"
#include "SDCCopt.h"
#include "dbuf_string.h"

extern int yyerror (char *);
extern FILE     *yyin;
long NestLevel = 0;     /* current NestLevel       */
int stackPtr  = 1;      /* stack pointer           */
int xstackPtr = 0;      /* xstack pointer          */
int reentrant = 0;
int blockNo   = 0;      /* sequential block number  */
int currBlockno=0;
int inCriticalFunction = 0;
int inCriticalBlock = 0;
int seqPointNo= 1;      /* sequence point number */
int ignoreTypedefType=0;
extern int yylex();
int yyparse(void);
extern int noLineno;
char lbuff[1024];       /* local buffer */
char function_name[256] = {0};

/* break & continue stacks */
STACK_DCL(continueStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(breakStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(forStack  ,symbol *,MAX_NEST_LEVEL)
STACK_DCL(swStk   ,ast   *,MAX_NEST_LEVEL)
STACK_DCL(blockNum,int,MAX_NEST_LEVEL*3)

value *cenum = NULL;        /* current enumeration  type chain*/
bool uselessDecl = true;

#define YYDEBUG 1


#line 122 "y.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Use api.header.include to #include this header
   instead of duplicating it here.  */
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

#line 507 "y.tab.c"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_IDENTIFIER = 3,                 /* IDENTIFIER  */
  YYSYMBOL_TYPE_NAME = 4,                  /* TYPE_NAME  */
  YYSYMBOL_ADDRSPACE_NAME = 5,             /* ADDRSPACE_NAME  */
  YYSYMBOL_CONSTANT = 6,                   /* CONSTANT  */
  YYSYMBOL_SIZEOF = 7,                     /* SIZEOF  */
  YYSYMBOL_COUNTOF = 8,                    /* COUNTOF  */
  YYSYMBOL_OFFSETOF = 9,                   /* OFFSETOF  */
  YYSYMBOL_PTR_OP = 10,                    /* PTR_OP  */
  YYSYMBOL_INC_OP = 11,                    /* INC_OP  */
  YYSYMBOL_DEC_OP = 12,                    /* DEC_OP  */
  YYSYMBOL_LEFT_OP = 13,                   /* LEFT_OP  */
  YYSYMBOL_RIGHT_OP = 14,                  /* RIGHT_OP  */
  YYSYMBOL_LE_OP = 15,                     /* LE_OP  */
  YYSYMBOL_GE_OP = 16,                     /* GE_OP  */
  YYSYMBOL_EQ_OP = 17,                     /* EQ_OP  */
  YYSYMBOL_NE_OP = 18,                     /* NE_OP  */
  YYSYMBOL_AND_OP = 19,                    /* AND_OP  */
  YYSYMBOL_OR_OP = 20,                     /* OR_OP  */
  YYSYMBOL_ATTR_START = 21,                /* ATTR_START  */
  YYSYMBOL_TOK_SEP = 22,                   /* TOK_SEP  */
  YYSYMBOL_MUL_ASSIGN = 23,                /* MUL_ASSIGN  */
  YYSYMBOL_DIV_ASSIGN = 24,                /* DIV_ASSIGN  */
  YYSYMBOL_MOD_ASSIGN = 25,                /* MOD_ASSIGN  */
  YYSYMBOL_ADD_ASSIGN = 26,                /* ADD_ASSIGN  */
  YYSYMBOL_SUB_ASSIGN = 27,                /* SUB_ASSIGN  */
  YYSYMBOL_LEFT_ASSIGN = 28,               /* LEFT_ASSIGN  */
  YYSYMBOL_RIGHT_ASSIGN = 29,              /* RIGHT_ASSIGN  */
  YYSYMBOL_AND_ASSIGN = 30,                /* AND_ASSIGN  */
  YYSYMBOL_XOR_ASSIGN = 31,                /* XOR_ASSIGN  */
  YYSYMBOL_OR_ASSIGN = 32,                 /* OR_ASSIGN  */
  YYSYMBOL_TYPEDEF = 33,                   /* TYPEDEF  */
  YYSYMBOL_EXTERN = 34,                    /* EXTERN  */
  YYSYMBOL_STATIC = 35,                    /* STATIC  */
  YYSYMBOL_AUTO = 36,                      /* AUTO  */
  YYSYMBOL_REGISTER = 37,                  /* REGISTER  */
  YYSYMBOL_CONSTEXPR = 38,                 /* CONSTEXPR  */
  YYSYMBOL_CODE = 39,                      /* CODE  */
  YYSYMBOL_EEPROM = 40,                    /* EEPROM  */
  YYSYMBOL_INTERRUPT = 41,                 /* INTERRUPT  */
  YYSYMBOL_SFR = 42,                       /* SFR  */
  YYSYMBOL_SFR16 = 43,                     /* SFR16  */
  YYSYMBOL_SFR32 = 44,                     /* SFR32  */
  YYSYMBOL_ADDRESSMOD = 45,                /* ADDRESSMOD  */
  YYSYMBOL_AT = 46,                        /* AT  */
  YYSYMBOL_SBIT = 47,                      /* SBIT  */
  YYSYMBOL_REENTRANT = 48,                 /* REENTRANT  */
  YYSYMBOL_USING = 49,                     /* USING  */
  YYSYMBOL_XDATA = 50,                     /* XDATA  */
  YYSYMBOL_DATA = 51,                      /* DATA  */
  YYSYMBOL_IDATA = 52,                     /* IDATA  */
  YYSYMBOL_PDATA = 53,                     /* PDATA  */
  YYSYMBOL_ELLIPSIS = 54,                  /* ELLIPSIS  */
  YYSYMBOL_CRITICAL = 55,                  /* CRITICAL  */
  YYSYMBOL_NONBANKED = 56,                 /* NONBANKED  */
  YYSYMBOL_BANKED = 57,                    /* BANKED  */
  YYSYMBOL_SHADOWREGS = 58,                /* SHADOWREGS  */
  YYSYMBOL_SD_WPARAM = 59,                 /* SD_WPARAM  */
  YYSYMBOL_SD_BOOL = 60,                   /* SD_BOOL  */
  YYSYMBOL_SD_CHAR = 61,                   /* SD_CHAR  */
  YYSYMBOL_SD_SHORT = 62,                  /* SD_SHORT  */
  YYSYMBOL_SD_INT = 63,                    /* SD_INT  */
  YYSYMBOL_SD_LONG = 64,                   /* SD_LONG  */
  YYSYMBOL_SIGNED = 65,                    /* SIGNED  */
  YYSYMBOL_UNSIGNED = 66,                  /* UNSIGNED  */
  YYSYMBOL_SD_FLOAT = 67,                  /* SD_FLOAT  */
  YYSYMBOL_DOUBLE = 68,                    /* DOUBLE  */
  YYSYMBOL_FIXED16X16 = 69,                /* FIXED16X16  */
  YYSYMBOL_SD_CONST = 70,                  /* SD_CONST  */
  YYSYMBOL_VOLATILE = 71,                  /* VOLATILE  */
  YYSYMBOL_SD_VOID = 72,                   /* SD_VOID  */
  YYSYMBOL_BIT = 73,                       /* BIT  */
  YYSYMBOL_COMPLEX = 74,                   /* COMPLEX  */
  YYSYMBOL_IMAGINARY = 75,                 /* IMAGINARY  */
  YYSYMBOL_STRUCT = 76,                    /* STRUCT  */
  YYSYMBOL_UNION = 77,                     /* UNION  */
  YYSYMBOL_ENUM = 78,                      /* ENUM  */
  YYSYMBOL_RANGE = 79,                     /* RANGE  */
  YYSYMBOL_SD_FAR = 80,                    /* SD_FAR  */
  YYSYMBOL_CASE = 81,                      /* CASE  */
  YYSYMBOL_DEFAULT = 82,                   /* DEFAULT  */
  YYSYMBOL_IF = 83,                        /* IF  */
  YYSYMBOL_ELSE = 84,                      /* ELSE  */
  YYSYMBOL_SWITCH = 85,                    /* SWITCH  */
  YYSYMBOL_WHILE = 86,                     /* WHILE  */
  YYSYMBOL_DO = 87,                        /* DO  */
  YYSYMBOL_FOR = 88,                       /* FOR  */
  YYSYMBOL_GOTO = 89,                      /* GOTO  */
  YYSYMBOL_CONTINUE = 90,                  /* CONTINUE  */
  YYSYMBOL_BREAK = 91,                     /* BREAK  */
  YYSYMBOL_RETURN = 92,                    /* RETURN  */
  YYSYMBOL_NAKED = 93,                     /* NAKED  */
  YYSYMBOL_JAVANATIVE = 94,                /* JAVANATIVE  */
  YYSYMBOL_OVERLAY = 95,                   /* OVERLAY  */
  YYSYMBOL_TRAP = 96,                      /* TRAP  */
  YYSYMBOL_STRING_LITERAL = 97,            /* STRING_LITERAL  */
  YYSYMBOL_INLINEASM = 98,                 /* INLINEASM  */
  YYSYMBOL_FUNC = 99,                      /* FUNC  */
  YYSYMBOL_IFX = 100,                      /* IFX  */
  YYSYMBOL_ADDRESS_OF = 101,               /* ADDRESS_OF  */
  YYSYMBOL_GET_VALUE_AT_ADDRESS = 102,     /* GET_VALUE_AT_ADDRESS  */
  YYSYMBOL_SET_VALUE_AT_ADDRESS = 103,     /* SET_VALUE_AT_ADDRESS  */
  YYSYMBOL_SPIL = 104,                     /* SPIL  */
  YYSYMBOL_UNSPIL = 105,                   /* UNSPIL  */
  YYSYMBOL_GETABIT = 106,                  /* GETABIT  */
  YYSYMBOL_GETBYTE = 107,                  /* GETBYTE  */
  YYSYMBOL_GETWORD = 108,                  /* GETWORD  */
  YYSYMBOL_BITWISEAND = 109,               /* BITWISEAND  */
  YYSYMBOL_UNARYMINUS = 110,               /* UNARYMINUS  */
  YYSYMBOL_IPUSH = 111,                    /* IPUSH  */
  YYSYMBOL_IPUSH_VALUE_AT_ADDRESS = 112,   /* IPUSH_VALUE_AT_ADDRESS  */
  YYSYMBOL_IPOP = 113,                     /* IPOP  */
  YYSYMBOL_PCALL = 114,                    /* PCALL  */
  YYSYMBOL_ENDFUNCTION = 115,              /* ENDFUNCTION  */
  YYSYMBOL_JUMPTABLE = 116,                /* JUMPTABLE  */
  YYSYMBOL_ROT = 117,                      /* ROT  */
  YYSYMBOL_CAST = 118,                     /* CAST  */
  YYSYMBOL_CALL = 119,                     /* CALL  */
  YYSYMBOL_PARAM = 120,                    /* PARAM  */
  YYSYMBOL_NULLOP = 121,                   /* NULLOP  */
  YYSYMBOL_BLOCK = 122,                    /* BLOCK  */
  YYSYMBOL_LABEL = 123,                    /* LABEL  */
  YYSYMBOL_RECEIVE = 124,                  /* RECEIVE  */
  YYSYMBOL_SEND = 125,                     /* SEND  */
  YYSYMBOL_ARRAYINIT = 126,                /* ARRAYINIT  */
  YYSYMBOL_DUMMY_READ_VOLATILE = 127,      /* DUMMY_READ_VOLATILE  */
  YYSYMBOL_ENDCRITICAL = 128,              /* ENDCRITICAL  */
  YYSYMBOL_INLINE = 129,                   /* INLINE  */
  YYSYMBOL_RESTRICT = 130,                 /* RESTRICT  */
  YYSYMBOL_SMALLC = 131,                   /* SMALLC  */
  YYSYMBOL_RAISONANCE = 132,               /* RAISONANCE  */
  YYSYMBOL_IAR = 133,                      /* IAR  */
  YYSYMBOL_COSMIC = 134,                   /* COSMIC  */
  YYSYMBOL_SDCCCALL = 135,                 /* SDCCCALL  */
  YYSYMBOL_PRESERVES_REGS = 136,           /* PRESERVES_REGS  */
  YYSYMBOL_Z88DK_FASTCALL = 137,           /* Z88DK_FASTCALL  */
  YYSYMBOL_Z88DK_CALLEE = 138,             /* Z88DK_CALLEE  */
  YYSYMBOL_Z88DK_SHORTCALL = 139,          /* Z88DK_SHORTCALL  */
  YYSYMBOL_Z88DK_PARAMS_OFFSET = 140,      /* Z88DK_PARAMS_OFFSET  */
  YYSYMBOL_ALIGNAS = 141,                  /* ALIGNAS  */
  YYSYMBOL_ALIGNOF = 142,                  /* ALIGNOF  */
  YYSYMBOL_ATOMIC = 143,                   /* ATOMIC  */
  YYSYMBOL_GENERIC = 144,                  /* GENERIC  */
  YYSYMBOL_NORETURN = 145,                 /* NORETURN  */
  YYSYMBOL_STATIC_ASSERT = 146,            /* STATIC_ASSERT  */
  YYSYMBOL_THREAD_LOCAL = 147,             /* THREAD_LOCAL  */
  YYSYMBOL_TOKEN_FALSE = 148,              /* TOKEN_FALSE  */
  YYSYMBOL_TOKEN_TRUE = 149,               /* TOKEN_TRUE  */
  YYSYMBOL_NULLPTR = 150,                  /* NULLPTR  */
  YYSYMBOL_TYPEOF = 151,                   /* TYPEOF  */
  YYSYMBOL_TYPEOF_UNQUAL = 152,            /* TYPEOF_UNQUAL  */
  YYSYMBOL_SD_BITINT = 153,                /* SD_BITINT  */
  YYSYMBOL_DECIMAL32 = 154,                /* DECIMAL32  */
  YYSYMBOL_DECIMAL64 = 155,                /* DECIMAL64  */
  YYSYMBOL_DECIMAL128 = 156,               /* DECIMAL128  */
  YYSYMBOL_ASM = 157,                      /* ASM  */
  YYSYMBOL_GENERIC_ASSOC_LIST = 158,       /* GENERIC_ASSOC_LIST  */
  YYSYMBOL_GENERIC_ASSOCIATION = 159,      /* GENERIC_ASSOCIATION  */
  YYSYMBOL_160_ = 160,                     /* '{'  */
  YYSYMBOL_161_ = 161,                     /* ':'  */
  YYSYMBOL_162_ = 162,                     /* '('  */
  YYSYMBOL_163_ = 163,                     /* ')'  */
  YYSYMBOL_164_ = 164,                     /* ','  */
  YYSYMBOL_165_ = 165,                     /* '['  */
  YYSYMBOL_166_ = 166,                     /* ']'  */
  YYSYMBOL_167_ = 167,                     /* '.'  */
  YYSYMBOL_168_ = 168,                     /* '&'  */
  YYSYMBOL_169_ = 169,                     /* '*'  */
  YYSYMBOL_170_ = 170,                     /* '+'  */
  YYSYMBOL_171_ = 171,                     /* '-'  */
  YYSYMBOL_172_ = 172,                     /* '~'  */
  YYSYMBOL_173_ = 173,                     /* '!'  */
  YYSYMBOL_174_ = 174,                     /* '/'  */
  YYSYMBOL_175_ = 175,                     /* '%'  */
  YYSYMBOL_176_ = 176,                     /* '<'  */
  YYSYMBOL_177_ = 177,                     /* '>'  */
  YYSYMBOL_178_ = 178,                     /* '^'  */
  YYSYMBOL_179_ = 179,                     /* '|'  */
  YYSYMBOL_180_ = 180,                     /* '?'  */
  YYSYMBOL_181_ = 181,                     /* '='  */
  YYSYMBOL_182_ = 182,                     /* ';'  */
  YYSYMBOL_183_ = 183,                     /* '}'  */
  YYSYMBOL_YYACCEPT = 184,                 /* $accept  */
  YYSYMBOL_primary_expression = 185,       /* primary_expression  */
  YYSYMBOL_predefined_constant = 186,      /* predefined_constant  */
  YYSYMBOL_generic_selection = 187,        /* generic_selection  */
  YYSYMBOL_generic_controlling_operand = 188, /* generic_controlling_operand  */
  YYSYMBOL_generic_assoc_list = 189,       /* generic_assoc_list  */
  YYSYMBOL_generic_association = 190,      /* generic_association  */
  YYSYMBOL_postfix_expression = 191,       /* postfix_expression  */
  YYSYMBOL_192_1 = 192,                    /* $@1  */
  YYSYMBOL_193_2 = 193,                    /* $@2  */
  YYSYMBOL_argument_expr_list = 194,       /* argument_expr_list  */
  YYSYMBOL_unary_expression = 195,         /* unary_expression  */
  YYSYMBOL_unary_operator = 196,           /* unary_operator  */
  YYSYMBOL_cast_expression = 197,          /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 198, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 199,      /* additive_expression  */
  YYSYMBOL_shift_expression = 200,         /* shift_expression  */
  YYSYMBOL_relational_expression = 201,    /* relational_expression  */
  YYSYMBOL_equality_expression = 202,      /* equality_expression  */
  YYSYMBOL_and_expression = 203,           /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 204,  /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 205,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expr = 206,         /* logical_and_expr  */
  YYSYMBOL_207_3 = 207,                    /* $@3  */
  YYSYMBOL_logical_or_expr = 208,          /* logical_or_expr  */
  YYSYMBOL_209_4 = 209,                    /* $@4  */
  YYSYMBOL_conditional_expr = 210,         /* conditional_expr  */
  YYSYMBOL_211_5 = 211,                    /* $@5  */
  YYSYMBOL_212_6 = 212,                    /* $@6  */
  YYSYMBOL_assignment_expr = 213,          /* assignment_expr  */
  YYSYMBOL_assignment_operator = 214,      /* assignment_operator  */
  YYSYMBOL_expression = 215,               /* expression  */
  YYSYMBOL_216_7 = 216,                    /* $@7  */
  YYSYMBOL_expression_opt = 217,           /* expression_opt  */
  YYSYMBOL_constant_expr = 218,            /* constant_expr  */
  YYSYMBOL_constant_range_expr = 219,      /* constant_range_expr  */
  YYSYMBOL_declaration = 220,              /* declaration  */
  YYSYMBOL_declaration_specifiers = 221,   /* declaration_specifiers  */
  YYSYMBOL_declaration_specifiers_ = 222,  /* declaration_specifiers_  */
  YYSYMBOL_init_declarator_list = 223,     /* init_declarator_list  */
  YYSYMBOL_init_declarator = 224,          /* init_declarator  */
  YYSYMBOL_attribute_declaration = 225,    /* attribute_declaration  */
  YYSYMBOL_simple_declaration = 226,       /* simple_declaration  */
  YYSYMBOL_storage_class_specifiers = 227, /* storage_class_specifiers  */
  YYSYMBOL_storage_class_specifiers_ = 228, /* storage_class_specifiers_  */
  YYSYMBOL_storage_class_specifier = 229,  /* storage_class_specifier  */
  YYSYMBOL_type_specifier = 230,           /* type_specifier  */
  YYSYMBOL_type_specifier_without_struct_or_union = 231, /* type_specifier_without_struct_or_union  */
  YYSYMBOL_typeof_specifier = 232,         /* typeof_specifier  */
  YYSYMBOL_struct_or_union_specifier = 233, /* struct_or_union_specifier  */
  YYSYMBOL_234_8 = 234,                    /* $@8  */
  YYSYMBOL_struct_or_union = 235,          /* struct_or_union  */
  YYSYMBOL_member_declaration_list = 236,  /* member_declaration_list  */
  YYSYMBOL_member_declaration = 237,       /* member_declaration  */
  YYSYMBOL_type_specifier_qualifier = 238, /* type_specifier_qualifier  */
  YYSYMBOL_type_specifier_qualifier_without_struct_or_union = 239, /* type_specifier_qualifier_without_struct_or_union  */
  YYSYMBOL_member_declarator_list = 240,   /* member_declarator_list  */
  YYSYMBOL_member_declarator = 241,        /* member_declarator  */
  YYSYMBOL_enum_specifier = 242,           /* enum_specifier  */
  YYSYMBOL_simple_typed_enum_decl = 243,   /* simple_typed_enum_decl  */
  YYSYMBOL_enum_comma_opt = 244,           /* enum_comma_opt  */
  YYSYMBOL_enumerator_list = 245,          /* enumerator_list  */
  YYSYMBOL_enumerator = 246,               /* enumerator  */
  YYSYMBOL_enum_type_specifier = 247,      /* enum_type_specifier  */
  YYSYMBOL_type_qualifier = 248,           /* type_qualifier  */
  YYSYMBOL_function_specifier = 249,       /* function_specifier  */
  YYSYMBOL_alignment_specifier = 250,      /* alignment_specifier  */
  YYSYMBOL_declarator = 251,               /* declarator  */
  YYSYMBOL_direct_declarator = 252,        /* direct_declarator  */
  YYSYMBOL_declarator2 = 253,              /* declarator2  */
  YYSYMBOL_array_declarator = 254,         /* array_declarator  */
  YYSYMBOL_declarator2_function_attributes = 255, /* declarator2_function_attributes  */
  YYSYMBOL_function_declarator = 256,      /* function_declarator  */
  YYSYMBOL_257_9 = 257,                    /* $@9  */
  YYSYMBOL_258_10 = 258,                   /* $@10  */
  YYSYMBOL_pointer = 259,                  /* pointer  */
  YYSYMBOL_unqualified_pointer = 260,      /* unqualified_pointer  */
  YYSYMBOL_type_qualifier_list = 261,      /* type_qualifier_list  */
  YYSYMBOL_type_qualifier_list_opt = 262,  /* type_qualifier_list_opt  */
  YYSYMBOL_parameter_type_list = 263,      /* parameter_type_list  */
  YYSYMBOL_parameter_list = 264,           /* parameter_list  */
  YYSYMBOL_parameter_declaration = 265,    /* parameter_declaration  */
  YYSYMBOL_abstract_declarator = 266,      /* abstract_declarator  */
  YYSYMBOL_direct_abstract_declarator = 267, /* direct_abstract_declarator  */
  YYSYMBOL_direct_abstract_declarator_opt = 268, /* direct_abstract_declarator_opt  */
  YYSYMBOL_array_abstract_declarator = 269, /* array_abstract_declarator  */
  YYSYMBOL_function_abstract_declarator = 270, /* function_abstract_declarator  */
  YYSYMBOL_271_11 = 271,                   /* $@11  */
  YYSYMBOL_initializer = 272,              /* initializer  */
  YYSYMBOL_braced_initializer = 273,       /* braced_initializer  */
  YYSYMBOL_initializer_list = 274,         /* initializer_list  */
  YYSYMBOL_designation_opt = 275,          /* designation_opt  */
  YYSYMBOL_designation = 276,              /* designation  */
  YYSYMBOL_designator_list = 277,          /* designator_list  */
  YYSYMBOL_designator = 278,               /* designator  */
  YYSYMBOL_static_assert_declaration = 279, /* static_assert_declaration  */
  YYSYMBOL_attribute_specifier_sequence = 280, /* attribute_specifier_sequence  */
  YYSYMBOL_attribute_specifier_sequence_opt = 281, /* attribute_specifier_sequence_opt  */
  YYSYMBOL_attribute_specifier = 282,      /* attribute_specifier  */
  YYSYMBOL_attribute_list = 283,           /* attribute_list  */
  YYSYMBOL_attribute = 284,                /* attribute  */
  YYSYMBOL_attribute_opt = 285,            /* attribute_opt  */
  YYSYMBOL_attribute_token = 286,          /* attribute_token  */
  YYSYMBOL_attribute_argument_clause = 287, /* attribute_argument_clause  */
  YYSYMBOL_balanced_token_sequence = 288,  /* balanced_token_sequence  */
  YYSYMBOL_balanced_token = 289,           /* balanced_token  */
  YYSYMBOL_statement = 290,                /* statement  */
  YYSYMBOL_unlabeled_statement = 291,      /* unlabeled_statement  */
  YYSYMBOL_primary_block = 292,            /* primary_block  */
  YYSYMBOL_secondary_block = 293,          /* secondary_block  */
  YYSYMBOL_labeled_statement = 294,        /* labeled_statement  */
  YYSYMBOL_label = 295,                    /* label  */
  YYSYMBOL_296_12 = 296,                   /* @12  */
  YYSYMBOL_start_block = 297,              /* start_block  */
  YYSYMBOL_end_block = 298,                /* end_block  */
  YYSYMBOL_compound_statement = 299,       /* compound_statement  */
  YYSYMBOL_block_item_list = 300,          /* block_item_list  */
  YYSYMBOL_expression_statement = 301,     /* expression_statement  */
  YYSYMBOL_else_statement = 302,           /* else_statement  */
  YYSYMBOL_selection_header = 303,         /* selection_header  */
  YYSYMBOL_selection_statement = 304,      /* selection_statement  */
  YYSYMBOL_305_13 = 305,                   /* $@13  */
  YYSYMBOL_306_14 = 306,                   /* @14  */
  YYSYMBOL_iteration_statement = 307,      /* iteration_statement  */
  YYSYMBOL_308_15 = 308,                   /* $@15  */
  YYSYMBOL_309_16 = 309,                   /* $@16  */
  YYSYMBOL_jump_statement = 310,           /* jump_statement  */
  YYSYMBOL_translation_unit = 311,         /* translation_unit  */
  YYSYMBOL_external_declaration = 312,     /* external_declaration  */
  YYSYMBOL_function_definition = 313,      /* function_definition  */
  YYSYMBOL_314_17 = 314,                   /* $@17  */
  YYSYMBOL_315_18 = 315,                   /* $@18  */
  YYSYMBOL_function_body = 316,            /* function_body  */
  YYSYMBOL_file = 317,                     /* file  */
  YYSYMBOL_function_attributes = 318,      /* function_attributes  */
  YYSYMBOL_function_attribute = 319,       /* function_attribute  */
  YYSYMBOL_offsetof_member_designator = 320, /* offsetof_member_designator  */
  YYSYMBOL_321_19 = 321,                   /* $@19  */
  YYSYMBOL_string_literal_val = 322,       /* string_literal_val  */
  YYSYMBOL_Interrupt_storage = 323,        /* Interrupt_storage  */
  YYSYMBOL_sfr_reg_bit = 324,              /* sfr_reg_bit  */
  YYSYMBOL_sfr_attributes = 325,           /* sfr_attributes  */
  YYSYMBOL_opt_stag = 326,                 /* opt_stag  */
  YYSYMBOL_stag = 327,                     /* stag  */
  YYSYMBOL_opt_assign_expr = 328,          /* opt_assign_expr  */
  YYSYMBOL_specifier_qualifier_list = 329, /* specifier_qualifier_list  */
  YYSYMBOL_type_specifier_list_ = 330,     /* type_specifier_list_  */
  YYSYMBOL_type_specifier_list_without_struct_or_union = 331, /* type_specifier_list_without_struct_or_union  */
  YYSYMBOL_identifier_list = 332,          /* identifier_list  */
  YYSYMBOL_type_name = 333,                /* type_name  */
  YYSYMBOL_critical = 334,                 /* critical  */
  YYSYMBOL_critical_statement = 335,       /* critical_statement  */
  YYSYMBOL_statements_and_implicit = 336,  /* statements_and_implicit  */
  YYSYMBOL_declaration_after_statement = 337, /* declaration_after_statement  */
  YYSYMBOL_338_20 = 338,                   /* $@20  */
  YYSYMBOL_implicit_block = 339,           /* implicit_block  */
  YYSYMBOL_declaration_list = 340,         /* declaration_list  */
  YYSYMBOL_kr_declaration = 341,           /* kr_declaration  */
  YYSYMBOL_kr_declaration_list = 342,      /* kr_declaration_list  */
  YYSYMBOL_statement_list = 343,           /* statement_list  */
  YYSYMBOL_if = 344,                       /* if  */
  YYSYMBOL_switch = 345,                   /* switch  */
  YYSYMBOL_while = 346,                    /* while  */
  YYSYMBOL_do = 347,                       /* do  */
  YYSYMBOL_for = 348,                      /* for  */
  YYSYMBOL_asm_string_literal = 349,       /* asm_string_literal  */
  YYSYMBOL_asm_statement = 350,            /* asm_statement  */
  YYSYMBOL_addressmod = 351,               /* addressmod  */
  YYSYMBOL_identifier = 352                /* identifier  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  159
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   3292

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  184
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  169
/* YYNRULES -- Number of rules.  */
#define YYNRULES  438
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  704

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   414


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   173,     2,     2,     2,   175,   168,     2,
     162,   163,   169,   170,   164,   171,   167,   174,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,   161,   182,
     176,   181,   177,   180,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,   165,     2,   166,   178,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,   160,   179,   183,   172,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,    88,    89,    90,    91,    92,    93,    94,
      95,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     105,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,   121,   122,   123,   124,
     125,   126,   127,   128,   129,   130,   131,   132,   133,   134,
     135,   136,   137,   138,   139,   140,   141,   142,   143,   144,
     145,   146,   147,   148,   149,   150,   151,   152,   153,   154,
     155,   156,   157,   158,   159
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   181,   181,   182,   183,   184,   185,   186,   190,   191,
     192,   196,   200,   201,   205,   206,   210,   211,   215,   216,
     217,   219,   223,   223,   230,   230,   237,   239,   241,   267,
     297,   298,   302,   303,   304,   305,   314,   315,   316,   317,
     318,   319,   323,   324,   325,   326,   327,   328,   332,   333,
     337,   338,   339,   340,   344,   345,   346,   350,   351,   352,
     356,   357,   358,   359,   360,   364,   365,   366,   370,   371,
     375,   376,   380,   381,   385,   386,   386,   391,   392,   392,
     397,   398,   398,   403,   403,   416,   417,   462,   463,   464,
     465,   466,   467,   468,   469,   470,   471,   472,   476,   477,
     477,   481,   482,   486,   490,   496,   501,   525,   532,   536,
     542,   545,   546,   551,   552,   557,   558,   566,   567,   571,
     572,   576,   580,   594,   597,   598,   605,   609,   613,   617,
     622,   626,   630,   642,   643,   651,   656,   661,   666,   671,
     676,   681,   686,   691,   696,   702,   707,   711,   715,   719,
     723,   727,   733,   742,   746,   751,   759,   766,   775,   778,
     783,   788,   799,   813,   812,   923,   953,   954,   958,   959,
     972,   997,   998,   999,  1003,  1004,  1005,  1006,  1010,  1011,
    1019,  1020,  1030,  1044,  1048,  1053,  1058,  1082,  1106,  1126,
    1146,  1149,  1157,  1158,  1166,  1194,  1203,  1207,  1211,  1215,
    1219,  1223,  1227,  1231,  1235,  1239,  1243,  1250,  1254,  1261,
    1267,  1282,  1283,  1291,  1292,  1293,  1294,  1298,  1299,  1300,
    1304,  1329,  1353,  1378,  1404,  1405,  1437,  1450,  1449,  1494,
    1493,  1555,  1556,  1566,  1579,  1599,  1605,  1645,  1653,  1654,
    1662,  1665,  1672,  1673,  1677,  1678,  1686,  1703,  1729,  1744,
    1745,  1746,  1753,  1754,  1755,  1759,  1760,  1764,  1771,  1783,
    1784,  1796,  1798,  1797,  1828,  1829,  1833,  1841,  1842,  1846,
    1847,  1856,  1857,  1861,  1865,  1866,  1870,  1892,  1896,  1904,
    1917,  1924,  1932,  1935,  1942,  1951,  1955,  1968,  1972,  1980,
    1983,  1990,  1996,  2009,  2010,  2014,  2015,  2019,  2020,  2021,
    2027,  2028,  2033,  2034,  2038,  2042,  2043,  2047,  2051,  2055,
    2062,  2069,  2082,  2087,  2097,  2104,  2104,  2114,  2125,  2134,
    2135,  2143,  2144,  2145,  2149,  2150,  2154,  2155,  2159,  2160,
    2170,  2186,  2186,  2206,  2205,  2242,  2242,  2251,  2261,  2287,
    2286,  2327,  2337,  2350,  2360,  2369,  2383,  2384,  2388,  2392,
    2413,  2421,  2420,  2445,  2444,  2480,  2485,  2496,  2499,  2506,
    2507,  2511,  2515,  2518,  2521,  2524,  2527,  2530,  2536,  2539,
    2542,  2548,  2554,  2560,  2563,  2566,  2569,  2572,  2576,  2579,
    2582,  2591,  2615,  2633,  2634,  2634,  2641,  2648,  2675,  2679,
    2680,  2695,  2703,  2707,  2715,  2726,  2737,  2749,  2750,  2761,
    2780,  2798,  2811,  2814,  2816,  2824,  2825,  2834,  2835,  2843,
    2851,  2877,  2888,  2897,  2898,  2907,  2907,  2918,  2926,  2937,
    2953,  2987,  2997,  3011,  3038,  3039,  3040,  3041,  3044,  3055,
    3066,  3080,  3095,  3120,  3124,  3134,  3147,  3158,  3176
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "IDENTIFIER",
  "TYPE_NAME", "ADDRSPACE_NAME", "CONSTANT", "SIZEOF", "COUNTOF",
  "OFFSETOF", "PTR_OP", "INC_OP", "DEC_OP", "LEFT_OP", "RIGHT_OP", "LE_OP",
  "GE_OP", "EQ_OP", "NE_OP", "AND_OP", "OR_OP", "ATTR_START", "TOK_SEP",
  "MUL_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN",
  "LEFT_ASSIGN", "RIGHT_ASSIGN", "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN",
  "TYPEDEF", "EXTERN", "STATIC", "AUTO", "REGISTER", "CONSTEXPR", "CODE",
  "EEPROM", "INTERRUPT", "SFR", "SFR16", "SFR32", "ADDRESSMOD", "AT",
  "SBIT", "REENTRANT", "USING", "XDATA", "DATA", "IDATA", "PDATA",
  "ELLIPSIS", "CRITICAL", "NONBANKED", "BANKED", "SHADOWREGS", "SD_WPARAM",
  "SD_BOOL", "SD_CHAR", "SD_SHORT", "SD_INT", "SD_LONG", "SIGNED",
  "UNSIGNED", "SD_FLOAT", "DOUBLE", "FIXED16X16", "SD_CONST", "VOLATILE",
  "SD_VOID", "BIT", "COMPLEX", "IMAGINARY", "STRUCT", "UNION", "ENUM",
  "RANGE", "SD_FAR", "CASE", "DEFAULT", "IF", "ELSE", "SWITCH", "WHILE",
  "DO", "FOR", "GOTO", "CONTINUE", "BREAK", "RETURN", "NAKED",
  "JAVANATIVE", "OVERLAY", "TRAP", "STRING_LITERAL", "INLINEASM", "FUNC",
  "IFX", "ADDRESS_OF", "GET_VALUE_AT_ADDRESS", "SET_VALUE_AT_ADDRESS",
  "SPIL", "UNSPIL", "GETABIT", "GETBYTE", "GETWORD", "BITWISEAND",
  "UNARYMINUS", "IPUSH", "IPUSH_VALUE_AT_ADDRESS", "IPOP", "PCALL",
  "ENDFUNCTION", "JUMPTABLE", "ROT", "CAST", "CALL", "PARAM", "NULLOP",
  "BLOCK", "LABEL", "RECEIVE", "SEND", "ARRAYINIT", "DUMMY_READ_VOLATILE",
  "ENDCRITICAL", "INLINE", "RESTRICT", "SMALLC", "RAISONANCE", "IAR",
  "COSMIC", "SDCCCALL", "PRESERVES_REGS", "Z88DK_FASTCALL", "Z88DK_CALLEE",
  "Z88DK_SHORTCALL", "Z88DK_PARAMS_OFFSET", "ALIGNAS", "ALIGNOF", "ATOMIC",
  "GENERIC", "NORETURN", "STATIC_ASSERT", "THREAD_LOCAL", "TOKEN_FALSE",
  "TOKEN_TRUE", "NULLPTR", "TYPEOF", "TYPEOF_UNQUAL", "SD_BITINT",
  "DECIMAL32", "DECIMAL64", "DECIMAL128", "ASM", "GENERIC_ASSOC_LIST",
  "GENERIC_ASSOCIATION", "'{'", "':'", "'('", "')'", "','", "'['", "']'",
  "'.'", "'&'", "'*'", "'+'", "'-'", "'~'", "'!'", "'/'", "'%'", "'<'",
  "'>'", "'^'", "'|'", "'?'", "'='", "';'", "'}'", "$accept",
  "primary_expression", "predefined_constant", "generic_selection",
  "generic_controlling_operand", "generic_assoc_list",
  "generic_association", "postfix_expression", "$@1", "$@2",
  "argument_expr_list", "unary_expression", "unary_operator",
  "cast_expression", "multiplicative_expression", "additive_expression",
  "shift_expression", "relational_expression", "equality_expression",
  "and_expression", "exclusive_or_expression", "inclusive_or_expression",
  "logical_and_expr", "$@3", "logical_or_expr", "$@4", "conditional_expr",
  "$@5", "$@6", "assignment_expr", "assignment_operator", "expression",
  "$@7", "expression_opt", "constant_expr", "constant_range_expr",
  "declaration", "declaration_specifiers", "declaration_specifiers_",
  "init_declarator_list", "init_declarator", "attribute_declaration",
  "simple_declaration", "storage_class_specifiers",
  "storage_class_specifiers_", "storage_class_specifier", "type_specifier",
  "type_specifier_without_struct_or_union", "typeof_specifier",
  "struct_or_union_specifier", "$@8", "struct_or_union",
  "member_declaration_list", "member_declaration",
  "type_specifier_qualifier",
  "type_specifier_qualifier_without_struct_or_union",
  "member_declarator_list", "member_declarator", "enum_specifier",
  "simple_typed_enum_decl", "enum_comma_opt", "enumerator_list",
  "enumerator", "enum_type_specifier", "type_qualifier",
  "function_specifier", "alignment_specifier", "declarator",
  "direct_declarator", "declarator2", "array_declarator",
  "declarator2_function_attributes", "function_declarator", "$@9", "$@10",
  "pointer", "unqualified_pointer", "type_qualifier_list",
  "type_qualifier_list_opt", "parameter_type_list", "parameter_list",
  "parameter_declaration", "abstract_declarator",
  "direct_abstract_declarator", "direct_abstract_declarator_opt",
  "array_abstract_declarator", "function_abstract_declarator", "$@11",
  "initializer", "braced_initializer", "initializer_list",
  "designation_opt", "designation", "designator_list", "designator",
  "static_assert_declaration", "attribute_specifier_sequence",
  "attribute_specifier_sequence_opt", "attribute_specifier",
  "attribute_list", "attribute", "attribute_opt", "attribute_token",
  "attribute_argument_clause", "balanced_token_sequence", "balanced_token",
  "statement", "unlabeled_statement", "primary_block", "secondary_block",
  "labeled_statement", "label", "@12", "start_block", "end_block",
  "compound_statement", "block_item_list", "expression_statement",
  "else_statement", "selection_header", "selection_statement", "$@13",
  "@14", "iteration_statement", "$@15", "$@16", "jump_statement",
  "translation_unit", "external_declaration", "function_definition",
  "$@17", "$@18", "function_body", "file", "function_attributes",
  "function_attribute", "offsetof_member_designator", "$@19",
  "string_literal_val", "Interrupt_storage", "sfr_reg_bit",
  "sfr_attributes", "opt_stag", "stag", "opt_assign_expr",
  "specifier_qualifier_list", "type_specifier_list_",
  "type_specifier_list_without_struct_or_union", "identifier_list",
  "type_name", "critical", "critical_statement", "statements_and_implicit",
  "declaration_after_statement", "$@20", "implicit_block",
  "declaration_list", "kr_declaration", "kr_declaration_list",
  "statement_list", "if", "switch", "while", "do", "for",
  "asm_string_literal", "asm_statement", "addressmod", "identifier", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-460)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-419)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
    2330,  -460,  -460,  -460,    36,  -460,  -460,  -460,  -460,  -460,
    -460,  -460,  -460,    38,  -460,  -460,    36,    16,  -460,  -460,
    -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
    -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
    -460,    71,  -460,  -460,  -108,  -460,  -460,   -62,  -460,   -39,
     -32,    44,  -460,  -460,  -460,    22,  -460,  -460,    31,  -460,
    -460,  2974,  -460,  -460,  -460,  -460,   113,  2974,  -460,  -460,
    -460,  2974,  -460,  -460,    32,    61,     7,   113,  1174,    18,
     402,  -460,    19,  -460,  2330,  -460,  -460,   125,  -460,  -460,
    -460,     9,   100,  -460,  -460,    73,   221,  -460,    57,  -460,
    2016,    36,  3136,    97,   -70,  1795,  2016,  1795,  1795,  2016,
      75,  -460,    62,  -460,   -28,    71,  -460,   113,    36,  -460,
    -460,  2669,   593,    40,  -460,  -460,   114,  -460,   117,  -460,
    -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
    -460,  -460,   148,   157,  -460,  -460,   163,   170,  1174,  -460,
    -460,    32,   172,  -460,  -460,   512,  -460,  -460,  -460,  -460,
    -460,    36,   190,    46,  -460,    36,    36,   176,  -460,  2093,
    2130,   203,  2188,  2188,  -460,  -460,   211,   213,  -460,  -460,
    -460,  1624,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
    -460,   110,  -460,  2016,  -460,   -72,   -13,   310,    78,   311,
     192,   205,   206,   358,    30,  -460,   228,  -460,  -460,   233,
    -460,   113,  -460,  -460,  -460,  -460,  -460,  3136,    36,    36,
    -129,   241,  -460,   109,  3136,   247,   167,    82,  -460,  -460,
     189,   249,   191,   254,   260,   263,    22,  -460,  1733,  2669,
     -70,  -460,   276,  -460,  -460,    22,   722,  -460,  -460,  -460,
    2669,   881,   700,  1810,  -460,  2974,    36,  2016,  2016,  2016,
      36,  2016,  2016,  -460,  2016,   277,  -460,  -460,  -460,  -460,
    -460,  -460,  -460,    67,  -460,  -460,  -460,   256,  -460,  1624,
    -460,  1624,  -460,  3136,  1624,  -460,  -460,  3136,  1795,   199,
    3136,  -460,   334,   280,  -460,  -460,  -460,  1905,  2016,  -460,
    -460,  2016,  2016,  2016,  2016,  2016,  2016,  2016,  2016,  2016,
    2016,  2016,  2016,  2016,  2016,  2016,  2016,  -460,  -460,   279,
    -460,    36,   261,   269,  -460,   233,   233,    36,  -460,  -460,
    2525,  -117,  -460,    50,   291,  -460,  -460,  -460,  -460,   278,
     361,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
    -460,  -460,  2016,  -460,  -460,  -460,  -460,  -460,  -460,  -460,
     281,   -79,  -460,  -460,  -460,  -460,   305,   306,    65,  -460,
     285,   307,  -460,   304,   288,  -460,    31,  1200,   522,  -460,
    -460,  -460,   292,  -460,  1184,  -460,  -460,   903,  1006,  -460,
     313,  -460,  -460,   881,  2016,  2016,  -460,   314,    33,   319,
     312,  -460,   216,  -460,   323,   324,   326,   230,   328,   331,
     332,  2016,  -460,  -460,  -460,   335,   336,   337,   339,   341,
     342,  -460,  -460,  -460,   345,  -460,  1733,    36,  -460,   346,
     348,   151,    36,  -460,  -460,  -460,   -72,   -72,   -13,   -13,
     310,   310,   310,   310,    78,    78,   311,   192,   205,  2016,
    2016,  2016,   316,  -460,  -460,  2016,  -460,   330,   333,   233,
    -460,   351,   363,    50,   364,  1921,  -460,   365,  -460,  2016,
    2016,    36,  -460,  -132,  1733,  -460,   133,  -460,   113,  -460,
    -460,   436,  -460,    88,  2016,  -460,  -460,  -460,  -460,  -460,
    -460,    36,   352,   353,  1281,  -460,  -460,  -460,  -460,  -460,
     374,   377,   379,  1184,   380,  -460,  1982,  -460,  -460,  -460,
    1184,  -460,  -460,  -460,  -460,  1103,  2797,  -460,  -460,   378,
     382,  -460,  2475,  -460,    34,  -460,  -460,  2847,  -460,    36,
    -460,  -460,  -460,  -460,  2016,  -460,  -460,   383,   389,   389,
      36,   389,  -460,  3018,   389,  -460,  -460,  -460,  -460,  2016,
    -460,  -460,   206,   358,   -97,  2016,  -460,  -460,  -460,   370,
    -460,  -460,  -460,  2974,  -460,   388,   373,  -460,   390,  -460,
     -34,  -460,  -460,  -460,  -460,    -1,  -460,  3136,  -460,   396,
    -460,   -19,   399,   400,   385,  -460,  -460,  -460,   104,  1453,
    1453,  2016,  -460,   482,  1453,  -460,  -460,  2797,  -460,  -460,
    -460,  -460,  -460,   407,  -460,   -87,  -460,   411,   232,  -460,
     412,  -460,  -460,  2016,  -460,  -460,   414,  -460,  -460,  -460,
    -460,  1733,  -460,  -460,    72,   393,  2016,  -460,  -460,  -460,
    -460,  -460,   304,  2016,    31,  -460,   415,   416,   237,   419,
     403,  2016,  -460,  -460,  2016,  -460,  2016,  -460,  3018,  2016,
    -460,  -460,  -460,  2016,   127,  -460,   423,  -460,  -460,   304,
     406,  -460,  -460,  -460,  2016,  2016,   409,   154,    36,  -460,
    -460,  -460,  -460,    72,  -460,  2016,  1733,  1184,  1184,  1184,
     239,   418,  2016,  -460,  -460,  -460,  -460,   425,   513,  -460,
    -460,   424,  2016,   433,  1184,  -460,  -460,   438,  -460,  -460,
    1184,  1184,  -460,  -460
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int16 yydefact[] =
{
     357,   438,   152,   200,   289,   126,   127,   128,   130,   131,
     132,   202,   203,   393,   395,   396,     0,     0,   391,   201,
     204,   205,   206,   145,   136,   137,   138,   139,   142,   143,
     140,   141,   154,   196,   198,   135,   155,   146,   147,   166,
     167,     0,   207,   197,     0,   199,   208,     0,   129,     0,
       0,     0,   148,   149,   150,     0,   237,   349,     0,   110,
     109,   111,   171,   133,   153,   134,   282,   113,   151,   105,
     172,   115,   173,   351,   211,     0,   282,   282,   224,     0,
     231,   108,     0,   281,   358,   346,   348,     0,   158,   392,
     350,   282,     0,   290,   285,   287,   291,   394,     0,   156,
       0,     0,     0,     0,   188,     0,     0,     0,     0,     0,
       0,   106,     0,   117,   353,     0,   112,   283,   398,   114,
     116,     0,   240,   227,   215,   216,   389,   362,     0,   363,
     367,   370,   368,   369,   364,   365,   366,   372,   373,   374,
     375,   376,     0,     0,   378,   379,     0,     0,   225,   359,
     371,   212,     0,   238,   235,   233,   121,   280,   347,     1,
     213,   289,     0,     0,   288,     0,     0,     0,     3,     0,
       0,     0,     0,     0,   388,   387,     0,     0,     8,     9,
      10,     0,    42,    43,    44,    45,    46,    47,    18,     7,
       6,    32,    48,     0,    50,    54,    57,    60,    65,    68,
      70,    72,    74,    77,    80,   103,     0,     4,     2,   190,
     192,   282,   174,   175,   405,   176,   177,   195,     0,     0,
       0,     0,   403,   409,   402,     0,     0,    48,    85,    98,
       0,     0,     0,     0,     0,   214,     0,   107,     0,     0,
     188,   163,   165,   399,   317,     0,   282,   355,   352,   422,
       0,   240,   241,     0,   226,     0,     0,     0,     0,     0,
       0,     0,     0,   360,     0,     0,   239,   236,   286,   284,
     299,   298,   293,     0,   295,   297,   292,     0,   436,     0,
      36,     0,    38,     0,     0,    33,    34,     0,     0,     0,
       0,   123,   124,     0,    24,    26,    27,     0,     0,    22,
      35,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    75,    78,    81,
     157,   191,     0,   401,   406,   190,   190,     0,   189,   210,
     255,   249,   410,   250,     0,   253,   254,   404,   209,     0,
       0,    88,    89,    90,    91,    92,    93,    94,    95,    96,
      97,    87,     0,   159,    99,   160,   161,   162,   144,   118,
     119,   271,   264,   120,   265,   354,     0,     0,     0,   411,
       0,     0,   318,   102,     0,   419,     0,   283,     0,   424,
     425,   319,     0,   302,   282,   305,   321,   282,   415,   306,
       2,   356,   423,   241,     0,     0,   220,     0,   248,     0,
     242,   244,     0,   407,     0,     0,     0,     0,     0,     0,
       0,     0,   294,   296,   437,     0,     0,     0,     0,     0,
       0,    12,    13,     5,     0,   125,     0,     0,    20,     0,
      30,     0,     0,    51,    52,    53,    55,    56,    58,    59,
      63,    64,    61,    62,    66,    67,    69,    71,    73,     0,
       0,     0,     0,   193,   184,     0,   194,     0,     0,   190,
     259,     0,     0,   251,   262,     0,   279,     0,    86,     0,
       0,     0,   266,     0,     0,   272,     0,   274,   282,   421,
     435,     0,   324,     0,     0,   315,   428,   429,   430,   431,
     432,     0,     0,     0,     0,   303,   307,   308,   309,   304,
       0,     0,     0,   282,     0,   320,   283,   412,   301,   300,
     282,   420,   323,   426,   427,   282,     0,   414,   312,     0,
       0,   221,   255,   246,   249,   247,   228,     0,   230,     0,
     390,   361,   377,   382,     0,   380,   232,     0,    37,    39,
       0,     0,    40,     0,     0,    49,    28,    25,    21,     0,
      19,    23,    76,    79,     0,     0,   400,   185,   186,     0,
     261,   252,   260,     0,   257,     0,     0,   100,     0,   277,
     271,   267,   269,   273,   275,   282,   168,     0,   433,     0,
     325,     0,     0,     0,     0,   342,   343,   344,     0,     0,
       0,     0,   310,     0,   101,   311,   417,   416,   222,   223,
     243,   245,   408,     0,   234,     0,   383,     0,     0,    14,
       0,    29,    31,     0,    84,   187,     0,   258,   278,   276,
     268,     0,   164,   169,   183,     0,     0,   314,   313,   316,
     341,   345,   328,     0,     0,   330,     0,     0,     0,     0,
       0,   101,   381,    41,     0,   384,     0,    11,     0,     0,
      82,   263,   270,     0,     0,   178,   180,   434,   104,   329,
     119,   331,   333,   335,     0,   101,     0,     0,     0,    17,
      15,    16,   181,   183,   170,     0,     0,   282,   282,   282,
       0,     0,   101,   386,   385,   179,   182,   120,   327,   334,
     336,     0,   101,     0,   282,   332,   337,     0,   339,   326,
     282,   282,   338,   340
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -460,  -460,  -460,  -460,  -460,  -460,   -33,  -460,  -460,  -460,
      68,    35,  -460,  -164,   101,   102,    -7,   118,   308,   315,
     303,   171,   173,  -460,  -460,  -460,   -37,  -460,  -460,    69,
    -460,    80,  -460,  -145,    23,  -460,  -208,     3,   198,   376,
     391,  -460,  -460,  -460,   344,   145,  -460,   -45,  -460,  -460,
    -460,   -41,  -460,    51,   -98,   420,  -460,   -44,  -460,  -460,
    -209,  -153,   318,   -81,    -3,  -460,   -40,     1,   -73,  -460,
    -460,  -460,  -460,  -460,  -460,   -63,  -460,   -78,   401,  -247,
    -460,   120,  -204,  -313,  -460,  -460,  -460,  -460,  -459,  -393,
    -460,    70,  -460,  -460,   155,  -460,     5,   -64,   -71,  -460,
    -460,   480,  -460,  -460,  -460,   381,  -360,  -232,  -460,  -389,
    -460,  -220,  -460,  -460,   268,  -203,  -460,  -460,  -460,    63,
    -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,   567,  -460,
    -460,  -460,   417,  -460,  -460,   509,  -460,  -460,  -460,  -460,
    -460,  -460,  -460,  -460,  -460,    81,  -460,  -460,   405,   132,
    -460,  -460,  -345,  -460,  -460,  -460,   143,   410,  -460,  -460,
    -460,  -460,  -460,  -460,  -460,  -460,  -460,  -460,     0
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,   188,   189,   190,   420,   608,   609,   191,   432,   427,
     429,   227,   193,   194,   195,   196,   197,   198,   199,   200,
     201,   202,   203,   449,   204,   450,   228,   451,   452,   229,
     352,   373,   469,   374,   206,   582,    57,   376,    59,   112,
     113,    60,   635,   290,   291,    61,    62,    63,    64,    65,
     367,    66,   575,   576,    67,   214,   654,   655,    68,    69,
     322,   209,   210,   103,    70,    71,    72,   360,    74,    75,
      76,    77,    78,   255,   256,    79,    80,   155,   253,   461,
     400,   401,   462,   333,   334,   335,   336,   563,   363,   364,
     473,   474,   475,   476,   477,    81,   506,   378,    83,    92,
      93,    94,    95,   164,   273,   274,   592,   508,   495,   593,
     509,   510,   583,   246,   381,   247,   382,   383,   695,   636,
     497,   677,   678,   498,   679,   701,   499,    84,    85,    86,
     121,   239,   248,    87,   148,   149,   605,   668,   207,   150,
      88,    89,   241,   242,   456,   223,   224,   217,   402,   610,
     384,   385,   386,   515,   516,   517,   387,   249,   250,   388,
     500,   501,   502,   503,   504,   579,   389,    90,   208
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      91,    73,   118,    58,    96,    82,   151,   222,   399,   222,
     222,   157,   124,   125,   379,   572,    98,   154,   463,   332,
       4,     1,    99,   220,   507,     1,   380,   160,     4,   300,
       4,   327,   570,   546,     1,   626,     1,     1,   375,     1,
       4,   104,   512,  -229,   252,   330,   157,   391,  -255,     1,
     318,   571,   270,   328,   105,    91,   110,   212,    91,   114,
       1,   213,   216,   205,   613,   325,   326,   354,   205,   205,
       1,   117,   205,   270,     1,     1,   643,   153,   644,    91,
     645,   117,   117,   222,    91,    73,   470,    58,   471,    82,
     219,   102,   267,   308,   309,    97,   117,   301,   167,   215,
     106,   211,   302,   303,   472,   341,   342,   343,   344,   345,
     346,   347,   348,   349,   350,   240,   457,   458,   243,   153,
     294,   295,   296,   107,   245,   159,   337,   166,   221,   226,
     108,   470,   234,   471,     4,   192,  -119,   433,   434,   435,
     192,   192,   627,   271,   192,   546,   546,   323,   546,   620,
     595,   611,   266,   238,  -119,   379,   513,   304,   305,   366,
     331,    96,   652,   275,   271,   276,   277,   380,   514,  -219,
     596,  -217,   212,   393,   459,   496,   213,   216,   100,   511,
      55,   222,   622,   222,    55,   222,   222,   230,   232,   222,
     222,    56,   222,    55,   525,   522,   522,   122,  -255,  -255,
      56,   156,    56,   254,   280,   282,   109,   285,   286,   272,
     319,   463,   464,   111,   215,  -256,   117,   687,   211,   211,
     205,   205,   205,   123,   205,   205,   236,   205,   192,   236,
     412,   101,   102,   653,    55,   163,    91,   225,   235,   231,
     233,    56,   245,   165,   237,    91,   390,   479,   153,   266,
     559,   377,   354,   245,   310,   311,   403,   218,   398,   116,
     403,   289,   545,   351,   161,   119,   162,   331,   354,   120,
     580,   330,   297,   275,  -255,   298,   257,   299,    56,   258,
     404,   405,   406,   379,   408,   409,   631,   410,   688,   689,
     690,   673,   192,   192,   192,   380,   192,   192,   470,   192,
     471,   440,   441,   442,   443,   699,   157,   362,   375,   674,
     259,   702,   703,   293,   573,   354,   616,   550,   354,   260,
     683,   211,   397,   306,   307,   261,   292,   211,   312,   313,
     339,   340,   262,   398,   264,   524,   192,   192,   192,   192,
     192,   192,   192,   192,   192,   192,   192,   192,   192,   192,
     192,   192,   353,   354,   356,   354,   269,   421,   278,   289,
     314,   289,   423,   354,   289,   283,   430,     5,     6,     7,
       8,     9,    10,   287,   205,   288,    91,   317,   431,   528,
     529,   633,   633,   315,   390,   316,   641,   390,   390,   511,
     266,   320,   377,   533,   529,   647,   648,   321,    91,   523,
     663,   354,   691,   354,   329,   436,   437,     3,   438,   439,
     338,   415,   355,   416,   577,   417,   418,   357,   205,   419,
     422,   468,   424,   358,   292,  -218,   292,   547,   205,   292,
     444,   445,   551,   205,   537,   157,  -397,   292,   414,   411,
     -83,    11,    12,   426,   454,   222,   192,   205,   152,   640,
     455,   151,    19,    20,    21,    22,   465,   483,   467,   524,
     466,   192,   238,   519,   520,   327,   478,   480,   354,   481,
     482,   569,    33,    34,   518,   372,   527,   555,   556,   222,
     521,    48,   526,   117,   192,   192,   530,   531,   565,   532,
     192,   584,   534,   568,   535,   536,   666,   205,   538,   539,
     192,   540,   541,   390,   542,   192,   543,   581,   544,   548,
     390,   577,   549,   557,   560,   390,   558,     3,   614,   192,
     681,    82,    91,   110,    91,   398,   561,   562,   566,   602,
     398,   554,    43,   578,   585,   586,   589,   693,   567,   590,
     606,   591,   594,   362,   598,    45,   604,   697,   599,   361,
     222,    11,    12,   615,   617,   618,   619,   603,   265,   625,
     628,   629,    19,    20,    21,    22,   398,   630,   639,   192,
     642,    56,   646,   649,   588,   657,   650,   651,   661,   662,
     117,   664,    33,    34,   675,   665,   483,   676,  -122,   205,
     192,   682,   634,   634,    82,    82,   698,   694,     3,    82,
     692,   700,    82,   484,   485,   486,   696,   487,   488,   489,
     490,   491,   492,   493,   494,   670,   205,   612,   430,   448,
     552,   368,   446,   553,    91,   656,   623,   359,   251,   685,
     447,   574,    11,    12,    91,   660,   425,   324,   205,   453,
     621,   268,    43,    19,    20,    21,    22,   601,   192,   658,
     505,   158,   394,   637,   413,    45,   365,   263,   624,   597,
     392,   192,     0,    33,    34,   407,     0,     0,   684,   632,
     632,   638,     0,    91,   656,     0,   672,   390,   390,   390,
       0,    56,   244,     0,     0,     0,     0,     0,   192,     0,
     362,     0,     0,     0,   390,     0,     0,     0,   686,     0,
     390,   390,     0,     0,     0,     3,     0,     0,     0,     0,
     192,     0,     0,   659,     0,   669,     0,     0,   671,     0,
       0,     0,     0,    43,   667,     1,     2,     3,   168,   169,
     170,   171,     0,   172,   173,   395,    45,     0,     0,    11,
      12,     0,     0,     4,   680,   362,     0,     0,     0,     0,
      19,    20,    21,    22,     0,     5,     6,     7,     8,     9,
      10,    11,    12,     0,    13,    14,    15,     0,    17,    18,
      33,    34,    19,    20,    21,    22,     0,   369,     0,     0,
       0,     0,    23,    24,    25,    26,    27,    28,    29,    30,
      31,    32,    33,    34,    35,    36,    37,    38,    39,    40,
      41,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   174,
     370,   175,     0,     0,     0,     0,     0,     0,     0,     0,
      43,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    45,     0,     0,     0,     0,     0,     0,
       0,    42,    43,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    44,   176,    45,   177,    46,    47,    48,
     178,   179,   180,    49,    50,    51,    52,    53,    54,   371,
       0,     0,     0,     0,   181,     0,     3,     0,     0,     0,
     182,   183,   184,   185,   186,   187,     0,     0,     0,     0,
       0,     0,     0,     0,  -101,   372,     1,     2,     3,   168,
     169,   170,   171,     0,   172,   173,     0,     0,     0,     0,
      11,    12,     0,     0,     4,     0,     0,     0,     0,     0,
       0,    19,    20,    21,    22,     0,     5,     6,     7,     8,
       9,    10,    11,    12,     0,    13,    14,    15,     0,    17,
      18,    33,    34,    19,    20,    21,    22,     0,   369,     0,
       0,     0,     0,    23,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     174,   370,   175,     0,     0,     0,     0,     0,     0,     1,
       0,    43,   168,   169,   170,   171,     0,   172,   173,     0,
       0,     0,     0,     0,    45,     0,     0,     4,     0,     0,
       0,     0,    42,    43,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    44,   176,    45,   177,    46,    47,
      48,   178,   179,   180,    49,    50,    51,    52,    53,    54,
     371,   369,     0,     0,     0,   181,     0,     0,     0,     0,
       0,   182,   183,   184,   185,   186,   187,     0,     0,     0,
       0,     0,     0,     0,     0,  -101,  -322,  -282,  -282,  -282,
       0,  -282,  -282,  -282,  -282,  -282,  -282,  -282,  -282,     0,
       0,     0,     0,   174,   370,   175,     1,     0,     0,   168,
     169,   170,   171,     0,   172,   173,     0,     0,     0,     0,
       0,     0,     0,     0,     4,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   176,     0,
     177,     0,     0,     0,   178,   179,   180,     0,   369,     0,
       0,     0,     0,   371,     0,     0,  -282,     0,   181,     0,
       0,     0,     0,     0,   182,   183,   184,   185,   186,   187,
       0,     0,     0,     0,     0,     0,     0,     1,  -101,  -413,
     168,   169,   170,   171,     0,   172,   173,     0,     0,     0,
     174,   370,   175,     1,     0,     4,   168,   169,   170,   171,
       0,   172,   173,     0,     0,   126,     0,     0,     0,     0,
       0,     4,   127,   128,     0,     0,     0,     0,     0,   129,
     130,   131,   132,   133,     0,     0,     0,     0,     0,   369,
       0,     0,     0,     0,     0,   176,     0,   177,     0,     0,
       0,   178,   179,   180,     0,     0,     0,     0,     0,     0,
     371,     0,     0,     0,     0,   181,     0,   134,   135,   136,
     137,   182,   183,   184,   185,   186,   187,     0,     0,     0,
       0,   174,   370,   175,     1,  -101,  -418,   168,   169,   170,
     171,     0,   172,   173,     0,     0,     0,   174,     0,   175,
       0,     0,     0,     0,     0,   138,   139,   140,   141,   142,
     143,   144,   145,   146,   147,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   176,     0,   177,     0,
       0,     0,   178,   179,   180,     0,     0,     0,     0,     0,
       0,   371,   176,     0,   177,     0,   181,     0,   178,   179,
     180,     0,   182,   183,   184,   185,   186,   187,     0,     0,
       0,     0,   181,     0,     0,     0,  -101,     0,   182,   183,
     184,   185,   186,   187,     0,     0,     0,     0,   174,     0,
     175,     0,   156,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   176,     0,   177,     0,     0,     0,   178,
     179,   180,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   181,     0,     0,     0,     0,     0,   182,
     183,   184,   185,   186,   187,     0,     1,     2,     3,   168,
     169,   170,   171,   587,   172,   173,     0,     0,     0,     0,
       0,     0,     0,     0,     4,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     5,     6,     7,     8,
       9,    10,    11,    12,     0,    13,    14,    15,     0,    17,
      18,     0,     0,    19,    20,    21,    22,     0,     0,     0,
       0,     0,     0,    23,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     174,     0,   175,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    42,    43,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    44,   176,    45,   177,    46,    47,
      48,   178,   179,   180,    49,    50,    51,    52,    53,    54,
       0,     0,     0,     0,     0,   181,     0,     0,     0,     0,
       0,   182,   183,   184,   185,   186,   187,     1,     2,     3,
     168,   169,   170,   171,     0,   172,   173,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     5,     6,     7,
       8,     9,    10,    11,    12,     0,    13,    14,    15,     0,
      17,    18,     0,     0,    19,    20,    21,    22,     0,     0,
       0,     0,     0,     0,    23,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,   115,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   174,     0,   175,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     1,     0,     0,   168,
     169,   170,   171,     0,   172,   173,     0,     0,     0,     0,
       0,     0,     0,     0,    43,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    44,   176,    45,   177,     0,
       0,    48,   178,   179,   180,    49,    50,    51,    52,    53,
      54,     0,     0,     0,     0,     0,   181,     0,     0,     0,
       0,     0,   182,   183,   184,   185,   186,   187,     1,     2,
       3,   168,   169,   170,   171,     0,   172,   173,     0,     0,
       0,     0,     0,     1,     0,     0,   168,   169,   170,   171,
       0,   172,   173,     0,     0,     0,     0,     0,     0,     0,
     174,     0,   175,     0,    11,    12,     0,    13,    14,    15,
       0,    17,    18,     0,     0,    19,    20,    21,    22,     0,
       0,     0,     0,     0,     0,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,   115,     0,   176,     0,   177,     0,     0,
       0,   178,   179,   180,     0,     0,     0,     0,     0,     0,
       0,     0,   174,   361,   175,   181,     0,     0,     0,     0,
       0,   182,   183,   184,   185,   186,   187,   174,     1,   175,
       0,   168,   169,   170,   171,     0,   172,   173,     0,     0,
       0,     0,     0,     0,     1,    43,     0,   168,   169,   170,
     171,     0,   172,   173,     0,     0,    44,   176,    45,   177,
       0,     0,     0,   178,   179,   180,    49,    50,    51,    52,
      53,    54,   176,     0,   177,     0,     0,   181,   178,   179,
     180,     0,     0,   182,   183,   184,   185,   186,   187,     0,
       0,     0,   181,     0,     0,     0,   396,     0,   182,   183,
     184,   185,   186,   187,     0,     1,     0,     0,   168,   169,
     170,   171,     0,   172,   173,     0,     0,     0,     0,     0,
       0,     0,   174,     4,   175,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   174,     1,
     175,     0,   168,   169,   170,   171,     0,   172,   173,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   176,     0,   177,
       0,     0,     0,   178,   179,   180,     0,     0,     0,     0,
       0,     0,     0,   176,     0,   177,     0,   181,   428,   178,
     179,   180,     0,   182,   183,   184,   185,   186,   187,   174,
       0,   175,     0,   181,     0,     0,     0,   564,     0,   182,
     183,   184,   185,   186,   187,     0,     1,     0,     0,   168,
     169,   170,   171,     0,   172,   173,     0,     0,     0,     0,
       0,     0,     0,   174,     0,   175,     0,     0,     0,     0,
       0,     0,     0,     0,   176,     0,   177,     0,     0,     0,
     178,   179,   180,     1,     0,     0,   168,   169,   170,   171,
       0,   172,   173,     0,   181,     0,     0,     0,     0,     0,
     182,   183,   184,   185,   186,   187,     0,     0,   176,     0,
     177,     0,     0,     0,   178,   179,   180,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   181,     0,
       0,     0,     0,     0,   182,   183,   184,   185,   186,   187,
     174,     1,   175,     0,   168,   169,   170,   171,     0,   172,
     173,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,   174,     0,   175,
       0,     0,     0,     0,     0,   176,     0,   177,     0,     0,
       0,   178,   179,   180,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   279,     0,     0,     0,     0,
       0,   182,   183,   184,   185,   186,   187,     0,     0,     0,
       0,     0,   176,     0,   177,     0,     0,     0,   178,   179,
     180,     0,     0,     0,     0,   174,     0,   175,     0,     0,
       0,     0,   281,     0,     0,     0,     0,     0,   182,   183,
     184,   185,   186,   187,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     176,     0,   177,     1,     2,     3,   178,   179,   180,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     284,     4,     0,     0,     0,     0,   182,   183,   184,   185,
     186,   187,     0,     5,     6,     7,     8,     9,    10,    11,
      12,     0,    13,    14,    15,    16,    17,    18,     0,     0,
      19,    20,    21,    22,     0,     0,     0,     0,     0,     0,
      23,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    42,
      43,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    44,     0,    45,     0,    46,    47,    48,     1,     2,
       3,    49,    50,    51,    52,    53,    54,     0,     0,     0,
       0,     0,    55,     0,     0,     0,     0,     0,     0,    56,
       0,     0,     0,     0,     0,     0,     0,     0,     5,     6,
       7,     8,     9,    10,    11,    12,     0,    13,    14,    15,
       0,    17,    18,     0,     0,    19,    20,    21,    22,     2,
       3,     0,     0,     0,     0,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,   115,     0,     0,     0,     0,     5,     6,
       7,     8,     9,    10,    11,    12,     0,    13,    14,    15,
       0,    17,    18,     0,     0,    19,    20,    21,    22,     0,
       0,     0,     0,     0,     0,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,    33,    34,    35,    36,    37,
      38,    39,    40,   115,    42,    43,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    44,     0,    45,     0,
      46,     0,    48,     0,     0,     0,    49,    50,    51,    52,
      53,    54,     0,     0,     0,     0,     0,   522,   460,     0,
       0,     0,     0,     0,    56,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    42,    43,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    44,     0,    45,     0,
      46,     0,    48,     2,     3,     0,    49,    50,    51,    52,
      53,    54,     0,     0,     0,     0,     0,   330,   460,     0,
       0,     0,     0,     0,    56,     0,     0,     0,     0,     0,
       0,     0,     5,     6,     7,     8,     9,    10,    11,    12,
       0,    13,    14,    15,     0,    17,    18,     0,     0,    19,
      20,    21,    22,     0,     0,     0,     0,     0,     0,    23,
      24,    25,    26,    27,    28,    29,    30,    31,    32,    33,
      34,    35,    36,    37,    38,    39,    40,   115,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    42,    43,
       0,     2,     3,     0,     0,     0,     0,     0,     0,     0,
      44,     0,    45,     0,    46,     0,    48,     0,     4,     0,
      49,    50,    51,    52,    53,    54,     0,     0,     0,   244,
       5,     6,     7,     8,     9,    10,    11,    12,     0,    13,
      14,    15,     0,    17,    18,     0,     0,    19,    20,    21,
      22,     2,     3,     0,     0,     0,     0,    23,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,     0,     0,     0,     0,
       5,     6,     7,     8,     9,    10,    11,    12,     0,    13,
      14,    15,     0,    17,    18,     0,     0,    19,    20,    21,
      22,   600,     0,     0,     0,     0,     0,    23,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,   115,    42,    43,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    44,     0,
      45,     0,    46,    47,    48,     0,     0,     0,    49,    50,
      51,    52,    53,    54,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    42,    43,     2,     3,
       0,     0,     0,     0,     0,     0,     0,     0,    44,     0,
      45,     0,    46,     0,    48,     0,     0,     0,    49,    50,
      51,    52,    53,    54,     0,     0,     0,     5,     6,     7,
       8,     9,    10,    11,    12,     0,    13,    14,    15,     0,
      17,    18,     2,     3,    19,    20,    21,    22,     0,     0,
       0,     0,     0,     0,    23,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,   115,     0,     0,     0,     0,    11,    12,     0,
      13,    14,    15,     0,    17,    18,     0,     0,    19,    20,
      21,    22,     0,     0,     0,     0,     0,     0,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,   115,     0,     0,     0,
     607,     0,     0,    42,    43,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    44,     0,    45,     0,    46,
       0,    48,     0,     0,     0,    49,    50,    51,    52,    53,
      54,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       2,     3,     0,     0,     0,     0,     0,     0,    43,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    44,
       0,    45,     0,     0,     0,     0,     0,     0,     0,    49,
      50,    51,    52,    53,    54,    11,    12,     0,    13,    14,
      15,     0,    17,    18,     0,     0,    19,    20,    21,    22,
       0,     0,     0,     0,     0,     0,    23,    24,    25,    26,
      27,    28,    29,    30,    31,    32,    33,    34,    35,    36,
      37,    38,    39,    40,   115,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    43,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    44,     0,    45,
       0,     0,     0,     0,     0,     0,     0,    49,    50,    51,
      52,    53,    54
};

static const yytype_int16 yycheck[] =
{
       0,     0,    66,     0,     4,     0,    79,   105,   255,   107,
     108,    82,    76,    77,   246,   474,    16,    80,   331,   223,
      21,     3,     6,   104,   384,     3,   246,    91,    21,   193,
      21,   160,   164,   426,     3,    54,     3,     3,   246,     3,
      21,    41,   387,     3,   122,   162,   117,   250,   165,     3,
      20,   183,     6,   182,   162,    55,    55,   102,    58,    58,
       3,   102,   102,   100,   161,   218,   219,   164,   105,   106,
       3,    66,   109,     6,     3,     3,   163,    80,   165,    79,
     167,    76,    77,   181,    84,    84,   165,    84,   167,    84,
     160,   161,   155,    15,    16,    57,    91,   169,    98,   102,
     162,   101,   174,   175,   183,    23,    24,    25,    26,    27,
      28,    29,    30,    31,    32,   115,   325,   326,   118,   122,
      10,    11,    12,   162,   121,     0,   224,    70,   105,   106,
     162,   165,   109,   167,    21,   100,   164,   301,   302,   303,
     105,   106,   161,    97,   109,   538,   539,   211,   541,   183,
     510,   544,   155,   181,   182,   387,   388,   170,   171,   240,
     223,   161,   621,   163,    97,   165,   166,   387,   388,   162,
     515,   162,   217,   251,   327,   378,   217,   217,   162,   387,
     162,   279,   183,   281,   162,   283,   284,   107,   108,   287,
     288,   169,   290,   162,   398,   162,   162,   165,   165,   165,
     169,   182,   169,   163,   169,   170,   162,   172,   173,   163,
     180,   524,   162,   182,   217,   165,   211,   676,   218,   219,
     257,   258,   259,   162,   261,   262,   164,   264,   193,   164,
     163,   160,   161,   161,   162,   162,   236,   105,   163,   107,
     108,   169,   239,    22,   182,   245,   246,   182,   251,   252,
     459,   246,   164,   250,   176,   177,   256,   160,   255,    61,
     260,   181,   426,   181,   164,    67,   166,   330,   164,    71,
     182,   162,   162,   273,   165,   165,   162,   167,   169,   162,
     257,   258,   259,   515,   261,   262,   182,   264,   677,   678,
     679,   164,   257,   258,   259,   515,   261,   262,   165,   264,
     167,   308,   309,   310,   311,   694,   377,   238,   516,   182,
     162,   700,   701,   181,   181,   164,   563,   166,   164,   162,
     166,   321,   253,    13,    14,   162,   181,   327,    17,    18,
     163,   164,   162,   330,   162,   398,   301,   302,   303,   304,
     305,   306,   307,   308,   309,   310,   311,   312,   313,   314,
     315,   316,   163,   164,   163,   164,   166,   288,   182,   279,
     168,   281,   163,   164,   284,   162,   297,    33,    34,    35,
      36,    37,    38,   162,   411,   162,   376,    19,   298,   163,
     164,   589,   590,   178,   384,   179,   594,   387,   388,   597,
     393,   163,   387,   163,   164,   163,   164,   164,   398,   398,
     163,   164,   163,   164,   163,   304,   305,     5,   306,   307,
     163,   279,   163,   281,   478,   283,   284,   163,   455,   287,
     288,   352,   290,   163,   279,   162,   281,   427,   465,   284,
     312,   313,   432,   470,   411,   506,   160,   292,   182,   162,
     161,    39,    40,   163,   183,   543,   411,   484,    46,   594,
     181,   524,    50,    51,    52,    53,   165,   377,    97,   522,
     182,   426,   181,   394,   395,   160,   160,   182,   164,   162,
     182,   471,    70,    71,   161,   183,   164,   161,   455,   577,
     166,   147,   163,   478,   449,   450,   163,   163,   465,   163,
     455,   491,   164,   470,   163,   163,   641,   534,   163,   163,
     465,   164,   163,   503,   163,   470,   164,   484,   163,   163,
     510,   575,   164,   183,   163,   515,   183,     5,   555,   484,
     665,   516,   522,   522,   524,   522,   163,   163,   163,   529,
     527,   451,   130,    97,   182,   182,   162,   682,   469,   162,
     540,   162,   162,   474,   166,   143,   163,   692,   166,   160,
     648,    39,    40,   183,   166,   182,   166,   534,    46,   163,
     161,   161,    50,    51,    52,    53,   563,   182,    86,   534,
     163,   169,   161,   161,   494,   182,   613,   163,   163,   163,
     575,   162,    70,    71,   161,   182,   506,   181,   163,   626,
     555,   182,   589,   590,   589,   590,   163,    84,     5,   594,
     182,   163,   597,    81,    82,    83,   182,    85,    86,    87,
      88,    89,    90,    91,    92,   648,   653,   549,   549,   316,
     449,   245,   314,   450,   624,   624,   575,   236,    35,   673,
     315,   476,    39,    40,   634,   634,   292,   217,   675,   321,
     570,   161,   130,    50,    51,    52,    53,   527,   613,   626,
     382,    84,   251,   590,   273,   143,   239,   148,   577,   516,
     250,   626,    -1,    70,    71,   260,    -1,    -1,   668,   589,
     590,   591,    -1,   673,   673,    -1,   653,   677,   678,   679,
      -1,   169,   160,    -1,    -1,    -1,    -1,    -1,   653,    -1,
     621,    -1,    -1,    -1,   694,    -1,    -1,    -1,   675,    -1,
     700,   701,    -1,    -1,    -1,     5,    -1,    -1,    -1,    -1,
     675,    -1,    -1,   633,    -1,   646,    -1,    -1,   649,    -1,
      -1,    -1,    -1,   130,   644,     3,     4,     5,     6,     7,
       8,     9,    -1,    11,    12,    35,   143,    -1,    -1,    39,
      40,    -1,    -1,    21,   664,   676,    -1,    -1,    -1,    -1,
      50,    51,    52,    53,    -1,    33,    34,    35,    36,    37,
      38,    39,    40,    -1,    42,    43,    44,    -1,    46,    47,
      70,    71,    50,    51,    52,    53,    -1,    55,    -1,    -1,
      -1,    -1,    60,    61,    62,    63,    64,    65,    66,    67,
      68,    69,    70,    71,    72,    73,    74,    75,    76,    77,
      78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    97,
      98,    99,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     130,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   143,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   129,   130,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   141,   142,   143,   144,   145,   146,   147,
     148,   149,   150,   151,   152,   153,   154,   155,   156,   157,
      -1,    -1,    -1,    -1,   162,    -1,     5,    -1,    -1,    -1,
     168,   169,   170,   171,   172,   173,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   182,   183,     3,     4,     5,     6,
       7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,    -1,
      39,    40,    -1,    -1,    21,    -1,    -1,    -1,    -1,    -1,
      -1,    50,    51,    52,    53,    -1,    33,    34,    35,    36,
      37,    38,    39,    40,    -1,    42,    43,    44,    -1,    46,
      47,    70,    71,    50,    51,    52,    53,    -1,    55,    -1,
      -1,    -1,    -1,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      97,    98,    99,    -1,    -1,    -1,    -1,    -1,    -1,     3,
      -1,   130,     6,     7,     8,     9,    -1,    11,    12,    -1,
      -1,    -1,    -1,    -1,   143,    -1,    -1,    21,    -1,    -1,
      -1,    -1,   129,   130,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   141,   142,   143,   144,   145,   146,
     147,   148,   149,   150,   151,   152,   153,   154,   155,   156,
     157,    55,    -1,    -1,    -1,   162,    -1,    -1,    -1,    -1,
      -1,   168,   169,   170,   171,   172,   173,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   182,   183,    81,    82,    83,
      -1,    85,    86,    87,    88,    89,    90,    91,    92,    -1,
      -1,    -1,    -1,    97,    98,    99,     3,    -1,    -1,     6,
       7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    21,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   142,    -1,
     144,    -1,    -1,    -1,   148,   149,   150,    -1,    55,    -1,
      -1,    -1,    -1,   157,    -1,    -1,   160,    -1,   162,    -1,
      -1,    -1,    -1,    -1,   168,   169,   170,   171,   172,   173,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,     3,   182,   183,
       6,     7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,
      97,    98,    99,     3,    -1,    21,     6,     7,     8,     9,
      -1,    11,    12,    -1,    -1,    41,    -1,    -1,    -1,    -1,
      -1,    21,    48,    49,    -1,    -1,    -1,    -1,    -1,    55,
      56,    57,    58,    59,    -1,    -1,    -1,    -1,    -1,    55,
      -1,    -1,    -1,    -1,    -1,   142,    -1,   144,    -1,    -1,
      -1,   148,   149,   150,    -1,    -1,    -1,    -1,    -1,    -1,
     157,    -1,    -1,    -1,    -1,   162,    -1,    93,    94,    95,
      96,   168,   169,   170,   171,   172,   173,    -1,    -1,    -1,
      -1,    97,    98,    99,     3,   182,   183,     6,     7,     8,
       9,    -1,    11,    12,    -1,    -1,    -1,    97,    -1,    99,
      -1,    -1,    -1,    -1,    -1,   131,   132,   133,   134,   135,
     136,   137,   138,   139,   140,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   142,    -1,   144,    -1,
      -1,    -1,   148,   149,   150,    -1,    -1,    -1,    -1,    -1,
      -1,   157,   142,    -1,   144,    -1,   162,    -1,   148,   149,
     150,    -1,   168,   169,   170,   171,   172,   173,    -1,    -1,
      -1,    -1,   162,    -1,    -1,    -1,   182,    -1,   168,   169,
     170,   171,   172,   173,    -1,    -1,    -1,    -1,    97,    -1,
      99,    -1,   182,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   142,    -1,   144,    -1,    -1,    -1,   148,
     149,   150,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   162,    -1,    -1,    -1,    -1,    -1,   168,
     169,   170,   171,   172,   173,    -1,     3,     4,     5,     6,
       7,     8,     9,   182,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    21,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    33,    34,    35,    36,
      37,    38,    39,    40,    -1,    42,    43,    44,    -1,    46,
      47,    -1,    -1,    50,    51,    52,    53,    -1,    -1,    -1,
      -1,    -1,    -1,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      97,    -1,    99,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   129,   130,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   141,   142,   143,   144,   145,   146,
     147,   148,   149,   150,   151,   152,   153,   154,   155,   156,
      -1,    -1,    -1,    -1,    -1,   162,    -1,    -1,    -1,    -1,
      -1,   168,   169,   170,   171,   172,   173,     3,     4,     5,
       6,     7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    33,    34,    35,
      36,    37,    38,    39,    40,    -1,    42,    43,    44,    -1,
      46,    47,    -1,    -1,    50,    51,    52,    53,    -1,    -1,
      -1,    -1,    -1,    -1,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    97,    -1,    99,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,     3,    -1,    -1,     6,
       7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   130,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   141,   142,   143,   144,    -1,
      -1,   147,   148,   149,   150,   151,   152,   153,   154,   155,
     156,    -1,    -1,    -1,    -1,    -1,   162,    -1,    -1,    -1,
      -1,    -1,   168,   169,   170,   171,   172,   173,     3,     4,
       5,     6,     7,     8,     9,    -1,    11,    12,    -1,    -1,
      -1,    -1,    -1,     3,    -1,    -1,     6,     7,     8,     9,
      -1,    11,    12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      97,    -1,    99,    -1,    39,    40,    -1,    42,    43,    44,
      -1,    46,    47,    -1,    -1,    50,    51,    52,    53,    -1,
      -1,    -1,    -1,    -1,    -1,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    -1,   142,    -1,   144,    -1,    -1,
      -1,   148,   149,   150,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    97,   160,    99,   162,    -1,    -1,    -1,    -1,
      -1,   168,   169,   170,   171,   172,   173,    97,     3,    99,
      -1,     6,     7,     8,     9,    -1,    11,    12,    -1,    -1,
      -1,    -1,    -1,    -1,     3,   130,    -1,     6,     7,     8,
       9,    -1,    11,    12,    -1,    -1,   141,   142,   143,   144,
      -1,    -1,    -1,   148,   149,   150,   151,   152,   153,   154,
     155,   156,   142,    -1,   144,    -1,    -1,   162,   148,   149,
     150,    -1,    -1,   168,   169,   170,   171,   172,   173,    -1,
      -1,    -1,   162,    -1,    -1,    -1,   166,    -1,   168,   169,
     170,   171,   172,   173,    -1,     3,    -1,    -1,     6,     7,
       8,     9,    -1,    11,    12,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    97,    21,    99,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    97,     3,
      99,    -1,     6,     7,     8,     9,    -1,    11,    12,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   142,    -1,   144,
      -1,    -1,    -1,   148,   149,   150,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,   142,    -1,   144,    -1,   162,   163,   148,
     149,   150,    -1,   168,   169,   170,   171,   172,   173,    97,
      -1,    99,    -1,   162,    -1,    -1,    -1,   166,    -1,   168,
     169,   170,   171,   172,   173,    -1,     3,    -1,    -1,     6,
       7,     8,     9,    -1,    11,    12,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    97,    -1,    99,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   142,    -1,   144,    -1,    -1,    -1,
     148,   149,   150,     3,    -1,    -1,     6,     7,     8,     9,
      -1,    11,    12,    -1,   162,    -1,    -1,    -1,    -1,    -1,
     168,   169,   170,   171,   172,   173,    -1,    -1,   142,    -1,
     144,    -1,    -1,    -1,   148,   149,   150,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   162,    -1,
      -1,    -1,    -1,    -1,   168,   169,   170,   171,   172,   173,
      97,     3,    99,    -1,     6,     7,     8,     9,    -1,    11,
      12,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    97,    -1,    99,
      -1,    -1,    -1,    -1,    -1,   142,    -1,   144,    -1,    -1,
      -1,   148,   149,   150,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   162,    -1,    -1,    -1,    -1,
      -1,   168,   169,   170,   171,   172,   173,    -1,    -1,    -1,
      -1,    -1,   142,    -1,   144,    -1,    -1,    -1,   148,   149,
     150,    -1,    -1,    -1,    -1,    97,    -1,    99,    -1,    -1,
      -1,    -1,   162,    -1,    -1,    -1,    -1,    -1,   168,   169,
     170,   171,   172,   173,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     142,    -1,   144,     3,     4,     5,   148,   149,   150,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     162,    21,    -1,    -1,    -1,    -1,   168,   169,   170,   171,
     172,   173,    -1,    33,    34,    35,    36,    37,    38,    39,
      40,    -1,    42,    43,    44,    45,    46,    47,    -1,    -1,
      50,    51,    52,    53,    -1,    -1,    -1,    -1,    -1,    -1,
      60,    61,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   129,
     130,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,   141,    -1,   143,    -1,   145,   146,   147,     3,     4,
       5,   151,   152,   153,   154,   155,   156,    -1,    -1,    -1,
      -1,    -1,   162,    -1,    -1,    -1,    -1,    -1,    -1,   169,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    33,    34,
      35,    36,    37,    38,    39,    40,    -1,    42,    43,    44,
      -1,    46,    47,    -1,    -1,    50,    51,    52,    53,     4,
       5,    -1,    -1,    -1,    -1,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    -1,    -1,    -1,    -1,    33,    34,
      35,    36,    37,    38,    39,    40,    -1,    42,    43,    44,
      -1,    46,    47,    -1,    -1,    50,    51,    52,    53,    -1,
      -1,    -1,    -1,    -1,    -1,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,   129,   130,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   141,    -1,   143,    -1,
     145,    -1,   147,    -1,    -1,    -1,   151,   152,   153,   154,
     155,   156,    -1,    -1,    -1,    -1,    -1,   162,   163,    -1,
      -1,    -1,    -1,    -1,   169,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   129,   130,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   141,    -1,   143,    -1,
     145,    -1,   147,     4,     5,    -1,   151,   152,   153,   154,
     155,   156,    -1,    -1,    -1,    -1,    -1,   162,   163,    -1,
      -1,    -1,    -1,    -1,   169,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    33,    34,    35,    36,    37,    38,    39,    40,
      -1,    42,    43,    44,    -1,    46,    47,    -1,    -1,    50,
      51,    52,    53,    -1,    -1,    -1,    -1,    -1,    -1,    60,
      61,    62,    63,    64,    65,    66,    67,    68,    69,    70,
      71,    72,    73,    74,    75,    76,    77,    78,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   129,   130,
      -1,     4,     5,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
     141,    -1,   143,    -1,   145,    -1,   147,    -1,    21,    -1,
     151,   152,   153,   154,   155,   156,    -1,    -1,    -1,   160,
      33,    34,    35,    36,    37,    38,    39,    40,    -1,    42,
      43,    44,    -1,    46,    47,    -1,    -1,    50,    51,    52,
      53,     4,     5,    -1,    -1,    -1,    -1,    60,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,
      33,    34,    35,    36,    37,    38,    39,    40,    -1,    42,
      43,    44,    -1,    46,    47,    -1,    -1,    50,    51,    52,
      53,    54,    -1,    -1,    -1,    -1,    -1,    60,    61,    62,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,   129,   130,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   141,    -1,
     143,    -1,   145,   146,   147,    -1,    -1,    -1,   151,   152,
     153,   154,   155,   156,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   129,   130,     4,     5,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   141,    -1,
     143,    -1,   145,    -1,   147,    -1,    -1,    -1,   151,   152,
     153,   154,   155,   156,    -1,    -1,    -1,    33,    34,    35,
      36,    37,    38,    39,    40,    -1,    42,    43,    44,    -1,
      46,    47,     4,     5,    50,    51,    52,    53,    -1,    -1,
      -1,    -1,    -1,    -1,    60,    61,    62,    63,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    -1,    -1,    -1,    -1,    39,    40,    -1,
      42,    43,    44,    -1,    46,    47,    -1,    -1,    50,    51,
      52,    53,    -1,    -1,    -1,    -1,    -1,    -1,    60,    61,
      62,    63,    64,    65,    66,    67,    68,    69,    70,    71,
      72,    73,    74,    75,    76,    77,    78,    -1,    -1,    -1,
      82,    -1,    -1,   129,   130,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,   141,    -1,   143,    -1,   145,
      -1,   147,    -1,    -1,    -1,   151,   152,   153,   154,   155,
     156,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
       4,     5,    -1,    -1,    -1,    -1,    -1,    -1,   130,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   141,
      -1,   143,    -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,
     152,   153,   154,   155,   156,    39,    40,    -1,    42,    43,
      44,    -1,    46,    47,    -1,    -1,    50,    51,    52,    53,
      -1,    -1,    -1,    -1,    -1,    -1,    60,    61,    62,    63,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,   130,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   141,    -1,   143,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,   151,   152,   153,
     154,   155,   156
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int16 yystos[] =
{
       0,     3,     4,     5,    21,    33,    34,    35,    36,    37,
      38,    39,    40,    42,    43,    44,    45,    46,    47,    50,
      51,    52,    53,    60,    61,    62,    63,    64,    65,    66,
      67,    68,    69,    70,    71,    72,    73,    74,    75,    76,
      77,    78,   129,   130,   141,   143,   145,   146,   147,   151,
     152,   153,   154,   155,   156,   162,   169,   220,   221,   222,
     225,   229,   230,   231,   232,   233,   235,   238,   242,   243,
     248,   249,   250,   251,   252,   253,   254,   255,   256,   259,
     260,   279,   280,   282,   311,   312,   313,   317,   324,   325,
     351,   352,   283,   284,   285,   286,   352,    57,   352,     6,
     162,   160,   161,   247,   352,   162,   162,   162,   162,   162,
     251,   182,   223,   224,   251,    78,   222,   280,   281,   222,
     222,   314,   165,   162,   281,   281,    41,    48,    49,    55,
      56,    57,    58,    59,    93,    94,    95,    96,   131,   132,
     133,   134,   135,   136,   137,   138,   139,   140,   318,   319,
     323,   252,    46,   248,   259,   261,   182,   282,   312,     0,
     281,   164,   166,   162,   287,    22,    70,   352,     6,     7,
       8,     9,    11,    12,    97,    99,   142,   144,   148,   149,
     150,   162,   168,   169,   170,   171,   172,   173,   185,   186,
     187,   191,   195,   196,   197,   198,   199,   200,   201,   202,
     203,   204,   205,   206,   208,   210,   218,   322,   352,   245,
     246,   352,   231,   235,   239,   248,   250,   331,   160,   160,
     247,   218,   238,   329,   330,   333,   218,   195,   210,   213,
     215,   333,   215,   333,   218,   163,   164,   182,   181,   315,
     352,   326,   327,   352,   160,   221,   297,   299,   316,   341,
     342,    35,   261,   262,   163,   257,   258,   162,   162,   162,
     162,   162,   162,   319,   162,    46,   248,   259,   285,   166,
       6,    97,   163,   288,   289,   352,   352,   352,   182,   162,
     195,   162,   195,   162,   162,   195,   195,   162,   162,   215,
     227,   228,   229,   333,    10,    11,    12,   162,   165,   167,
     197,   169,   174,   175,   170,   171,    13,    14,    15,    16,
     176,   177,    17,    18,   168,   178,   179,    19,    20,   180,
     163,   164,   244,   281,   239,   245,   245,   160,   182,   163,
     162,   259,   266,   267,   268,   269,   270,   238,   163,   163,
     164,    23,    24,    25,    26,    27,    28,    29,    30,    31,
      32,   181,   214,   163,   164,   163,   163,   163,   163,   224,
     251,   160,   213,   272,   273,   316,   247,   234,   223,    55,
      98,   157,   183,   215,   217,   220,   221,   280,   281,   291,
     295,   298,   300,   301,   334,   335,   336,   340,   343,   350,
     352,   299,   341,   261,   262,    35,   166,   213,   221,   263,
     264,   265,   332,   352,   218,   218,   218,   332,   218,   218,
     218,   162,   163,   289,   182,   333,   333,   333,   333,   333,
     188,   213,   333,   163,   333,   228,   163,   193,   163,   194,
     213,   215,   192,   197,   197,   197,   198,   198,   199,   199,
     200,   200,   200,   200,   201,   201,   202,   203,   204,   207,
     209,   211,   212,   246,   183,   181,   328,   244,   244,   245,
     163,   263,   266,   267,   162,   165,   182,    97,   213,   216,
     165,   167,   183,   274,   275,   276,   277,   278,   160,   182,
     182,   162,   182,   215,    81,    82,    83,    85,    86,    87,
      88,    89,    90,    91,    92,   292,   299,   304,   307,   310,
     344,   345,   346,   347,   348,   298,   280,   290,   291,   294,
     295,   220,   336,   291,   295,   337,   338,   339,   161,   213,
     213,   166,   162,   251,   259,   266,   163,   164,   163,   164,
     163,   163,   163,   163,   164,   163,   163,   218,   163,   163,
     164,   163,   163,   164,   163,   197,   273,   352,   163,   164,
     166,   352,   205,   206,   215,   161,   218,   183,   183,   244,
     163,   163,   163,   271,   166,   218,   163,   213,   218,   352,
     164,   183,   272,   181,   278,   236,   237,   281,    97,   349,
     182,   218,   219,   296,   352,   182,   182,   182,   215,   162,
     162,   162,   290,   293,   162,   290,   336,   340,   166,   166,
      54,   265,   352,   218,   163,   320,   352,    82,   189,   190,
     333,   273,   194,   161,   210,   183,   263,   166,   182,   166,
     183,   275,   183,   237,   329,   163,    54,   161,   161,   161,
     182,   182,   215,   220,   221,   226,   303,   303,   215,    86,
     217,   220,   163,   163,   165,   167,   161,   163,   164,   161,
     210,   163,   272,   161,   240,   241,   251,   182,   218,   215,
     251,   163,   163,   163,   162,   182,   217,   215,   321,   213,
     190,   213,   218,   164,   182,   161,   181,   305,   306,   308,
     215,   217,   182,   166,   352,   241,   218,   272,   293,   293,
     293,   163,   182,   217,    84,   302,   182,   217,   163,   293,
     163,   309,   293,   293
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int16 yyr1[] =
{
       0,   184,   185,   185,   185,   185,   185,   185,   186,   186,
     186,   187,   188,   188,   189,   189,   190,   190,   191,   191,
     191,   191,   192,   191,   193,   191,   191,   191,   191,   191,
     194,   194,   195,   195,   195,   195,   195,   195,   195,   195,
     195,   195,   196,   196,   196,   196,   196,   196,   197,   197,
     198,   198,   198,   198,   199,   199,   199,   200,   200,   200,
     201,   201,   201,   201,   201,   202,   202,   202,   203,   203,
     204,   204,   205,   205,   206,   207,   206,   208,   209,   208,
     210,   211,   210,   212,   210,   213,   213,   214,   214,   214,
     214,   214,   214,   214,   214,   214,   214,   214,   215,   216,
     215,   217,   217,   218,   219,   220,   220,   220,   220,   220,
     221,   222,   222,   222,   222,   222,   222,   223,   223,   224,
     224,   225,   226,   227,   228,   228,   229,   229,   229,   229,
     229,   229,   229,   230,   230,   231,   231,   231,   231,   231,
     231,   231,   231,   231,   231,   231,   231,   231,   231,   231,
     231,   231,   231,   231,   231,   231,   231,   231,   231,   232,
     232,   232,   232,   234,   233,   233,   235,   235,   236,   236,
     237,   238,   238,   238,   239,   239,   239,   239,   240,   240,
     241,   241,   241,   241,   242,   242,   242,   242,   242,   243,
     244,   244,   245,   245,   246,   247,   248,   248,   248,   248,
     248,   248,   248,   248,   248,   248,   248,   249,   249,   250,
     250,   251,   251,   252,   252,   252,   252,   253,   253,   253,
     254,   254,   254,   254,   255,   255,   256,   257,   256,   258,
     256,   259,   259,   259,   259,   259,   259,   260,   261,   261,
     262,   262,   263,   263,   264,   264,   265,   265,   265,   266,
     266,   266,   267,   267,   267,   268,   268,   269,   269,   270,
     270,   270,   271,   270,   272,   272,   273,   273,   273,   274,
     274,   275,   275,   276,   277,   277,   278,   278,   279,   279,
     280,   280,   281,   281,   282,   283,   283,   284,   284,   285,
     285,   286,   286,   287,   287,   288,   288,   289,   289,   289,
     290,   290,   291,   291,   291,   291,   291,   292,   292,   292,
     293,   294,   295,   295,   295,   296,   295,   297,   298,   299,
     299,   300,   300,   300,   301,   301,   302,   302,   303,   303,
     303,   305,   304,   306,   304,   308,   307,   307,   307,   309,
     307,   310,   310,   310,   310,   310,   311,   311,   312,   312,
     312,   314,   313,   315,   313,   316,   316,   317,   317,   318,
     318,   319,   319,   319,   319,   319,   319,   319,   319,   319,
     319,   319,   319,   319,   319,   319,   319,   319,   319,   319,
     319,   319,   319,   320,   321,   320,   320,   322,   322,   323,
     323,   324,   324,   325,   325,   325,   325,   326,   326,   327,
     328,   328,   329,   330,   330,   331,   331,   332,   332,   333,
     333,   334,   335,   336,   336,   338,   337,   339,   339,   340,
     340,   341,   342,   342,   343,   343,   343,   343,   344,   345,
     346,   347,   348,   349,   350,   350,   351,   351,   352
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     1,     3,     1,     1,     1,     1,
       1,     6,     1,     1,     1,     3,     3,     3,     1,     4,
       3,     4,     0,     4,     0,     4,     2,     2,     4,     5,
       1,     3,     1,     2,     2,     2,     2,     4,     2,     4,
       4,     6,     1,     1,     1,     1,     1,     1,     1,     4,
       1,     3,     3,     3,     1,     3,     3,     1,     3,     3,
       1,     3,     3,     3,     3,     1,     3,     3,     1,     3,
       1,     3,     1,     3,     1,     0,     4,     1,     0,     4,
       1,     0,     6,     0,     5,     1,     3,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     0,
       4,     0,     1,     1,     3,     1,     2,     3,     1,     1,
       1,     1,     2,     1,     2,     1,     2,     1,     3,     1,
       3,     2,     4,     1,     1,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     4,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     4,     1,     4,
       4,     4,     4,     0,     7,     3,     1,     1,     1,     2,
       4,     1,     1,     1,     1,     1,     1,     1,     1,     3,
       1,     2,     3,     0,     5,     6,     6,     7,     2,     4,
       0,     1,     1,     3,     3,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     4,
       4,     1,     2,     2,     3,     2,     2,     1,     3,     1,
       4,     5,     6,     6,     1,     2,     3,     0,     5,     0,
       5,     1,     5,     2,     6,     2,     3,     1,     1,     2,
       0,     1,     1,     3,     1,     3,     2,     2,     1,     1,
       1,     2,     3,     1,     1,     0,     1,     3,     4,     2,
       3,     3,     0,     5,     1,     1,     2,     3,     4,     2,
       4,     0,     1,     2,     1,     2,     3,     2,     7,     5,
       2,     1,     0,     1,     4,     1,     3,     1,     2,     0,
       1,     1,     3,     2,     3,     1,     2,     1,     1,     1,
       1,     1,     1,     2,     2,     1,     1,     1,     1,     1,
       1,     2,     2,     4,     4,     0,     4,     1,     1,     2,
       3,     1,     1,     2,     2,     3,     2,     0,     1,     2,
       1,     0,     7,     0,     6,     0,     6,     7,     9,     0,
       9,     3,     2,     2,     2,     3,     1,     2,     1,     1,
       1,     0,     3,     0,     4,     1,     2,     0,     1,     1,
       2,     4,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     4,     1,     1,
       4,     6,     4,     1,     0,     4,     4,     1,     1,     1,
       4,     1,     1,     1,     2,     1,     1,     1,     0,     1,
       2,     0,     1,     1,     2,     1,     2,     1,     3,     1,
       2,     1,     2,     1,     2,     0,     2,     2,     1,     1,
       2,     3,     1,     2,     1,     1,     2,     2,     1,     1,
       1,     1,     1,     1,     5,     2,     4,     5,     1
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* primary_expression: identifier  */
#line 181 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 2950 "y.tab.c"
    break;

  case 3: /* primary_expression: CONSTANT  */
#line 182 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE ((yyvsp[0].val)); }
#line 2956 "y.tab.c"
    break;

  case 5: /* primary_expression: '(' expression ')'  */
#line 184 "SDCC.y"
                           { (yyval.asts) = (yyvsp[-1].asts); }
#line 2962 "y.tab.c"
    break;

  case 8: /* predefined_constant: TOKEN_FALSE  */
#line 190 "SDCC.y"
                 { (yyval.asts) = newAst_VALUE (constBoolVal (false, true)); }
#line 2968 "y.tab.c"
    break;

  case 9: /* predefined_constant: TOKEN_TRUE  */
#line 191 "SDCC.y"
                 { (yyval.asts) = newAst_VALUE (constBoolVal (true, true)); }
#line 2974 "y.tab.c"
    break;

  case 10: /* predefined_constant: NULLPTR  */
#line 192 "SDCC.y"
                 { (yyval.asts) = newAst_VALUE (constNullptrVal ()); }
#line 2980 "y.tab.c"
    break;

  case 11: /* generic_selection: GENERIC '(' generic_controlling_operand ',' generic_assoc_list ')'  */
#line 196 "SDCC.y"
                                                                        { (yyval.asts) = newNode (GENERIC, (yyvsp[-3].asts), (yyvsp[-1].asts)); }
#line 2986 "y.tab.c"
    break;

  case 13: /* generic_controlling_operand: type_name  */
#line 201 "SDCC.y"
               { (yyval.asts) = newAst_LINK ((yyvsp[0].lnk)); }
#line 2992 "y.tab.c"
    break;

  case 14: /* generic_assoc_list: generic_association  */
#line 205 "SDCC.y"
                         { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, NULL, (yyvsp[0].asts)); }
#line 2998 "y.tab.c"
    break;

  case 15: /* generic_assoc_list: generic_assoc_list ',' generic_association  */
#line 206 "SDCC.y"
                                                { (yyval.asts) = newNode  (GENERIC_ASSOC_LIST, (yyvsp[-2].asts), (yyvsp[0].asts)); }
#line 3004 "y.tab.c"
    break;

  case 16: /* generic_association: type_name ':' assignment_expr  */
#line 210 "SDCC.y"
                                   { (yyval.asts) = newNode  (GENERIC_ASSOCIATION, newAst_LINK((yyvsp[-2].lnk)), (yyvsp[0].asts)); }
#line 3010 "y.tab.c"
    break;

  case 17: /* generic_association: DEFAULT ':' assignment_expr  */
#line 211 "SDCC.y"
                                 { (yyval.asts) = newNode  (GENERIC_ASSOCIATION,NULL,(yyvsp[0].asts)); }
#line 3016 "y.tab.c"
    break;

  case 19: /* postfix_expression: postfix_expression '[' expression ']'  */
#line 216 "SDCC.y"
                                                    { (yyval.asts) = newNode  ('[', (yyvsp[-3].asts), (yyvsp[-1].asts)); }
#line 3022 "y.tab.c"
    break;

  case 20: /* postfix_expression: postfix_expression '(' ')'  */
#line 217 "SDCC.y"
                                              { (yyval.asts) = newNode  (CALL,(yyvsp[-2].asts),NULL);
                                          (yyval.asts)->left->funcName = 1;}
#line 3029 "y.tab.c"
    break;

  case 21: /* postfix_expression: postfix_expression '(' argument_expr_list ')'  */
#line 220 "SDCC.y"
          {
            (yyval.asts) = newNode  (CALL,(yyvsp[-3].asts),(yyvsp[-1].asts)); (yyval.asts)->left->funcName = 1;
          }
#line 3037 "y.tab.c"
    break;

  case 22: /* $@1: %empty  */
#line 223 "SDCC.y"
                            { ignoreTypedefType = 1; }
#line 3043 "y.tab.c"
    break;

  case 23: /* postfix_expression: postfix_expression '.' $@1 identifier  */
#line 224 "SDCC.y"
                      {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,newNode('&',(yyvsp[-3].asts),NULL),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 3054 "y.tab.c"
    break;

  case 24: /* $@2: %empty  */
#line 230 "SDCC.y"
                               { ignoreTypedefType = 1; }
#line 3060 "y.tab.c"
    break;

  case 25: /* postfix_expression: postfix_expression PTR_OP $@2 identifier  */
#line 231 "SDCC.y"
                      {
                        ignoreTypedefType = 0;
                        (yyvsp[0].sym) = newSymbol((yyvsp[0].sym)->name,NestLevel);
                        (yyvsp[0].sym)->implicit = 1;
                        (yyval.asts) = newNode(PTR_OP,(yyvsp[-3].asts),newAst_VALUE(symbolVal((yyvsp[0].sym))));
                      }
#line 3071 "y.tab.c"
    break;

  case 26: /* postfix_expression: postfix_expression INC_OP  */
#line 238 "SDCC.y"
                      { (yyval.asts) = newNode(INC_OP,(yyvsp[-1].asts),NULL);}
#line 3077 "y.tab.c"
    break;

  case 27: /* postfix_expression: postfix_expression DEC_OP  */
#line 240 "SDCC.y"
                      { (yyval.asts) = newNode(DEC_OP,(yyvsp[-1].asts),NULL); }
#line 3083 "y.tab.c"
    break;

  case 28: /* postfix_expression: '(' type_name ')' braced_initializer  */
#line 242 "SDCC.y"
                      {
                        if (!options.std_c99)
                          werror(E_COMPOUND_LITERALS_C99);

                        /* create anonymous variable with the provided initializer list */
                        symbol *sym = newSymbol(genSymName(NestLevel), NestLevel);
                        /* imitate "init_declarator" */
                        sym->ival = (yyvsp[0].ilist);
                        /* NOTE: Do not increment seqPointNo here, because the initializer is part of a
                                 compound literal. See Annex C.1 "Known Sequence Points" paragraph 4. */

                        /* add the specifier list to the id */
                        symbol *sym1 = prepareDeclarationSymbol(NULL, (yyvsp[-2].lnk), sym);

                        /* mark as temporary symbol for compound literal, so that gatherImplicitVariables
                           can attach it to a block, and add the temporary symbol to the symbol table */
                        sym1->iscomplit = 1;
                        addSymChain(&sym1);
                        /* allocate memory for the symbol where no block handling does it */
                        if (NestLevel == 0)
                          allocVariables(sym1);

                        /* use the anonymous variable in the AST */
                        (yyval.asts) = newAst_VALUE(symbolVal(sym1));
                      }
#line 3113 "y.tab.c"
    break;

  case 29: /* postfix_expression: '(' storage_class_specifiers type_name ')' braced_initializer  */
#line 268 "SDCC.y"
                      {
                        if (!options.std_c23)
                          werror(E_COMPLIT_SCLASS_C23);

                        /* create anonymous variable with the provided initializer list */
                        symbol *sym = newSymbol(genSymName(NestLevel), NestLevel);
                        /* imitate "init_declarator" */
                        sym->ival = (yyvsp[0].ilist);
                        /* NOTE: Do not increment seqPointNo here, because the initializer is part of a
                                 compound literal. See Annex C.1 "Known Sequence Points" paragraph 4. */

                        /* add the specifier list to the id */
                        sym_link *merged = finalizeSpec(mergeDeclSpec((yyvsp[-3].lnk), (yyvsp[-2].lnk), "storage_class_specifiers type_name"));
                        symbol *sym1 = prepareDeclarationSymbol(NULL, merged, sym);

                        /* mark as temporary symbol for compound literal, so that gatherImplicitVariables
                           can attach it to a block, and add the temporary symbol to the symbol table */
                        sym1->iscomplit = 1;
                        addSymChain(&sym1);
                        /* allocate memory for the symbol where no block handling does it */
                        if (NestLevel == 0)
                          allocVariables(sym1);

                        /* use the anonymous variable in the AST */
                        (yyval.asts) = newAst_VALUE(symbolVal(sym1));
                      }
#line 3144 "y.tab.c"
    break;

  case 31: /* argument_expr_list: assignment_expr ',' argument_expr_list  */
#line 298 "SDCC.y"
                                            { (yyval.asts) = newNode(PARAM,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3150 "y.tab.c"
    break;

  case 33: /* unary_expression: INC_OP unary_expression  */
#line 303 "SDCC.y"
                                    { (yyval.asts) = newNode (INC_OP, NULL, (yyvsp[0].asts)); }
#line 3156 "y.tab.c"
    break;

  case 34: /* unary_expression: DEC_OP unary_expression  */
#line 304 "SDCC.y"
                                    { (yyval.asts) = newNode (DEC_OP, NULL, (yyvsp[0].asts)); }
#line 3162 "y.tab.c"
    break;

  case 35: /* unary_expression: unary_operator cast_expression  */
#line 306 "SDCC.y"
       {
         if ((yyvsp[-1].yyint) == '&' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '*' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else if ((yyvsp[-1].yyint) == '*' && IS_AST_OP ((yyvsp[0].asts)) && (yyvsp[0].asts)->opval.op == '&' && (yyvsp[0].asts)->right == NULL)
           (yyval.asts) = (yyvsp[0].asts)->left;
         else
           (yyval.asts) = newNode ((yyvsp[-1].yyint), (yyvsp[0].asts), NULL);
       }
#line 3175 "y.tab.c"
    break;

  case 36: /* unary_expression: SIZEOF unary_expression  */
#line 314 "SDCC.y"
                                    { (yyval.asts) = newNode (SIZEOF, NULL, (yyvsp[0].asts)); }
#line 3181 "y.tab.c"
    break;

  case 37: /* unary_expression: SIZEOF '(' type_name ')'  */
#line 315 "SDCC.y"
                                    { (yyval.asts) = newAst_VALUE (sizeofOp ((yyvsp[-1].lnk))); }
#line 3187 "y.tab.c"
    break;

  case 38: /* unary_expression: COUNTOF unary_expression  */
#line 316 "SDCC.y"
                                    { (yyval.asts) = newNode (COUNTOF, NULL, (yyvsp[0].asts)); }
#line 3193 "y.tab.c"
    break;

  case 39: /* unary_expression: COUNTOF '(' type_name ')'  */
#line 317 "SDCC.y"
                                    { (yyval.asts) = newAst_VALUE (countofOp ((yyvsp[-1].lnk))); }
#line 3199 "y.tab.c"
    break;

  case 40: /* unary_expression: ALIGNOF '(' type_name ')'  */
#line 318 "SDCC.y"
                                    { (yyval.asts) = newAst_VALUE (alignofOp ((yyvsp[-1].lnk))); }
#line 3205 "y.tab.c"
    break;

  case 41: /* unary_expression: OFFSETOF '(' type_name ',' offsetof_member_designator ')'  */
#line 319 "SDCC.y"
                                                               { (yyval.asts) = offsetofOp((yyvsp[-3].lnk), (yyvsp[-1].asts)); }
#line 3211 "y.tab.c"
    break;

  case 42: /* unary_operator: '&'  */
#line 323 "SDCC.y"
            { (yyval.yyint) = '&';}
#line 3217 "y.tab.c"
    break;

  case 43: /* unary_operator: '*'  */
#line 324 "SDCC.y"
            { (yyval.yyint) = '*';}
#line 3223 "y.tab.c"
    break;

  case 44: /* unary_operator: '+'  */
#line 325 "SDCC.y"
            { (yyval.yyint) = '+';}
#line 3229 "y.tab.c"
    break;

  case 45: /* unary_operator: '-'  */
#line 326 "SDCC.y"
            { (yyval.yyint) = '-';}
#line 3235 "y.tab.c"
    break;

  case 46: /* unary_operator: '~'  */
#line 327 "SDCC.y"
            { (yyval.yyint) = '~';}
#line 3241 "y.tab.c"
    break;

  case 47: /* unary_operator: '!'  */
#line 328 "SDCC.y"
            { (yyval.yyint) = '!';}
#line 3247 "y.tab.c"
    break;

  case 49: /* cast_expression: '(' type_name ')' cast_expression  */
#line 333 "SDCC.y"
                                       { (yyval.asts) = newNode(CAST,newAst_LINK((yyvsp[-2].lnk)),(yyvsp[0].asts)); }
#line 3253 "y.tab.c"
    break;

  case 51: /* multiplicative_expression: multiplicative_expression '*' cast_expression  */
#line 338 "SDCC.y"
                                                   { (yyval.asts) = newNode('*',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3259 "y.tab.c"
    break;

  case 52: /* multiplicative_expression: multiplicative_expression '/' cast_expression  */
#line 339 "SDCC.y"
                                                   { (yyval.asts) = newNode('/',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3265 "y.tab.c"
    break;

  case 53: /* multiplicative_expression: multiplicative_expression '%' cast_expression  */
#line 340 "SDCC.y"
                                                   { (yyval.asts) = newNode('%',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3271 "y.tab.c"
    break;

  case 55: /* additive_expression: additive_expression '+' multiplicative_expression  */
#line 345 "SDCC.y"
                                                       { (yyval.asts)=newNode('+',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3277 "y.tab.c"
    break;

  case 56: /* additive_expression: additive_expression '-' multiplicative_expression  */
#line 346 "SDCC.y"
                                                       { (yyval.asts)=newNode('-',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3283 "y.tab.c"
    break;

  case 58: /* shift_expression: shift_expression LEFT_OP additive_expression  */
#line 351 "SDCC.y"
                                                   { (yyval.asts) = newNode(LEFT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3289 "y.tab.c"
    break;

  case 59: /* shift_expression: shift_expression RIGHT_OP additive_expression  */
#line 352 "SDCC.y"
                                                   { (yyval.asts) = newNode(RIGHT_OP,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3295 "y.tab.c"
    break;

  case 61: /* relational_expression: relational_expression '<' shift_expression  */
#line 357 "SDCC.y"
                                                  { (yyval.asts) = newNode('<',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3301 "y.tab.c"
    break;

  case 62: /* relational_expression: relational_expression '>' shift_expression  */
#line 358 "SDCC.y"
                                                  { (yyval.asts) = newNode('>',  (yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3307 "y.tab.c"
    break;

  case 63: /* relational_expression: relational_expression LE_OP shift_expression  */
#line 359 "SDCC.y"
                                                  { (yyval.asts) = newNode(LE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3313 "y.tab.c"
    break;

  case 64: /* relational_expression: relational_expression GE_OP shift_expression  */
#line 360 "SDCC.y"
                                                  { (yyval.asts) = newNode(GE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3319 "y.tab.c"
    break;

  case 66: /* equality_expression: equality_expression EQ_OP relational_expression  */
#line 365 "SDCC.y"
                                                     { (yyval.asts) = newNode(EQ_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3325 "y.tab.c"
    break;

  case 67: /* equality_expression: equality_expression NE_OP relational_expression  */
#line 366 "SDCC.y"
                                                     { (yyval.asts) = newNode(NE_OP,(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3331 "y.tab.c"
    break;

  case 69: /* and_expression: and_expression '&' equality_expression  */
#line 371 "SDCC.y"
                                             { (yyval.asts) = newNode('&',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3337 "y.tab.c"
    break;

  case 71: /* exclusive_or_expression: exclusive_or_expression '^' and_expression  */
#line 376 "SDCC.y"
                                                { (yyval.asts) = newNode('^',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3343 "y.tab.c"
    break;

  case 73: /* inclusive_or_expression: inclusive_or_expression '|' exclusive_or_expression  */
#line 381 "SDCC.y"
                                                         { (yyval.asts) = newNode('|',(yyvsp[-2].asts),(yyvsp[0].asts));}
#line 3349 "y.tab.c"
    break;

  case 75: /* $@3: %empty  */
#line 386 "SDCC.y"
                             { seqPointNo++;}
#line 3355 "y.tab.c"
    break;

  case 76: /* logical_and_expr: logical_and_expr AND_OP $@3 inclusive_or_expression  */
#line 387 "SDCC.y"
                                 { (yyval.asts) = newNode(AND_OP,(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 3361 "y.tab.c"
    break;

  case 78: /* $@4: %empty  */
#line 392 "SDCC.y"
                           { seqPointNo++;}
#line 3367 "y.tab.c"
    break;

  case 79: /* logical_or_expr: logical_or_expr OR_OP $@4 logical_and_expr  */
#line 393 "SDCC.y"
                                 { (yyval.asts) = newNode(OR_OP,(yyvsp[-3].asts),(yyvsp[0].asts)); }
#line 3373 "y.tab.c"
    break;

  case 81: /* $@5: %empty  */
#line 398 "SDCC.y"
                         { seqPointNo++;}
#line 3379 "y.tab.c"
    break;

  case 82: /* conditional_expr: logical_or_expr '?' $@5 expression ':' conditional_expr  */
#line 399 "SDCC.y"
                     {
                        (yyval.asts) = newNode(':',(yyvsp[-2].asts),(yyvsp[0].asts));
                        (yyval.asts) = newNode('?',(yyvsp[-5].asts),(yyval.asts));
                     }
#line 3388 "y.tab.c"
    break;

  case 83: /* $@6: %empty  */
#line 403 "SDCC.y"
                         { seqPointNo++;}
#line 3394 "y.tab.c"
    break;

  case 84: /* conditional_expr: logical_or_expr '?' $@6 ':' conditional_expr  */
#line 404 "SDCC.y"
                     {
                        if (!options.std_sdcc)
                          werror (E_SYNTAX_ERROR);
                        (yyval.asts) = newNode(':',(yyvsp[-4].asts),(yyvsp[0].asts));
                        (yyval.asts) = newNode('?',(yyvsp[-4].asts),(yyval.asts));
                        /* use a temporary variable to prevent the duplication of side effects, if applicable */
                        if (hasSEFcalls ((yyval.asts)->left))
                          (yyval.asts)->left = replaceAstWithTemporary (&(yyval.asts)->right->left);
                     }
#line 3408 "y.tab.c"
    break;

  case 86: /* assignment_expr: unary_expression assignment_operator assignment_expr  */
#line 418 "SDCC.y"
                     {

                             switch ((yyvsp[-1].yyint)) {
                             case '=':
                                     (yyval.asts) = newNode((yyvsp[-1].yyint),(yyvsp[-2].asts),(yyvsp[0].asts));
                                     break;
                             case MUL_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '*', (yyvsp[0].asts));
                                     break;
                             case DIV_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '/', (yyvsp[0].asts));
                                     break;
                             case MOD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '%', (yyvsp[0].asts));
                                     break;
                             case ADD_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '+', (yyvsp[0].asts));
                                     break;
                             case SUB_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '-', (yyvsp[0].asts));
                                     break;
                             case LEFT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), LEFT_OP, (yyvsp[0].asts));
                                     break;
                             case RIGHT_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), RIGHT_OP, (yyvsp[0].asts));
                                     break;
                             case AND_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '&', (yyvsp[0].asts));
                                     break;
                             case XOR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '^', (yyvsp[0].asts));
                                     break;
                             case OR_ASSIGN:
                                     (yyval.asts) = createRMW((yyvsp[-2].asts), '|', (yyvsp[0].asts));
                                     break;
                             default :
                                     (yyval.asts) = NULL;
                             }

                     }
#line 3454 "y.tab.c"
    break;

  case 87: /* assignment_operator: '='  */
#line 462 "SDCC.y"
                     { (yyval.yyint) = '=';}
#line 3460 "y.tab.c"
    break;

  case 99: /* $@7: %empty  */
#line 477 "SDCC.y"
                    { seqPointNo++;}
#line 3466 "y.tab.c"
    break;

  case 100: /* expression: expression ',' $@7 assignment_expr  */
#line 477 "SDCC.y"
                                                     { (yyval.asts) = newNode(',',(yyvsp[-3].asts),(yyvsp[0].asts));}
#line 3472 "y.tab.c"
    break;

  case 101: /* expression_opt: %empty  */
#line 481 "SDCC.y"
                     { (yyval.asts) = NULL; seqPointNo++; }
#line 3478 "y.tab.c"
    break;

  case 102: /* expression_opt: expression  */
#line 482 "SDCC.y"
                     { (yyval.asts) = (yyvsp[0].asts); seqPointNo++; }
#line 3484 "y.tab.c"
    break;

  case 104: /* constant_range_expr: constant_expr ELLIPSIS constant_expr  */
#line 490 "SDCC.y"
                                          { (yyval.asts) = newNode(ELLIPSIS,(yyvsp[-2].asts),(yyvsp[0].asts)); }
#line 3490 "y.tab.c"
    break;

  case 105: /* declaration: simple_typed_enum_decl  */
#line 497 "SDCC.y"
      {
         uselessDecl = true;
         (yyval.sym) = NULL;
      }
#line 3499 "y.tab.c"
    break;

  case 106: /* declaration: declaration_specifiers ';'  */
#line 502 "SDCC.y"
      {
         /* Special case: if incomplete struct/union declared without name, */
         /* make sure an incomplete type for it exists in the current scope */
         if (IS_STRUCT((yyvsp[-1].lnk)))
           {
             structdef *sdef = SPEC_STRUCT((yyvsp[-1].lnk));
             structdef *osdef;
             osdef = findSymWithBlock (StructTab, sdef->tagsym, currBlockno, NestLevel);
             if (osdef && osdef->block != currBlockno)
               {
                 sdef = newStruct(osdef->tagsym->name);
                 sdef->level = NestLevel;
                 sdef->block = currBlockno;
                 sdef->tagsym = newSymbol (osdef->tagsym->name, NestLevel);
                 addSym (StructTab, sdef, sdef->tag, sdef->level, currBlockno, 0);
                 uselessDecl = false;
               }
           }
         if (uselessDecl)
           werror(W_USELESS_DECL);
         uselessDecl = true;
         (yyval.sym) = NULL;
      }
#line 3527 "y.tab.c"
    break;

  case 107: /* declaration: declaration_specifiers init_declarator_list ';'  */
#line 526 "SDCC.y"
      {
         /* add the specifier list to the id */
         symbol *sym1 = prepareDeclarationSymbol (NULL, (yyvsp[-2].lnk), (yyvsp[-1].sym));
         uselessDecl = true;
         (yyval.sym) = sym1;
      }
#line 3538 "y.tab.c"
    break;

  case 108: /* declaration: static_assert_declaration  */
#line 533 "SDCC.y"
      {
         (yyval.sym) = NULL;
      }
#line 3546 "y.tab.c"
    break;

  case 109: /* declaration: attribute_declaration  */
#line 537 "SDCC.y"
      {
         (yyval.sym) = NULL;
      }
#line 3554 "y.tab.c"
    break;

  case 110: /* declaration_specifiers: declaration_specifiers_  */
#line 542 "SDCC.y"
                                                 { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 3560 "y.tab.c"
    break;

  case 111: /* declaration_specifiers_: storage_class_specifier  */
#line 545 "SDCC.y"
                                                     { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3566 "y.tab.c"
    break;

  case 112: /* declaration_specifiers_: storage_class_specifier declaration_specifiers_  */
#line 546 "SDCC.y"
                                                     {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "storage_class_specifier declaration_specifiers - skipped");
   }
#line 3576 "y.tab.c"
    break;

  case 113: /* declaration_specifiers_: type_specifier_qualifier  */
#line 551 "SDCC.y"
                                                    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3582 "y.tab.c"
    break;

  case 114: /* declaration_specifiers_: type_specifier_qualifier declaration_specifiers_  */
#line 552 "SDCC.y"
                                                      {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier_qualifier declaration_specifiers - skipped");
   }
#line 3592 "y.tab.c"
    break;

  case 115: /* declaration_specifiers_: function_specifier  */
#line 557 "SDCC.y"
                                                    { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3598 "y.tab.c"
    break;

  case 116: /* declaration_specifiers_: function_specifier declaration_specifiers_  */
#line 558 "SDCC.y"
                                                    {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "function_specifier declaration_specifiers - skipped");
   }
#line 3608 "y.tab.c"
    break;

  case 118: /* init_declarator_list: init_declarator_list ',' init_declarator  */
#line 567 "SDCC.y"
                                                   { (yyvsp[0].sym)->next = (yyvsp[-2].sym); (yyval.sym) = (yyvsp[0].sym);}
#line 3614 "y.tab.c"
    break;

  case 119: /* init_declarator: declarator  */
#line 571 "SDCC.y"
                                 { (yyvsp[0].sym)->ival = NULL; }
#line 3620 "y.tab.c"
    break;

  case 120: /* init_declarator: declarator '=' initializer  */
#line 572 "SDCC.y"
                                 { (yyvsp[-2].sym)->ival = (yyvsp[0].ilist); seqPointNo++; }
#line 3626 "y.tab.c"
    break;

  case 122: /* simple_declaration: declaration_specifiers declarator '=' initializer  */
#line 581 "SDCC.y"
      {
         // imitate "init_declarator"
         (yyvsp[-2].sym)->ival = (yyvsp[0].ilist);
         seqPointNo++;

         /* add the specifier list to the id */
         symbol *sym1 = prepareDeclarationSymbol (NULL, (yyvsp[-3].lnk), (yyvsp[-2].sym));
         uselessDecl = true;
         (yyval.sym) = sym1;
      }
#line 3641 "y.tab.c"
    break;

  case 123: /* storage_class_specifiers: storage_class_specifiers_  */
#line 594 "SDCC.y"
                               { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 3647 "y.tab.c"
    break;

  case 124: /* storage_class_specifiers_: storage_class_specifier  */
#line 597 "SDCC.y"
                             { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3653 "y.tab.c"
    break;

  case 125: /* storage_class_specifiers_: storage_class_specifier storage_class_specifiers_  */
#line 599 "SDCC.y"
      {
         (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "storage_class_specifier storage_class_specifiers - skipped");
      }
#line 3661 "y.tab.c"
    break;

  case 126: /* storage_class_specifier: TYPEDEF  */
#line 605 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_TYPEDEF((yyval.lnk)) = 1;
               }
#line 3670 "y.tab.c"
    break;

  case 127: /* storage_class_specifier: EXTERN  */
#line 609 "SDCC.y"
               {
                  (yyval.lnk) = newLink(SPECIFIER);
                  SPEC_EXTR((yyval.lnk)) = 1;
               }
#line 3679 "y.tab.c"
    break;

  case 128: /* storage_class_specifier: STATIC  */
#line 613 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_STAT((yyval.lnk)) = 1;
               }
#line 3688 "y.tab.c"
    break;

  case 129: /* storage_class_specifier: THREAD_LOCAL  */
#line 618 "SDCC.y"
               {
                  (yyval.lnk) = 0;
                  werror(E_THREAD_LOCAL);
               }
#line 3697 "y.tab.c"
    break;

  case 130: /* storage_class_specifier: AUTO  */
#line 622 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_AUTO;
               }
#line 3706 "y.tab.c"
    break;

  case 131: /* storage_class_specifier: REGISTER  */
#line 626 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_REGISTER;
               }
#line 3715 "y.tab.c"
    break;

  case 132: /* storage_class_specifier: CONSTEXPR  */
#line 630 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  werror (E_CONSTEXPR);
               }
#line 3724 "y.tab.c"
    break;

  case 133: /* type_specifier: type_specifier_without_struct_or_union  */
#line 642 "SDCC.y"
                                            { (yyval.lnk) = (yyvsp[0].lnk); }
#line 3730 "y.tab.c"
    break;

  case 134: /* type_specifier: struct_or_union_specifier  */
#line 643 "SDCC.y"
                                {
                                   uselessDecl = false;
                                   (yyval.lnk) = (yyvsp[0].lnk);
                                   ignoreTypedefType = 1;
                                }
#line 3740 "y.tab.c"
    break;

  case 135: /* type_specifier_without_struct_or_union: SD_VOID  */
#line 651 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_VOID;
                  ignoreTypedefType = 1;
               }
#line 3750 "y.tab.c"
    break;

  case 136: /* type_specifier_without_struct_or_union: SD_CHAR  */
#line 656 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_CHAR;
                  ignoreTypedefType = 1;
               }
#line 3760 "y.tab.c"
    break;

  case 137: /* type_specifier_without_struct_or_union: SD_SHORT  */
#line 661 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_SHORT((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3770 "y.tab.c"
    break;

  case 138: /* type_specifier_without_struct_or_union: SD_INT  */
#line 666 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_INT;
                  ignoreTypedefType = 1;
               }
#line 3780 "y.tab.c"
    break;

  case 139: /* type_specifier_without_struct_or_union: SD_LONG  */
#line 671 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_LONG((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3790 "y.tab.c"
    break;

  case 140: /* type_specifier_without_struct_or_union: SD_FLOAT  */
#line 676 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FLOAT;
                  ignoreTypedefType = 1;
               }
#line 3800 "y.tab.c"
    break;

  case 141: /* type_specifier_without_struct_or_union: DOUBLE  */
#line 681 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_DOUBLE;
                  ignoreTypedefType = 1;
               }
#line 3810 "y.tab.c"
    break;

  case 142: /* type_specifier_without_struct_or_union: SIGNED  */
#line 686 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  (yyval.lnk)->select.s.b_signed = 1;
                  ignoreTypedefType = 1;
               }
#line 3820 "y.tab.c"
    break;

  case 143: /* type_specifier_without_struct_or_union: UNSIGNED  */
#line 691 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_USIGN((yyval.lnk)) = 1;
                  ignoreTypedefType = 1;
               }
#line 3830 "y.tab.c"
    break;

  case 144: /* type_specifier_without_struct_or_union: SD_BITINT '(' constant_expr ')'  */
#line 696 "SDCC.y"
                                      {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BITINT;
                  SPEC_BITINTWIDTH((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[-1].asts), true));
                  ignoreTypedefType = 1;
               }
#line 3841 "y.tab.c"
    break;

  case 145: /* type_specifier_without_struct_or_union: SD_BOOL  */
#line 702 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BOOL;
                  ignoreTypedefType = 1;
               }
#line 3851 "y.tab.c"
    break;

  case 146: /* type_specifier_without_struct_or_union: COMPLEX  */
#line 707 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_COMPLEX_UNSUPPORTED);
               }
#line 3860 "y.tab.c"
    break;

  case 147: /* type_specifier_without_struct_or_union: IMAGINARY  */
#line 711 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_COMPLEX_UNSUPPORTED);
               }
#line 3869 "y.tab.c"
    break;

  case 148: /* type_specifier_without_struct_or_union: DECIMAL32  */
#line 715 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_DECIMAL_FLOAT_UNSUPPORTED);
               }
#line 3878 "y.tab.c"
    break;

  case 149: /* type_specifier_without_struct_or_union: DECIMAL64  */
#line 719 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_DECIMAL_FLOAT_UNSUPPORTED);
               }
#line 3887 "y.tab.c"
    break;

  case 150: /* type_specifier_without_struct_or_union: DECIMAL128  */
#line 723 "SDCC.y"
                {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_DECIMAL_FLOAT_UNSUPPORTED);
               }
#line 3896 "y.tab.c"
    break;

  case 151: /* type_specifier_without_struct_or_union: enum_specifier  */
#line 727 "SDCC.y"
                        {
                           cenum = NULL;
                           uselessDecl = false;
                           ignoreTypedefType = 1;
                           (yyval.lnk) = (yyvsp[0].lnk);
                        }
#line 3907 "y.tab.c"
    break;

  case 152: /* type_specifier_without_struct_or_union: TYPE_NAME  */
#line 734 "SDCC.y"
         {
            symbol *sym;
            sym_link *p;
            sym = findSym(TypedefTab,NULL,(yyvsp[0].yychar));
            (yyval.lnk) = p = copyLinkChain(sym ? sym->type : NULL);
            SPEC_TYPEDEF(getSpec(p)) = 0;
            ignoreTypedefType = 1;
         }
#line 3920 "y.tab.c"
    break;

  case 153: /* type_specifier_without_struct_or_union: typeof_specifier  */
#line 743 "SDCC.y"
     {
       (yyval.lnk) = (yyvsp[0].lnk);
     }
#line 3928 "y.tab.c"
    break;

  case 154: /* type_specifier_without_struct_or_union: FIXED16X16  */
#line 746 "SDCC.y"
                {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_FIXED16X16;
                  ignoreTypedefType = 1;
               }
#line 3938 "y.tab.c"
    break;

  case 155: /* type_specifier_without_struct_or_union: BIT  */
#line 751 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_NOUN((yyval.lnk)) = V_BIT;
                  SPEC_SCLS((yyval.lnk)) = S_BIT;
                  SPEC_BLEN((yyval.lnk)) = 1;
                  SPEC_BSTR((yyval.lnk)) = 0;
                  ignoreTypedefType = 1;
               }
#line 3951 "y.tab.c"
    break;

  case 156: /* type_specifier_without_struct_or_union: AT CONSTANT  */
#line 759 "SDCC.y"
                 {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue(newAst_VALUE ((yyvsp[0].val)), true));
               }
#line 3963 "y.tab.c"
    break;

  case 157: /* type_specifier_without_struct_or_union: AT '(' constant_expr ')'  */
#line 766 "SDCC.y"
                              {
                  (yyval.lnk)=newLink(SPECIFIER);
                  /* add this to the storage class specifier  */
                  SPEC_ABSA((yyval.lnk)) = 1;   /* set the absolute addr flag */
                  /* now get the abs addr from value */
                  SPEC_ADDR((yyval.lnk)) = (unsigned int) ulFromVal(constExprValue((yyvsp[-1].asts), true));
               }
#line 3975 "y.tab.c"
    break;

  case 159: /* typeof_specifier: TYPEOF '(' expression ')'  */
#line 779 "SDCC.y"
     {
       (yyval.lnk) = typeofOp ((yyvsp[-1].asts));
       wassert ((yyval.lnk));
     }
#line 3984 "y.tab.c"
    break;

  case 160: /* typeof_specifier: TYPEOF '(' type_name ')'  */
#line 784 "SDCC.y"
     {
       checkTypeSanity ((yyvsp[-1].lnk), "(typeof)");
       (yyval.lnk) = (yyvsp[-1].lnk);
     }
#line 3993 "y.tab.c"
    break;

  case 161: /* typeof_specifier: TYPEOF_UNQUAL '(' expression ')'  */
#line 789 "SDCC.y"
     {
       (yyval.lnk) = typeofOp ((yyvsp[-1].asts));
       wassert ((yyval.lnk));
       wassert (IS_SPEC ((yyval.lnk)));
       SPEC_CONST ((yyval.lnk)) = 0;
       SPEC_RESTRICT ((yyval.lnk)) = 0;
       SPEC_VOLATILE ((yyval.lnk)) = 0;
       SPEC_ATOMIC ((yyval.lnk)) = 0;
       SPEC_ADDRSPACE ((yyval.lnk)) = 0;
     }
#line 4008 "y.tab.c"
    break;

  case 162: /* typeof_specifier: TYPEOF_UNQUAL '(' type_name ')'  */
#line 800 "SDCC.y"
     {
       checkTypeSanity ((yyvsp[-1].lnk), "(typeof_unqual)");
       (yyval.lnk) = (yyvsp[-1].lnk);
       wassert (IS_SPEC ((yyval.lnk)));
       SPEC_CONST ((yyval.lnk)) = 0;
       SPEC_RESTRICT ((yyval.lnk)) = 0;
       SPEC_VOLATILE ((yyval.lnk)) = 0;
       SPEC_ATOMIC ((yyval.lnk)) = 0;
       SPEC_ADDRSPACE ((yyval.lnk)) = 0;
     }
#line 4023 "y.tab.c"
    break;

  case 163: /* $@8: %empty  */
#line 813 "SDCC.y"
        {
          structdef *sdef;

          if (!(yyvsp[0].sdef)->tagsym)
            {
              /* no tag given, so new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          else
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno, NestLevel);
              if (sdef)
                {
                  /* Error if a complete type already defined in this scope */
                  if (sdef->block == currBlockno)
                    {
                      if (sdef->fields)
                        (yyvsp[0].sdef)->redefinition = true;
                      else // We are completing an incomplete type
                        (yyvsp[0].sdef) = sdef;
                    }
                  else
                    {
                      /* There is an existing struct def in an outer scope. */
                      /* Create new struct def for current scope */
                      addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
                    }
                }
              else
               {
                 /* There is no existing struct def at all. */
                 /* Create new struct def for current scope */
                 addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
               }
            }

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-2].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-2].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-2].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 4074 "y.tab.c"
    break;

  case 164: /* struct_or_union_specifier: struct_or_union attribute_specifier_sequence_opt opt_stag $@8 '{' member_declaration_list '}'  */
#line 860 "SDCC.y"
        {
          structdef *sdef;
          symbol *sym, *dsym;

          // check for errors in structure members
          for (sym=(yyvsp[-1].sym); sym; sym=sym->next)
            {
              if (IS_ABSOLUTE(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "'at'");
                  SPEC_ABSA(sym->etype) = 0;
                }
              if (IS_SPEC(sym->etype) && SPEC_SCLS(sym->etype))
                {
                  werrorfl(sym->fileDef, sym->lineDef, E_NOT_ALLOWED, "storage class");
                  printTypeChainRaw (sym->type, NULL);
                  SPEC_SCLS(sym->etype) = 0;
                }
              for (dsym=sym->next; dsym; dsym=dsym->next)
                {
                  if (*dsym->name && strcmp(sym->name, dsym->name)==0)
                    {
                      werrorfl(sym->fileDef, sym->lineDef, E_DUPLICATE_MEMBER,
                               (yyvsp[-6].yyint)==STRUCT ? "struct" : "union", sym->name);
                      werrorfl(dsym->fileDef, dsym->lineDef, E_PREVIOUS_DEF);
                    }
                }
            }

          /* Create a structdef   */
          (yyvsp[-4].sdef)->fields = reverseSyms((yyvsp[-1].sym));        /* link the fields */
          (yyvsp[-4].sdef)->size = compStructSize((yyvsp[-6].yyint), (yyvsp[-4].sdef));   /* update size of  */
          promoteAnonStructs ((yyvsp[-6].yyint), (yyvsp[-4].sdef));

          if ((yyvsp[-4].sdef)->redefinition) // Since C23, multiple definitions for struct / union are allowed, if they are compatible and have the same tags. The current standard draft N3047 allows redeclarations of unions to have a different order of the members. We don't. The rule in N3047 is now considered a mistake by many, and will hopefully be changed to the SDCC behaviour via a national body comment for the final version of the standard.
            {
              sdef = findSymWithBlock (StructTab, (yyvsp[-4].sdef)->tagsym, currBlockno, NestLevel);
              bool compatible = options.std_c23 && sdef->tagsym && (yyvsp[-4].sdef)->tagsym && !strcmp (sdef->tagsym->name, (yyvsp[-4].sdef)->tagsym->name);
              for (symbol *fieldsym1 = sdef->fields, *fieldsym2 = (yyvsp[-4].sdef)->fields; compatible; fieldsym1 = fieldsym1->next, fieldsym2 = fieldsym2->next)
                {
                  if (!fieldsym1 && !fieldsym2)
                    break;
                  if (!fieldsym1 || !fieldsym2)
                    compatible = false;
                  else if (strcmp (fieldsym1->name, fieldsym2->name))
                    compatible = false;
                  else if (compareType (fieldsym1->type, fieldsym2->type, true) <= 0)
                    compatible = false;
               }
              if (!compatible)
                {
                  werror(E_STRUCT_REDEF_INCOMPATIBLE, (yyvsp[-4].sdef)->tag);
                  werrorfl(sdef->tagsym->fileDef, sdef->tagsym->lineDef, E_PREVIOUS_DEF);
                }
            }
          else
            sdef = (yyvsp[-4].sdef);

          /* Create the specifier */
          (yyval.lnk) = newLink (SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk))= sdef;
        }
#line 4142 "y.tab.c"
    break;

  case 165: /* struct_or_union_specifier: struct_or_union attribute_specifier_sequence_opt stag  */
#line 924 "SDCC.y"
        {
          structdef *sdef;

          sdef = findSymWithBlock (StructTab, (yyvsp[0].sdef)->tagsym, currBlockno, NestLevel);

          if (sdef)
            (yyvsp[0].sdef) = sdef;
          else
            {
              /* new struct def for current scope */
              addSym (StructTab, (yyvsp[0].sdef), (yyvsp[0].sdef)->tag, (yyvsp[0].sdef)->level, currBlockno, 0);
            }
          (yyval.lnk) = newLink(SPECIFIER);
          SPEC_NOUN((yyval.lnk)) = V_STRUCT;
          SPEC_STRUCT((yyval.lnk)) = (yyvsp[0].sdef);

          if (!(yyvsp[0].sdef)->type)
            {
              (yyvsp[0].sdef)->type = (yyvsp[-2].yyint);
            }
          else
            {
              if ((yyvsp[0].sdef)->type != (yyvsp[-2].yyint))
                  werror(E_BAD_TAG, (yyvsp[0].sdef)->tag, (yyvsp[-2].yyint)==STRUCT ? "struct" : "union");
            }
        }
#line 4173 "y.tab.c"
    break;

  case 166: /* struct_or_union: STRUCT  */
#line 953 "SDCC.y"
                     { (yyval.yyint) = STRUCT; ignoreTypedefType = 1; }
#line 4179 "y.tab.c"
    break;

  case 167: /* struct_or_union: UNION  */
#line 954 "SDCC.y"
                     { (yyval.yyint) = UNION; ignoreTypedefType = 1; }
#line 4185 "y.tab.c"
    break;

  case 169: /* member_declaration_list: member_declaration_list member_declaration  */
#line 960 "SDCC.y"
        {
          symbol *sym = (yyvsp[0].sym);

          /* go to the end of the chain */
          while (sym->next) sym = sym->next;
          sym->next = (yyvsp[-1].sym);

           (yyval.sym) = (yyvsp[0].sym);
        }
#line 4199 "y.tab.c"
    break;

  case 170: /* member_declaration: attribute_specifier_sequence_opt specifier_qualifier_list member_declarator_list ';'  */
#line 973 "SDCC.y"
        {
          /* add this type to all the symbols */
          symbol *sym;
          for ( sym = (yyvsp[-1].sym); sym != NULL; sym = sym->next )
            {
              sym_link *btype = copyLinkChain((yyvsp[-2].lnk));

              pointerTypes(sym->type, btype);
              if (!sym->type)
                {
                  sym->type = btype;
                  sym->etype = getSpec(sym->type);
                }
              else
                  addDecl (sym, 0, btype);
              /* make sure the type is complete and sane */
              checkTypeSanity(sym->etype, sym->name);
            }
          ignoreTypedefType = 0;
          (yyval.sym) = (yyvsp[-1].sym);
        }
#line 4225 "y.tab.c"
    break;

  case 171: /* type_specifier_qualifier: type_specifier  */
#line 997 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4231 "y.tab.c"
    break;

  case 172: /* type_specifier_qualifier: type_qualifier  */
#line 998 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4237 "y.tab.c"
    break;

  case 173: /* type_specifier_qualifier: alignment_specifier  */
#line 999 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4243 "y.tab.c"
    break;

  case 174: /* type_specifier_qualifier_without_struct_or_union: type_specifier_without_struct_or_union  */
#line 1003 "SDCC.y"
                                                   { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4249 "y.tab.c"
    break;

  case 175: /* type_specifier_qualifier_without_struct_or_union: struct_or_union  */
#line 1004 "SDCC.y"
                         { fatal (1, E_ENUM_UNDERLYING_TYPE); }
#line 4255 "y.tab.c"
    break;

  case 176: /* type_specifier_qualifier_without_struct_or_union: type_qualifier  */
#line 1005 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4261 "y.tab.c"
    break;

  case 177: /* type_specifier_qualifier_without_struct_or_union: alignment_specifier  */
#line 1006 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk); }
#line 4267 "y.tab.c"
    break;

  case 179: /* member_declarator_list: member_declarator_list ',' member_declarator  */
#line 1012 "SDCC.y"
        {
          (yyvsp[0].sym)->next  = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 4276 "y.tab.c"
    break;

  case 181: /* member_declarator: ':' constant_expr  */
#line 1021 "SDCC.y"
        {
          unsigned int bitsize;
          (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), true));
          if (!bitsize)
              bitsize = BITVAR_PAD;
          (yyval.sym)->bitVar = bitsize;
          (yyval.sym)->bitUnnamed = 1;
        }
#line 4290 "y.tab.c"
    break;

  case 182: /* member_declarator: declarator ':' constant_expr  */
#line 1031 "SDCC.y"
        {
          unsigned int bitsize;
          bitsize = (unsigned int) ulFromVal(constExprValue((yyvsp[0].asts), true));

          if (!bitsize)
            {
              (yyval.sym) = newSymbol (genSymName(NestLevel), NestLevel);
              (yyval.sym)->bitVar = BITVAR_PAD;
              werror(W_BITFLD_NAMED);
            }
          else
              (yyvsp[-2].sym)->bitVar = bitsize;
        }
#line 4308 "y.tab.c"
    break;

  case 183: /* member_declarator: %empty  */
#line 1044 "SDCC.y"
     { (yyval.sym) = newSymbol ("", NestLevel); }
#line 4314 "y.tab.c"
    break;

  case 184: /* enum_specifier: ENUM '{' enumerator_list enum_comma_opt '}'  */
#line 1049 "SDCC.y"
        {
          (yyval.lnk) = newEnumType ((yyvsp[-2].sym), NULL);
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        }
#line 4323 "y.tab.c"
    break;

  case 185: /* enum_specifier: ENUM enum_type_specifier '{' enumerator_list enum_comma_opt '}'  */
#line 1054 "SDCC.y"
        {
          (yyval.lnk) = newEnumType ((yyvsp[-2].sym), (yyvsp[-4].lnk));
          SPEC_SCLS(getSpec((yyval.lnk))) = 0;
        }
#line 4332 "y.tab.c"
    break;

  case 186: /* enum_specifier: ENUM identifier '{' enumerator_list enum_comma_opt '}'  */
#line 1059 "SDCC.y"
        {
          symbol *csym;
          sym_link *enumtype;

          enumtype = newEnumType ((yyvsp[-2].sym), NULL);
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[-4].sym)->type = enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[-4].sym));
          if ((csym && csym->level == (yyvsp[-4].sym)->level))
            {
              if (!options.std_c23 || compareType (csym->type, (yyvsp[-4].sym)->type, true) <= 0)
                {
                  werrorfl((yyvsp[-4].sym)->fileDef, (yyvsp[-4].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
                  werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
                }
            }

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[-4].sym), (yyvsp[-4].sym)->name, (yyvsp[-4].sym)->level, (yyvsp[-4].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        }
#line 4360 "y.tab.c"
    break;

  case 187: /* enum_specifier: ENUM identifier enum_type_specifier '{' enumerator_list enum_comma_opt '}'  */
#line 1083 "SDCC.y"
        {
          symbol *csym;
          sym_link *enumtype;

          enumtype = newEnumType ((yyvsp[-2].sym), (yyvsp[-4].lnk));
          SPEC_SCLS(getSpec(enumtype)) = 0;
          (yyvsp[-5].sym)->type = enumtype;

          csym = findSymWithLevel(enumTab, (yyvsp[-5].sym));
          if ((csym && csym->level == (yyvsp[-5].sym)->level))
            {
              if (!options.std_c23 || compareType (csym->type, (yyvsp[-5].sym)->type, true) <= 0)
                {
                  werrorfl((yyvsp[-5].sym)->fileDef, (yyvsp[-5].sym)->lineDef, E_DUPLICATE_TYPEDEF, csym->name);
                  werrorfl(csym->fileDef, csym->lineDef, E_PREVIOUS_DEF);
                }
            }

          /* add this to the enumerator table */
          if (!csym)
              addSym (enumTab, (yyvsp[-5].sym), (yyvsp[-5].sym)->name, (yyvsp[-5].sym)->level, (yyvsp[-5].sym)->block, 0);
          (yyval.lnk) = copyLinkChain(enumtype);
        }
#line 4388 "y.tab.c"
    break;

  case 188: /* enum_specifier: ENUM identifier  */
#line 1107 "SDCC.y"
        {
          symbol *csym;

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[0].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        }
#line 4405 "y.tab.c"
    break;

  case 189: /* simple_typed_enum_decl: ENUM identifier enum_type_specifier ';'  */
#line 1127 "SDCC.y"
        {
          symbol *csym;

          /* let newEnumType check the enum-type-specifier and discard the returned type */
          newEnumType (NULL, (yyvsp[-1].lnk));

          /* check the enumerator table */
          if ((csym = findSymWithLevel(enumTab, (yyvsp[-2].sym))))
              (yyval.lnk) = copyLinkChain(csym->type);
          else
            {
              (yyval.lnk) = newLink(SPECIFIER);
              SPEC_NOUN((yyval.lnk)) = V_INT;
            }
        }
#line 4425 "y.tab.c"
    break;

  case 190: /* enum_comma_opt: %empty  */
#line 1146 "SDCC.y"
     {
       (yyval.lnk) = NULL;
     }
#line 4433 "y.tab.c"
    break;

  case 191: /* enum_comma_opt: ','  */
#line 1150 "SDCC.y"
     {
       if (!options.std_c99)
         werror (E_ENUM_COMMA_C99);
       (yyval.lnk) = NULL;
     }
#line 4443 "y.tab.c"
    break;

  case 193: /* enumerator_list: enumerator_list ',' enumerator  */
#line 1159 "SDCC.y"
        {
          (yyvsp[0].sym)->next = (yyvsp[-2].sym);
          (yyval.sym) = (yyvsp[0].sym);
        }
#line 4452 "y.tab.c"
    break;

  case 194: /* enumerator: identifier attribute_specifier_sequence_opt opt_assign_expr  */
#line 1167 "SDCC.y"
        {
          symbol *sym;

          (yyvsp[-2].sym)->type = copyLinkChain ((yyvsp[0].val)->type);
          (yyvsp[-2].sym)->etype = getSpec ((yyvsp[-2].sym)->type);
          SPEC_ENUM ((yyvsp[-2].sym)->etype) = 1;
          (yyval.sym) = (yyvsp[-2].sym);

          // check if the symbol at the same level already exists
          if ((sym = findSymWithLevel (SymbolTab, (yyvsp[-2].sym))) && sym->level == (yyvsp[-2].sym)->level)
            {
              // C23 allows redefinitions of enumeration constants with the same value as part of a redeclaration of the same enumerated type.
              if (!options.std_c23 || ullFromVal (valFromType (sym->type)) != ullFromVal (valFromType ((yyvsp[-2].sym)->type)))
                {
                  werrorfl ((yyvsp[-2].sym)->fileDef, (yyvsp[-2].sym)->lineDef, E_DUPLICATE_MEMBER, "enum", (yyvsp[-2].sym)->name);
                  werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
                }
            }
          else
            {
              // do this now, so we can use it for the next enums in the list
              addSymChain (&(yyvsp[-2].sym));
            }
        }
#line 4481 "y.tab.c"
    break;

  case 195: /* enum_type_specifier: ':' type_specifier_list_without_struct_or_union  */
#line 1195 "SDCC.y"
        {
          if (!options.std_c23)
            werror (E_ENUM_TYPE_SPECIFIER_C23);
          (yyval.lnk) = finalizeSpec ((yyvsp[0].lnk));
        }
#line 4491 "y.tab.c"
    break;

  case 196: /* type_qualifier: SD_CONST  */
#line 1203 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_CONST((yyval.lnk)) = 1;
               }
#line 4500 "y.tab.c"
    break;

  case 197: /* type_qualifier: RESTRICT  */
#line 1207 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_RESTRICT((yyval.lnk)) = 1;
               }
#line 4509 "y.tab.c"
    break;

  case 198: /* type_qualifier: VOLATILE  */
#line 1211 "SDCC.y"
               {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_VOLATILE((yyval.lnk)) = 1;
               }
#line 4518 "y.tab.c"
    break;

  case 199: /* type_qualifier: ATOMIC  */
#line 1215 "SDCC.y"
             {
                  (yyval.lnk)=newLink(SPECIFIER);
                  werror (E_ATOMIC_UNSUPPORTED);
               }
#line 4527 "y.tab.c"
    break;

  case 200: /* type_qualifier: ADDRSPACE_NAME  */
#line 1219 "SDCC.y"
                    {
                  (yyval.lnk)=newLink(SPECIFIER);
                  SPEC_ADDRSPACE((yyval.lnk)) = findSym (AddrspaceTab, 0, (yyvsp[0].yychar));
               }
#line 4536 "y.tab.c"
    break;

  case 201: /* type_qualifier: XDATA  */
#line 1223 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_XDATA;
               }
#line 4545 "y.tab.c"
    break;

  case 202: /* type_qualifier: CODE  */
#line 1227 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_CODE;
               }
#line 4554 "y.tab.c"
    break;

  case 203: /* type_qualifier: EEPROM  */
#line 1231 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_EEPROM;
               }
#line 4563 "y.tab.c"
    break;

  case 204: /* type_qualifier: DATA  */
#line 1235 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_DATA;
               }
#line 4572 "y.tab.c"
    break;

  case 205: /* type_qualifier: IDATA  */
#line 1239 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_IDATA;
               }
#line 4581 "y.tab.c"
    break;

  case 206: /* type_qualifier: PDATA  */
#line 1243 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_SCLS((yyval.lnk)) = S_PDATA;
               }
#line 4590 "y.tab.c"
    break;

  case 207: /* function_specifier: INLINE  */
#line 1250 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_INLINE((yyval.lnk)) = 1;
               }
#line 4599 "y.tab.c"
    break;

  case 208: /* function_specifier: NORETURN  */
#line 1254 "SDCC.y"
               {
                  (yyval.lnk) = newLink (SPECIFIER);
                  SPEC_NORETURN((yyval.lnk)) = 1;
               }
#line 4608 "y.tab.c"
    break;

  case 209: /* alignment_specifier: ALIGNAS '(' type_name ')'  */
#line 1262 "SDCC.y"
              {
                 checkTypeSanity ((yyvsp[-1].lnk), "(_Alignas)");
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 1;
              }
#line 4618 "y.tab.c"
    break;

  case 210: /* alignment_specifier: ALIGNAS '(' constant_expr ')'  */
#line 1268 "SDCC.y"
              {
                 value *val = constExprValue ((yyvsp[-1].asts), true);
                 (yyval.lnk) = newLink (SPECIFIER);
                 SPEC_ALIGNAS((yyval.lnk)) = 0;
                 if (!val)
                   werror (E_CONST_EXPECTED);
                 else if (ulFromVal (val) == 0 || isPowerOf2 (ulFromVal (val)) && ulFromVal (val) <= port->mem.maxextalign)
                   SPEC_ALIGNAS((yyval.lnk)) = ulFromVal(val);
                 else
                   werror (E_ALIGNAS, ulFromVal(val));
              }
#line 4634 "y.tab.c"
    break;

  case 211: /* declarator: direct_declarator  */
#line 1282 "SDCC.y"
                                              { (yyval.sym) = (yyvsp[0].sym); }
#line 4640 "y.tab.c"
    break;

  case 212: /* declarator: pointer direct_declarator  */
#line 1284 "SDCC.y"
         {
             addDecl ((yyvsp[0].sym),0,reverseLink((yyvsp[-1].lnk)));
             (yyval.sym) = (yyvsp[0].sym);
         }
#line 4649 "y.tab.c"
    break;

  case 214: /* direct_declarator: '(' declarator ')'  */
#line 1292 "SDCC.y"
                            { (yyval.sym) = (yyvsp[-1].sym); }
#line 4655 "y.tab.c"
    break;

  case 218: /* declarator2: '(' declarator ')'  */
#line 1299 "SDCC.y"
                            { (yyval.sym) = (yyvsp[-1].sym); }
#line 4661 "y.tab.c"
    break;

  case 220: /* array_declarator: direct_declarator '[' type_qualifier_list_opt ']'  */
#line 1305 "SDCC.y"
     {
       sym_link *p, *n;

       p = newLink (DECLARATOR);
       DCL_TYPE(p) = ARRAY;
       DCL_ELEM(p) = 0;

       if ((yyvsp[-1].lnk))
         {
           if (!options.std_c99)
             werror (E_QUALIFIED_ARRAY_PARAM_C99);

           DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-1].lnk));
           DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-1].lnk));
           DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-1].lnk));
           DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-1].lnk));
           addDecl((yyvsp[-3].sym),0,p);
           n = newLink (SPECIFIER);
           SPEC_NEEDSPAR(n) = 1;
           addDecl((yyvsp[-3].sym),0,n);
         }
       else
         addDecl((yyvsp[-3].sym),0,p);
     }
#line 4690 "y.tab.c"
    break;

  case 221: /* array_declarator: direct_declarator '[' type_qualifier_list_opt assignment_expr ']'  */
#line 1330 "SDCC.y"
     {
       sym_link *p, *n;

       p = newLink (DECLARATOR);
       DCL_TYPE(p) = ARRAY;
       DCL_ELEM_AST (p) = (yyvsp[-1].asts);

       if ((yyvsp[-2].lnk))
         {
           if (!options.std_c99)
             werror (E_QUALIFIED_ARRAY_PARAM_C99);
           DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-2].lnk));
           DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-2].lnk));
           DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-2].lnk));
           DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-2].lnk));
           addDecl((yyvsp[-4].sym), 0, p);
           n = newLink (SPECIFIER);
           SPEC_NEEDSPAR(n) = 1;
           addDecl((yyvsp[-4].sym),0,n);
         }
       else
         addDecl((yyvsp[-4].sym), 0, p);
     }
#line 4718 "y.tab.c"
    break;

  case 222: /* array_declarator: direct_declarator '[' STATIC type_qualifier_list_opt assignment_expr ']'  */
#line 1354 "SDCC.y"
     {
       sym_link *p, *n;

       if (!options.std_c99)
         werror (E_STATIC_ARRAY_PARAM_C99);

       p = newLink (DECLARATOR);
       DCL_TYPE(p) = ARRAY;
       DCL_ELEM_AST (p) = (yyvsp[-1].asts);

       if ((yyvsp[-2].lnk))
         {
           if (!options.std_c99)
             werror (E_QUALIFIED_ARRAY_PARAM_C99);
           DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-2].lnk));
           DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-2].lnk));
           DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-2].lnk));
           DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-2].lnk));
         }
       addDecl((yyvsp[-5].sym), 0, p);
       n = newLink (SPECIFIER);
       SPEC_NEEDSPAR(n) = 1;
       addDecl((yyvsp[-5].sym),0,n);
     }
#line 4747 "y.tab.c"
    break;

  case 223: /* array_declarator: direct_declarator '[' type_qualifier_list STATIC assignment_expr ']'  */
#line 1379 "SDCC.y"
     {
       sym_link *p, *n;

       if (!options.std_c99)
         {
           werror (E_QUALIFIED_ARRAY_PARAM_C99);
           werror (E_STATIC_ARRAY_PARAM_C99);
         }

       p = newLink (DECLARATOR);
       DCL_TYPE(p) = ARRAY;
       DCL_ELEM_AST (p) = (yyvsp[-1].asts);

       DCL_PTR_CONST(p) = SPEC_CONST ((yyvsp[-3].lnk));
       DCL_PTR_RESTRICT(p) = SPEC_RESTRICT ((yyvsp[-3].lnk));
       DCL_PTR_VOLATILE(p) = SPEC_VOLATILE ((yyvsp[-3].lnk));
       DCL_PTR_ADDRSPACE(p) = SPEC_ADDRSPACE ((yyvsp[-3].lnk));
       addDecl((yyvsp[-5].sym), 0, p);
       n = newLink (SPECIFIER);
       SPEC_NEEDSPAR(n) = 1;
       addDecl((yyvsp[-5].sym),0,n);
     }
#line 4774 "y.tab.c"
    break;

  case 224: /* declarator2_function_attributes: function_declarator  */
#line 1404 "SDCC.y"
                                         { (yyval.sym) = (yyvsp[0].sym); }
#line 4780 "y.tab.c"
    break;

  case 225: /* declarator2_function_attributes: function_declarator function_attributes  */
#line 1405 "SDCC.y"
                                              {
           // copy the functionAttributes (not the args and hasVargs !!)
           sym_link *funcType=(yyvsp[-1].sym)->type;

           while (funcType && !IS_FUNC(funcType))
             funcType = funcType->next;

           if (!funcType)
             werror (E_FUNC_ATTR);
           else
             {
               struct value *args = FUNC_ARGS(funcType);
               unsigned hasVargs = FUNC_HASVARARGS(funcType);
               bool noprototype = FUNC_NOPROTOTYPE(funcType);

               memcpy (&funcType->funcAttrs, &(yyvsp[0].lnk)->funcAttrs,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               FUNC_ARGS(funcType)=args;
               FUNC_HASVARARGS(funcType)=hasVargs;
               FUNC_NOPROTOTYPE(funcType)=noprototype;

               // just to be sure
               memset (&(yyvsp[0].lnk)->funcAttrs, 0,
                   sizeof((yyvsp[0].lnk)->funcAttrs));

               addDecl ((yyvsp[-1].sym),0,(yyvsp[0].lnk));
             }
   }
#line 4814 "y.tab.c"
    break;

  case 226: /* function_declarator: declarator2 '(' ')'  */
#line 1438 "SDCC.y"
     {
       addDecl ((yyvsp[-2].sym), FUNCTION, NULL);

       // Up to C17, this was a function declarator without a prototype.
       if (!options.std_c23)
         {
           FUNC_NOPROTOTYPE((yyvsp[-2].sym)->type) = true;
           if (!options.lessPedantic)
             werror (W_FUNCDECL_WITH_NO_PROTOTYPE);
         }
     }
#line 4830 "y.tab.c"
    break;

  case 227: /* $@9: %empty  */
#line 1450 "SDCC.y"
        {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        }
#line 4842 "y.tab.c"
    break;

  case 228: /* function_declarator: declarator2 '(' $@9 parameter_type_list ')'  */
#line 1458 "SDCC.y"
        {
          sym_link *funcType;

          bool is_fptr = IS_FUNC((yyvsp[-4].sym)->type); // Already a function, must be a function pointer.

          addDecl ((yyvsp[-4].sym), FUNCTION, NULL);
          funcType = (yyvsp[-4].sym)->type;

          // For a function pointer, the parameter list here is for the returned type.
          if (is_fptr)
            funcType = funcType->next;

          while (funcType && !IS_FUNC(funcType))
            funcType = funcType->next;

          wassert (funcType);

          FUNC_HASVARARGS(funcType) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(funcType) = reverseVal((yyvsp[-1].val));

          FUNC_SDCCCALL(funcType) = -1;

          /* nest level was incremented to take care of the parms  */
          leaveBlockScope (currBlockno);
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // NOTE: Removed to fix bug 3822. It is unclear whether this was leftover code or still served a purpose.
          // // if this was a pointer (to a function)
          // if (!IS_FUNC($1->type))
          //     cleanUpLevel(SymbolTab, NestLevel + LEVEL_UNIT);

          (yyval.sym) = (yyvsp[-4].sym);
        }
#line 4882 "y.tab.c"
    break;

  case 229: /* $@10: %empty  */
#line 1494 "SDCC.y"
        {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          seqPointNo++; /* not a true sequence point, but helps resolve scope */
        }
#line 4894 "y.tab.c"
    break;

  case 230: /* function_declarator: declarator2 '(' $@10 identifier_list ')'  */
#line 1502 "SDCC.y"
        {
          if (options.std_c23)
            werror(E_OLD_STYLE,(yyvsp[-4].sym)->name);
          
          sym_link *funcType;

          bool is_fptr = IS_FUNC((yyvsp[-4].sym)->type); // Already a function, must be a function pointer.

          addDecl ((yyvsp[-4].sym), FUNCTION, NULL);
          funcType = (yyvsp[-4].sym)->type;

          // For a function pointer, the parameter list here is for the returned type.
          if (is_fptr)
            funcType = funcType->next;

          while (funcType && !IS_FUNC(funcType))
            funcType = funcType->next;

          wassert (funcType);

          // TODO: A K&R function does not create a prototype.
          //    => use FUNC_NOPROTOTYPE, once prototype-less functions are
          //       fully supported and K&R functions can be treated as such
          funcType->funcAttrs.oldStyle = 1;

          // initially give all parameters in the identifier_list the implicit type int
          for (symbol *loop = (yyvsp[-1].sym); loop ; loop = loop->next) {
              value *newVal;
              loop->type = loop->etype = newIntLink();
              loop->_isparm = 1;
              newVal = symbolVal(loop);
              newVal->next = FUNC_ARGS(funcType);
              FUNC_ARGS(funcType) = newVal;
          }

          FUNC_SDCCCALL(funcType) = -1;

          /* nest level was incremented to take care of the parms  */
          leaveBlockScope (currBlockno);
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
          seqPointNo++; /* not a true sequence point, but helps resolve scope */

          // NOTE: Removed to fix bug 3822. It is unclear whether this was leftover code or still served a purpose.
          // // if this was a pointer (to a function)
          // if (!IS_FUNC($1->type))
          //     cleanUpLevel(SymbolTab, NestLevel + LEVEL_UNIT);

          (yyval.sym) = (yyvsp[-4].sym);
        }
#line 4949 "y.tab.c"
    break;

  case 231: /* pointer: unqualified_pointer  */
#line 1555 "SDCC.y"
                         { (yyval.lnk) = (yyvsp[0].lnk);}
#line 4955 "y.tab.c"
    break;

  case 232: /* pointer: unqualified_pointer AT '(' constant_expr ')'  */
#line 1557 "SDCC.y"
         {
             sym_link *n = newLink(SPECIFIER);
             /* add this to the storage class specifier  */
             SPEC_ABSA(n) = 1;   /* set the absolute addr flag */
             /* now get the abs addr from value */
             SPEC_ADDR(n) = (unsigned int) ulFromVal(constExprValue((yyvsp[-1].asts),true));
             n->next = (yyvsp[-4].lnk);
             (yyval.lnk) = n;
         }
#line 4969 "y.tab.c"
    break;

  case 233: /* pointer: unqualified_pointer type_qualifier_list  */
#line 1567 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-1].lnk);
             if (IS_SPEC((yyvsp[0].lnk))) {
                 DCL_TSPEC((yyvsp[-1].lnk)) = (yyvsp[0].lnk);
                 DCL_PTR_CONST((yyvsp[-1].lnk)) = SPEC_CONST((yyvsp[0].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-1].lnk)) = SPEC_VOLATILE((yyvsp[0].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-1].lnk)) = SPEC_RESTRICT((yyvsp[0].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-1].lnk)) = SPEC_ADDRSPACE((yyvsp[0].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);
         }
#line 4986 "y.tab.c"
    break;

  case 234: /* pointer: unqualified_pointer type_qualifier_list AT '(' constant_expr ')'  */
#line 1580 "SDCC.y"
         {
             if (IS_SPEC((yyvsp[-4].lnk))) {
                 DCL_TSPEC((yyvsp[-5].lnk)) = (yyvsp[-4].lnk);
                 DCL_PTR_CONST((yyvsp[-5].lnk)) = SPEC_CONST((yyvsp[-4].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-5].lnk)) = SPEC_VOLATILE((yyvsp[-4].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-5].lnk)) = SPEC_RESTRICT((yyvsp[-4].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-5].lnk)) = SPEC_ADDRSPACE((yyvsp[-4].lnk));
             }
             else
                 werror (W_PTR_TYPE_INVALID);

             sym_link *n = newLink(SPECIFIER);
             /* add this to the storage class specifier  */
             SPEC_ABSA(n) = 1;   /* set the absolute addr flag */
             /* now get the abs addr from value */
             SPEC_ADDR(n) = (unsigned int) ulFromVal(constExprValue((yyvsp[-1].asts),true));
             n->next = (yyvsp[-5].lnk);
             (yyval.lnk) = n;
         }
#line 5010 "y.tab.c"
    break;

  case 235: /* pointer: unqualified_pointer pointer  */
#line 1600 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-1].lnk);
             (yyval.lnk)->next = (yyvsp[0].lnk);
             DCL_TYPE((yyvsp[0].lnk))=port->unqualified_pointer;
         }
#line 5020 "y.tab.c"
    break;

  case 236: /* pointer: unqualified_pointer type_qualifier_list pointer  */
#line 1606 "SDCC.y"
         {
             (yyval.lnk) = (yyvsp[-2].lnk);
             if (IS_SPEC((yyvsp[-1].lnk)) && DCL_TYPE((yyvsp[0].lnk)) == UPOINTER) {
                 DCL_PTR_CONST((yyvsp[-2].lnk)) = SPEC_CONST((yyvsp[-1].lnk));
                 DCL_PTR_VOLATILE((yyvsp[-2].lnk)) = SPEC_VOLATILE((yyvsp[-1].lnk));
                 DCL_PTR_RESTRICT((yyvsp[-2].lnk)) = SPEC_RESTRICT((yyvsp[-1].lnk));
                 DCL_PTR_ADDRSPACE((yyvsp[-2].lnk)) = SPEC_ADDRSPACE((yyvsp[-1].lnk));
                 switch (SPEC_SCLS((yyvsp[-1].lnk))) {
                 case S_XDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = FPOINTER;
                     break;
                 case S_IDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = IPOINTER;
                     break;
                 case S_PDATA:
                     DCL_TYPE((yyvsp[0].lnk)) = PPOINTER;
                     break;
                 case S_DATA:
                     DCL_TYPE((yyvsp[0].lnk)) = POINTER;
                     break;
                 case S_CODE:
                     DCL_TYPE((yyvsp[0].lnk)) = CPOINTER;
                     break;
                 case S_EEPROM:
                     DCL_TYPE((yyvsp[0].lnk)) = EEPPOINTER;
                     break;
                 default:
                   // this could be just "constant"
                   // werror(W_PTR_TYPE_INVALID);
                     ;
                 }
             }
             else
                 werror (W_PTR_TYPE_INVALID);
             (yyval.lnk)->next = (yyvsp[0].lnk);
         }
#line 5061 "y.tab.c"
    break;

  case 237: /* unqualified_pointer: '*'  */
#line 1646 "SDCC.y"
      {
        (yyval.lnk) = newLink(DECLARATOR);
        DCL_TYPE((yyval.lnk))=UPOINTER;
      }
#line 5070 "y.tab.c"
    break;

  case 239: /* type_qualifier_list: type_qualifier_list type_qualifier  */
#line 1655 "SDCC.y"
               {
                 (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_qualifier_list type_qualifier skipped");
               }
#line 5078 "y.tab.c"
    break;

  case 240: /* type_qualifier_list_opt: %empty  */
#line 1662 "SDCC.y"
    {
      (yyval.lnk) = 0;
    }
#line 5086 "y.tab.c"
    break;

  case 241: /* type_qualifier_list_opt: type_qualifier_list  */
#line 1666 "SDCC.y"
    {
      (yyval.lnk) = (yyvsp[0].lnk);
    }
#line 5094 "y.tab.c"
    break;

  case 243: /* parameter_type_list: parameter_list ',' ELLIPSIS  */
#line 1673 "SDCC.y"
                                      { (yyvsp[-2].val)->vArgs = 1;}
#line 5100 "y.tab.c"
    break;

  case 245: /* parameter_list: parameter_list ',' parameter_declaration  */
#line 1679 "SDCC.y"
         {
            (yyvsp[0].val)->next = (yyvsp[-2].val);
            (yyval.val) = (yyvsp[0].val);
         }
#line 5109 "y.tab.c"
    break;

  case 246: /* parameter_declaration: declaration_specifiers declarator  */
#line 1687 "SDCC.y"
        {
          symbol *loop;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, (yyvsp[0].sym)->name);
            }
          pointerTypes ((yyvsp[0].sym)->type, (yyvsp[-1].lnk));
          if (IS_SPEC ((yyvsp[0].sym)->etype))
            SPEC_NEEDSPAR((yyvsp[0].sym)->etype) = 0;
          addDecl ((yyvsp[0].sym), 0, (yyvsp[-1].lnk));
          for (loop = (yyvsp[0].sym); loop; loop->_isparm = 1, loop = loop->next)
            ;
          (yyval.val) = symbolVal ((yyvsp[0].sym));
          ignoreTypedefType = 0;
        }
#line 5130 "y.tab.c"
    break;

  case 247: /* parameter_declaration: declaration_specifiers abstract_declarator  */
#line 1704 "SDCC.y"
        {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[0].lnk),(yyvsp[-1].lnk));
          for (p = (yyvsp[0].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[-1].lnk);
            }

          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[0].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
        }
#line 5160 "y.tab.c"
    break;

  case 248: /* parameter_declaration: declaration_specifiers  */
#line 1730 "SDCC.y"
        {
          if (IS_SPEC ((yyvsp[0].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[0].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }

          (yyval.val) = newValue ();
          (yyval.val)->type = (yyvsp[0].lnk);
          (yyval.val)->etype = getSpec ((yyval.val)->type);
          ignoreTypedefType = 0;
        }
#line 5176 "y.tab.c"
    break;

  case 249: /* abstract_declarator: pointer  */
#line 1744 "SDCC.y"
             { (yyval.lnk) = reverseLink((yyvsp[0].lnk)); }
#line 5182 "y.tab.c"
    break;

  case 251: /* abstract_declarator: pointer direct_abstract_declarator  */
#line 1746 "SDCC.y"
                                          { (yyvsp[-1].lnk) = reverseLink((yyvsp[-1].lnk)); (yyvsp[0].lnk)->next = (yyvsp[-1].lnk); (yyval.lnk) = (yyvsp[0].lnk);
          if (IS_PTR((yyvsp[-1].lnk)) && IS_FUNC((yyvsp[0].lnk)))
            DCL_TYPE((yyvsp[-1].lnk)) = CPOINTER;
        }
#line 5191 "y.tab.c"
    break;

  case 252: /* direct_abstract_declarator: '(' abstract_declarator ')'  */
#line 1753 "SDCC.y"
                                    { (yyval.lnk) = (yyvsp[-1].lnk); }
#line 5197 "y.tab.c"
    break;

  case 255: /* direct_abstract_declarator_opt: %empty  */
#line 1759 "SDCC.y"
                                 { (yyval.lnk) = NULL; }
#line 5203 "y.tab.c"
    break;

  case 257: /* array_abstract_declarator: direct_abstract_declarator_opt '[' ']'  */
#line 1764 "SDCC.y"
                                              {
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = 0;
                                       if((yyvsp[-2].lnk))
                                         (yyval.lnk)->next = (yyvsp[-2].lnk);
                                    }
#line 5215 "y.tab.c"
    break;

  case 258: /* array_abstract_declarator: direct_abstract_declarator_opt '[' constant_expr ']'  */
#line 1772 "SDCC.y"
                                    {
                                       value *val;
                                       (yyval.lnk) = newLink (DECLARATOR);
                                       DCL_TYPE((yyval.lnk)) = ARRAY;
                                       DCL_ELEM((yyval.lnk)) = (int) ulFromVal(val = constExprValue((yyvsp[-1].asts), true));
                                       if((yyvsp[-3].lnk))
                                         (yyval.lnk)->next = (yyvsp[-3].lnk);
                                    }
#line 5228 "y.tab.c"
    break;

  case 259: /* function_abstract_declarator: '(' ')'  */
#line 1783 "SDCC.y"
                                    { (yyval.lnk) = NULL;}
#line 5234 "y.tab.c"
    break;

  case 260: /* function_abstract_declarator: direct_abstract_declarator '(' ')'  */
#line 1784 "SDCC.y"
                                        {
     // $1 must be a pointer to a function
     sym_link *p=newLink(DECLARATOR);
     DCL_TYPE(p) = FUNCTION;
     if (!(yyvsp[-2].lnk)) {
       // ((void (code *) ()) 0) ()
       (yyvsp[-2].lnk)=newLink(DECLARATOR);
       DCL_TYPE((yyvsp[-2].lnk))=CPOINTER;
       (yyval.lnk) = (yyvsp[-2].lnk);
     }
     (yyvsp[-2].lnk)->next=p;
   }
#line 5251 "y.tab.c"
    break;

  case 261: /* function_abstract_declarator: '(' parameter_type_list ')'  */
#line 1796 "SDCC.y"
                                    { (yyval.lnk) = NULL;}
#line 5257 "y.tab.c"
    break;

  case 262: /* $@11: %empty  */
#line 1798 "SDCC.y"
        {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
        }
#line 5268 "y.tab.c"
    break;

  case 263: /* function_abstract_declarator: direct_abstract_declarator '(' $@11 parameter_type_list ')'  */
#line 1805 "SDCC.y"
        {
          sym_link *p = newLink(DECLARATOR), *q;
          DCL_TYPE(p) = FUNCTION;

          FUNC_HASVARARGS(p) = IS_VARG((yyvsp[-1].val));
          FUNC_ARGS(p) = reverseVal((yyvsp[-1].val));

          /* nest level was incremented to take care of the parms  */
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
          if (!(yyvsp[-4].lnk))
            {
              /* ((void (code *) (void)) 0) () */
              (yyvsp[-4].lnk) = newLink(DECLARATOR);
              DCL_TYPE((yyvsp[-4].lnk)) = CPOINTER;
              (yyval.lnk) = (yyvsp[-4].lnk);
            }
          for (q = (yyvsp[-4].lnk); q && q->next; q = q->next);
          q->next = p;
        }
#line 5293 "y.tab.c"
    break;

  case 264: /* initializer: assignment_expr  */
#line 1828 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_NODE,(yyvsp[0].asts)); }
#line 5299 "y.tab.c"
    break;

  case 266: /* braced_initializer: '{' '}'  */
#line 1834 "SDCC.y"
     {
       if (!options.std_c23)
         werror(W_EMPTY_INIT_C23);
       // {} behaves mostly like {0}, so we emulate that, and use the isempty flag for the few cases where there is a difference.
       (yyval.ilist) = newiList(INIT_DEEP, revinit(newiList(INIT_NODE, newAst_VALUE(constIntVal("0")))));
       (yyval.ilist)->isempty = true;
     }
#line 5311 "y.tab.c"
    break;

  case 267: /* braced_initializer: '{' initializer_list '}'  */
#line 1841 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-1].ilist))); }
#line 5317 "y.tab.c"
    break;

  case 268: /* braced_initializer: '{' initializer_list ',' '}'  */
#line 1842 "SDCC.y"
                                    { (yyval.ilist) = newiList(INIT_DEEP,revinit((yyvsp[-2].ilist))); }
#line 5323 "y.tab.c"
    break;

  case 269: /* initializer_list: designation_opt initializer  */
#line 1846 "SDCC.y"
                                    { (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn); (yyval.ilist) = (yyvsp[0].ilist); }
#line 5329 "y.tab.c"
    break;

  case 270: /* initializer_list: initializer_list ',' designation_opt initializer  */
#line 1848 "SDCC.y"
                                    {
                                       (yyvsp[0].ilist)->designation = (yyvsp[-1].dsgn);
                                       (yyvsp[0].ilist)->next = (yyvsp[-3].ilist);
                                       (yyval.ilist) = (yyvsp[0].ilist);
                                    }
#line 5339 "y.tab.c"
    break;

  case 271: /* designation_opt: %empty  */
#line 1856 "SDCC.y"
                                 { (yyval.dsgn) = NULL; }
#line 5345 "y.tab.c"
    break;

  case 273: /* designation: designator_list '='  */
#line 1861 "SDCC.y"
                                 { (yyval.dsgn) = revDesignation((yyvsp[-1].dsgn)); }
#line 5351 "y.tab.c"
    break;

  case 275: /* designator_list: designator_list designator  */
#line 1866 "SDCC.y"
                                 { (yyvsp[0].dsgn)->next = (yyvsp[-1].dsgn); (yyval.dsgn) = (yyvsp[0].dsgn); }
#line 5357 "y.tab.c"
    break;

  case 276: /* designator: '[' constant_expr ']'  */
#line 1871 "SDCC.y"
         {
            value *tval;
            int elemno;

            tval = constExprValue((yyvsp[-1].asts), true);
            /* if it is not a constant then Error  */
            if (!tval || (SPEC_SCLS(tval->etype) != S_LITERAL))
              {
                werror (E_CONST_EXPECTED);
                elemno = 0; /* arbitrary fixup */
              }
            else
              {
                if ((elemno = (int) ulFromVal(tval)) < 0)
                  {
                    werror (E_BAD_DESIGNATOR);
                    elemno = 0; /* arbitrary fixup */
                  }
              }
            (yyval.dsgn) = newDesignation(DESIGNATOR_ARRAY, &elemno);
         }
#line 5383 "y.tab.c"
    break;

  case 277: /* designator: '.' identifier  */
#line 1892 "SDCC.y"
                                 { (yyval.dsgn) = newDesignation(DESIGNATOR_STRUCT,(yyvsp[0].sym)); }
#line 5389 "y.tab.c"
    break;

  case 278: /* static_assert_declaration: STATIC_ASSERT '(' constant_expr ',' STRING_LITERAL ')' ';'  */
#line 1897 "SDCC.y"
                                    {
                                       value *val = constExprValue ((yyvsp[-4].asts), true);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ullFromVal(val))
                                         werror (W_STATIC_ASSERTION, (yyvsp[-2].yystr));
                                    }
#line 5401 "y.tab.c"
    break;

  case 279: /* static_assert_declaration: STATIC_ASSERT '(' constant_expr ')' ';'  */
#line 1905 "SDCC.y"
                                    {
                                       value *val = constExprValue ((yyvsp[-2].asts), true);
                                       if (!options.std_c23)
                                         werror (E_STATIC_ASSERTION_C23);
                                       if (!val)
                                         werror (E_CONST_EXPECTED);
                                       else if (!ullFromVal(val))
                                         werror (W_STATIC_ASSERTION_2);
                                    }
#line 5415 "y.tab.c"
    break;

  case 280: /* attribute_specifier_sequence: attribute_specifier_sequence attribute_specifier  */
#line 1918 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[-1].attr);
       attribute *a;
       for (a = (yyval.attr); a->next; a = a->next);
       a->next = (yyvsp[0].attr);
     }
#line 5426 "y.tab.c"
    break;

  case 281: /* attribute_specifier_sequence: attribute_specifier  */
#line 1925 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[0].attr);
     }
#line 5434 "y.tab.c"
    break;

  case 282: /* attribute_specifier_sequence_opt: %empty  */
#line 1932 "SDCC.y"
     {
       (yyval.attr) = 0;
     }
#line 5442 "y.tab.c"
    break;

  case 283: /* attribute_specifier_sequence_opt: attribute_specifier_sequence  */
#line 1936 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[0].attr);
     }
#line 5450 "y.tab.c"
    break;

  case 284: /* attribute_specifier: ATTR_START attribute_list ']' ']'  */
#line 1943 "SDCC.y"
     {
       if (!options.std_c23)
         werror(E_ATTRIBUTE_C23);
       (yyval.attr) = (yyvsp[-2].attr);
     }
#line 5460 "y.tab.c"
    break;

  case 285: /* attribute_list: attribute_opt  */
#line 1952 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[0].attr);
     }
#line 5468 "y.tab.c"
    break;

  case 286: /* attribute_list: attribute_list ',' attribute_opt  */
#line 1956 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[-2].attr);
       if ((yyvsp[0].attr))
         {
           attribute *a;
           for (a = (yyval.attr); a->next; a = a->next);
           a->next = (yyvsp[0].attr);
         }
     }
#line 5482 "y.tab.c"
    break;

  case 287: /* attribute: attribute_token  */
#line 1969 "SDCC.y"
   {
     (yyval.attr) = newAttribute ((yyvsp[0].sym), 0);
   }
#line 5490 "y.tab.c"
    break;

  case 288: /* attribute: attribute_token attribute_argument_clause  */
#line 1973 "SDCC.y"
   {
     (yyval.attr) = newAttribute ((yyvsp[-1].sym), 0);
   }
#line 5498 "y.tab.c"
    break;

  case 289: /* attribute_opt: %empty  */
#line 1980 "SDCC.y"
     {
       (yyval.attr) = 0;
     }
#line 5506 "y.tab.c"
    break;

  case 290: /* attribute_opt: attribute  */
#line 1984 "SDCC.y"
     {
       (yyval.attr) = (yyvsp[0].attr);
     }
#line 5514 "y.tab.c"
    break;

  case 291: /* attribute_token: identifier  */
#line 1991 "SDCC.y"
     {
       (yyval.sym) = (yyvsp[0].sym);
       (yyval.sym)->next = 0;
       werror (W_UNKNOWN_ATTRIBUTE, (yyvsp[0].sym)->name);
     }
#line 5524 "y.tab.c"
    break;

  case 292: /* attribute_token: identifier TOK_SEP identifier  */
#line 1997 "SDCC.y"
     {
       (yyval.sym) = (yyvsp[-2].sym);
       (yyval.sym)->next = (yyvsp[0].sym);
       struct dbuf_s dbuf;
       dbuf_init (&dbuf, 64);
       dbuf_printf (&dbuf, "%s::%s", (yyvsp[-2].sym)->name, (yyvsp[0].sym)->name);
       werror (W_UNKNOWN_ATTRIBUTE, dbuf_c_str (&dbuf));
       dbuf_destroy (&dbuf);
     }
#line 5538 "y.tab.c"
    break;

  case 303: /* unlabeled_statement: attribute_specifier_sequence_opt primary_block  */
#line 2035 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5546 "y.tab.c"
    break;

  case 304: /* unlabeled_statement: attribute_specifier_sequence_opt jump_statement  */
#line 2039 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5554 "y.tab.c"
    break;

  case 307: /* primary_block: compound_statement  */
#line 2048 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5562 "y.tab.c"
    break;

  case 308: /* primary_block: selection_statement  */
#line 2052 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5570 "y.tab.c"
    break;

  case 309: /* primary_block: iteration_statement  */
#line 2056 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5578 "y.tab.c"
    break;

  case 310: /* secondary_block: statement  */
#line 2063 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[0].asts);
     }
#line 5586 "y.tab.c"
    break;

  case 311: /* labeled_statement: label statement  */
#line 2070 "SDCC.y"
     {
       if ((yyvsp[-1].asts))
         {
           (yyval.asts) = (yyvsp[-1].asts);
           (yyvsp[-1].asts)->right = (yyvsp[0].asts);
         }
       else
         (yyval.asts) = newNode (BLOCK, NULL, NULL);
     }
#line 5600 "y.tab.c"
    break;

  case 312: /* label: identifier ':'  */
#line 2083 "SDCC.y"
     {
       (yyval.asts) = createLabel((yyvsp[-1].sym),NULL);
       (yyvsp[-1].sym)->isitmp = 0;
     }
#line 5609 "y.tab.c"
    break;

  case 313: /* label: attribute_specifier_sequence_opt CASE constant_range_expr ':'  */
#line 2088 "SDCC.y"
     {
       if (!options.std_c2y)
         werror (E_CASE_RANGE_C2Y);

       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCaseRange(NULL,(yyvsp[-1].asts)->left,(yyvsp[-1].asts)->right,NULL);
       else
         (yyval.asts) = createCaseRange(STACK_PEEK(swStk),(yyvsp[-1].asts)->left,(yyvsp[-1].asts)->right,NULL);
     }
#line 5623 "y.tab.c"
    break;

  case 314: /* label: attribute_specifier_sequence_opt CASE constant_expr ':'  */
#line 2098 "SDCC.y"
     {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createCase(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createCase(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 5634 "y.tab.c"
    break;

  case 315: /* @12: %empty  */
#line 2104 "SDCC.y"
                                              { (yyval.asts) = newNode(DEFAULT,NULL,NULL); }
#line 5640 "y.tab.c"
    break;

  case 316: /* label: attribute_specifier_sequence_opt DEFAULT @12 ':'  */
#line 2105 "SDCC.y"
     {
       if (STACK_EMPTY(swStk))
         (yyval.asts) = createDefault(NULL,(yyvsp[-1].asts),NULL);
       else
         (yyval.asts) = createDefault(STACK_PEEK(swStk),(yyvsp[-1].asts),NULL);
     }
#line 5651 "y.tab.c"
    break;

  case 317: /* start_block: '{'  */
#line 2115 "SDCC.y"
        {
          NestLevel += LEVEL_UNIT;
          STACK_PUSH(blockNum, currBlockno);
          btree_add_child(currBlockno, ++blockNo);
          currBlockno = blockNo;
          ignoreTypedefType = 0;
        }
#line 5663 "y.tab.c"
    break;

  case 318: /* end_block: '}'  */
#line 2126 "SDCC.y"
        {
          leaveBlockScope (currBlockno);
          NestLevel -= LEVEL_UNIT;
          currBlockno = STACK_POP(blockNum);
        }
#line 5673 "y.tab.c"
    break;

  case 319: /* compound_statement: start_block end_block  */
#line 2134 "SDCC.y"
                                              { (yyval.asts) = createBlock(NULL, NULL); }
#line 5679 "y.tab.c"
    break;

  case 320: /* compound_statement: start_block block_item_list end_block  */
#line 2136 "SDCC.y"
     {
       (yyval.asts) = (yyvsp[-1].asts);
       cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
     }
#line 5688 "y.tab.c"
    break;

  case 321: /* block_item_list: statements_and_implicit  */
#line 2143 "SDCC.y"
                                              { (yyval.asts) = createBlock(NULL, (yyvsp[0].asts)); }
#line 5694 "y.tab.c"
    break;

  case 322: /* block_item_list: declaration_list  */
#line 2144 "SDCC.y"
                                              { (yyval.asts) = createBlock((yyvsp[0].sym), NULL); }
#line 5700 "y.tab.c"
    break;

  case 323: /* block_item_list: declaration_list statements_and_implicit  */
#line 2145 "SDCC.y"
                                              { (yyval.asts) = createBlock((yyvsp[-1].sym), (yyvsp[0].asts)); }
#line 5706 "y.tab.c"
    break;

  case 325: /* expression_statement: attribute_specifier_sequence expression ';'  */
#line 2150 "SDCC.y"
                                                           { (yyval.asts) = (yyvsp[-1].asts); seqPointNo++;}
#line 5712 "y.tab.c"
    break;

  case 326: /* else_statement: ELSE secondary_block  */
#line 2154 "SDCC.y"
                              { (yyval.asts) = (yyvsp[0].asts); }
#line 5718 "y.tab.c"
    break;

  case 327: /* else_statement: %empty  */
#line 2155 "SDCC.y"
                              { (yyval.asts) = NULL; }
#line 5724 "y.tab.c"
    break;

  case 328: /* selection_header: expression  */
#line 2159 "SDCC.y"
                              { (yyval.asts) = newNode(NULLOP, NULL, (yyvsp[0].asts)); }
#line 5730 "y.tab.c"
    break;

  case 329: /* selection_header: declaration expression  */
#line 2160 "SDCC.y"
                              {
                                if (!options.std_c2y)
                                  werror(E_SELECTION_DECLARATION_C2Y);

                                if ((yyvsp[-1].sym) && IS_TYPEDEF((yyvsp[-1].sym)->etype))
                                  allocVariables((yyvsp[-1].sym));
                                ignoreTypedefType = 0;
                                addSymChain(&(yyvsp[-1].sym));
                                (yyval.asts) = newNode(NULLOP, newAst_VALUE(symbolVal((yyvsp[-1].sym))), (yyvsp[0].asts));
                              }
#line 5745 "y.tab.c"
    break;

  case 330: /* selection_header: simple_declaration  */
#line 2170 "SDCC.y"
                              {
                                if (!options.std_c2y)
                                  werror(E_SELECTION_DECLARATION_C2Y);

                                if ((yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype))
                                  allocVariables((yyvsp[0].sym));
                                ignoreTypedefType = 0;
                                addSymChain(&(yyvsp[0].sym));

                                ast *decl_ex = newAst_VALUE(symbolVal((yyvsp[0].sym)));
                                (yyval.asts) = newNode(NULLOP, decl_ex, decl_ex);
                              }
#line 5762 "y.tab.c"
    break;

  case 331: /* $@13: %empty  */
#line 2186 "SDCC.y"
                                 { seqPointNo++;}
#line 5768 "y.tab.c"
    break;

  case 332: /* selection_statement: if '(' selection_header ')' $@13 secondary_block else_statement  */
#line 2187 "SDCC.y"
                           {
                              noLineno++;
                              (yyval.asts) = createIf ((yyvsp[-4].asts)->right, (yyvsp[-1].asts), (yyvsp[0].asts) );
                              (yyval.asts)->lineno = (yyvsp[-4].asts)->right->lineno;
                              (yyval.asts)->filename = (yyvsp[-4].asts)->right->filename;

                              if ((yyvsp[-4].asts)->left)
                                {
                                  (yyval.asts) = createBlock((yyvsp[-4].asts)->left->opval.val->sym, (yyval.asts));
                                  cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
                                  leaveBlockScope (currBlockno);
                                }

                              noLineno--;

                              NestLevel -= LEVEL_UNIT;
                              currBlockno = STACK_POP(blockNum);
                           }
#line 5791 "y.tab.c"
    break;

  case 333: /* @14: %empty  */
#line 2206 "SDCC.y"
                           {
                              ast *ex;
                              static   int swLabel = 0;

                              seqPointNo++;
                              /* create a node for expression  */
                              ex = newNode(SWITCH,(yyvsp[-1].asts)->right,NULL);
                              STACK_PUSH(swStk,ex);   /* save it in the stack */
                              ex->values.switchVals.swNum = swLabel;

                              /* now create the label */
                              SNPRINTF(lbuff, sizeof(lbuff),
                                       "_swBrk_%d",swLabel++);
                              (yyval.sym)  =  newSymbol(lbuff,NestLevel);
                              /* put label in the break stack  */
                              STACK_PUSH(breakStack,(yyval.sym));
                           }
#line 5813 "y.tab.c"
    break;

  case 334: /* selection_statement: switch '(' selection_header ')' @14 secondary_block  */
#line 2223 "SDCC.y"
                           {
                              /* get back the switch form the stack  */
                              (yyval.asts) = STACK_POP(swStk);
                              (yyval.asts)->right = newNode (NULLOP,(yyvsp[0].asts),createLabel((yyvsp[-1].sym),NULL));
                              STACK_POP(breakStack);

                              if ((yyvsp[-3].asts)->left)
                                {
                                  (yyval.asts) = createBlock((yyvsp[-3].asts)->left->opval.val->sym, (yyval.asts));
                                  cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
                                  leaveBlockScope (currBlockno);
                                }

                              NestLevel -= LEVEL_UNIT;
                              currBlockno = STACK_POP(blockNum);
                           }
#line 5834 "y.tab.c"
    break;

  case 335: /* $@15: %empty  */
#line 2242 "SDCC.y"
                              { seqPointNo++;}
#line 5840 "y.tab.c"
    break;

  case 336: /* iteration_statement: while '(' expression ')' $@15 secondary_block  */
#line 2243 "SDCC.y"
                         {
                           noLineno++;
                           (yyval.asts) = createWhile ( (yyvsp[-5].sym), STACK_POP(continueStack),
                                              STACK_POP(breakStack), (yyvsp[-3].asts), (yyvsp[0].asts) );
                           (yyval.asts)->lineno = (yyvsp[-5].sym)->lineDef;
                           (yyval.asts)->filename = (yyvsp[-5].sym)->fileDef;
                           noLineno--;
                         }
#line 5853 "y.tab.c"
    break;

  case 337: /* iteration_statement: do secondary_block WHILE '(' expression ')' ';'  */
#line 2252 "SDCC.y"
                        {
                          seqPointNo++;
                          noLineno++;
                          (yyval.asts) = createDo ( (yyvsp[-6].sym) , STACK_POP(continueStack),
                                          STACK_POP(breakStack), (yyvsp[-2].asts), (yyvsp[-5].asts));
                          (yyval.asts)->lineno = (yyvsp[-6].sym)->lineDef;
                          (yyval.asts)->filename = (yyvsp[-6].sym)->fileDef;
                          noLineno--;
                        }
#line 5867 "y.tab.c"
    break;

  case 338: /* iteration_statement: for '(' expression_opt ';' expression_opt ';' expression_opt ')' secondary_block  */
#line 2262 "SDCC.y"
                        {
                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[0].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[-8].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = (yyvsp[-6].asts);
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[-4].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[-2].asts);
                          
                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL));
                          noLineno--;

                          NestLevel -= LEVEL_UNIT;
                          currBlockno = STACK_POP(blockNum);
                        }
#line 5896 "y.tab.c"
    break;

  case 339: /* $@16: %empty  */
#line 2287 "SDCC.y"
                        {
                          if (!options.std_c99)
                            werror (E_FOR_INITAL_DECLARATION_C99);

                          if ( (yyvsp[-4].sym) && IS_TYPEDEF((yyvsp[-4].sym)->etype))
                            allocVariables ((yyvsp[-4].sym));
                          ignoreTypedefType = 0;
                          addSymChain(&(yyvsp[-4].sym));
                        }
#line 5910 "y.tab.c"
    break;

  case 340: /* iteration_statement: for '(' declaration expression_opt ';' expression_opt ')' $@16 secondary_block  */
#line 2297 "SDCC.y"
                        {

                          noLineno++;

                          (yyval.asts) = newNode(FOR,(yyvsp[0].asts),NULL);
                          AST_FOR((yyval.asts),trueLabel) = (yyvsp[-8].sym);
                          AST_FOR((yyval.asts),continueLabel) =  STACK_POP(continueStack);
                          AST_FOR((yyval.asts),falseLabel) = STACK_POP(breakStack);
                          AST_FOR((yyval.asts),condLabel)  = STACK_POP(forStack);
                          AST_FOR((yyval.asts),initExpr)   = 0;
                          AST_FOR((yyval.asts),condExpr)   = (yyvsp[-5].asts);
                          AST_FOR((yyval.asts),loopExpr)   = (yyvsp[-3].asts);

                          /* This continue label is not at the correct location, */
                          /* but we need to create it now for proper binding. The */
                          /* code that handles the FOR node will move it to the */
                          /* proper location inside the for loop. */
                          if (AST_FOR((yyval.asts),continueLabel)->isref)
                            (yyval.asts)->right = createLabel(AST_FOR((yyval.asts),continueLabel),NULL);
                          (yyval.asts) = createBlock((yyvsp[-6].sym), newNode(NULLOP,(yyval.asts),createLabel(AST_FOR((yyval.asts),falseLabel),NULL)));
                          cleanUpLevel(StructTab, NestLevel + LEVEL_UNIT);
                          noLineno--;

                          leaveBlockScope (currBlockno);
                          NestLevel -= LEVEL_UNIT;
                          currBlockno = STACK_POP(blockNum);
                        }
#line 5942 "y.tab.c"
    break;

  case 341: /* jump_statement: GOTO identifier ';'  */
#line 2327 "SDCC.y"
                           {
                              if (inCriticalBlock) {
                                werror(E_INVALID_CRITICAL);
                                (yyval.asts) = NULL;
                              } else {
                                (yyvsp[-1].sym)->islbl = 1;
                                (yyval.asts) = newAst_VALUE(symbolVal((yyvsp[-1].sym)));
                                (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
                              }
                           }
#line 5957 "y.tab.c"
    break;

  case 342: /* jump_statement: CONTINUE ';'  */
#line 2337 "SDCC.y"
                           {
       /* make sure continue is in context */
       if (STACK_EMPTY(continueStack) || STACK_PEEK(continueStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       }
       else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(continueStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           /* mark the continue label as referenced */
           STACK_PEEK(continueStack)->isref = 1;
       }
   }
#line 5975 "y.tab.c"
    break;

  case 343: /* jump_statement: BREAK ';'  */
#line 2350 "SDCC.y"
                           {
       if (STACK_EMPTY(breakStack) || STACK_PEEK(breakStack) == NULL) {
           werror(E_BREAK_CONTEXT);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newAst_VALUE(symbolVal(STACK_PEEK(breakStack)));
           (yyval.asts) = newNode(GOTO,(yyval.asts),NULL);
           STACK_PEEK(breakStack)->isref = 1;
       }
   }
#line 5990 "y.tab.c"
    break;

  case 344: /* jump_statement: RETURN ';'  */
#line 2360 "SDCC.y"
                           {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,NULL);
       }
   }
#line 6004 "y.tab.c"
    break;

  case 345: /* jump_statement: RETURN expression ';'  */
#line 2369 "SDCC.y"
                                 {
       seqPointNo++;
       if (inCriticalBlock) {
           werror(E_INVALID_CRITICAL);
           (yyval.asts) = NULL;
       } else {
           (yyval.asts) = newNode(RETURN,NULL,(yyvsp[-1].asts));
       }
   }
#line 6018 "y.tab.c"
    break;

  case 348: /* external_declaration: function_definition  */
#line 2389 "SDCC.y"
        {
          // blockNo = 0;
        }
#line 6026 "y.tab.c"
    break;

  case 349: /* external_declaration: declaration  */
#line 2393 "SDCC.y"
        {
          ignoreTypedefType = 0;
          if ((yyvsp[0].sym) && (yyvsp[0].sym)->type && IS_FUNC((yyvsp[0].sym)->type))
            {
              /* The only legal storage classes for
               * a function prototype (declaration)
               * are extern and static. extern is the
               * default. Thus, if this function isn't
               * explicitly marked static, mark it
               * extern.
               */
              if ((yyvsp[0].sym)->etype && IS_SPEC((yyvsp[0].sym)->etype) && !SPEC_STAT((yyvsp[0].sym)->etype))
                {
                  SPEC_EXTR((yyvsp[0].sym)->etype) = 1;
                }
            }
          addSymChain (&(yyvsp[0].sym));
          allocVariables ((yyvsp[0].sym));
          cleanUpLevel (SymbolTab, 1);
        }
#line 6051 "y.tab.c"
    break;

  case 350: /* external_declaration: addressmod  */
#line 2414 "SDCC.y"
        {
          /* These empty braces here are apparently required by some version of GNU bison on MS Windows. See bug #2858. */
        }
#line 6059 "y.tab.c"
    break;

  case 351: /* $@17: %empty  */
#line 2421 "SDCC.y"
        {   /* function return type not specified, which is allowed in C90 (and means int), but disallowed in C99 and later */
            werror (W_RETURN_TYPE_OMITTED_INT);
            addDecl((yyvsp[0].sym),0,newIntLink());
            (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
            if ((yyvsp[0].sym))
                {
                    if (FUNC_ISCRITICAL ((yyvsp[0].sym)->type))
                        inCriticalFunction = 1;
                    strncpyz (function_name, (yyvsp[0].sym)->name, sizeof (function_name) - 3);
                    memset (function_name + sizeof (function_name) - 4, 0x00, 4);
                }
        }
#line 6076 "y.tab.c"
    break;

  case 352: /* function_definition: declarator $@17 function_body  */
#line 2434 "SDCC.y"
        {
            // merge kr_declaration_list from auxiliary node into function declaration
            mergeKRDeclListIntoFuncDecl((yyvsp[-2].sym), (symbol *) (yyvsp[0].asts)->left);
            // discard auxiliary node and keep compound_statement as function_body
            (yyvsp[0].asts) = (yyvsp[0].asts)->right;

            (yyval.asts) = createFunction((yyvsp[-2].sym), (yyvsp[0].asts));
            if ((yyvsp[-2].sym) && FUNC_ISCRITICAL ((yyvsp[-2].sym)->type))
                inCriticalFunction = 0;
        }
#line 6091 "y.tab.c"
    break;

  case 353: /* $@18: %empty  */
#line 2445 "SDCC.y"
        {
            sym_link *p = copyLinkChain((yyvsp[-1].lnk));
            pointerTypes((yyvsp[0].sym)->type,p);
            addDecl((yyvsp[0].sym),0,p);
            (yyvsp[0].sym) = createFunctionDecl((yyvsp[0].sym));
            if ((yyvsp[0].sym))
                {
                    if (!strcmp ((yyvsp[0].sym)->name, "_sdcc_external_startup")) // The rename (and semantics change happened) in SDCC 4.2.10. Keep this warning for two major releases afterwards.
                        werror (W__SDCC_EXTERNAL_STARTUP_DEF);
                    if (FUNC_ISCRITICAL ((yyvsp[0].sym)->type))
                        inCriticalFunction = 1;
                    // warn for loss of calling convention for inlined functions.
                    if (FUNC_ISINLINE ((yyvsp[0].sym)->type) &&
                        ( FUNC_ISZ88DK_CALLEE ((yyvsp[0].sym)->type) || FUNC_ISZ88DK_FASTCALL ((yyvsp[0].sym)->type) ||
                          FUNC_BANKED ((yyvsp[0].sym)->type)         || FUNC_REGBANK ((yyvsp[0].sym)->type)          ||
                          FUNC_ISOVERLAY ((yyvsp[0].sym)->type)      || FUNC_ISISR ((yyvsp[0].sym)->type) ))
                        werror (W_INLINE_FUNCATTR, (yyvsp[0].sym)->name);
                    strncpyz (function_name, (yyvsp[0].sym)->name, sizeof (function_name) - 3);
                    memset (function_name + sizeof (function_name) - 4, 0x00, 4);
                }
        }
#line 6117 "y.tab.c"
    break;

  case 354: /* function_definition: declaration_specifiers declarator $@18 function_body  */
#line 2467 "SDCC.y"
        {
            // merge kr_declaration_list from auxiliary node into function declaration
            mergeKRDeclListIntoFuncDecl((yyvsp[-2].sym), (symbol *) (yyvsp[0].asts)->left);
            // discard auxiliary node and keep compound_statement as function_body
            (yyvsp[0].asts) = (yyvsp[0].asts)->right;

            (yyval.asts) = createFunction((yyvsp[-2].sym), (yyvsp[0].asts));
            if ((yyvsp[-2].sym) && FUNC_ISCRITICAL ((yyvsp[-2].sym)->type))
                inCriticalFunction = 0;
        }
#line 6132 "y.tab.c"
    break;

  case 355: /* function_body: compound_statement  */
#line 2481 "SDCC.y"
     {
       // auxiliary node transports kr_declaration_list into function_definition, where the node is discarded
       (yyval.asts) = newNode (0, NULL, (yyvsp[0].asts));
     }
#line 6141 "y.tab.c"
    break;

  case 356: /* function_body: kr_declaration_list compound_statement  */
#line 2486 "SDCC.y"
     {
       // auxiliary node transports kr_declaration_list into function_definition, where the node is discarded
       (yyval.asts) = newNode (0, (ast *) (yyvsp[-1].sym), (yyvsp[0].asts));
     }
#line 6150 "y.tab.c"
    break;

  case 357: /* file: %empty  */
#line 2496 "SDCC.y"
     {
       werror(W_EMPTY_TRANSLATION_UNIT);
     }
#line 6158 "y.tab.c"
    break;

  case 360: /* function_attributes: function_attributes function_attribute  */
#line 2507 "SDCC.y"
                                            { (yyval.lnk) = mergeSpec((yyvsp[-1].lnk),(yyvsp[0].lnk),"function_attribute"); }
#line 6164 "y.tab.c"
    break;

  case 361: /* function_attribute: USING '(' constant_expr ')'  */
#line 2511 "SDCC.y"
                                  {
                        (yyval.lnk) = newLink(SPECIFIER);
                        FUNC_REGBANK((yyval.lnk)) = (int) ulFromVal(constExprValue((yyvsp[-1].asts), true));
                     }
#line 6173 "y.tab.c"
    break;

  case 362: /* function_attribute: REENTRANT  */
#line 2515 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISREENT((yyval.lnk))=1;
                     }
#line 6181 "y.tab.c"
    break;

  case 363: /* function_attribute: CRITICAL  */
#line 2518 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCRITICAL((yyval.lnk)) = 1;
                     }
#line 6189 "y.tab.c"
    break;

  case 364: /* function_attribute: NAKED  */
#line 2521 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISNAKED((yyval.lnk))=1;
                     }
#line 6197 "y.tab.c"
    break;

  case 365: /* function_attribute: JAVANATIVE  */
#line 2524 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISJAVANATIVE((yyval.lnk))=1;
                     }
#line 6205 "y.tab.c"
    break;

  case 366: /* function_attribute: OVERLAY  */
#line 2527 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISOVERLAY((yyval.lnk))=1;
                     }
#line 6213 "y.tab.c"
    break;

  case 367: /* function_attribute: NONBANKED  */
#line 2530 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_NONBANKED((yyval.lnk)) = 1;
                        if (FUNC_BANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 6224 "y.tab.c"
    break;

  case 368: /* function_attribute: SHADOWREGS  */
#line 2536 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSHADOWREGS((yyval.lnk)) = 1;
                     }
#line 6232 "y.tab.c"
    break;

  case 369: /* function_attribute: SD_WPARAM  */
#line 2539 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISWPARAM((yyval.lnk)) = 1;
                     }
#line 6240 "y.tab.c"
    break;

  case 370: /* function_attribute: BANKED  */
#line 2542 "SDCC.y"
                     {(yyval.lnk) = newLink (SPECIFIER);
                        FUNC_BANKED((yyval.lnk)) = 1;
                        if (FUNC_NONBANKED((yyval.lnk))) {
                            werror(W_BANKED_WITH_NONBANKED);
                        }
                     }
#line 6251 "y.tab.c"
    break;

  case 371: /* function_attribute: Interrupt_storage  */
#line 2549 "SDCC.y"
                     {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = (yyvsp[0].yyint);
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
#line 6261 "y.tab.c"
    break;

  case 372: /* function_attribute: TRAP  */
#line 2555 "SDCC.y"
                     {
                        (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_INTNO((yyval.lnk)) = INTNO_TRAP;
                        FUNC_ISISR((yyval.lnk)) = 1;
                     }
#line 6271 "y.tab.c"
    break;

  case 373: /* function_attribute: SMALLC  */
#line 2560 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISSMALLC((yyval.lnk)) = 1;
                     }
#line 6279 "y.tab.c"
    break;

  case 374: /* function_attribute: RAISONANCE  */
#line 2563 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISRAISONANCE((yyval.lnk)) = 1;
                     }
#line 6287 "y.tab.c"
    break;

  case 375: /* function_attribute: IAR  */
#line 2566 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISIAR((yyval.lnk)) = 1;
                     }
#line 6295 "y.tab.c"
    break;

  case 376: /* function_attribute: COSMIC  */
#line 2569 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISCOSMIC((yyval.lnk)) = 1;
                     }
#line 6303 "y.tab.c"
    break;

  case 377: /* function_attribute: SDCCCALL '(' constant_expr ')'  */
#line 2573 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_SDCCCALL((yyval.lnk)) = ulFromVal(constExprValue ((yyvsp[-1].asts), true));
                     }
#line 6311 "y.tab.c"
    break;

  case 378: /* function_attribute: Z88DK_FASTCALL  */
#line 2576 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_FASTCALL((yyval.lnk)) = 1;
                     }
#line 6319 "y.tab.c"
    break;

  case 379: /* function_attribute: Z88DK_CALLEE  */
#line 2579 "SDCC.y"
                     {  (yyval.lnk) = newLink (SPECIFIER);
                        FUNC_ISZ88DK_CALLEE((yyval.lnk)) = 1;
                     }
#line 6327 "y.tab.c"
    break;

  case 380: /* function_attribute: Z88DK_PARAMS_OFFSET '(' constant_expr ')'  */
#line 2583 "SDCC.y"
                     {
                        value *offset_v = constExprValue ((yyvsp[-1].asts), true);
                        int    offset = 0;
                        (yyval.lnk) = newLink(SPECIFIER);
                        if  ( offset_v ) 
                          offset = ulFromVal(offset_v);
                        (yyval.lnk)->funcAttrs.z88dk_params_offset = offset;
                     }
#line 6340 "y.tab.c"
    break;

  case 381: /* function_attribute: Z88DK_SHORTCALL '(' constant_expr ',' constant_expr ')'  */
#line 2592 "SDCC.y"
                     {
                        value *rst_v = constExprValue ((yyvsp[-3].asts), true);
                        value *value_v = constExprValue ((yyvsp[-1].asts), true);
                        int rst = -1, value = -1;
                        (yyval.lnk) = newLink(SPECIFIER);

                        if  ( rst_v ) 
                          rst = ulFromVal(rst_v);
                        if  ( value_v ) 
                          value = ulFromVal(value_v);
          
                        if ( rst < 0 || rst > 56 || ( rst % 8 ) )
                          {
                            werror(E_SHORTCALL_INVALID_VALUE, "rst", rst);
                          }
                        if ( value < 0 || value > 0xfff )
                          {
                            werror(E_SHORTCALL_INVALID_VALUE, "value", value);
                          }
                        (yyval.lnk)->funcAttrs.z88dk_shortcall_rst = rst;
                        (yyval.lnk)->funcAttrs.z88dk_shortcall_val = value;
                        FUNC_ISZ88DK_SHORTCALL((yyval.lnk)) = 1;
                     }
#line 6368 "y.tab.c"
    break;

  case 382: /* function_attribute: PRESERVES_REGS '(' identifier_list ')'  */
#line 2616 "SDCC.y"
                     {
                        const struct symbol *regsym;
                        (yyval.lnk) = newLink (SPECIFIER);

                        for(regsym = (yyvsp[-1].sym); regsym; regsym = regsym->next)
                          {
                            int regnum;

                            if (!port->getRegByName || ((regnum = port->getRegByName(regsym->name)) < 0))
                              werror (W_UNKNOWN_REG, regsym->name);
                            else
                              (yyval.lnk)->funcAttrs.preserved_regs[regnum] = true;
                          }
                     }
#line 6387 "y.tab.c"
    break;

  case 383: /* offsetof_member_designator: identifier  */
#line 2633 "SDCC.y"
                     { (yyval.asts) = newAst_VALUE (symbolVal ((yyvsp[0].sym))); }
#line 6393 "y.tab.c"
    break;

  case 384: /* $@19: %empty  */
#line 2634 "SDCC.y"
                                    { ignoreTypedefType = 1; }
#line 6399 "y.tab.c"
    break;

  case 385: /* offsetof_member_designator: offsetof_member_designator '.' $@19 identifier  */
#line 2635 "SDCC.y"
                     {
                       ignoreTypedefType = 0;
                       (yyvsp[0].sym) = newSymbol ((yyvsp[0].sym)->name, NestLevel);
                       (yyvsp[0].sym)->implicit = 1;
                       (yyval.asts) = newNode ('.', (yyvsp[-3].asts), newAst_VALUE (symbolVal ((yyvsp[0].sym))));
                     }
#line 6410 "y.tab.c"
    break;

  case 386: /* offsetof_member_designator: offsetof_member_designator '[' expression ']'  */
#line 2642 "SDCC.y"
                     {
                       (yyval.asts) = newNode ('[', (yyvsp[-3].asts), (yyvsp[-1].asts));
                     }
#line 6418 "y.tab.c"
    break;

  case 387: /* string_literal_val: FUNC  */
#line 2649 "SDCC.y"
       {
         // essentially do $$ = newAst_VALUE (strVal("\"$function_name\""));

         value* val = newValue ();
         { // BUG: duplicate from strVal
           val->type = newLink (DECLARATOR);
           DCL_TYPE (val->type) = ARRAY;
           val->type->next = val->etype = newLink (SPECIFIER);
           SPEC_SCLS (val->etype) = S_LITERAL;
           SPEC_CONST (val->etype) = 1;
           SPEC_NOUN (val->etype) = V_CHAR;
           SPEC_USIGN (val->etype) = !options.signed_char;
           val->etype->select.s.b_implicit_sign = true;
         }

         int ll = 1 + strlen(function_name);
         char* s = (char*) Safe_alloc(ll*sizeof(char));
         if(ll > 1){
           s = strncpy(s, function_name, ll);
         }else{
           *s = 0;
         }
         SPEC_CVAL (val->etype).v_char = s;
         DCL_ELEM (val->type) = ll;
         (yyval.asts) = newAst_VALUE ( val );
       }
#line 6449 "y.tab.c"
    break;

  case 388: /* string_literal_val: STRING_LITERAL  */
#line 2675 "SDCC.y"
                    { (yyval.asts) = newAst_VALUE (strVal ((yyvsp[0].yystr))); }
#line 6455 "y.tab.c"
    break;

  case 389: /* Interrupt_storage: INTERRUPT  */
#line 2679 "SDCC.y"
               { (yyval.yyint) = INTNO_UNSPEC; }
#line 6461 "y.tab.c"
    break;

  case 390: /* Interrupt_storage: INTERRUPT '(' constant_expr ')'  */
#line 2681 "SDCC.y"
        { 
          value *val = constExprValue((yyvsp[-1].asts), true);
          int intno = (int) ulFromVal(val);
          if (val && (intno >= 0) && (intno <= INTNO_MAX))
            (yyval.yyint) = intno;
          else
            {
              werror(E_INT_BAD_INTNO, intno);
              (yyval.yyint) = INTNO_UNSPEC;
            }
        }
#line 6477 "y.tab.c"
    break;

  case 391: /* sfr_reg_bit: SBIT  */
#line 2695 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               SPEC_NOUN((yyval.lnk)) = V_SBIT;
               SPEC_SCLS((yyval.lnk)) = S_SBIT;
               SPEC_BLEN((yyval.lnk)) = 1;
               SPEC_BSTR((yyval.lnk)) = 0;
               ignoreTypedefType = 1;
            }
#line 6490 "y.tab.c"
    break;

  case 393: /* sfr_attributes: SFR  */
#line 2707 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 6503 "y.tab.c"
    break;

  case 394: /* sfr_attributes: SFR BANKED  */
#line 2715 "SDCC.y"
                {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 1;
               SPEC_NOUN((yyval.lnk))    = V_CHAR;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 6516 "y.tab.c"
    break;

  case 395: /* sfr_attributes: SFR16  */
#line 2726 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 6529 "y.tab.c"
    break;

  case 396: /* sfr_attributes: SFR32  */
#line 2737 "SDCC.y"
            {
               (yyval.lnk) = newLink(SPECIFIER);
               FUNC_REGBANK((yyval.lnk)) = 0;
               SPEC_NOUN((yyval.lnk))    = V_INT;
               SPEC_SCLS((yyval.lnk))    = S_SFR;
               SPEC_LONG((yyval.lnk))    = 1;
               SPEC_USIGN((yyval.lnk))   = 1;
               ignoreTypedefType = 1;
            }
#line 6543 "y.tab.c"
    break;

  case 398: /* opt_stag: %empty  */
#line 2750 "SDCC.y"
        {  /* synthesize a name add to structtable */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct(genSymName(NestLevel));
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = NULL;
          //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
        }
#line 6556 "y.tab.c"
    break;

  case 399: /* stag: identifier  */
#line 2762 "SDCC.y"
        {  /* add name to structure table */
          ignoreTypedefType = 0;
          (yyval.sdef) = newStruct((yyvsp[0].sym)->name);
          (yyval.sdef)->level = NestLevel;
          (yyval.sdef)->block = currBlockno;
          (yyval.sdef)->tagsym = (yyvsp[0].sym);
          //$$ = findSymWithBlock (StructTab, $1, currBlockno);
          //if (! $$ )
          //  {
          //    $$ = newStruct($1->name);
          //    $$->level = NestLevel;
          //    $$->tagsym = $1;
          //    //addSym (StructTab, $$, $$->tag, $$->level, currBlockno, 0);
          //  }
        }
#line 6576 "y.tab.c"
    break;

  case 400: /* opt_assign_expr: '=' constant_expr  */
#line 2781 "SDCC.y"
        {
          value *val;

          val = constExprValue((yyvsp[0].asts), true);
          if (!val) // Not a constant expression
            {
              werror (E_CONST_EXPECTED);
              val = constIntVal("0");
            }
          else if (!IS_INT(val->type) && !IS_CHAR(val->type) && !IS_BOOL(val->type))
            {
              werror(E_ENUM_NON_INTEGER);
              SNPRINTF(lbuff, sizeof(lbuff), "%lld", (long long int) ullFromVal(val));
              val = constVal(lbuff);
            }
          (yyval.val) = cenum = val;
        }
#line 6598 "y.tab.c"
    break;

  case 401: /* opt_assign_expr: %empty  */
#line 2798 "SDCC.y"
        {
          if (cenum)
            {
              SNPRINTF(lbuff, sizeof(lbuff), "%lld", (long long int) ullFromVal(cenum)+1);
              (yyval.val) = cenum = constVal(lbuff);
            }
          else
            {
              (yyval.val) = cenum = constCharVal(0);
            }
        }
#line 6614 "y.tab.c"
    break;

  case 402: /* specifier_qualifier_list: type_specifier_list_  */
#line 2811 "SDCC.y"
                                                { (yyval.lnk) = finalizeSpec((yyvsp[0].lnk)); }
#line 6620 "y.tab.c"
    break;

  case 404: /* type_specifier_list_: type_specifier_list_ type_specifier_qualifier  */
#line 2816 "SDCC.y"
                                                   {
     /* if the decl $2 is not a specifier */
     /* find the spec and replace it      */
     (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier_list type_specifier skipped");
   }
#line 6630 "y.tab.c"
    break;

  case 406: /* type_specifier_list_without_struct_or_union: type_specifier_list_without_struct_or_union type_specifier_qualifier_without_struct_or_union  */
#line 2826 "SDCC.y"
        {
          /* if the decl $2 is not a specifier */
          /* find the spec and replace it      */
          (yyval.lnk) = mergeDeclSpec((yyvsp[-1].lnk), (yyvsp[0].lnk), "type_specifier_list type_specifier skipped");
        }
#line 6640 "y.tab.c"
    break;

  case 408: /* identifier_list: identifier_list ',' identifier  */
#line 2836 "SDCC.y"
         {
           (yyvsp[0].sym)->next = (yyvsp[-2].sym);
           (yyval.sym) = (yyvsp[0].sym);
         }
#line 6649 "y.tab.c"
    break;

  case 409: /* type_name: specifier_qualifier_list  */
#line 2844 "SDCC.y"
        {
          if (IS_SPEC ((yyvsp[0].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[0].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          (yyval.lnk) = (yyvsp[0].lnk); ignoreTypedefType = 0;
        }
#line 6661 "y.tab.c"
    break;

  case 410: /* type_name: specifier_qualifier_list abstract_declarator  */
#line 2852 "SDCC.y"
        {
          /* go to the end of the list */
          sym_link *p;

          if (IS_SPEC ((yyvsp[-1].lnk)) && !IS_VALID_PARAMETER_STORAGE_CLASS_SPEC ((yyvsp[-1].lnk)))
            {
              werror (E_STORAGE_CLASS_FOR_PARAMETER, "type name");
            }
          pointerTypes ((yyvsp[0].lnk),(yyvsp[-1].lnk));
          for (p = (yyvsp[0].lnk); p && p->next; p = p->next)
            ;
          if (!p)
            {
              werror(E_SYNTAX_ERROR, yytext);
            }
          else
            {
              p->next = (yyvsp[-1].lnk);
            }
          (yyval.lnk) = (yyvsp[0].lnk);
          ignoreTypedefType = 0;
        }
#line 6688 "y.tab.c"
    break;

  case 411: /* critical: CRITICAL  */
#line 2877 "SDCC.y"
                {
                   if (inCriticalFunction || inCriticalBlock)
                     werror(E_INVALID_CRITICAL);
                   inCriticalBlock = 1;
                   STACK_PUSH(continueStack,NULL);
                   STACK_PUSH(breakStack,NULL);
                   (yyval.sym) = NULL;
                }
#line 6701 "y.tab.c"
    break;

  case 412: /* critical_statement: critical statement  */
#line 2888 "SDCC.y"
                         {
                   STACK_POP(breakStack);
                   STACK_POP(continueStack);
                   (yyval.asts) = newNode(CRITICAL,(yyvsp[0].asts),NULL);
                   inCriticalBlock = 0;
                }
#line 6712 "y.tab.c"
    break;

  case 414: /* statements_and_implicit: statement_list implicit_block  */
#line 2899 "SDCC.y"
     {
       (yyval.asts) = newNode(NULLOP, (yyvsp[-1].asts), (yyvsp[0].asts));
       if (!options.std_c99)
         werror(E_DECL_AFTER_STATEMENT_C99);
     }
#line 6722 "y.tab.c"
    break;

  case 415: /* $@20: %empty  */
#line 2907 "SDCC.y"
     {
       NestLevel += SUBLEVEL_UNIT;
       STACK_PUSH(blockNum, currBlockno);
       btree_add_child(currBlockno, ++blockNo);
       currBlockno = blockNo;
       ignoreTypedefType = 0;
     }
#line 6734 "y.tab.c"
    break;

  case 416: /* declaration_after_statement: $@20 declaration_list  */
#line 2914 "SDCC.y"
                                              { (yyval.sym) = (yyvsp[0].sym); }
#line 6740 "y.tab.c"
    break;

  case 417: /* implicit_block: declaration_after_statement statements_and_implicit  */
#line 2919 "SDCC.y"
     {
       leaveBlockScope (currBlockno);
       NestLevel -= SUBLEVEL_UNIT;
       currBlockno = STACK_POP(blockNum);
       (yyval.asts) = createBlock((yyvsp[-1].sym), (yyvsp[0].asts));
       cleanUpLevel(StructTab, NestLevel + SUBLEVEL_UNIT);
     }
#line 6752 "y.tab.c"
    break;

  case 418: /* implicit_block: declaration_after_statement  */
#line 2927 "SDCC.y"
     {
       leaveBlockScope (currBlockno);
       NestLevel -= SUBLEVEL_UNIT;
       currBlockno = STACK_POP(blockNum);
       (yyval.asts) = createBlock((yyvsp[0].sym), NULL);
       cleanUpLevel(StructTab, NestLevel + SUBLEVEL_UNIT);
     }
#line 6764 "y.tab.c"
    break;

  case 419: /* declaration_list: declaration  */
#line 2938 "SDCC.y"
     {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = NULL;
       }
       else
         (yyval.sym) = (yyvsp[0].sym);
       ignoreTypedefType = 0;/*printf("1 %s %d %d\n", $1->name, IS_ARRAY ($1->type), DCL_ARRAY_VLA ($1->type));
       if (IS_ARRAY ($1->type) && DCL_ARRAY_VLA ($1->type))
         werror (E_VLA_OBJECT);
       else*/
         addSymChain(&(yyvsp[0].sym));
     }
#line 6783 "y.tab.c"
    break;

  case 420: /* declaration_list: declaration_list declaration  */
#line 2954 "SDCC.y"
     {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = (yyvsp[-1].sym);
       }
       else {
         /* get to the end of the previous decl */
         if ( (yyvsp[-1].sym) ) {
           (yyval.sym) = sym = (yyvsp[-1].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[0].sym);
         }
         else
           (yyval.sym) = (yyvsp[0].sym);
       }
       ignoreTypedefType = 0;/*printf("2 %s %d %d\n", $1->name, IS_ARRAY ($1->type), DCL_ARRAY_VLA ($1->type));
       if (IS_ARRAY ($2->type) && DCL_ARRAY_VLA ($2->type))
         werror (E_VLA_OBJECT);
       else*/
         addSymChain(&(yyvsp[0].sym));
     }
#line 6813 "y.tab.c"
    break;

  case 421: /* kr_declaration: declaration_specifiers init_declarator_list ';'  */
#line 2988 "SDCC.y"
      {
         /* add the specifier list to the id */
         symbol *sym1 = prepareDeclarationSymbol (NULL, (yyvsp[-2].lnk), (yyvsp[-1].sym));
         uselessDecl = true;
         (yyval.sym) = sym1;
      }
#line 6824 "y.tab.c"
    break;

  case 422: /* kr_declaration_list: kr_declaration  */
#line 2998 "SDCC.y"
     {
       /* if this is typedef declare it immediately */
       if ( (yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = NULL;
         ignoreTypedefType = 0;
         addSymChain(&(yyvsp[0].sym));
       }
       else {
         checkTypeSanity((yyvsp[0].sym)->etype, (yyvsp[0].sym)->name);
         (yyval.sym) = (yyvsp[0].sym);
       }
     }
#line 6842 "y.tab.c"
    break;

  case 423: /* kr_declaration_list: kr_declaration_list kr_declaration  */
#line 3012 "SDCC.y"
     {
       symbol   *sym;

       /* if this is a typedef */
       if ((yyvsp[0].sym) && IS_TYPEDEF((yyvsp[0].sym)->etype)) {
         allocVariables ((yyvsp[0].sym));
         (yyval.sym) = (yyvsp[-1].sym);
         ignoreTypedefType = 0;
         addSymChain(&(yyvsp[0].sym));
       }
       else {
         checkTypeSanity((yyvsp[0].sym)->etype, (yyvsp[0].sym)->name);
         /* get to the end of the previous decl */
         if ( (yyvsp[-1].sym) ) {
           (yyval.sym) = sym = (yyvsp[-1].sym);
           while (sym->next)
             sym = sym->next;
           sym->next = (yyvsp[0].sym);
         }
         else
           (yyval.sym) = (yyvsp[0].sym);
       }
     }
#line 6870 "y.tab.c"
    break;

  case 424: /* statement_list: unlabeled_statement  */
#line 3038 "SDCC.y"
                                        { (yyval.asts) = (yyvsp[0].asts); }
#line 6876 "y.tab.c"
    break;

  case 425: /* statement_list: label  */
#line 3039 "SDCC.y"
                                        { (yyval.asts) = (yyvsp[0].asts); }
#line 6882 "y.tab.c"
    break;

  case 426: /* statement_list: statement_list unlabeled_statement  */
#line 3040 "SDCC.y"
                                        { (yyval.asts) = newNode(NULLOP,(yyvsp[-1].asts),(yyvsp[0].asts));}
#line 6888 "y.tab.c"
    break;

  case 427: /* statement_list: statement_list label  */
#line 3041 "SDCC.y"
                                        { (yyval.asts) = newNode(NULLOP,(yyvsp[-1].asts),(yyvsp[0].asts));}
#line 6894 "y.tab.c"
    break;

  case 428: /* if: IF  */
#line 3045 "SDCC.y"
     {
       /* open a new block for the optional declaration within the selection header */
       NestLevel += LEVEL_UNIT;
       STACK_PUSH(blockNum, currBlockno);
       btree_add_child(currBlockno, ++blockNo);
       currBlockno = blockNo;
       ignoreTypedefType = 0;
     }
#line 6907 "y.tab.c"
    break;

  case 429: /* switch: SWITCH  */
#line 3056 "SDCC.y"
     {
       /* open a new block for the optional declaration within the selection header */
       NestLevel += LEVEL_UNIT;
       STACK_PUSH(blockNum, currBlockno);
       btree_add_child(currBlockno, ++blockNo);
       currBlockno = blockNo;
       ignoreTypedefType = 0;
     }
#line 6920 "y.tab.c"
    break;

  case 430: /* while: WHILE  */
#line 3066 "SDCC.y"
               {  /* create and push the continue , break & body labels */
                  static int Lblnum = 0;
                  /* continue */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilecontinue_%d",Lblnum);
                  STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
                  /* break */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebreak_%d",Lblnum);
                  STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
                  /* body */
                  SNPRINTF (lbuff, sizeof(lbuff), "_whilebody_%d",Lblnum++);
                  (yyval.sym) = newSymbol(lbuff,NestLevel);
               }
#line 6937 "y.tab.c"
    break;

  case 431: /* do: DO  */
#line 3080 "SDCC.y"
        {  /* create and push the continue , break & body Labels */
           static int Lblnum = 0;

           /* continue */
           SNPRINTF(lbuff, sizeof(lbuff), "_docontinue_%d",Lblnum);
           STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
           /* break */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobreak_%d",Lblnum);
           STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
           /* do body */
           SNPRINTF(lbuff, sizeof(lbuff), "_dobody_%d",Lblnum++);
           (yyval.sym) = newSymbol (lbuff,NestLevel);
        }
#line 6955 "y.tab.c"
    break;

  case 432: /* for: FOR  */
#line 3095 "SDCC.y"
          { /* create & push continue, break & body labels */
            static int Lblnum = 0;

           NestLevel += LEVEL_UNIT;
           STACK_PUSH(blockNum, currBlockno);
           btree_add_child(currBlockno, ++blockNo);
           currBlockno = blockNo;
           ignoreTypedefType = 0;

            /* continue */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcontinue_%d",Lblnum);
            STACK_PUSH(continueStack,newSymbol(lbuff,NestLevel));
            /* break    */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbreak_%d",Lblnum);
            STACK_PUSH(breakStack,newSymbol(lbuff,NestLevel));
            /* body */
            SNPRINTF(lbuff, sizeof(lbuff), "_forbody_%d",Lblnum);
            (yyval.sym) = newSymbol(lbuff,NestLevel);
            /* condition */
            SNPRINTF(lbuff, sizeof(lbuff), "_forcond_%d",Lblnum++);
            STACK_PUSH(forStack,newSymbol(lbuff,NestLevel));
          }
#line 6982 "y.tab.c"
    break;

  case 434: /* asm_statement: ASM '(' asm_string_literal ')' ';'  */
#line 3125 "SDCC.y"
      {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup(copyStr ((yyvsp[-2].yystr), NULL));
        seqPointNo++;
        (yyval.asts) = ex;
     }
#line 6996 "y.tab.c"
    break;

  case 435: /* asm_statement: INLINEASM ';'  */
#line 3135 "SDCC.y"
      {
        ast *ex;

        seqPointNo++;
        ex = newNode(INLINEASM, NULL, NULL);
        ex->values.inlineasm = strdup((yyvsp[-1].yystr));
        seqPointNo++;
        (yyval.asts) = ex;
      }
#line 7010 "y.tab.c"
    break;

  case 436: /* addressmod: ADDRESSMOD identifier identifier ';'  */
#line 3147 "SDCC.y"
                                          {
     symbol *sym;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-2].sym)))
       werror (E_ID_UNDEF, (yyvsp[-2].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-2].sym));
     sym->addressmod[1] = 0;
   }
#line 7026 "y.tab.c"
    break;

  case 437: /* addressmod: ADDRESSMOD identifier SD_CONST identifier ';'  */
#line 3158 "SDCC.y"
                                                   {
     symbol *sym;
     sym_link *type;
     if ((sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym))) && sym->level == (yyvsp[-1].sym)->level)
       werrorfl (sym->fileDef, sym->lineDef, E_PREVIOUS_DEF);
     if (!findSymWithLevel (SymbolTab, (yyvsp[-3].sym)))
       werror (E_ID_UNDEF, (yyvsp[-3].sym)->name);
     addSym (AddrspaceTab, (yyvsp[-1].sym), (yyvsp[-1].sym)->name, (yyvsp[-1].sym)->level, (yyvsp[-1].sym)->block, 0);
     sym = findSymWithLevel (AddrspaceTab, (yyvsp[-1].sym));
     sym->addressmod[0] = findSymWithLevel (SymbolTab, (yyvsp[-3].sym));
     sym->addressmod[1] = 0;
     type = newLink (SPECIFIER);
     SPEC_CONST(type) = 1;
     sym->type = sym->etype = type;
   }
#line 7046 "y.tab.c"
    break;

  case 438: /* identifier: IDENTIFIER  */
#line 3176 "SDCC.y"
                  { (yyval.sym) = newSymbol ((yyvsp[0].yychar), NestLevel); }
#line 7052 "y.tab.c"
    break;


#line 7056 "y.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 3178 "SDCC.y"

