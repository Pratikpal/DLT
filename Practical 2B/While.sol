// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DemoContract{
    
    uint storedData;
    
    function set(uint x) public{
    
        storedData = x;
        uint i= 0;
    
        while(i != 5){
            storedData = storedData+i;
            i++;
        }
      
    }
    
    function get() public view returns (uint){
        return storedData;
    }
    
}
