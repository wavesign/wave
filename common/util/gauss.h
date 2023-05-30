//
// Created by obiwan on 17/10/22.
//

#ifndef WAVE2_GAUSS_H
#define WAVE2_GAUSS_H

#include "fq_arithmetic/types_f3.h"

/**
 * Extended gauss elimination. Function that perform gauss elimination.
 * extended Gaussian elimination, Algorithm 21, page 19
 * @param H Matrix to be reduced
 * @param gap The number of rows to be stacked into H
 * @return number of pivot success
 */
int extended_gauss_elimination(mf3_e *H, int gap);
/**
 * Gauss elimination
 * /NS 27/04/23 Gaussian elimination for KeyGen, Algorithm 18, page 18
 * The pivot positions are not secret and can be revealed
 * @param H Matrix to be reduced
 * @param pivot Elements for the pivot
 * @return number of pivot success
 */
int gauss_elimination(mf3_e *H, int *pivot);

void normalize(vf3_e *e, int pos_l);
void reduce(vf3_e *x, vf3_e *y, int pos_l);

int partial_gauss_elimination(mf3_e *G, int gap);
int gauss_elimination_with_abort(mf3_e *H);

#endif  // WAVE2_GAUSS_H
