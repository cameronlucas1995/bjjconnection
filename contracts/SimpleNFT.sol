// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SimpleNFT {
    event Mint(address indexed to, uint256 indexed tokenId);
    uint256 private _id;

    function mint() external returns (uint256) {
        _id += 1;
        emit Mint(msg.sender, _id);
        return _id;
    }
}
