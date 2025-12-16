// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UTIL {
    mapping(address => uint256) private balances;

    event Transfer(address indexed from, address indexed to, uint256 value);

    function balanceOf(address user) external view returns (uint256) {
        return balances[user];
    }

    function _mint(address user, uint256 amount) internal {
        balances[user] += amount;
        emit Transfer(address(0), user, amount);
    }

    function transfer(address to, uint256 amount) external {
        require(balances[msg.sender] >= amount, "UTIL: insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }
}
