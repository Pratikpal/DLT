// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract Persons{
    
    unint[] _ids;
    mapping(uint=> string) _names;
    mapping(uint => bool) _exists;
    function setPerson(uint _id, string memory name) public{
        if(!_exists[id]){
            _ids.push(id);
            _exists[id] = true;
            _names[id] = name;
        }
        function getKeys() public vuew returns(uint[] memory){
            returns _ids;
        }
    }
    
}
