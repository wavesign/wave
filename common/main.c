
/******************************************************************************
WAVE -- Code-Based Digital Signature Scheme
Copyright (c) 2023 The Wave Team
contact: wave-contact@inria.fr

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
******************************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "config.h"
#include "fq_arithmetic/mf3.h"
#include "keygen.h"
#include "params.h"
#include "sign.h"
#include "verify.h"
#if REMOVE_RANDOM
#include "NIST-kat/rng.h"
#endif

int main() {
#if REMOVE_RANDOM
  unsigned char entropy_input[48];
  printf("Fixing seed to 0x00...2F\n");
  for (int i = 0; i < 48; i++) entropy_input[i] = i;

  randombytes_init(entropy_input, NULL, 256);
#endif

  printf("Ahoy Mate\n");
  uint8_t output[2000] = {0};
  uint8_t out_tmp[2000] = {0};
  uint8_t sig_ui[2000] = {0};
  uint8_t message[64] = "Message 1";
  size_t mlen = 64;
  size_t outputlen = 64;
  size_t output_len = 64;

  wave_sk_t sk;
  wave_pk_t pk;
  keygen(&sk, &pk);

  vf3_e *sig = vf3_alloc(K);

  uint8_t salt[SALT_SIZE] = {0};

  sign(sig, salt, message, mlen, &sk);

  // for(int i = 0; i < outputlen; i++){
  //     printf("0x%x, ", output[i]);
  // }
  // printf("\n");

  size_t smlen_tmp = 0;

  printf("\n");
  int res = verify(sig, &outputlen, salt, message, mlen, &pk);
  printf("valid: %d\n", res);

  vf3_free(sig);

  wave_pk_free(&pk);
  wave_sk_free(&sk);

  printf("Byte Mate\n");
  return 0;
}
