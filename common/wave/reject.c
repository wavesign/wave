#include "reject.h"

int accept_instance(int t, int j) {
  int i, b;

  t -= R.offset;
  for (i = 0, b = 0; i < R.size; ++i) {
    b |= (t == i) & (j >= R.range[i].min) & (j <= R.range[i].max);
  }

  return b;
}
