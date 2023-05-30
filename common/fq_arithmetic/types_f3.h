#ifndef WAVE2_ARITH_H
#define WAVE2_ARITH_H

#include <stdint.h>
#include <stddef.h>

typedef uint64_t wave_word;

#define WORD_LENGTH (8 * sizeof(wave_word))

typedef struct {
  wave_word *x;
  size_t alloc, size;
} vf2_e;

typedef struct vf3_e {
  wave_word *r0;
  wave_word *r1;
  size_t alloc, size;
} vf3_e;

typedef struct mf3_e {
  vf3_e *rows;
  size_t n_row, n_col;
} mf3_e;

#endif  // WAVE2_ARITH_H
