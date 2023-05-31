/******************************************************************************
WAVE -- Code-Based Digital Signature Scheme
Copyright (c) 2023 The Wave Team
contact: wave-contact@inria.fr

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
******************************************************************************/

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
