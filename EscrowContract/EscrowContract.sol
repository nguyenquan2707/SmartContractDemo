pragma solidity ^0.5.11;

 contract EscrowContract {
     address public agent;
     mapping(address => uint256) public deposits;
     
     constructor() public {
         agent == msg.sender;
     }
     
     function deposist(address payee) public payable {
         require(msg.sender == agent);
         deposits[payee] = deposits[payee] + msg.value;
     }
     
     function withdraw(address payable payee) public {
         require(msg.sender == agent);
         uint256 amount = deposits[payee];
         deposits[payee] = 0;
         payee.transfer(amount);
     }
 }