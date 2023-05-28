//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract hashtest {
    function hash_keccak(string memory _text) public pure returns (bytes32) {
        return keccak256(abi.encode(_text));
    }
}


pragma solidity ^0.8.18;


contract hashtest {
    function recoverAddr(bytes32 msgHash, uint8 v, bytes32 r, bytes32 s) public pure returns (address) {
        return ecrecover(msgHash, v, r, s);
    }
}
