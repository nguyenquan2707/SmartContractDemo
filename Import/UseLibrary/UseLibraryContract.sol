pragma solidity ^0.5.11;

library Match {
    function divide(uint256 a, uint256 b) public pure returns(uint256) {
        require( b > 0 );
        return a/b;
    }
}

contract UseLibraryContract {
    function calculator(uint256 _value1, uint256 _value2) public returns (uint256) {
       return Match.divide(_value1,_value2);
    }
}