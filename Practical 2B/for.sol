// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DemoContract{
    uint storedData;
    function set(uint x) public{
        storedData = x;
        uint i;
        for (i=0; i !=5; i++){
            storedData = storedData + i;
        }
    }
    function get() public view returns (uint){
        return storedData;
    }
    
}
