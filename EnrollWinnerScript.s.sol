// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../src/WizardsEnigma.sol";
import "forge-std/Script.sol";
import "forge-std/console.sol";

contract MagicCaller {
    function magicFunction() external pure returns (uint256) {
        return 999;
    }
}

contract EnrollWinnerScript is Script {
    WizardsEnigma public wizardsEnigmaInstance =
        WizardsEnigma(0x76c8675E20f5efC8FfF6207c9A157E1778e2fD2e);

    function run() external {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));

        // Compute the function selector
        bytes4 magicFunctionSelector = bytes4(
            keccak256(bytes("MAGIC_FUNCTION_SELECTOR"))
        );

        wizardsEnigmaInstance.enrollWinner(
            magicFunctionSelector,
            vm.envString("USERNAME")
        );

        vm.stopBroadcast();
    }
}
