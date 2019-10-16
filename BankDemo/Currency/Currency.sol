pragma solidity >=0.5.0 < 0.7.0;

contract Currency {
    address public owner;
    
    mapping(address => uint256) balances;
    
    event Send(address _from, address _to, uint256 _amount);
    event Mint(address receiver, uint256 amount);
    
    constructor() public {
        owner = msg.sender;
    }
    
    function mint(address receiver, uint256 amount) public {
        require(msg.sender==owner);
        require(balances[owner]+amount < 10000);
        require(amount<10000);
        balances[receiver]+=amount;
        emit Mint(receiver, amount);
    }
    
    function send(address _receiver, uint256 _amount) public{
        require(balances[owner] >= _amount, "Insuficient fund");
        balances[_receiver]+=_amount;
        balances[owner]-=_amount;
        emit Send(owner, _receiver, _amount);
    }
    
    function sendFrom(address _from, address _receiver, uint256 _amount) public {
        require(balances[_from] >= _amount, "Insificient fund");
        balances[_receiver]+= _amount;
        balances[_from]-= _amount;
        emit Send(_from, _receiver, _amount);
    }
}