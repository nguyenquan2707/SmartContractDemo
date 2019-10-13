pragma solidity ^0.5.1;

interface GeneralInfo {
    //abstract method
    function checkValue(uint256 _amount) external view returns(bool);
    //abstract method
    function loan() external view returns(bool);
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
    
    // check withraw value compare with existing value
    function checkValue(uint256 _amount) public view returns(bool) {
        return amount >= _amount;
    }
    
    // only for loan in case they have amout > 0
    function loan() public view returns(bool) {
        return amount > 0;
    }
}

contract MyBank is Bank(2){
}