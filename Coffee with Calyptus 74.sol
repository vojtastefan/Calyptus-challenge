// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

// Will the outputs of encodeWithPacked() and encodeWithType() differ?👇

contract MyContract {
    function encodeWithPacked() public pure returns (bytes memory) {
        uint8 smallNumber = 42;
        bool flag = true;
        return abi.encodePacked(smallNumber, flag) ;
    }

    function encodeWithType() public pure returns (bytes memory) {
        uint8 smallNumber = 42;
        bool flag = true;
        return abi.encode(smallNumber, flag) ;
    }
}
// Answer: Yes, because encodePacked does not pad the values smaller than 32 bytes whereas encode does.