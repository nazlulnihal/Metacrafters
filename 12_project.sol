// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MyToken {

    // public variables here
    string public token_name = "HUBBLE";
    string public token_abbr = "HBB";
    uint public total_supply = 10000;

    // mapping variable here
    mapping(address => uint) public Balance;

    // mint function
    function mint(address sender, uint amount) public  
    {
        Balance[sender] += amount;
        total_supply += amount;
    }

    // burn function
    function burn(address sender, uint amount) public 
    {
        if (Balance[sender] >= amount)
        {
            Balance[sender] -= amount;
            total_supply -= amount;
        }
    }

}