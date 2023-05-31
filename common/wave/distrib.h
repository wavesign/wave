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

/* internal distribution for Wave parameters
                        {"toy", 200, 180, 72, 28, 2},
*/

distrib DV = {25, 24, 0,
              (uint64_t[]){0x0000000000061, 0x00000000003a2, 0x000000000281f,
                           0x0000000015013, 0x0000000070098, 0x0000000188445,
                           0x00000003dc859, 0x00000007a02eb, 0x0000000c8a16b,
                           0x00000011e16a0, 0x00000016c83dd, 0x0000001a9decd,
                           0x0000001d33403, 0x0000001eb5e61, 0x0000001f7a58c,
                           0x0000001fd0adb, 0x0000001ff15cf, 0x0000001ffc0e7,
                           0x0000001fff181, 0x0000001fffd4c, 0x0000001ffff9b,
                           0x0000001fffff3, 0x0000001fffffe, 0x0000002000000}};
fdistrib DU = {
    61, 28,
    (distrib[]){
        {25, 22, 6,
         (uint64_t[]){
             0x0000000000005, 0x000000000002f, 0x00000000001a8, 0x0000000000bb1,
             0x0000000004205, 0x0000000013371, 0x0000000049dfe, 0x00000000eadb9,
             0x000000026cfd3, 0x000000055e7e7, 0x0000000a05865, 0x0000000ff0f0b,
             0x00000015f508e, 0x0000001acaf8b, 0x0000001dd4279, 0x0000001f4b3af,
             0x0000001fd3a22, 0x0000001ff8166, 0x0000001fff057, 0x0000001fffebd,
             0x0000001fffff1, 0x0000002000000}},
        {25, 23, 6,
         (uint64_t[]){
             0x0000000000002, 0x0000000000012, 0x00000000000b3, 0x000000000054a,
             0x000000000200b, 0x000000000a097, 0x00000000298b8, 0x000000008e4e0,
             0x0000000195d07, 0x00000003c8f49, 0x000000079c7da, 0x0000000cffd8f,
             0x0000001319fca, 0x000000189cb0e, 0x0000001c89596, 0x0000001eb5c1c,
             0x0000001fa13fe, 0x0000001febc51, 0x0000001ffceab, 0x0000001fffaeb,
             0x0000001ffffac, 0x0000001fffffd, 0x0000002000000}},
        {25, 23, 6,
         (uint64_t[]){
             0x0000000000001, 0x0000000000007, 0x000000000004b, 0x000000000025c,
             0x0000000000f4f, 0x000000000526a, 0x0000000016e74, 0x00000000545aa,
             0x0000000102f84, 0x0000000299f85, 0x00000005a148d, 0x0000000a52d7a,
             0x000000103536e, 0x0000001621674, 0x0000001ade84c, 0x0000001dd882a,
             0x0000001f4a78c, 0x0000001fd2a60, 0x0000001ff7b91, 0x0000001ffef32,
             0x0000001fffe9f, 0x0000001fffff0, 0x0000002000000}},
        {25, 23, 7,
         (uint64_t[]){
             0x0000000000002, 0x000000000001f, 0x000000000010a, 0x0000000000735,
             0x000000000299a, 0x000000000c652, 0x0000000030ff6, 0x00000000a1a9c,
             0x00000001bf0d8, 0x000000040ffbd, 0x00000007fe79b, 0x0000000d6b885,
             0x0000001377877, 0x00000018dc0b8, 0x0000001caa2bf, 0x0000001ec27a0,
             0x0000001fa4dca, 0x0000001fec852, 0x0000001ffd098, 0x0000001fffb30,
             0x0000001ffffb5, 0x0000001fffffe, 0x0000002000000}},
        {25, 23, 7,
         (uint64_t[]){
             0x0000000000001, 0x000000000000d, 0x0000000000074, 0x0000000000359,
             0x00000000014ae, 0x0000000006981, 0x000000001bee3, 0x0000000062e19,
             0x000000012594a, 0x00000002dd2be, 0x000000060b27e, 0x0000000ad9f62,
             0x00000010c035e, 0x00000016938de, 0x0000001b2877a, 0x0000001dfdd3a,
             0x0000001f58f6c, 0x0000001fd6eea, 0x0000001ff8ad0, 0x0000001fff1b4,
             0x0000001fffeea, 0x0000001fffff5, 0x0000002000000}},
        {25, 22, 8,
         (uint64_t[]){
             0x0000000000005, 0x0000000000033, 0x000000000018f, 0x0000000000a43,
             0x00000000037d9, 0x000000000fc9e, 0x000000003bbc0, 0x00000000bda69,
             0x00000001fac12, 0x00000004782dc, 0x00000008933a2, 0x0000000e188ab,
             0x000000141a6c9, 0x000000195771a, 0x0000001cf4ee0, 0x0000001ee65ea,
             0x0000001fb24a6, 0x0000001ff0524, 0x0000001ffdd0c, 0x0000001fffcec,
             0x0000001ffffdc, 0x0000002000000}},
        {25, 23, 8,
         (uint64_t[]){
             0x0000000000002, 0x0000000000015, 0x00000000000b4, 0x00000000004f7,
             0x0000000001cda, 0x0000000008b64, 0x000000002341c, 0x0000000077d39,
             0x0000000156cc3, 0x000000033c50c, 0x00000006a26f4, 0x0000000b9eec9,
             0x0000001190d32, 0x0000001746205, 0x0000001ba3246, 0x0000001e40c73,
             0x0000001f75808, 0x0000001fe02c8, 0x0000001ffadbb, 0x0000001fff763,
             0x0000001ffff81, 0x0000001fffffe, 0x0000002000000}},
        {25, 23, 8,
         (uint64_t[]){
             0x0000000000001, 0x0000000000009, 0x0000000000051, 0x0000000000261,
             0x0000000000eb5, 0x0000000004bbf, 0x0000000014775, 0x000000004a5f6,
             0x00000000e389b, 0x000000024bd4d, 0x00000005076e6, 0x00000009632ff,
             0x0000000f0ecd1, 0x0000001506453, 0x0000001a0c3d9, 0x0000001d625fc,
             0x0000001f19bab, 0x0000001fc4811, 0x0000001ff508f, 0x0000001ffeaa4,
             0x0000001fffe85, 0x0000001fffff7, 0x0000002000000}},
        {25, 22, 9,
         (uint64_t[]){
             0x0000000000003, 0x0000000000023, 0x000000000011f, 0x0000000000766,
             0x0000000002893, 0x000000000bb1f, 0x000000002d648, 0x00000000945f3,
             0x0000000199701, 0x00000003bd293, 0x000000076fdb4, 0x0000000cab269,
             0x00000012ad46f, 0x0000001838ad3, 0x0000001c47512, 0x0000001e9778a,
             0x0000001f985b8, 0x0000001fea7d3, 0x0000001ffd014, 0x0000001fffc1b,
             0x0000001ffffe2, 0x0000002000000}},
        {25, 22, 9,
         (uint64_t[]){
             0x0000000000001, 0x000000000000f, 0x0000000000085, 0x00000000003ae,
             0x0000000001578, 0x0000000006964, 0x000000001b449, 0x000000005f23f,
             0x0000000118374, 0x00000002bab99, 0x00000005c87c4, 0x0000000a77697,
             0x0000001050fa4, 0x00000016358d4, 0x0000001aefd92, 0x0000001de8597,
             0x0000001f562a0, 0x0000001fd8b83, 0x0000001ff9d44, 0x0000001fff6c3,
             0x0000001ffffa9, 0x0000002000000}},
        {25, 21, 10,
         (uint64_t[]){0x0000000000006, 0x000000000003e, 0x00000000001d1,
                      0x0000000000b35, 0x0000000003a7f, 0x0000000010230,
                      0x000000003c0f4, 0x00000000bca1a, 0x00000001f550a,
                      0x000000046b0fc, 0x000000087f3f0, 0x0000000e05712,
                      0x0000001413010, 0x000000196066e, 0x0000001d07fb2,
                      0x0000001ef834d, 0x0000001fbc982, 0x0000001ff42cd,
                      0x0000001ffebe2, 0x0000001ffff1c, 0x0000002000000}},
        {25, 21, 10,
         (uint64_t[]){0x0000000000003, 0x000000000001e, 0x00000000000e3,
                      0x00000000005c0, 0x0000000001ffe, 0x00000000096b7,
                      0x00000000255ed, 0x000000007d041, 0x0000000161d15,
                      0x0000000351ad1, 0x00000006c88d3, 0x0000000bdb5ec,
                      0x00000011e27f6, 0x00000017a133c, 0x0000001bf4948,
                      0x0000001e7928f, 0x0000001f9278c, 0x0000001feab9f,
                      0x0000001ffd74d, 0x0000001fffddd, 0x0000002000000}},
        {25, 21, 10,
         (uint64_t[]){0x0000000000001, 0x000000000000c, 0x000000000006e,
                      0x00000000002fd, 0x0000000001164, 0x0000000005698,
                      0x0000000016e22, 0x0000000051a50, 0x00000000f6039,
                      0x000000027440d, 0x0000000554046, 0x00000009dee40,
                      0x0000000fb5505, 0x00000015bdc4c, 0x0000001aaf40c,
                      0x0000001dd4711, 0x0000001f5658f, 0x0000001fdbd6b,
                      0x0000001ffb338, 0x0000001fffb55, 0x0000002000000}},
        {25, 20, 11,
         (uint64_t[]){0x0000000000005, 0x000000000002e, 0x000000000016b,
                      0x000000000093a, 0x000000000319e, 0x000000000de93,
                      0x0000000034918, 0x00000000a84c6, 0x00000001c958c,
                      0x000000041f7d0, 0x0000000818b0e, 0x0000000d9a43e,
                      0x00000013c2357, 0x000000193c191, 0x0000001d07a5a,
                      0x0000001f04611, 0x0000001fc5590, 0x0000001ff75bb,
                      0x0000001fff63e, 0x0000002000000}},
        {25, 20, 11,
         (uint64_t[]){0x0000000000001, 0x0000000000018, 0x00000000000cc,
                      0x0000000000502, 0x0000000001b82, 0x00000000083b4,
                      0x000000002166f, 0x0000000071f5c, 0x0000000148863,
                      0x000000032428a, 0x000000068a967, 0x0000000b9ec33,
                      0x00000011be8a2, 0x00000017a1f0c, 0x0000001c102b3,
                      0x0000001e983b5, 0x0000001fa5370, 0x0000001ff1754,
                      0x0000001ffedad, 0x0000002000000}},
        {25, 19, 12,
         (uint64_t[]){
             0x000000000000a, 0x000000000006a, 0x00000000002a9, 0x0000000000f2a,
             0x0000000004d54, 0x0000000014f51, 0x000000004c0fe, 0x00000000e8b04,
             0x000000025c565, 0x0000000536874, 0x00000009cb55c, 0x0000000fbdcfc,
             0x00000015e9476, 0x0000001af01e6, 0x0000001e0f376, 0x0000001f789df,
             0x0000001fe8653, 0x0000001ffdeb4, 0x0000002000000}},
        {25, 19, 12,
         (uint64_t[]){
             0x0000000000003, 0x0000000000038, 0x000000000016f, 0x0000000000849,
             0x0000000002cab, 0x000000000cf83, 0x00000000322a2, 0x00000000a2c47,
             0x00000001c01dc, 0x00000004192e5, 0x00000008261b5, 0x0000000dcccb8,
             0x000000141c4c9, 0x00000019a9b7d, 0x0000001d66a63, 0x0000001f3d06c,
             0x0000001fdb38d, 0x0000001ffc69b, 0x0000002000000}},
        {25, 19, 12,
         (uint64_t[]){
             0x0000000000001, 0x000000000001e, 0x00000000000c9, 0x000000000047b,
             0x000000000195d, 0x0000000007eaf, 0x0000000020b63, 0x0000000070866,
             0x00000001480eb, 0x000000032e256, 0x00000006b1f8d, 0x0000000bf5504,
             0x00000012457da, 0x00000018418cf, 0x0000001c9d2e9, 0x0000001eefdb9,
             0x0000001fc8ba0, 0x0000001ffa173, 0x0000002000000}},
        {25, 18, 13,
         (uint64_t[]){0x0000000000004, 0x0000000000078, 0x00000000002b0,
                      0x0000000000e57, 0x0000000004b2c, 0x0000000014ff5,
                      0x000000004d158, 0x00000000ed9d0, 0x000000026fb58,
                      0x000000056e7f4, 0x0000000a3ee79, 0x000000106ff34,
                      0x00000016bdd70, 0x0000001bb21ca, 0x0000001e8e864,
                      0x0000001fafb92, 0x0000001ff6bb4, 0x0000002000000}},
        {25, 17, 14,
         (uint64_t[]){0x0000000000039, 0x0000000000194, 0x0000000000820,
                      0x0000000002c25, 0x000000000d4e1, 0x0000000034305,
                      0x00000000aa280, 0x00000001d8418, 0x000000045ae81,
                      0x00000008ae609, 0x0000000ea3ee9, 0x0000001525b4c,
                      0x0000001aa74fc, 0x0000001e17214, 0x0000001f8e8f8,
                      0x0000001ff1e48, 0x0000002000000}},
        {25, 17, 14,
         (uint64_t[]){0x0000000000014, 0x00000000000f8, 0x00000000004ab,
                      0x000000000197a, 0x00000000084c8, 0x0000000022f77,
                      0x0000000078a22, 0x00000001618d9, 0x00000003739dc,
                      0x0000000746b45, 0x0000000ce9f11, 0x0000001380dd6,
                      0x000000197edd5, 0x0000001d88033, 0x0000001f63d21,
                      0x0000001feb33f, 0x0000002000000}},
        {25, 17, 14,
         (uint64_t[]){0x0000000000003, 0x000000000009a, 0x00000000002b9,
                      0x0000000000e77, 0x0000000005165, 0x00000000172da,
                      0x0000000054b98, 0x0000000105df2, 0x00000002b478a,
                      0x0000000608c7a, 0x0000000b48730, 0x00000011d7187,
                      0x000000183c44c, 0x0000001ce02ec, 0x0000001f2dfdc,
                      0x0000001fe2330, 0x0000002000000}},
        {25, 16, 15,
         (uint64_t[]){0x0000000000048, 0x00000000001b9, 0x000000000085d,
                      0x00000000030aa, 0x000000000f20a, 0x000000003b051,
                      0x00000000c0323, 0x0000000218be6, 0x00000004f3942,
                      0x00000009c4527, 0x0000001030352, 0x00000016e3e1d,
                      0x0000001c1f0fe, 0x0000001eeb9ff, 0x0000001fd6748,
                      0x0000002000000}},
        {25, 16, 15,
         (uint64_t[]){0x000000000001b, 0x0000000000122, 0x00000000004da,
                      0x0000000001c86, 0x0000000009bd5, 0x0000000028be8,
                      0x000000008bc1d, 0x000000019bc41, 0x00000004059b8,
                      0x00000008608ae, 0x0000000e926d5, 0x000000157ae8d,
                      0x0000001b45667, 0x0000001e9b501, 0x0000001fc7513,
                      0x0000002000000}},
        {25, 16, 15,
         (uint64_t[]){0x0000000000004, 0x00000000000c6, 0x00000000002db,
                      0x0000000001057, 0x00000000062ad, 0x000000001be1d,
                      0x0000000064c73, 0x0000000138c51, 0x000000033bf79,
                      0x000000071ee09, 0x0000000d03a79, 0x0000001406b89,
                      0x0000001a54433, 0x0000001e3be0a, 0x0000001fb438d,
                      0x0000002000000}},
        {25, 15, 16,
         (uint64_t[]){0x0000000000067, 0x00000000001df, 0x0000000000984,
                      0x0000000003cc3, 0x0000000012d47, 0x0000000048333,
                      0x00000000eb874, 0x00000002931b2, 0x00000005ff769,
                      0x0000000b88e7c, 0x000000128d188, 0x000000194d2d2,
                      0x0000001dcc3b7, 0x0000001f9caf7, 0x0000002000000}},
        {25, 15, 16,
         (uint64_t[]){0x000000000002a, 0x000000000014d, 0x0000000000593,
                      0x000000000248a, 0x000000000c8e0, 0x000000003355d,
                      0x00000000afdeb, 0x0000000207ba7, 0x0000000501f47,
                      0x0000000a25465, 0x0000001113260, 0x0000001832fd7,
                      0x0000001d4bbe6, 0x0000001f7feda, 0x0000002000000}},
        {25, 15, 16,
         (uint64_t[]){0x000000000000d, 0x00000000000e9, 0x000000000033f,
                      0x000000000158e, 0x0000000008460, 0x0000000024321,
                      0x000000008236a, 0x000000019625e, 0x0000000425222,
                      0x00000008db285, 0x0000000f9d956, 0x0000001708cd6,
                      0x0000001cba257, 0x0000001f5d340, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x000000000009f, 0x00000000001ec, 0x0000000000c77,
                      0x00000000055e6, 0x0000000019500, 0x000000005fac0,
                      0x000000013a97e, 0x0000000366d60, 0x00000007ac47e,
                      0x0000000e30f21, 0x00000015d1b11, 0x0000001c17575,
                      0x0000001f33f32, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x000000000004f, 0x0000000000159, 0x000000000075f,
                      0x00000000035e9, 0x0000000011808, 0x0000000045f58,
                      0x00000000f1b2a, 0x00000002c4318, 0x00000006994a7,
                      0x0000000cd1aa1, 0x0000001490ede, 0x0000001b632ee,
                      0x0000001f03d1f, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000024, 0x00000000000f0, 0x000000000044f,
                      0x0000000002154, 0x000000000bfaf, 0x0000000032bd6,
                      0x00000000b8344, 0x000000023b49c, 0x00000005a2127,
                      0x0000000b81cdc, 0x000000134a711, 0x0000001a9ef5d,
                      0x0000001ecbd1d, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x000000000000f, 0x00000000000a6, 0x000000000027e,
                      0x0000000001442, 0x00000000081e0, 0x000000002481f,
                      0x000000008b45d, 0x00000001c92be, 0x00000004c6118,
                      0x0000000a43ef9, 0x00000012018c0, 0x00000019cb9b6,
                      0x0000001e8b75b, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000005, 0x0000000000072, 0x000000000016d,
                      0x0000000000c13, 0x000000000570c, 0x000000001a0fd,
                      0x00000000687a3, 0x000000016af30, 0x000000040427d,
                      0x0000000919f98, 0x00000010b977f, 0x00000018ea508,
                      0x0000001e424fa, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000001, 0x000000000004b, 0x00000000000cd,
                      0x0000000000714, 0x00000000039bd, 0x000000001272d,
                      0x000000004dc10, 0x000000011de8f, 0x000000035ad62,
                      0x00000008051e1, 0x0000000f75395, 0x00000017fc98a,
                      0x0000001deff6e, 0x0000002000000}},
        {25, 13, 18,
         (uint64_t[]){0x0000000000031, 0x0000000000074, 0x000000000040d,
                      0x00000000025cb, 0x000000000cf5d, 0x00000000396e6,
                      0x00000000df6f2, 0x00000002c83f0, 0x0000000706398,
                      0x0000000e3798b, 0x0000001703e39, 0x0000001d9437f,
                      0x0000002000000}},
        {25, 13, 18,
         (uint64_t[]){0x000000000001f, 0x0000000000042, 0x0000000000246,
                      0x000000000185f, 0x0000000009072, 0x000000002a1aa,
                      0x00000000ad3e6, 0x000000024a6b8, 0x000000061d6dc,
                      0x0000000d030dd, 0x0000001601faf, 0x0000001d2ed7e,
                      0x0000002000000}},
        {25, 13, 18,
         (uint64_t[]){0x0000000000014, 0x0000000000023, 0x0000000000136,
                      0x0000000000f94, 0x00000000063db, 0x000000001e9a5,
                      0x0000000085446, 0x00000001df6ee, 0x000000054a6da,
                      0x0000000bd98e3, 0x00000014f8e98, 0x0000001cbfa50,
                      0x0000002000000}},
        {25, 13, 18,
         (uint64_t[]){0x000000000000d, 0x0000000000012, 0x000000000009c,
                      0x00000000009c8, 0x000000000447a, 0x000000001612a,
                      0x0000000065b11, 0x00000001851e6, 0x000000048cba7,
                      0x0000000abcf87, 0x00000013ea5c5, 0x0000001c46ad5,
                      0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000001, 0x0000000000006, 0x0000000000008,
                      0x000000000004e, 0x000000000061e, 0x0000000002e7c,
                      0x000000000fc4e, 0x000000004cfc6, 0x0000000139962,
                      0x00000003e3599, 0x00000009ae911, 0x00000012d8721,
                      0x0000001bc3e71, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000001, 0x0000000000002, 0x0000000000003,
                      0x0000000000023, 0x00000000003c6, 0x0000000001f52,
                      0x000000000b2b0, 0x0000000039c96, 0x00000000fada4,
                      0x000000034d53d, 0x00000008af7db, 0x00000011c4c8c,
                      0x0000001b3791b, 0x0000002000000}},
        {25, 14, 17,
         (uint64_t[]){0x0000000000001, 0x0000000000001, 0x0000000000001,
                      0x0000000000008, 0x000000000023a, 0x0000000001524,
                      0x0000000007d76, 0x000000002af49, 0x00000000c732c,
                      0x00000002c9729, 0x00000007c0513, 0x00000010b150f,
                      0x0000001aa1d92, 0x0000002000000}},
        {25, 11, 20,
         (uint64_t[]){0x0000000000001, 0x000000000013f, 0x0000000000e18,
                      0x000000000577d, 0x000000001fa87, 0x000000009ce4b,
                      0x000000025643f, 0x00000006e1d77, 0x0000000f9f646,
                      0x0000001a03265, 0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x00000000000a3, 0x0000000000954, 0x0000000003c86,
                      0x00000000171c9, 0x000000007a943, 0x00000001f25ee,
                      0x0000000614046, 0x0000000e90d77, 0x000000195bbf3,
                      0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x000000000004b, 0x0000000000601, 0x00000000029b2,
                      0x0000000010bfc, 0x000000005ee04, 0x000000019c432,
                      0x000000055726c, 0x0000000d86b9d, 0x00000018ac332,
                      0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x0000000000020, 0x00000000003fc, 0x0000000001c0b,
                      0x000000000bf28, 0x0000000048fff, 0x0000000152bdd,
                      0x00000004a9ac4, 0x0000000c83bd0, 0x00000017f47dc,
                      0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x000000000000b, 0x0000000000279, 0x00000000012eb,
                      0x00000000087c9, 0x000000003781e, 0x000000011429c,
                      0x000000040cea2, 0x0000000b8724a, 0x0000001735d02,
                      0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x0000000000003, 0x000000000017a, 0x0000000000ca4,
                      0x0000000005f91, 0x0000000029caf, 0x00000000df5ea,
                      0x000000037f695, 0x0000000a92e6c, 0x000000167060c,
                      0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x00000000000c2, 0x000000000086c, 0x0000000004350,
                      0x000000001f141, 0x00000000b2fbf, 0x0000000300f6e,
                      0x00000009a7673, 0x00000015a4ec3, 0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x0000000000075, 0x000000000056b, 0x0000000002dd9,
                      0x0000000016f80, 0x000000008e754, 0x000000028f0b3,
                      0x00000008c70bf, 0x00000014d3786, 0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x000000000003d, 0x0000000000376, 0x0000000001f2c,
                      0x0000000010bec, 0x0000000070373, 0x000000022a836,
                      0x00000007f0c5a, 0x00000013fd2ee, 0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x0000000000017, 0x000000000022e, 0x000000000152b,
                      0x000000000c0b7, 0x00000000576a9, 0x00000001d229b,
                      0x00000007255b9, 0x00000013228e3, 0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x000000000000a, 0x0000000000153, 0x0000000000df9,
                      0x000000000890e, 0x000000004370a, 0x000000018486e,
                      0x0000000665a71, 0x0000001244048, 0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x0000000000001, 0x000000000003c, 0x000000000077c,
                      0x000000000662c, 0x0000000034223, 0x000000013dc1b,
                      0x00000005b5401, 0x0000001160e20, 0x0000002000000}},
        {25, 10, 21,
         (uint64_t[]){0x0000000000002, 0x000000000000e, 0x0000000000065,
                      0x0000000000513, 0x00000000042bf, 0x00000000270d4,
                      0x0000000105ee9, 0x0000000509f7b, 0x000000107da42,
                      0x0000002000000}},
        {25, 9, 22,
         (uint64_t[]){0x0000000000001, 0x0000000000041, 0x0000000000387,
                      0x0000000002cd8, 0x000000001cc60, 0x00000000d4d33,
                      0x000000046c999, 0x0000000f97782, 0x0000002000000}},
        {25, 8, 23,
         (uint64_t[]){0x0000000000022, 0x0000000000222, 0x0000000001dc2,
                      0x0000000015063, 0x00000000aa7b7, 0x00000003db9b0,
                      0x0000000eaf8e5, 0x0000002000000}},
        {25, 8, 23,
         (uint64_t[]){0x0000000000011, 0x0000000000141, 0x000000000134e,
                      0x000000000f17d, 0x0000000086d82, 0x000000035622e,
                      0x0000000dc6ab5, 0x0000002000000}},
        {25, 8, 23,
         (uint64_t[]){0x0000000000007, 0x00000000000b8, 0x0000000000c40,
                      0x000000000a9ae, 0x00000000692b8, 0x00000002dbf59,
                      0x0000000cdd526, 0x0000002000000}},
        {25, 8, 23,
         (uint64_t[]){0x0000000000001, 0x0000000000022, 0x00000000003ec,
                      0x00000000056e1, 0x000000004e044, 0x000000028b789,
                      0x0000000bd95a8, 0x0000002000000}},
        {25, 7, 24,
         (uint64_t[]){0x0000000000010, 0x0000000000239, 0x00000000038f1,
                      0x000000003a449, 0x00000002221a8, 0x0000000af4bd7,
                      0x0000002000000}},
        {25, 7, 24,
         (uint64_t[]){0x0000000000008, 0x0000000000136, 0x000000000242b,
                      0x000000002a92a, 0x00000001c3887, 0x0000000a109e9,
                      0x0000002000000}}}};
