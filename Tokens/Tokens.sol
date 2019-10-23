pragma solidity ^0.5.11;

contract ERC20Token {
    string public name;
    mapping(address => uint256) public balances;
    
    function mint() public {
        balances[tx.origin] += 1; // address of whoever deploy this contract
    }
}


contract MyTokens{
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
     // need address of ERC20TOken contract when it was deployed ex: contract address : 0x692a70d2e424a56d2c6c27aa97d1a86395877b3a
     // then in MyTokens we pass: first argument wallet address:  "0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c"
     //second argument contract address: "0x692a70d2e424a56d2c6c27aa97d1a86395877b3a"
     // then we can call mint() function
        ERC20Token _token = ERC20Token(address(token)); // add address to other contract
        _token.mint();
        wallet.transfer(msg.value);
        emit logBuyTokens(msg.sender, 1);
    }
    
}