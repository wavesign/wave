//
// Created by obiwan on 06/02/23.
//
#include "sign.h"

#include <stdio.h>
#include <stdlib.h>

#include "keygen.h"
#include "params.h"
#include "prng/prng.h"
#include "types.h"

#define SEED_SIZE 32
int main() {
  uint8_t seed[SEED_SIZE] = {0};
  seed_prng(seed, SEED_SIZE);

  printf("Ahoy Mate\n");
  uint8_t output[2000] = {0};
  uint8_t message[64] = "Message 1";
  size_t mlen = 64;
  size_t outputlen = 64;

  wave_sk_t sk;
  wave_pk_t pk;

  keygen(&sk, &pk);

  vf3_e *sig = vf3_alloc(K);

  uint8_t salt[SALT_SIZE] = {0};

  int res = sign(sig, salt, message, mlen, &sk);

  //    int res = sign(output, &outputlen, message, mlen, &sk);
  //    for(int i = 0 ; i < outputlen; i++){
  //        printf("%x, ", output[i]);
  //    }
  //    printf("\n");

  vf3_free(sig);

  wave_pk_free(&pk);
  wave_sk_free(&sk);

  printf("Byte Mate\n");
  return 0;
}
