//
// Created by gsouzaba on 16/09/2022.
//

#ifndef WAVE2_CONFIG_H
#define WAVE2_CONFIG_H

#include <stdint.h>

#include "fq_arithmetic/types_f3.h"
#include "params.h"

typedef struct {
  vf3_e *b, *c;
  uint16_t perm[N];
  uint8_t mk[MK_SIZE];
} wave_sk_t;

typedef struct {
  mf3_e *R;
} wave_pk_t;

#endif  // WAVE2_CONFIG_H
