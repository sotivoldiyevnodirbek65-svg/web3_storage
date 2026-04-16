// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DilshodaStorage {
    string private savedMessage;
    event MessageChanged(address indexed user, string newMessage);

    // Ma'lumotni saqlash
    function updateMessage(string memory _text) public {
        savedMessage = _text;
        emit MessageChanged(msg.sender, _text);
    }

    // Ma'lumotni o'qish
    function getMessage() public view returns (string memory) {
        return savedMessage;
    }
}
