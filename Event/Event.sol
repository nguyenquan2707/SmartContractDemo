pragma solidity ^0.5.11;

contract TransactionDemo {
    
    event logAddress(address);
    event logValue(uint256);
    event gasPrice(uint256);
    event senderAndOrigin(address, address);
    event sig(bytes4);
    event coinbase(address);
    event difficul(uint);
    event gasLimit(uint);
    event blockNumber(uint);
    event timestamp(uint);
    event data(bytes);
    
    // require more tan 1 ether
    modifier validValue() {
        assert(msg.value >= 1 ether);
        _;
    }
    
    function() external payable validValue {
        emit logAddress(msg.sender);
        emit gasPrice(tx.gasprice);
        emit senderAndOrigin(tx.origin, msg.sender);
        emit sig(msg.sig);
        emit coinbase(block.coinbase);
        emit difficul(block.difficulty);
        emit gasLimit(block.gaslimit);
        emit blockNumber(block.number);
        emit timestamp(block.timestamp);
        emit logValue(msg.value);
        emit data(msg.data);
    }
    
} 