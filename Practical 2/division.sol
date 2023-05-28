//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Divide
{

	int128 firstNo ;
	int128 secondNo ;
	
	
	function firstNoSet(int64 x) public
	{
		firstNo = x;
	}
	
	
	function secondNoSet(int64 y) public
	{
		secondNo = y;
	}
	
	
	function divide() view public returns (int128)
	{
		require(secondNo > 0, "The second parameter should be larger than 0");
		int128 answer = firstNo / secondNo ;
		return answer;
	}
}

