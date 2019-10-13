pragma solidity ^0.5.1;

contract Bank {
    uint256 amount;
    
    function deposit(uint256 _amount) public {
        amount += _amount;
    }
    
    function withraw(uint256 _amount) public {
        require(_amount <= amount);
        
        amount -= _amount;
    }
}

contract MyBank is Bank {
    function getAmount() public view returns(uint256) {
        return amount;
    }
    
}