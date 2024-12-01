//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Guess the password 👇

contract Challenge {

    function getPassword() public pure returns (uint , uint256 ,uint ,uint ) {
        uint256 result = 0xbad + 0xface + 0xdeaf + 0xace;
        
        uint256 result1 = 0xbad;
        uint256 result2 = 0xbad + 0xface;
        uint256 result3 = 0xbad + 0xface + 0xdeaf;
        return (result, result1,result2,result3);
    }
}