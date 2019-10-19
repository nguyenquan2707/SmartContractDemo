pragma solidity ^0.5.11;

contract Struct {
    
    Person[] public listPerson; 
    struct Person {
        string lastName;
        string firstName;
        uint8 age;
    }
    
    function addPerson(string memory _lastName, string memory _firtName, uint8 _age) public {
        listPerson.push(Person(_lastName, _firtName, _age));
    }
}