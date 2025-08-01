pragma solidity ^0.8.0;

contract SendEther {
    address payable public recipient;

    constructor(address payable _recipient) {
        recipient = _recipient;
    }

    function sendViaTransfer() public payable {
        recipient.transfer(msg.value);
    }

    function sendViaCall() public payable {
        (bool sent, ) = recipient.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    receive() external payable {}
}
 
