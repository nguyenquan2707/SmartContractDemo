pragma solidity ^0.5.11;

contract  DataType {
    int8 value = -128; // from -128 -> 127
    int16 value2 = -200; //
    int24 value3;
    
    uint8 value8 = 255; // from 0 -> 255
    event index(uint8);
    
    //array
    uint8[] public arrayInt = [1, 2, 10];
    function getArray() public view returns(uint8[] memory) {
        return arrayInt;
    }
    
    function getArrayAtIndex(uint8 _index) public view returns (uint8) {
        require(_index >=0 && _index <3);
        return arrayInt[_index];
    }
    
    byte byteValue; // from 0 -> 32
    bytes bytesValue = "0x3333";
    bytes8 byteValue32;
    function getBytes() public view returns(bytes memory){
        return bytesValue;
    }
    
    //enum
    enum State {Waiting, Active, Destroy}
    
    State public state;
    
    constructor() public {
        state = State.Waiting;
    }
    function active() public {
        state = State.Active;
    }
    
    function destroy() public {
        state = State.Destroy;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }
    
    function isDestroy() public view returns(bool) {
        return state == State.Destroy;
    }
    
}