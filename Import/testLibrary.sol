pragma solidity ^0.5.11;

import "browser/Library.sol";

contract testLibrary is Library {
    function callFunction() public view returns(string memory) {
        return Library.getName();
    }
}