#ifndef WAVE_COMPRESSION_H
#define WAVE_COMPRESSION_H

#include "bitstream.h"
#include "fq_arithmetic/mf3.h"

int compress(bitstream_t *stream, vf3_e *vec);
int decompress(bitstream_t *stream, vf3_e *vec);

#endif
