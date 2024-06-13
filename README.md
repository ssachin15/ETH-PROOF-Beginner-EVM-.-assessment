# My Token
This solidity program demonstraties the creation ,minting and burning of a custom cryptocurrency token 
named"dragonball".The purpose of this program is to provide an introducion to creating and managing token 
on the ethereum blockchain.
# Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract includes functionalities to manage token details, mint new tokens, and burn existing tokens. 
It serves as an introductory project for those new to Solidity and Ethereum development, providing a foundation for more complex token contracts.
## Getting Started

### Executing Program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at [Remix](https://remix.ethereum.org/).

1. *Create a new file:*
    - Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar.
    - Save the file with a .sol extension (e.g., MyToken.sol).
    - Copy and paste the following code into the file:
    - pragma solidity ^0.8.4;
````


// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken {

    // Public variables
    string public tokenName = "DragonBall";
    string public tokenAbbrv = "DB";
    uint public tokenSupply;

    // Mapping variable
    mapping(address => uint) public balances;

    // Mint function
    function mint(address _adrress, uint amount) public {
        tokenSupply += amount;
        balances[ _adrress] += amount;
    }

    // Burn function
    function burn(address  _adrress, uint amount) public {
        if (balances[ _adrress] >= amount) {
            tokenSupply -= amount;
            balances[ _adrress] -= amount;
        } else {
            revert("Insufficient balance to burn");
        }
    }
}
````
2. *Compile the code:*
    - Click on the "Solidity Compiler" tab in the left-hand sidebar.
    - Ensure the "Compiler" option is set to "0.8.18" (or another compatible version).
    - Click on the "Compile MyToken.sol" button.

3. *Deploy the contract:*
    - Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
    - Select the "MyToken" contract from the dropdown menu.
    - Click on the "Deploy" button.

4. *Interact with the contract:*
    - Once the contract is deployed, you can interact with it by calling the mint and burn functions.
    - Click on the "MyToken" contract in the left-hand sidebar.
    - Use the mint function to increase the total supply and balance of a specified address.
    - Use the burn function to decrease the total supply and balance of a specified address, ensuring the balance is sufficient before burning.

## Authors

*Sachin*  
sachinsingh15200410@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.


