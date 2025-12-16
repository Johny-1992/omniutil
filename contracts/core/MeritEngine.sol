// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "./UTIL.sol";

contract MeritEngine is UTIL {

    event MeritConverted(address indexed user, uint256 merit, uint256 util);

    function convertMeritToUTIL(
        address user,
        uint256 meritScore,
        uint256 partnerRate
    ) external {
        uint256 utilAmount = meritScore * partnerRate;
        _mint(user, utilAmount);
        emit MeritConverted(user, meritScore, utilAmount);
    }
}
