// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract ForceFeed {
    // Custom errors
    error BalanceNotIncreased();

    // Mapping to store winners
    mapping(address participant => string userId) public bookOfWinners;

    // Variable to store the last noted balance
    uint256 private lastBalance;

    constructor() {
        // Initialize the lastBalance with the current balance (likely to be 0 at deployment)
        lastBalance = address(this).balance;
    }

    // Function to check the balance and update winners
    function checkBalanceAndRecordWinner(string memory userId) public {
        // Check if the current balance is greater than the last noted balance
        if (address(this).balance <= lastBalance) {
            revert BalanceNotIncreased();
        }

        // Record the caller in the book of winners
        bookOfWinners[msg.sender] = userId;

        // Update the lastBalance to the current balance
        lastBalance = address(this).balance;
    }
}

// I will add following contract wit selfdestruct,
// deploy it with some none zero amout to sepolia testnet
// and call the kill() function with specific address of the ForceFeed contract
contract Kill {
    constructor() payable {}

    function kill(address _addr) external payable {
        selfdestruct(payable(_addr));
    }
}
