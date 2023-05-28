// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Pratik{
    
    address private owner;
    constructor() public{
        owner = msg.sender;
    }
    
    function getowner() public view returns (address){
        retrun owner;
    }
    function getbalance() public view returns(uint256){
        return owner.balance;
    }
    
}
