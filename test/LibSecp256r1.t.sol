// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import "forge-std/Test.sol";
import "./utils.sol";

contract LibSecp256r1Test is Test {
    address h;

    function setUp() public {
        Utils helper = new Utils();
        h = helper.getAddress("src/first.huff");
    }

    function testInv(uint256 n) public {
        (,bytes memory data) = h.call(abi.encode(n));
        assertEq(orgInv(n), abi.decode(data, (uint256)));
    }

    function orgInv(uint256 x) private pure returns(uint256 t) {
        uint256 _P = 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F;
        uint q;
        uint newT = 1;
        uint r = _P;


        assembly {
            for {} x {} {
                q := div(r, x)

                let tmp := t
                t := newT
                newT := addmod(tmp, sub(_P, mulmod(q, newT, _P)), _P)

                tmp := r
                r := x
                x := sub(tmp, mul(q, x))
            }

        }
    }
}
