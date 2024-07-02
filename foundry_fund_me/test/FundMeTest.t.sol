// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//naming convention of test file with .t.sol, best practice
//forge test
//to show logs forge test -vvv the v's are the number of logs
//forge has built in commands that help testing easier, let's import these
import {Test, console} from "forge-std/Test.sol"; //import console to log
import {FundMe} from "../src/FundMe.sol"; //import the contract to test

contract FundMETest is Test {
     FundMe fundMe; //scope it
    //what we want to do is test our fund me contract is doing what is expected to do
    //first let's deploy our contract, we will do this pn script but for now let's just do this here
    function setUp() external{
       fundMe = new FundMe(); //we create an instance of the FundMe contract
    }

    function testMinimumDollarIsFive() public{
    // here is where we test the functions of the fundme contract if they work as expected   
    //Test gives us assertEq to test equality   
   assertEq(left, right); (fundMe.MINIMUM_USD())
    }
}