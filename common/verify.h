
#ifndef WAVE_VERIFY_H
#define WAVE_VERIFY_H

#include <stdint.h>

#include "types.h"

/**
 * Function to verify a signature
 * @param sig Signature (Truncated signature N-K)
 * @param sig_len  Size of the signature
 * @param salt Salt used to sign
 * @param message message that was signed
 * @param mlen size of the message
 * @param pk Public key
 * @return 1 if the verification is correct. Other values otherwise.
 */
int verify(vf3_e *sig, size_t *sig_len, uint8_t *salt, uint8_t const *message,
           size_t mlen, wave_pk_t *pk);

#endif  // WAVE_VERIFY_H
