// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {KingMaker} from "../src/King.sol";

contract KingScript is Script {
    function setUp() public {}

    function run() public {
        vm.broadcast();
        KingMaker king=new KingMaker{value:1100000000000000}();
        king.beKing(0x05d15eCBcd730Cc0538DF635Cc76AF12CA645d64);
        
    }
}
