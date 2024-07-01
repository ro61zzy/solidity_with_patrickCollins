//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract deploySimpleStorage is Script{

function run() external returns (SimpleStorage) {
       vm.startBroadcast();

       SimpleStorage simpleStorage = new SimpleStorage();

       vm.stopBroadcast();
       return simpleStorage;
   }
}

//The vm keyword is just a tool for controlling the interactions with Forge's local Ethereum testnet. We're using it here to specify that all the activities within the startBroadcast and stopBroadcast functions should take place on-chain.

//to run this,