#ifndef WAVE2_PRNG_H
#define WAVE2_PRNG_H

#include <stdint.h>

#include "fq_arithmetic/types_f3.h"

void seed_prng(uint8_t *seed, int seed_len);
void close_prng();
void rng_bytes(uint8_t *output, int outlen);
/**
 *
 * Function to generate trits of the size of y->alloc
 * @param y The output vector (trits)
 * @param seed The seed since we will call a Pseudo Random generator (SHAKE)
 * @param seed_len Length of the SEDD
 * @param custom custom value to avoid attacks of "Domain" Separation
 */
void vf3_random_from_seed(vf3_e *y, uint8_t const *seed, int seed_len,
                          uint32_t custom);

#endif  // WAVE2_PRNG_H
