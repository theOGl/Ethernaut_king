// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {KingMaker} from "../src/King.sol";

contract KingScript is Script {

    address constant TARGET = 0x05d15eCBcd730Cc0538DF635Cc76AF12CA645d64;
    uint constant PLAYMONEY = 0.001 ether;

    function setUp() public {

    }

    function run() public {
        vm.broadcast();
        KingMaker kingMaker = new KingMaker{value:PLAYMONEY}();
        kingMaker.becomeKing(TARGET);
    }
}
