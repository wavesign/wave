#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "keygen.h"
#include "params.h"
#include "sign.h"
#include "types.h"
#include "util/bitstream.h"
#include "util/compress.h"
#include "util/tritstream.h"
#include "verify.h"
#include "cpucycles.h"
#include "NIST-kat/rng.h"


#define ITERATIONS 10
uint64_t timekey_f[ITERATIONS];
uint64_t time_sign_f[ITERATIONS];
uint64_t time_verify_f[ITERATIONS];

void swap(uint64_t *a, uint64_t *b) {
    uint64_t t = *a;
    *a = *b;
    *b = t;
}

// A function to implement bubble sort
void bubbleSort(uint64_t arr[], int n) {
    int i, j;
    for (i = 0; i < n - 1; i++)

        // Last i elements are already in place
        for (j = 0; j < n - i - 1; j++)
            if (arr[j] > arr[j + 1])
                swap(&arr[j], &arr[j + 1]);
}


#define MSG_SIZE 32
int main() {

    printf("Ahoy Mate\n");



    uint64_t start, end;


    for (int i = 0; i < ITERATIONS; i++) {
        printf("Starting iteration %d\n", i);
        unsigned long long mlen = 32;
        size_t smlen_tmp = K;
        wave_sk_t wsk;
        wave_pk_t wpk;
        vf3_e *sig = vf3_alloc(K);
        uint8_t salt[SALT_SIZE] = {0};

        uint8_t msg[MSG_SIZE] = {0};
        randombytes(msg, MSG_SIZE);

        start = cpucycles();
        keygen(&wsk, &wpk);
        end = cpucycles();
        timekey_f[i] = end - start;


        start = cpucycles();
        sign(sig, salt, msg, mlen, &wsk);
        end = cpucycles();
        time_sign_f[i] = end - start;

        int res = 0;
        start = cpucycles();
        res = verify(sig, &smlen_tmp, salt, msg, mlen, &wpk);
        end = cpucycles();
        time_verify_f[i] = end - start;
        if(res != 1)
            exit(res);
        printf("verification ok? %d\n", (res==1));

        wave_sk_free(&wsk);
        wave_pk_free(&wpk);
        vf3_free(sig);

        printf("Finishing iteration %d\n", i);
    }

    bubbleSort(timekey_f, ITERATIONS);
    bubbleSort(time_verify_f, ITERATIONS );
    bubbleSort(time_sign_f, ITERATIONS);

    uint64_t sign_avg = 0;
    uint64_t verify_avg = 0;
    uint64_t keygen_avg = 0;
    for (int i = 0; i < ITERATIONS; i++) {
        sign_avg += time_sign_f[i];
        verify_avg += time_verify_f[i];
        keygen_avg += timekey_f[i];
    }
    printf("keygen() MEDIAN  %12lu cycles \n", timekey_f[ITERATIONS / 2]);
    printf("keygen() AVERAGE %12lu cycles \n", (keygen_avg / ITERATIONS));
    printf("keygen() LOWEST  %12lu cycles \n", timekey_f[0]);
    printf("keygen() HIGHEST %12lu cycles \n", timekey_f[ITERATIONS-1]);

    printf("sign()   MEDIAN  %12lu cycles\n", time_sign_f[ITERATIONS / 2]);
    printf("sign()   AVERAGE %12lu cycles \n", (sign_avg / ITERATIONS));
    printf("sign()   LOWEST  %12lu cycles \n", time_sign_f[0]);
    printf("sign()   HIGHEST %12lu cycles \n", time_sign_f[ITERATIONS-1]);

    printf("verify() MEDIAN  %12lu cycles \n", time_verify_f[ITERATIONS / 2]);
    printf("verify() AVERAGE %12lu cycles \n", (verify_avg / ITERATIONS));
    printf("verify() LOWEST  %12lu cycles \n", time_verify_f[0]);
    printf("verify() HIGHEST %12lu cycles \n", time_verify_f[ITERATIONS-1]);



    printf("Byte Mate\n");
    return 0;
}

