

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