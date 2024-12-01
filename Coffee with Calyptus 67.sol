// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

// What would you change in the below price-feed consumer contract?
//import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract ChainlinkPriceConsumer {
    IAggregatorV3Interface public priceFeed;
    uint256 public price;

    constructor(address aggregatorAddress, uint256 _staleTime) {
        priceFeed = AggregatorV3Interface(aggregatorAddress);
    }

    function updatePrice() external {
        (, int256 answer,,,) = priceFeed.latestRoundData();

        price = uint256(answer);
    }
}
//////////////////////////// ANSWER   ////////////////////////////
/*
Chainlink price feed latestRoundData is used to retrieve price feed from chainlink. 
One needs to make sure that the answer is not negative and price is not stale.
*/