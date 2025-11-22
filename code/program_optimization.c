#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>

#define data_t int
#define IDENT

typedef struct {
  size_t len;
  data_t *data;
} vec;

int get_vec_element(vec* v, size_t idx, data_t *val) {
  if (idx >= v->len) {
    return 0;
  }
  *val = v->data[idx];
  return 1;
}



int main(int argc, char *argv[]) {
  return 0;
}