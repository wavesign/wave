//
// Created by obiwan on 06/02/23.
//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "fq_arithmetic/vf3.h"
#include "params.h"
#include "prng/prng.h"
#include "types.h"
#include "util/hash.h"
#include "wave/decode.h"

int encode_signature(uint8_t *output, vf3_e *e) {
  int i, j, l;
  uint8_t x;

  for (i = N - K, l = 0; i < N; ++l) {
    for (j = 0, x = 0; (j < 5) && (i < N); ++j, ++i) {
      x *= 3;
      x += vf3_get_element(i, e);
    }
    output[l] = x;
  }

  return l;
}

int sign(vf3_e *sig, uint8_t *salt, uint8_t const *message, size_t mlen,
         wave_sk_t *sk) {
  vf3_e *syndrome, *e, *y;
  syndrome = vf3_alloc(N - K);
  e = vf3_alloc(N);
  y = vf3_alloc(N);

  rng_bytes(salt, SALT_SIZE * sizeof(uint8_t));
  hash_message(syndrome, message, mlen, salt, SALT_SIZE);

  vf3_vector_cat_zero(y, syndrome);  // y <- (syndrome | 0)
  decode(e, y, sk);

  int idx = 0;
  for (int i = N - K; i < N; i++) {
    vf3_set_coeff(idx, sig, vf3_get_element(i, e));
    idx++;
  }

#ifdef BATCH_SIGN
  extern FILE *sign_file_out;
  vf3_write(e, sign_file_out);
#endif

  vf3_free(syndrome);
  vf3_free(e);
  vf3_free(y);

  return 1;
}
