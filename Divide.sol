pragma solidity ^0.5.1;

contract Divide{
    uint256 number1;
    uint256 number2;
    
    constructor() public {
        number1 = 1;
        number2 = 1;
    }
    
    function setNumber1(uint256 _number1) public{
        if(_number1 == 0) {
            _number1 = 1;
        }
        number1 = _number1;
    }
    
    function setNumber2(uint256 _number2) public {
        if(_number2 == 0) {
            _number2 = 1;
        }
        number2 = _number2;
    }
    
    function getDivide() view public returns(uint256) {
        return(number1/number2);
    }
}