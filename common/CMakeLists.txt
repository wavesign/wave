cmake_minimum_required(VERSION 3.0)
project(wave C ASM)

set(CMAKE_C_STANDARD 99)

add_compile_options(-Wall)
#add_compile_options(-g)
add_compile_options(-O3)
add_compile_options(-march=native)
add_compile_options(-fsplit-stack)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ")

find_package(OpenSSL REQUIRED)
add_custom_command(
        OUTPUT util/compress.c
        COMMAND ./gen_trit_comp.py > util/compress.c
        DEPENDS gen_trit_comp.py
)

add_executable(verify_test verify_test.c
        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c api.h
        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
        util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
target_link_libraries(verify_test OpenSSL::Crypto)
target_include_directories(verify_test PRIVATE .)

add_executable(benchmark benchmark.c
        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c
        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
        util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
target_link_libraries(benchmark OpenSSL::Crypto)
target_include_directories(benchmark PRIVATE .)


add_executable(benchmark_speed benchmark_speed.c
        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c NIST-kat/rng.c NIST-kat/rng.h
        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
        util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
target_link_libraries(benchmark_speed OpenSSL::Crypto)
target_include_directories(benchmark_speed PRIVATE .)

add_executable(benchmark_time benchmark_time.c
        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c NIST-kat/rng.c NIST-kat/rng.h
        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
        util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
target_link_libraries(benchmark_time OpenSSL::Crypto)
target_include_directories(benchmark_time PRIVATE .)


add_executable(PQCgenKAT_sign PQCgenKAT_sign.c
        NIST-kat/rng.c NIST-kat/rng.h
        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c api.h
        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
        NIST-kat/rng.c NIST-kat/rng.h util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
target_link_libraries(PQCgenKAT_sign OpenSSL::Crypto)
target_include_directories(PQCgenKAT_sign PRIVATE NIST-kat .)
target_compile_definitions(PQCgenKAT_sign PUBLIC NIST_KAT)

#add_executable(batch_sign batch_sign.c
#        keygen.c keygen.h sign.c sign.h verify.c verify.h cpucycles.h api.c api.h
#        fq_arithmetic/mf3.c fq_arithmetic/mf3.h fq_arithmetic/vf3.c fq_arithmetic/vf3.h fq_arithmetic/vf2.c fq_arithmetic/vf2.h
#        util/bitstream.c util/bitstream.h util/tritstream.c util/tritstream.h util/compress.h util/compress.c
#        prng/prng.c prng/prng.h prng/fips202.c prng/fips202.h
#        util/bitstream.c util/bitstream.h util/djbsort_portable.c util/djbsort.h util/gauss.c util/gauss.h util/hash.c util/hash.h util/popcount.h
#        wave/decode.c wave/decode.h  wave/randperm.c wave/randperm.h wave/reject.c wave/reject.h wave wave/sample.c wave/sample.h util/mf3permut.h util/mf3permut.c)
#target_link_libraries(batch_sign OpenSSL::Crypto)
#target_include_directories(batch_sign PRIVATE .)
#target_compile_definitions(batch_sign PUBLIC BATCH_SIGN)
#target_compile_definitions(batch_sign PUBLIC CHECK)
