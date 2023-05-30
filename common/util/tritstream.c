#include "tritstream.h"

#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

int ts_init(tritstream_t *ts, uint8_t *buf, size_t buf_len) {
  ts->data = buf;
  ts->buf_len = buf_len;
  ts->byte_pos = 0;
  ts->factor = 1;

  return 0;
}

int ts_write(tritstream_t *ts, uint8_t data) {
  //  printf("len: %i\n", data_len);
  if (ts->byte_pos + ((ts->factor * 3) > 245 ? 1 : 0) >= ts->buf_len) {
    fprintf(stderr, "write exceeds buffer!\n");
    exit(-1);
    // return -1;
  }

  ts->data[ts->byte_pos] += data * ts->factor;

  ts->factor *= 3;

  if (ts->factor > 240) {
    ts->byte_pos++;
    ts->factor = 1;
  }

  return 0;
}

uint8_t ts_read(tritstream_t *ts) {
  if (ts->byte_pos + ((ts->factor * 3) > 245 ? 1 : 0) >= ts->buf_len) return -1;

  uint8_t data = (ts->data[ts->byte_pos] / ts->factor) % 3;

  ts->factor *= 3;

  if (ts->factor > 240) {
    ts->byte_pos++;
    ts->factor = 1;
  }

  return data;
  return data;
}
