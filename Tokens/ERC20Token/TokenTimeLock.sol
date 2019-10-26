pragma solidity ^0.5.11;

import "./Token.sol";
contract TokenTimeLock {
    Token public token;
    address public beneficiary;
    uint256 public releaseTime;
    
    constructor(Token _token, address _beneficiary, uint256 _releaseTime) public{
         require(_releaseTime > block.timestamp);
         token = _token; //contract address : 0x08970FEd061E7747CD9a38d680A601510CB659FB
         beneficiary = _beneficiary; // ex: 0x14723A09ACff6D2A60DcdF7aA4AFf308FDDC160C
         releaseTime = _releaseTime;
     }
     
     function release() public {
         require(block.timestamp >= releaseTime);
         uint256 amount = token.balanceOf(address(this));//this refer to TokenTimeLock contract, 
         require(amount > 0);
         token.transfer(beneficiary, amount);
     }
}