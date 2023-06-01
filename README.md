# Wave - Code-Based Post-Quantum Signature 

Wave is a digital signature based on linear codes. This repository contains the reference implementation for the signature.

Wave has the most compact signatures in the code-based family. 

More information go to: http://wave-sign.org/

# Requirements
To compile the code you will need: 
OpenSSL
and
Cmake - Version 3.0+

# How to compile
```
git clone https://github.com/wavesign/wave.git
```
then just go to the folder 
```
cd wave
```
and perform the following actions:
```
cmake . 
```
and
```
make 
```
# How to run

After a sucessfull compilation, it will generate three binaries:
- verification_test -> Binary to run one time the signature and verification of Wave.
- benchmark -> Binary to run 10 iterations and save the number of cycles. 
- PQC_GenKat -> Binary to generate the Known Answer Tests (KAT) from NIST. 


