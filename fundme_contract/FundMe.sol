// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

//we want this contract to 
// a.) get funds from users
// b.) withdraw funds
// c.) set the minimum funding value in usd, azin the minimum a person can send to the contract

contract FundMe{

    uint256 public minimumUsd = 5;

    //the two main functions that we need are, fund and withdraw
    function fund() public payable{
        //this function will allow users to send money
        // aslo set the minimum amount in dollar, a user can send
        //how do we send eth to a contract? to allow the function to receive, you make it payabele
        //so whenever this function is called, we will send eth to this contract
        //require(msg.value > 1e18, "didn't send enough"); //we require users to send atleast 1 ether, revert to the message if it fails
        //so if we want our users to send not less than $5 worth of eth, we need to get the price of eth and calculate and see how much we get

        require(msg.value >= minimumUsd, "didn't send enough"); ///so we need to convert the usd to eth for msg.value to understand
        //where oracles n chainlink come in; we need data from the real world

    }

    function withdraw() public{

    }
}