//
// Created by obiwan on 06/02/23.
//

#ifndef WAVE_SIGN_H
#define WAVE_SIGN_H

#include <stdint.h>

#include "types.h"

/**
 * Function to sign a message
 * @param sig Signature
 * @param salt Salt used in the signature (it will generate a random one in the
 * function)
 * @param message Message to be signed
 * @param mlen Size of the message
 * @param sk Secret Key
 * @return 1 if the process is correct, 0 otherwise.
 */
int sign(vf3_e *sig, uint8_t *salt, uint8_t const *message, size_t mlen,
         wave_sk_t *sk);

#endif  // WAVE_SIGN_H
