// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import {Test} from "forge-std/Test.sol";

contract FirstTest is Test {
    address h;

    function setUp() public {
        string[] memory args = new string[](3);
        args[0] = "huffc";
        args[1] = "src/first.huff";
        args[2] = "-b";

        (bytes memory bytecode) = vm.ffi(args);

        assembly {
            let adr := create(0, bytecode, mload(bytecode))
            if iszero(adr) { revert(0x00, 0x00) }
            sstore(h.slot, adr)
                    }

    }

    event log(bytes str);
        event log(uint256 len);


    function testInv() public {

        emit log(uint256(uint160(h)));
        // (bool s, bytes memory data) = h.call(abi.encode(5));
        // require(s);
        // emit log(data);
    }
}
