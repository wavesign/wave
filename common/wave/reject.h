#ifndef WAVE_REJECT_H
#define WAVE_REJECT_H

#include <stdlib.h>

#include "params.h"

typedef struct {
  int min, max;
} range_t;

typedef struct {
  int size, offset;
  range_t* range;
} reject_t;

/* rejection data for Wave parameters
                        {"toy", 200, 180, 72, 28, 2},
*/

static const reject_t R = {
    61, 28,
    (range_t[]){{3, 6}, {2, 6}, {1, 7}, {1, 7}, {0, 7}, {0, 7}, {0, 8}, {0, 8},
                {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8},
                {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8},
                {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8}, {0, 8},
                {0, 8}, {0, 8}, {0, 8}, {0, 7}, {0, 7}, {0, 7}, {0, 7}, {0, 7},
                {0, 7}, {0, 7}, {0, 6}, {0, 6}, {0, 6}, {0, 6}, {0, 6}, {0, 5},
                {0, 5}, {0, 5}, {0, 4}, {0, 4}, {0, 4}, {0, 3}, {0, 3}, {0, 3},
                {0, 2}, {0, 2}, {0, 1}, {0, 1}, {0, 0}}};

int accept_instance(int t, int j);

#endif
