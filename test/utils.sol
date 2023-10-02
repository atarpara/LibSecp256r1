// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";

// huff-runner
import {compileWithVersion, create, EvmVersion} from "huff-runner/src/Deploy.sol";

using {compileWithVersion} for Vm;
using {create} for bytes;

contract Utils is Test {
    function getCreationCode(string memory str) public returns (bytes memory) {
        return vm.compileWithVersion(str, EvmVersion.Paris);
    }

    function getAddress(string memory str) public returns (address) {
        return getCreationCode(str).create({value: 0});
    }
}
