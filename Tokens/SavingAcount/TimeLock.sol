pragma solidity ^0.5.11;

//lock some  crytocurrenies in this contract
contract TimeLock {
    // Who can withdraw
    //how much?
    // when
    
    address beneficiary;
    uint256 releaseTime;
    constructor(address _beneficiary, uint256 _releaseTime) public {
        beneficiary = _beneficiary;
        releaseTime = _releaseTime;
    }
}