#include <stdio.h>

double a[9] = {
  0, 1, 2, 3, 4, 5, 6, 7, 8
};

double *b = a + 3;

void modify(double *A, double *B, long n) {
  int i, j;
  for (i = 0; i < n; ++i) {
    b[i] = 0;
    for (j = 0; j < n; ++j) {
      b[i] = a[i*n + j];
    }
  }
}

int main() {
  
  return 0;
}