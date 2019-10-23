pragma solidity ^0.5.11;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    constructor(string memory _name) public {
        name = _name;
    }
    
    function mint() public {
        balances[tx.origin] += 1; // address of whoever call this contract
    }
}


contract MyTokens is ERC20Token{
    string public symbol;
    //the way we call parent constructor, that easy
    constructor (string memory _name, string memory _symbol) ERC20Token(_name) public {
        symbol = _symbol;
    }
    
}