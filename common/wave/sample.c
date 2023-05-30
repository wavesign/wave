#include <stdint.h>
#include <stdlib.h>

#include "params.h"
#include "prng/prng.h"

typedef struct {
  int prec, size, offset;
  uint64_t *proba;
} distrib;

typedef struct {
  int size, offset;
  distrib *dist;
} fdistrib;

#include "distrib.h"

int sampleV() {
  int i, res;
  uint64_t p, mask;

  mask = (1UL << DV.prec) - 1;  // assumes DV.prec < 64
  // randombytes((uint8_t *) &p, sizeof (p));
  rng_bytes((uint8_t *)&p, sizeof(p));
  p &= mask;

  for (i = DV.size - 2, res = 0; i >= 0; --i) {
    res += ((p >= DV.proba[i]) & (res == 0)) * (i + 1 + DV.offset);
  }
  res += (res == 0) * DV.offset;
  return res;
}

int sampleU(int t) {
  int i, j, res;
  uint64_t p, mask;

  // randombytes((uint8_t *) &p, sizeof (p));
  rng_bytes((uint8_t *)&p, sizeof(p));

  t -= DU.offset;
  for (j = 0, res = 0; j < DU.size; ++j) {
    mask = (1UL << DU.dist[j].prec) - 1;  // assumes DU.dist[j].prec < 64
    for (i = DU.dist[j].size - 2; i >= 0; --i) {
      res += (((p & mask) >= DU.dist[j].proba[i]) & (res == 0) & (j == t)) *
             (i + 1 + DU.dist[j].offset);
    }
    res += ((res == 0) & (j == t)) * DU.dist[j].offset;
  }
  return res;
}
