pragma solidity ^0.5.11;

import { intExtended } from "browser/intExtended.sol";
contract  UsingOurLibrary {
    
    function setIncrement(uint _value) public view returns(uint) {
        return intExtended.increment(_value);
    }
    
    function setIncrementByValue(uint _value, uint _increment) public view returns(uint) {
        return intExtended.incrementByValue(_value, _increment);
    }
}