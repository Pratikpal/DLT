// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract DemoContract{
    
    uint storedData;
    
    function set(uint x) public{
    
        storedData = x;
        uint i= 0;
    
        do{
            storedData = storedData+i;
            i++;
        }while(i != 5);
      
    }
    
    function get() public view returns (uint){
        return storedData;
    }
    
}
