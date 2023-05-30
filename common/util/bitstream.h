#ifndef WAVE_BITSTREAM_H
#define WAVE_BITSTREAM_H

#include <stddef.h>
#include <stdint.h>

typedef struct {
  uint8_t *data;
  size_t buf_len;
  uint32_t byte_pos;
  uint32_t bit_pos;
} bitstream_t;

int bs_init(bitstream_t *bs, uint8_t *buf, size_t buf_len);
int bs_write(bitstream_t *bs, uint32_t data, uint32_t data_len);
uint32_t bs_read(bitstream_t *bs, uint32_t data_len);

#endif
