//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Whitelist{
    uint8 public maxNumberOfWhishlist;
    mapping(address => bool) whitelistAddresses;
    uint8 numAddressWhitelist;

    constructor(uint8 maxNumber)
    {
        maxNumberOfWhishlist= maxNumber;
    }
    


    function addAddresstoWhishlist() public{
        require(!whitelistAddresses[msg.sender],"sender is already been whitelisted");
        require(numAddressWhitelist < maxNumberOfWhishlist,"More addresses can't be added limit reached");
        whitelistAddresses[msg.sender]=true;
        numAddressWhitelist+=1;
    }
}