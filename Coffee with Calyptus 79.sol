// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// What can go wrong with this airdrop smart-contract?

contract Airdrop {
    ERC20 public token;
    address[] public users;

    constructor(address _tokenAddress, address[] memory _users) {
        token = ERC20(_tokenAddress);
        users = _users;
    }

    function airdrop() public {
        for (uint256 i = 0; i <= users.length; ++i) {
            token.transfer(users[i], 1 ether);
        }
    }
}

// "i" should be less than user.length.
