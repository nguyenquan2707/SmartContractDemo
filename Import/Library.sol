pragma solidity ^0.5.11;

contract Library {
    
    string name;
    
    function setName(string memory _name) public {
        name = _name;
    }
    function getName() public view returns(string memory) {
        return name;
    }
}