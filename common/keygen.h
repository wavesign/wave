//
// Created by obiwan on 13/10/22.
//

#ifndef WAVE2_KEYGEN_H
#define WAVE2_KEYGEN_H

#include "types.h"

/**
 * Allocation of the elements of secret key
 * @param sk pointer to be allocated
 * @return
 */
int wave_sk_alloc(wave_sk_t *sk);
/**
 * Allocation of the elements of public key
 * @param pk pointer to be allocated
 * @return
 */
int wave_pk_alloc(wave_pk_t *pk);
/**
 * Function to free the secret key.
 * @param sk valid pointer
 */
void wave_sk_free(wave_sk_t *sk);
/**
 * Function to free the public key
 * @param pk  Valid pointer
 */
void wave_pk_free(wave_pk_t *pk);

/**
 * Function to generate secret and public keys
 * @param sk Secret key (it should be previously allocated)
 * @param pk Public key (it should be previously allocated)
 * @return 1 if the process is correct, otherwise 0
 */
int keygen(wave_sk_t *sk, wave_pk_t *pk);

#endif  // WAVE2_KEYGEN_H
