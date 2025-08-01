Sample Solidity Code:
// Base.sol
pragma solidity ^0.8.0;

contract Base {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Not owner");
        _;
    }
}

// Derived.sol
pragma solidity ^0.8.0;
import "./Base.sol";

contract Derived is Base {
    string public data;

    function setData(string memory _data) public onlyOwner {
        data = _data;
    }
}
 
