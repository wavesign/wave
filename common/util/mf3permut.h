
#ifndef WAVE2_MF3PERMUTE_H
#define WAVE2_MF3PERMUTE_H

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "fq_arithmetic/types_f3.h"

/**
 * Function to permute the rows of M from the permutation pi
 * @param M Matrix that it will have the rows permuted
 * @param pi Permutation
 */
void mf3_row_permute(mf3_e* M, uint16_t* pi);

#endif /* MF3PERMUTE_H */
