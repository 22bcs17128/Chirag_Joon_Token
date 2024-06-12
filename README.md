# Project Token

The main goal of the project is to create the Token smart contract in Solidity. 
The underlying architecture for token management on the Ethereum blockchain is provided by this contract. 
Token provides a strong foundation for token issuance and maintenance by including features for minting and burning tokens. 

## Description

Token is a Solidity smart contract designed to streamline token management on the Ethereum blockchain.
With features for minting and burning tokens, it offers efficiency and reliability for various token-based applications. 
This project aims to provide a foundational framework for decentralized token operations.
The main goal of the project is to create the Token smart contract in Solidity. 
This project attempts to provide security and dependability while streamlining token operations using succinct and efficient code.

## Getting Started

### Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. 
Save the file with a .sol extension (e.g., Token.sol). 
```
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
```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar.
Making sure the "Compiler" option is set to "0.8.4" (or another compatible version), click on the "Compile Token.sol" button.

Once the code gets compiled,deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. 
Now, select the "Token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling all the functions (e.g., mint , burn).
Moving further click on the "Token" contract in the left-hand sidebar, and then click on the "mint" function followed by the "burn" function. 
Finally, click on the "transact" button to execute each function and get the output.

## Authors
Chirag Joon

joonchirag136@gmail.com
