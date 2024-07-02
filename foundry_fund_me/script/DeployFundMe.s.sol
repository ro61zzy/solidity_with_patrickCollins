// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//since we are using a script
//forge script script/DeployFundMe.s.sol
import {Script} from "forge-std/Script.sol";
import {FundMe} from "../src/FundMe.sol";

contract DeployFundMe is Script{
 FundMe fundMe;
    //to run a script we create a function run
    function run() external{
        vm.startBroadcast();
        // FundMe fundMe = new FundMe();
        fundMe = new FundMe();
        vm.stopBroadcast();
    }

}