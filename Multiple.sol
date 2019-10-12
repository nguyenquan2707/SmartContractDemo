pragma solidity ^0.5.1;

contract Multiple {
    uint256 number1;
    uint256 number2;
    
    constructor() public{
        number1 = 0;
        number2 = 0;
    }
    
    function setNumer1(uint256 _number1) public {
        number1 = _number1;
    }
    
    function setNumer2(uint256 _number2) public{
        number2 = _number2;
    }
    
    function getMultiple() view public returns(uint256) {
        return (number1*number2);
    }
}