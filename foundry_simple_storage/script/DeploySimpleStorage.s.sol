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

// //to run this, forge script script/deploySimpleStorage.s.sol
// // Compiler run successful!
// // Script ran successfully.
// // Gas used: 338975

// // == Return ==
// // 0: contract SimpleStorage 0x90193C961A926261B756D1E5bb255e67ff9498A1

// // If you wish to simulate on-chain transactions pass a RPC URL.


//since we didn't specify any RPC URL; in foundry, it will automatically run/deploy your contract on a temporary environment