/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide yoursolutiontotheDataLabby
editing the collection of functions in this source file.

INTEGER CODING RULES: Replace the"return" statement ineachfunctionwithone
  or more lines of C code that implements the function. Your code
  must conform to the following style:

int Funct(arg1, arg2, ...) {
  /* brief description of how your implementation works */
  int var1 = Expr1;
  ...
  int varM = ExprM;

  varJ = ExprJ;
  ...
  varN = ExprN;
  return ExprR;
}

Each"Expr" is an expression using ONLY the following:
  1. Integer constants0 through255(0xFF), inclusive. You are
      not allowed to use big constants such as0xffffffff.
  2. Function arguments and local variables(no global variables).
  3. Unary integer operations! ~
  4. Binary integer operations& ^ | + << >>

  Some of the problems restrict the set of allowed operators even further.
Each"Expr" may consist of multiple operators. You arenotrestrictedto
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such asif, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as&&, ||, -, or?:
  6. Use any form of casting.
  7. Use any data type other than int.  This impliesthatyou
cannot use arrays, structs, or unions.


  You may assume that your machine:
  1. Uses2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictablebehaviorwhenshiftingiftheshiftamount
     is less than0 or greater than31.


EXAMPLES OF ACCEPTABLE CODING STYLE:
/*
 * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
 */
int pow2plus1(int x) {
  /* exploit ability of shifts to compute powers of 2 */
  return (1 << x) + 1;
}

/*
 * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
 */
int pow2plus4(int x) {
  /* exploit ability of shifts to compute powers of 2 */
  int result = (1 << x);
  result += 4;
  return result;
}

FLOATING POINTCODINGRULES

For the problems that require you to implement floating-point operations,
the coding rules are less strict.  You areallowedtouseloopingand
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants. You can use any arithmetic,
    logical, or comparison operations on int or unsigned data.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This meansthatyou
cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc(data lab checker) compiler(described in the handout) to
     check the legality of your solutions.
  2. Each function has a maximum number of operations(integer, logical,
                                                      or comparison) that you are allowed to usefor your implementation
     of the function.  The max operator count is checked by dlc.
Note that assignment('=') is not counted; you mayuseasmanyof
     these as you want without penalty.
  3. Use the btest test harness to check your functionsfor correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of opsforeachfunctionisgiveninthe
header commentfor each function. If thereareanyinconsistencies
between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 *
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce
 *      the correct answers.
 */


#endif
//1
/*
 * bitXor - x^y using only ~ and &
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
  /**
   * x^y = ((~x)&y) | (x&(~y))
   *
   * ~(a|b) = (~a)&(~b)
   * (a|b) = ~( (~a)&(~b) )
   *
   * x^y = ~( (~((~x)&y))) & (~(x&(~y))) )
   *
   */
  return ~((~((~x) & y)) & (~(x & (~y))));
}

/*
 * tmin - return minimum two's complement integer
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  return (1 << 31);
}

//2
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 1
 */
int isTmax(int x) {
  return !(x + (x + 1) + 1) & (!(!(x + 1)));
}

/*
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   where bits are numbered from 0 (least significant) to 31 (most significant)
 *   Examples allOddBits(0xFFFFFFFD) = 0, allOddBits(0xAAAAAAAA) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int allOddBits(int x) {
  int y = 0xAA + (0xAA << 8);
  y = y + (y << 16);
  return !((x & y) ^ y);
}

/*
 * negate - return -x
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return (~x) + 1;
}

//3
/*
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  int top31_6 = x >> 6;
  int top5_4 = x >> 4;
  return (!(top31_6 >> 6)) & (!(0b11 ^ top5_4)) & (((x & (0xF)) + ~0xA + 1) >> 31);
}

/*
 * conditional - same as x ? y : z
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  return (((!!x + 1 + (~1)) & z) | (~(!!x + 1 + (~1)) & y));
}

/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  int xtop = (x >> 31) & 1;
  int ytop = (y >> 31) & 1;

  // compare first two digits
  int a1 = xtop & (!ytop); // a1 == 1 -> x<0,y>=0 ok
  int a2 = ytop & (!xtop); // a2 == 1 -> x>=0,y<0 not ok

  // try y-x>=0
  y = y + (~x) + 1;
  int a3 = (y >> 31) & 1; // a3==0->ok

  return a1 | (!a1 & !a2 & !a3);
}

//4
/*
 * logicalNeg - implement the ! operator, using all of
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4
 */
int logicalNeg(int x) {
  // the sign op!
  int sign_x = x >> 31;
  int sign_neg_x = (~x + 1) >> 31;
  return (sign_x | sign_neg_x) + 1;
}

/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
int howManyBits(int x) {
  int ans = 0;
  // int p1 = (x >> 16) &
  // 32->2^k sum
  /**
   * Notice the way we deal with x;
   * if x<0, then sign=111...111
   * else, sign=000...000
   *
   * if x>0, then we need to count where is the first 1 bit
   * if x<0, then we need to reverse it:
   * eg. x=-10=~(00...0101)+1=11...10110
   * reverse: 00...01001
   */
  int sign = (x >> 31);
  // printf("sign=%u\n", sign); // the shift is implemented arithmetically, so sign=0x8ffffffff if x<0
  //
  int cur = ((~sign) & x) + (sign & (~x));

  int first16bit = !!(cur >> 16);
  ans = ans + (first16bit << 4);
  cur = cur >> (first16bit << 4);

  int first8bit = !!(cur >> 8);
  ans = ans + (first8bit << 3);
  cur = cur >> (first8bit << 3);

  int first4bit = !!(cur >> 4);
  ans = ans + (first4bit << 2);
  cur = cur >> (first4bit << 2);

  int first2bit = !!(cur >> 2);
  ans = ans + (first2bit << 1);
  cur = cur >> (first2bit << 1);

  int first1bit = !!(cur >> 1);
  ans = ans + (first1bit);
  cur = cur >> first1bit;

  return ans + cur + 1;
}

//float
/*
 * floatScale2 - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatScale2(unsigned uf) {
  unsigned op = uf >> 31;
  unsigned exp = (uf >> 23) & (0xff);
  unsigned frac = uf & 0x007fffff;
  // printf("exp=%u,frac=%u\n", exp, frac);
  if (exp == 0xFF) {
    return uf;
  } else if (exp == 0) {
    frac <<= 1;
    return (op << 31) | (exp << 23) | frac;
  }
  ++exp;
  return (op << 31) | (exp << 23) | frac;
}

int floatFloat2Int(unsigned uf) {
  unsigned op = uf >> 31;
  unsigned exp = (uf >> 23) & (0xff);
  unsigned frac = uf & 0x007fffff;
  // printf("exp=%u,frac=%u\n", exp, frac);
  int E = exp - 127;
  frac |= (1 << 23);

  if (E < 0) {
    return 0;
  } else if (E >= 31) {
    return 0x1 << 31;
  } else {
    if (E < 23) {
      frac >>= (23 - E);
    } else {
      frac <<= (E - 23);
    }
  }
  if (op)
    return ~frac + 1;
  return frac;
}

/*
 * floatFloat2Int - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */

/*
 * floatPower2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned floatPower2(int x) {
  if (x < -149)
    return 0;
  if (x < -126)
    return 1 << (x + 149);
  if (x <= 127)
    return (x + 127) << 23;
  return (0xFF) << 23;
}
