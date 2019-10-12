pragma solidity ^0.5.1;

contract AddNumber {
    uint number1;
    uint number2;
    
    constructor() public {
        number1 = 0;
        number2 = 0;
    }
    
    
    function setNumber1(uint _number1) public {
        number1 = _number1;
    }
    
    function setNumber2(uint _number2) public {
        number2 = _number2;
    }
    
    function getSum() view public returns(uint) {
        return (number1 + number2);
    }
    
}