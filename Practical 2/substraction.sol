//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
contract Subract
{
	
	int16 firstNo=10 ;
	int16 secondNo=3;
	

	function Sub() view public returns (int16)
	{
		int16 ans = firstNo - secondNo ;
		
	
		return ans;
	}

}

