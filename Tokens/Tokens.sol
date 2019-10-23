pragma solidity ^0.5.11;

contract MyTokens{
    
    //
    mapping(address => uint256) public balances;
    address payable wallet;
    
    constructor(address payable _wallet) public {
        wallet = _wallet;
    }
    event logBuyTokens(address indexed, uint256);
    
    function() external payable {
        buyTokens();
    }
    
    function buyTokens() public payable{ // this function will accept eth with payable keyword
        balances[msg.sender] +=1; // this address will add 1 tokens
        wallet.transfer(msg.value);
        emit logBuyTokens(msg.sender, 1);
    }
    
}