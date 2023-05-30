#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/resource.h>

#include "api.h"
#include "prng/prng.h"

#define MSG_SIZE 32
#define SEED_SIZE 32

FILE *sign_file_out;

void write_randcww(int n, int w, FILE *sign_file_out) {
  int i, s = 1 + (n - 1) / 64;
  uint16_t r;
  uint8_t *u = calloc(n, sizeof(uint8_t));
  uint64_t *r0 = calloc(s, sizeof(uint64_t));
  uint64_t *r1 = calloc(s, sizeof(uint64_t));

  rng_bytes((uint8_t *)r0, (1 + (w - 1) / 64) * sizeof(uint64_t));
  for (i = 0; i < w; ++i) {
    u[i] = 1 + ((r0[i / 64] >> (i % 64)) & 1);
  }
  memset(r0, 0, s * sizeof(uint64_t));

  for (i = 0; i < n - 1; ++i) {
    do {
      rng_bytes((uint8_t *)&r, 2);
    } while (r >= ((1 << 16) / (n - i)) * (n - i));
    r = i + r % (n - i);
    uint8_t tmp = u[i];
    u[i] = u[r];
    u[r] = tmp;
  }
  for (i = 0; i < n; ++i) {
    if (u[i] >= 1) r0[i / 64] ^= 1UL << (i % 64);
    if (u[i] == 2) r1[i / 64] ^= 1UL << (i % 64);
  }
  i = fwrite(r0, sizeof(uint64_t), s, sign_file_out);
  i += fwrite(r1, sizeof(uint64_t), s, sign_file_out);

  free(r0);
  free(r1);
  free(u);
}

int main(int argc, char **argv) {
  unsigned long long mlen = 32;
  unsigned long long output_sig = 0;
  uint8_t PK[CRYPTO_PUBLICKEYBYTES] = {0};
  uint8_t SK[CRYPTO_SECRETKEYBYTES] = {0};
  uint8_t sig[CRYPTO_BYTES + MSG_SIZE] = {0};
  uint8_t msg[MSG_SIZE] = {0};
  uint8_t seed[SEED_SIZE] = {0};

  /* parse command line */
  if (argc < 3) {
    printf("Usage: %s key_seed message_seed [count]\n", argv[0]);
    exit(0);
  }
  int key_seed = atoi(argv[1]);
  int message_seed = atoi(argv[2]);

  int count = 1;
  if (argc < 4) {
    printf(
        "third integer argument is the number of decodings\nBy default only "
        "one decoding is performed\n");
  } else {
    count = atoi(argv[3]);
  }

  char filename[80], *id;
  if (N > 16000) {
    id = "L5";
  } else if (N > 12000) {
    id = "L3";
  } else if (N > 8000) {
    id = "L1";
  } else {
    id = "toy";
  }
  if (key_seed >= 0)
    sprintf(filename, "sign_%s_%d_%d_%d", id, key_seed, message_seed, count);
  else
    sprintf(filename, "sign_%s_rand_%d_%d", id, message_seed, count);
  sign_file_out = fopen(filename, "w");

  /* fill the file header */
  uint16_t length = N;
  uint16_t weight = WEIGHT;
  fwrite(&length, sizeof(length), 1, sign_file_out);
  fwrite(&weight, sizeof(weight), 1, sign_file_out);
  fwrite(&key_seed, sizeof(key_seed), 1, sign_file_out);
  fwrite(&message_seed, sizeof(message_seed), 1, sign_file_out);
  fwrite(&count, sizeof(count), 1, sign_file_out);

  if (key_seed >= 0) {
    /* create key pair seeded with key_seed */
    memset(seed, 0, SEED_SIZE);
    memcpy(seed, "Wave key", 8);
    memcpy(seed + 8, &key_seed, sizeof(key_seed));
    seed_prng(seed, SEED_SIZE);

    crypto_sign_keypair(PK, SK);

    close_prng();

    // put the permutation in the file header
    fwrite(SK + MK_SIZE, sizeof(uint16_t), N, sign_file_out);  // perm in sk
  } else {
    // no key -> perm = identity
    for (uint16_t i = 0; i < N; ++i)
      fwrite(&i, sizeof(uint16_t), 1, sign_file_out);
  }

  memset(seed, 0, SEED_SIZE);
  memcpy(seed, "Wave message", 8);

  for (int i = 0; i < count; ++i, message_seed++) {
    /* the i-th message is seeded with message_seed+i */
    memcpy(seed + 8, &message_seed, sizeof(message_seed));
    seed_prng(seed, SEED_SIZE);
    rng_bytes(msg, MSG_SIZE);

    if (key_seed >= 0) {
      crypto_sign(sig, &output_sig, msg, MSG_SIZE, SK);
      if (crypto_sign_open(msg, &mlen, sig, output_sig, PK) != 0)
        printf("verification failed: key_seed=%d message_seed=%d\n", key_seed,
               message_seed);
    } else
      write_randcww(N, WEIGHT, sign_file_out);

    close_prng();
  }
  fclose(sign_file_out);

  return 0;
}
