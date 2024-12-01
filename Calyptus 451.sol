//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// What are the default values of the below-mentioned variables?

contract Calyptus451{
    bool public _bool;
    string public _string;
    int public _int;
    uint public _uint;
    address public _address;

    enum ActionSet {Buy, Hold, Sell}
    ActionSet public _enum;
}