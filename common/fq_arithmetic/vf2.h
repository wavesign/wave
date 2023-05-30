#ifndef WAVE_VF2_H
#define WAVE_VF2_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "types_f3.h"
#include "util/popcount.h"

/**
 * Function to allocate a binary vector
 * @param size  size of the vector
 * @return a valid pointer
 */
vf2_e *vf2_alloc(size_t size);

/**
 *  Function to free a binary vector (vf2_e)
 * @param v a valid pointer that it will be free
 */
void vf2_free(vf2_e *v);

/**
 * Function that splits the vector x into two vectors;
 * assume a->size + b->size = x->size
 * @param a vector that it will receive "a->size" bits from x
 * @param b vector that it will receive "b->size" bits from x
 * @param x vector that it will be divided.
 */
void vf2_vector_split(vf2_e *a, vf2_e *b, vf2_e const *x);

void vf2_vector_1t0(vf2_e *a, int t);

/**
 * Function to get the support from vf3_e to vf2_e
 * @param a vector that it will receive the support
 * @param e vector to get the support
 */
void vf2_vf3_support(vf2_e *a, vf3_e const *e);

/**
 * Function to return the ith element from a binary vector a.
 * @param i the position to get the element
 * @param a valid vector
 * @return element 0 or 1.
 */
uint8_t vf2_get_element(size_t i, vf2_e const *a);

/**
 * Function to set the jth element as a in binary vector x.
 * @param j the position to set the element
 * @param x valid vector
 * @param a element 0 or 1.
 */
void vf2_set_coeff(size_t j, vf2_e *x, uint8_t const a);

/**
 * Function to get the hamming weight of a binary vector
 * (Return the number of non zero entries)
 * @param x vector to get the hamming weight
 * @return the amount of nonzero entries
 */
static inline int vf2_hamming_weight(vf2_e const *x) {
  int i, weight = 0;
  int length;
  for (i = 0, length = x->size; length >= WORD_LENGTH;
       i++, length -= WORD_LENGTH) {
    weight += popcount(x->x[i]);
  }
  if (length) {  // make sure we do not count stray bits in the last allocated
                 // word
    wave_word mask = (1UL << length) - 1;
    weight += popcount(x->x[i] & mask);
  }
  return weight;
}

#endif  // WAVE_VF2_H
