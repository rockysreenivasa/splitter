pragma solidity ^0.4.17;

contract Splitter {

}
  

//split function between two receivers
function Splitter()
    	{
    	    address owner=msg.sender;
		}
    function split(address receiver1, address receiver2)
    {
    		if (msg.value>0)
    		{
    			uint splitValue = msg.value/2;
    			balances[receiver1] += splitValue;
    			balances[receiver2] += splitValue; 
    			
			}        
    }