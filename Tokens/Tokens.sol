pragma solidity ^0.5.11;

contract ERC20Token {
    string public name;
    mapping(address => uint256) balances;
    
    function mint() public {
        balances[msg.sender] ++;
    }
}


contract MyTokens{
    
    mapping(address => uint256) public balances;
    address payable wallet;
    address token;
    
    constructor(address payable _wallet, address _token) public {
        wallet = _wallet;
        token = _token;
    }
    event logBuyTokens(address indexed, uint256);
    
    function() external payable {
        buyTokens();
    }
    
    function buyTokens() public payable{ // this function will accept eth with payable keyword
     // how to call other contract in
     // need address of other contract when it was deployed, then we can call mint() function
        ERC20Token token = ERC20Token(address(token)); // add address to other contract
        wallet.transfer(msg.value);
        emit logBuyTokens(msg.sender, 1);
    }
    
}