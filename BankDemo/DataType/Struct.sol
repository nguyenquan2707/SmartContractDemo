pragma solidity ^0.5.11;

contract Struct {
    uint8 public count = 0;
    Person[] public listPerson;
    
    mapping(uint8 => Person) public listMapPerson; 
    
    struct Person {
        string lastName;
        string firstName;
        uint8 age;
    }
    
    function addPerson(string memory _lastName, string memory _firstName, uint8 _age) public {
        listPerson.push(Person(_lastName, _firstName, _age));
        count+= 1;
    }
    
    function removePerson(uint8 _index) public {
       delete listPerson[_index];
       count-=1;
    }
    
    function addMapPerson(string memory _lastName, string memory _firstName, uint8 _age) public {
        listMapPerson[count] = Person(_lastName, _firstName, _age);
        count+=1;
    }
}