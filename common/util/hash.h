//
// Created by obiwan on 31/10/22.
//

#ifndef WAVE2_HASH_H
#define WAVE2_HASH_H
#include <stdlib.h>
#include <string.h>

#include "fq_arithmetic/vf3.h"
#include "params.h"
#include "prng/fips202.h"
#include "types.h"

/**
 * Function to compute the hash of a message and transform into trits.
 * @param m_hash high and low part of the representation of the hash
 * (representation in trits)
 * @param message message that we will take the hash
 * @param mlen size of the message
 * @param salt salt that it will be included to hash
 * @param msalt size of the salt
 */
void hash_message(vf3_e *m_hash, const uint8_t *message, const size_t mlen,
                  const uint8_t *salt, const size_t msalt);

#endif /* HASH_H_ */
