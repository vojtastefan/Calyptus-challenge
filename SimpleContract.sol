// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleCont {
    // Private variable, not accessible outside this contract
    uint256 private secretNumber;

    constructor(uint256 _secretNumber) {
        secretNumber = _secretNumber; // Initialize the private variab
    }

    // Function to update the private variable
    function updateSecretNumber(uint256 _newSecretNumber) public {
        secretNumber = _newSecretNumber;
    }
}
