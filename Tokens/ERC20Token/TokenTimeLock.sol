pragma solidity ^0.5.11;

import "./Token.sol";
contract TokenTimeLock {
    Token public token;
    address public beneficiary;
    uint256 public realeseTime;
    
    constructor(Token _token) public{
         token = _token;
     }
}