// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//naming convention of test file with .t.sol, best practice
//forge test
//to show logs forge test -vvv the v's are the number of logs
//forge has built in commands that help testing easier, let's import these
import {Test, console} from "forge-std/Test.sol"; //import console to log

contract FundMETest is Test {
    //what we want to do is test our fund me contract is doing what is expected to do
    //first let's deploy our contract, we will do this pn script but for now let's just do this here
    function setUp() external{}
}