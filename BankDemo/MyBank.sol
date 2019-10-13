pragma solidity ^0.5.1;

interface GeneralInfo {
    function checkValue(uint256 _amount) external view returns(bool);
}

contract Bank is GeneralInfo{
    uint256 private amount; // i don't want outsite the world accessing this property
    
    constructor(uint256 _amount) public {
        amount = _amount;
    }
     
    function deposit(uint256 _amount) public {
        amount += _amount;
    }
    
    function withraw(uint256 _amount) public {
        require(_amount <= amount);
        
        amount -= _amount;
    }
    
    function getBalance() public view returns(uint256) {
        return amount;
    }
    
    function loan() public view returns(bool);
}

contract MyBank is Bank(2){
    function loan() public view returns(bool) {
        return true;
    }
    
     function checkValue(uint256 _amount) public view returns(bool) {
        return getBalance() >= _amount;
    }
}