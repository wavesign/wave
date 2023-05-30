#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "bitstream.h"
#include "fq_arithmetic/vf3.h"
#include "gmp.h"
#include "params.h"

int compress(bitstream_t *stream, vf3_e *vec) {
  uint32_t idx[(N - WEIGHT)] = {0};

  uint32_t off = 0;

  for (int i = 0; i < vec->size; i++) {
    uint8_t val = vf3_get_element(i, vec);

    if (val == 0) idx[off++] = i + 1;
  }

  bs_write(stream, off - 1, 16);

  mpz_t n, tmp;

  mpz_init(n);
  mpz_init(tmp);

  // Compress to index of combination.
  for (int i = 0; i < off; i++) {
    mpz_bin_uiui(tmp, idx[i], i + 1);

    mpz_add(n, n, tmp);
  }

  size_t size = mpz_sizeinbase(n, 256);

  bs_write(stream, size, 16);

  uint8_t buf[size];

  mpz_export(buf, &size, -1, 1, -1, 0, n);

  for (int i = 0; i < size; i++) bs_write(stream, buf[i], 8);

  for (int i = 0; i < vec->size; i++) {
    uint8_t val = vf3_get_element(i, vec);

    if (val > 0) bs_write(stream, val - 1, 1);
  }
}

int decompress(bitstream_t *stream, vf3_e *vec) {
  uint32_t off = bs_read(stream, 16);

  size_t size = bs_read(stream, 16);

  uint8_t buf[size];

  for (int i = 0; i < size; i++) buf[i] = bs_read(stream, 8);

  mpz_t n, tmp;

  mpz_init(n);
  mpz_init(tmp);

  mpz_import(n, size, -1, 1, -1, 0, buf);

  // we need one more slot due to over-addressing in worst case
  uint32_t idx[(N - WEIGHT) + 1] = {0};

  idx[N - WEIGHT] = 1;

  int j = K + 1;

  // Decompress.
  for (int i = off; i >= 1; i--) {
    for (j = j; j > 0; j--) {
      mpz_bin_uiui(tmp, j, i + 1);

      if (mpz_cmp(tmp, n) < 0) {
        idx[i] = j;

        mpz_sub(n, n, tmp);

        break;
      }
    }
  }

  idx[0] = mpz_get_ui(n);

  off = 0;

  for (int i = 0; i < vec->size; i++)
    if (i == idx[off] - 1) {
      vf3_set_coeff(i, vec, 0);
      off++;
    } else
      vf3_set_coeff(i, vec, bs_read(stream, 1) + 1);
}
