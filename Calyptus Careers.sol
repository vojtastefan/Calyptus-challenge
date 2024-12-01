// SPDX-License-Identifier:MIT
pragma solidity ^0.8.24;

contract StackContract {
    uint256[] public  stack;

    function push(uint256 value) external {
        stack.push(value);
    }

    function peek() external view returns (uint256) {
        require (stack.length > 0, "Stack is empty");
        return stack[stack.length - 1];
    }

// function pop() external returns (uint256) {
    //     require (stack.length > 0, "Stack is empty");
    //     return stack.pop();
    // }

//////////////////////////////////////////////////
// my exercise

    function pap() external returns (uint256[] memory) {
        require (stack.length > 0, "Stack is empty");
        stack.pop();
        return stack;
    }
 
}