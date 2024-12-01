// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

// Can you steal funds from this CRUD smart-contract?

// This contract is intended to manage user profiles.
contract UserProfileManager {
    struct UserProfile {
        string name;
        uint256 age;
    }

    mapping(address => UserProfile) public userProfiles;

    // Function to update the user profile.
    function updateUserProfile(address profileUpdater) public {
        bytes memory func = abi.encodeWithSignature("crudProfile()");
        (bool success,) = profileUpdater.delegatecall(func);
        require(success, "Failed to update profile");
    }
}

/////////////////////////////////////////////////////////////////////////////#
// Caller can write the logic to transfer fund to them in the crudProfile() function 
// in the caller smart contract.
