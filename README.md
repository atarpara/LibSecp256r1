## Secp256r1 Curve Library In Huff

This repo contains a Huff contract of the basic curve operation of the secp256r1 curve.

> **Note**
>
> These contracts are **unaudited** and are not recommended for use in production.
>
> The main usage of these contracts is to find out how much gas can be saved by using a Huff EntryPoint.

## Gas calculations

TODO

## Todo


 - [x] inverse modulo
 - [x] ec addition
 - [x] ec double
 - [x] ec multiply
 - [ ] verify signature for EIP-7212
 - [ ] Fix bugs
 - [ ] Gas estimations

## Acknowledgements


- [LibSecp256k1](https://github.com/chronicleprotocol/scribe/blob/main/src/libs/LibSecp256k1.sol)
- [py_ecc](https://github.com/ethereum/py_ecc/blob/master/py_ecc/secp256k1/secp256k1.py)
- [Huffmate](https://github.com/huff-language/huffmate)
- [Huff](https://huff.sh)

## Disclaimer

_These smart contracts are being provided as is. No guarantee, representation or warranty is being made, express or implied, as to the safety or correctness of the user interface or the smart contracts. They have not been audited and as such there can be no assurance they will work as intended, and users may experience delays, failures, errors, omissions, loss of transmitted information or loss of funds. The creators are not liable for any of the foregoing. Users should proceed with caution and use at their own risk._
