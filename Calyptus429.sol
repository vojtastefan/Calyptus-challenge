//SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

// What's the primary gas efficiency issue in this sorting contract? ⛽️

contract SortingContract {
    function bubbleSort(uint256[] memory arr) public pure returns (uint256[] memory) {
        uint256 n = arr.length;
        for (uint256 i = 0; i < n - 1; i++) {
            for (uint256 j = 0; j < n - i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    (arr[j], arr[j + 1]) = (arr[j + 1], arr[j]) ;
                }
            }
        }
        return arr;
    }
}