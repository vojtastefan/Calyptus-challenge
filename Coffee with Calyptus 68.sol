// SPDX-License-Identifier: MIT
pragma solidity 0.7.0;

// Can you find out what can go wrong with this smart contract?

contract Token {
    mapping (address => uint256) public balances;

    function transfer(address _to, uint256 _amount) public {
        require (balances[msg.sender] - _amount >= 0, "Insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;  
    }
}

////////////////////////////////////////////////////////////////
/////////////// It can underflow while transfer  ///////////////
////////////////////////////////////////////////////////////////


