#include <emmintrin.h> // SSE2
#include <mmintrin.h>
#include <stdio.h>
#include <time.h>
#include <xmmintrin.h>

float a[4] = { -1.5, 2.0, -3.0, 4.5 };
int ax[160], ay[160];
int z[160];

int main() {
  clock_t start = clock(), end; 

  __m128 va = _mm_load_ps(a);
  __m128 mask = _mm_cmplt_ps(va, _mm_setzero_ps());  // compare < 0
  __m128 result = _mm_andnot_ps(mask, va);  // bitwise AND NOT
  _mm_store_ps(a, result);  // a = {0, 2.0, 0, 4.5}
  for (int i = 0; i < 4; ++i) {
    printf("%.2lf ", a[i]);
  }
  
  end = clock();
  printf("\n%lf", (double)(end - start) / CLOCKS_PER_SEC);

  for (int i = 0; i < 16; ++i) {
    ax[i] = i, ay[i] = i + 1;
  }

  start = clock();
  for (int i = 0; i < 160; i += 4) {
    __m128i x = _mm_load_si128(ax + i);
    __m128i y = _mm_load_si128(ay + i);
    __m128i result = _mm_add_epi32(x, y);
    _mm_storeu_si128(z + i, result);
  }
  end = clock();

  puts("\n=================");
  for (int i = 0; i < 16; ++i) {
    printf("%d ", z[i]);
  }
  printf("\nUsing %lf second\n", (double)(end - start) / CLOCKS_PER_SEC);
  
  return 0;
}