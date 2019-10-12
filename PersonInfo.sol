pragma solidity ^0.5.1;

contract PersonInfo {
    string name;
    uint8 age;
    
    constructor() public {
        name = "";
        age = 0;
    }
    
    function setName(string memory _name) public {
        name = _name;
    }
    
    function setAge(uint8 _age) public {
        if(_age <= 0) {
            _age = 0;
        }
        age = _age;
    }
    
    function getFullInfo() view public returns (string memory, uint8) {
        return (name, age);
    }
}