pragma solidity ^0.5.11;

import "./Token.sol";
contract TokenTimeLock {
    Token public token;
    address public beneficiary;
    uint256 public releaseTime;
    
    constructor(Token _token, address _beneficiary, uint256 _releaseTime) public{
         require(releaseTime > block.timestamp);
         token = _token; //contract address : 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a
         beneficiary = _beneficiary;
         releaseTime = _releaseTime;
     }
     
     function release() public {
         
     }
}