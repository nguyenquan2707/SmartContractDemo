pragma solidity ^0.5.11;

//lock some  crytocurrenies in this contract
contract TimeLock {
    // Who can withdraw
    //how much?
    // when
    
    address  payable public beneficiary;
    uint256 releaseTime;
    constructor(address payable _beneficiary, uint256 _releaseTime) public {
        require(_releaseTime > block.timestamp);
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }
    
    function release() public {
        require(block.timestamp > releaseTime);
        address(beneficiary).transfer(address(this).balance);// transfer to beneficiary by balance of this smart contract
    }
}