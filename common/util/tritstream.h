#ifndef WAVE_TRITSTREAM_H
#define WAVE_TRITSTREAM_H

#include <stddef.h>
#include <stdint.h>

typedef struct {
  uint8_t *data;
  size_t buf_len;
  uint32_t byte_pos;
  uint32_t factor;
} tritstream_t;

int ts_init(tritstream_t *ts, uint8_t *buf, size_t buf_len);
int ts_write(tritstream_t *ts, uint8_t data);
uint8_t ts_read(tritstream_t *ts);

#endif
