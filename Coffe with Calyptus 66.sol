// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// What will calling test() return?

contract Coffe66 {
    uint8 _myNumber = 42;

    function test() public view returns (uint8 number) {
        uint8 myNumber = _myNumber;
        //return myNumber;
    }
}
