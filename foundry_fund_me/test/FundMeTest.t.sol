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
    assertEq(fundMe.MINIMUM_USD(), 5e18); //test if the function is actually 5dollars, 5e18
    }

    function testOwnerIsMessageSender() public{
        assertEq(fundMe.i_owner(), msg.sender); //this will fail because we now have two contracts, the FundMe and the test instance fundMe
    }
}