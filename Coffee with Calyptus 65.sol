// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

//The function attempts to check if a number is prime. Can you spot the bug in the technique?
contract Caffee65 {

    function isPrime(uint n) public pure returns (bool) {
        if (n <= 1) return false;
        for (uint i = 2; i < n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
   // //////////////////// answer ///////////////////////////////////////////////
 // The function will incorrectly return true for n = 2, the only even prime number.
 // which is bullshit, while number 2 IS A PRIME NUMBER

    function isPrimeSolution(uint n) public pure returns (bool) {
        if (n == 0) return false;
        if (n == 1) return true;
        for (uint i = 2; i < n; i++) {
            if (n % i == 0) return false;
        }
        return true;
    }
}