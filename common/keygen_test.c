//
// Created by obiwan on 31/10/22.
//

#include "keygen.h"

#include <stdio.h>
#include <stdlib.h>

#include "params.h"
#include "prng/prng.h"
#include "types.h"

#define SEED_SIZE 32
int main() {
  uint8_t seed[SEED_SIZE] = {0};
  seed_prng(seed, SEED_SIZE);

  printf("Ahoy World.\n");
  wave_sk_t sk;
  wave_pk_t pk;

  keygen(&sk, &pk);
  // mf3_print(pk.R);

  wave_sk_free(&sk);
  wave_pk_free(&pk);
  printf("Bye Mate!\n");

  return 0;
}
