// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    // Variables to store token details
    string public _name;
    string public _symbol;
    uint256 public _totalSupply;

    // Map addresses to token balances
    mapping(address => uint256) public balance;

    // Function to create new tokens
    function mint(address acc, uint256 amt) public {
        _totalSupply += amt;
        balance[acc] += amt;
    }

    // Function to burn existing tokens
    function burn(address acc, uint256 amt) public {
        require(balance[acc] >= amt, "Not enough balance left.");
        _totalSupply -= amt;
        balance[acc] -= amt;
    }
}
