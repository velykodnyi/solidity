// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

import "@openzeppelin/contracts/access/Ownable.sol";

import "./IDataStructurePractice.sol";

contract DataStructurePractice is IDataStructurePractice, Ownable {
    mapping (address => User) private users;

    function setNewUser(address _userAdr, User calldata _newUser) external onlyOwner {
        users[_userAdr] = _newUser;
    }

    function getUser(address _user) external view returns(User memory) {
        return users[_user];
    }

    function getMyInfo() external view returns(User memory) {
        return this.getUser(msg.sender);
    }
}
