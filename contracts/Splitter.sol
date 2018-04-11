
pragma solidity ^0.4.0;

contract SplitBalance{

    address a1;
    address a2;
mapping(address => uint) public balances;
    function SplitBalance(address _a1, address _a2) public{
        a1 = _a1;
        a2 = _a2;
    }

    function withdraw() public payable {
        uint splitValue = msg.value;

        //only withdraw in even amounts to avoid rounding loss
        if (splitValue % 2 == 1)   //money is an odd number, make it even
           splitValue = splitValue - 1; 

        a1.transfer(splitValue/2);
        a2.transfer(splitValue/2);
    }

    function updateAddress1(address newAddress) public {
        if(msg.sender != a1)
           revert();
        a1 = newAddress;
    }

    function updateAddress2(address newAddress) public {
        if(msg.sender != a2)
           revert();
        a2 = newAddress;
    }

    //fallback function that allows ether to be sent to it
    function() payable public { }
}