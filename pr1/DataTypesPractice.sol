// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.12;

import "./IDataTypesPractice.sol";

contract DataTypesPractise is IDataTypesPractice {
    int256 defaultInt256 = 10**15;
    uint256 defaultUint256 = 10**15;
    string defaultStr = "Hello World!";
    uint256[5] defaultArrWithCap = [1,2,3,4,5];
    uint256[] defaultArr = new uint256[](2);
    bool defaultBool = true;
    uint8 defaultUint8 = 4;
    int8 defaultInt8 = -4;
    
    address defaultAddress;
    bytes32 defaultBytes32;
    
    constructor() {
        defaultAddress = address(msg.sender);
        defaultBytes32 = keccak256(abi.encodePacked(defaultAddress));
    }

    function getUint256() external view returns(uint256) {
        return defaultUint256;
    }

    function getIint8() external view returns(int8) {
        return defaultInt8;
    }

    function getUint8() external view returns(uint8) {
        return defaultUint8;
    }

    function getBool() external view returns(bool) {
        return defaultBool;
    }

    function getAddress() external view returns(address) {
        return defaultAddress;
    }

    function getBytes32() external view returns(bytes32) {
        return defaultBytes32;
    }

    function getArrayUint5() external view returns(uint256[5] memory) {
        return defaultArrWithCap;
    }

    function getArrayUint() external view returns(uint256[] memory) {
        return defaultArr;
    }

    function getString() external view returns(string memory) {
        return defaultStr;
    }

    function getInt256() external view returns(int256) {
        return defaultInt256;
    }

    function getBigUint() external pure returns(uint256) {
        uint256 v1 = 1;
        uint256 v2 = 2;

        unchecked { return v1 - v2; }
    } 
}
