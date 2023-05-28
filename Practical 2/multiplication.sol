//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Multiply {

	int128 firstNo ;
	int128 secondNo ;
	
	function firstNoSet(int128 x) public {
		firstNo = x;
	}
	
	function secondNoSet(int128 y) public {
		secondNo = y;
	}
	
	function multiply() view public returns (int128) {
		int128 answer = firstNo * secondNo ;
		return answer;
	}

}

