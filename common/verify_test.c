#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/resource.h>

#include "api.h"
#include "prng/prng.h"

#define MSG_SIZE 32
#define SEED_SIZE 32
int main() {
  printf("Ahoy Mate\n");
  unsigned long long mlen = 32;
  unsigned long long output_sig = 0;
  uint8_t PK[CRYPTO_PUBLICKEYBYTES] = {0};
  uint8_t SK[CRYPTO_SECRETKEYBYTES] = {0};
  uint8_t sig[CRYPTO_BYTES + MSG_SIZE] = {0};

  uint8_t msg[MSG_SIZE] = {0};

  uint8_t seed[SEED_SIZE] = {0};
  seed_prng(seed, SEED_SIZE);

  crypto_sign_keypair(PK, SK);
  crypto_sign(sig, &output_sig, msg, MSG_SIZE, SK);
  int res = crypto_sign_open(msg, &mlen, sig, output_sig, PK);
  printf("verification ok? %s\n", (res == 0) ? "yes" : "no");

  printf("Byte Mate\n");

  close_prng();

  return 0;
}
