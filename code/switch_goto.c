#include <stdio.h>
#include <stdlib.h>

void swith_eg_impl(long x, long n, long *dest) {
  static void *jt[7] = {
    &&loc_A, &&loc_def, &&loc_B,
    &&loc_C, &&loc_D, &&loc_def,
    &&loc_D
  };

  unsigned long index = n - 100;
  long val;

  if (index > 5)
    goto loc_def;

  goto *jt[index];

  loc_A:
    val = x * 13;
    goto done;

  loc_B:
    x += 10;
    goto done;

  loc_C:
    val = x + 11;
    goto done;

  loc_D:
    val = x * x;

  loc_def:
    val = 0;
  
  done:
    *dest = val;
    return;
}

int main(int argc, char *argv[]) {
  long x, n, dest;
  scanf("%ld %ld", &x, &n);
  swith_eg_impl(x, n, &dest);
  printf("%ld\n", dest);
  return 0;
}