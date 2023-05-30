#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "fq_arithmetic/vf3.h"
#include "params.h"
#include "types.h"
#include "util/hash.h"

int verify(vf3_e *sig, size_t *sig_len, uint8_t *salt, uint8_t const *message,
           size_t mlen, wave_pk_t *pk) {
  int cmp = 0;
  vf3_e *hash = vf3_alloc(N - K);
  hash_message(hash, message, mlen, salt, SALT_SIZE);

#if K % 2 == 1
  for (int i = 0; i < (K - 1) / 2; i++) {
#else
  for (int i = 0; i < (K) / 2; i++) {
#endif
    int8_t c_i, c_ip;
    c_i = (vf3_get_element(2 * i, sig) + vf3_get_element((2 * i) + 1, sig)) % 3;
    c_ip = ((vf3_get_element(2 * i, sig) - vf3_get_element((2 * i) + 1, sig)) +
            3) %
           3;

    if (c_i == 1) {
      vf3_vector_add(hash, hash, &pk->R->rows[2 * i]);
    } else if (c_i == 2) {
      vf3_vector_sub(hash, hash, &pk->R->rows[2 * i]);
    }
    if (c_ip == 1) {
      vf3_vector_add(hash, hash, &pk->R->rows[(2 * i) + 1]);
    } else if (c_ip == 2) {
      vf3_vector_sub(hash, hash, &pk->R->rows[(2 * i) + 1]);
    }
  }

#if K % 2 == 1
  if (vf3_get_element(K - 1, sig) == 1) {
    vf3_vector_add_inplace(hash, &pk->R->rows[K - 1]);
  } else if (vf3_get_element(K - 1, sig) == 2) {
    vf3_vector_sub_inplace(hash, &pk->R->rows[K - 1]);
  }
#endif

  size_t weight_t = vf3_hamming_weight(sig);
  size_t weight_v = vf3_hamming_weight(hash);

  if ((weight_t + weight_v) == WEIGHT) cmp = 1;

  vf3_free(hash);
  return cmp;
}
