pragma solidity ^0.5.11;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    
    function mint() public {
        balances[tx.origin] += 1; // address of whoever call this contract
    }
}


contract MyTokens is ERC20Token{
    
}