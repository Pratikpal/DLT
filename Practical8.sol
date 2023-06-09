// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
contract VerifySignature {
    
    
    // use this function to get the hash of any string
    function getHash(string memory str) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(str));
    }
    
    
    // take the keccak256 hashed message from the getHash function above and input into this function
    // this function prefixes the hash above with \x19Ethereum signed message:\n32 + hash
    // and produces a new hash signature
    function getEthSignedHash(bytes32 _messageHash) public pure returns (bytes32) {
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", _messageHash));
    }
function splitSignature(bytes memory sig) internal pure returns(uint8 v, bytes32 r, bytes32 s)
    {
        require(sig.length== 65);
        assembly
        {
            r:=mload(add(sig, 32))
            s:=mload(add(sig, 64))
            v:=byte(0,mload(add(sig, 96)))
        }
        return(v,r,s);
    }
    // input the getEthSignedHash results and the signature hash results
    // the output of this function will be the account number that signed the original message
    function verify(bytes32 _ethSignedMessageHash, bytes memory _signature) public pure returns (address) 
    {
        (uint8 v, bytes32 r, bytes32 s) =splitSignature(_signature);
        return ecrecover(_ethSignedMessageHash, v, r, s);
    }
}    
