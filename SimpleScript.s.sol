/*  // SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console2} from "forge-std/Script.sol";

contract SimpleScript is Script {
    function run(uint256 newSecretNumber) external {
        vm.startBroadcastbroadcast();
        SimpleContract(0x74cd37dfcd91a4eb294213b370efc3fb03a45300)
            .updateSecretNumber(newSecretNumber);
    }
} */
