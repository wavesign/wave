#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "fq_arithmetic/mf3.h"
#include "fq_arithmetic/vf3.h"
#include "util/gauss.h"

int randombytes(void *buff, size_t n) {
  uint8_t *r = (uint8_t *)buff;
  while (n >= 3) {
    uint32_t x = random();
    r[0] = x & 0xFF;
    r[1] = (x >> 8) & 0xFF;
    r[2] = (x >> 16) & 0xFF;
    n -= 3;
    r += 3;
  }
  if (n > 0) r[0] = random() & 0xFF;
  if (n > 1) r[1] = random() & 0xFF;
  return 0;
}

void vf3_rand(vf3_e *e) {
  // rounded up in case sizeof(wave_word) < sizeof(uint64_t)
  int len = 1 + (e->alloc * sizeof(wave_word) - 1) / sizeof(uint64_t);
  uint64_t *rnd = (uint64_t *)malloc(2 * len * sizeof(uint64_t));
  printf("%d\n", len);
  randombytes(rnd, 2 * len * sizeof(uint64_t));
  vf3_trits_from_bits(e, rnd);
}

void mf3_stack(mf3_e *H, mf3_e *M);
int mf3_equal(mf3_e *H, mf3_e *M);
int vf3_equal(vf3_e *x, vf3_e *y);

int main(int argc, char **argv) {
  if (argc <= 2) return 0;
  int n = atoi(argv[1]);
  int k = atoi(argv[2]);
  int seed = (argc > 3) ? atoi(argv[3]) : 0;
  int count = (argc > 4) ? atoi(argv[4]) : 1;
  mf3_e *H = mf3_alloc(k, n);

  mf3_e *C = mf3_alloc(k, n);
  int pivot[n];
  vf3_e *zero;
  vf3_vector_constant(zero, 0);

  while (count--) {
    srandom(seed + count);
    mf3_random(H);
    mf3_free(C);
    C = mf3_copy(H);
    gauss_elimination(H, pivot);
    extended_gauss_elimination(C, 40);
    for (int i = 0; i < C->n_row; ++i) {
      uint8_t a = mf3_coeff(C, i, i);
      if (a == 1) {
        for (int l = 0; l < C->n_row; ++l) {
          if ((l != i) && (mf3_coeff(C, l, i) != 0)) {
            printf("error col: %d\t%d\t%d\t%d\n", seed + count, l, i,
                   mf3_coeff(C, l, i));
          }
        }
      } else if (a == 0) {
        for (int l = i + 1; l < C->n_row; ++l) {
          if (mf3_coeff(C, l, i) != 0) {
            printf("error col: %d\t%d\t%d\t%d\n", seed + count, l, i,
                   mf3_coeff(C, l, i));
          }
        }
        for (int l = 0; l < C->n_col; ++l) {
          if (mf3_coeff(C, i, l) != 0) {
            printf("error row: %d\t%d\t%d\t%d\n", seed + count, i, l,
                   mf3_coeff(C, i, l));
          }
        }
      } else {
        printf("error coeff: %d\t%d\t%d\t%d\n", seed + count, i, i, a);
      }
    }
    for (int i = 0; i < k; ++i) {
      if (!vf3_equal(H->rows + i, C->rows + pivot[i])) {
        printf("error extd: %d\t%d\n", seed + count, i);
      }
    }
    mf3_stack(C, H);
    gauss_elimination(C, pivot);
    for (int i = 0; i < k; ++i)
      if (!vf3_equal(H->rows + i, C->rows + i)) {
        printf("error span: %d\t%d\n", seed + count, i);
      }
  }
}
