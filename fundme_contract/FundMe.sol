// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

//we want this contract to 
// a.) get funds from users
// b.) withdraw funds
// c.) set the minimum funding value in usd, azin the minimum a person can send to the contract

contract FundMe{


    //the two main functions that we need are, fund and withdraw
    function fund() public payable{
        //this function will allow users to send money
        // aslo set the minimum amount in dollar, a user can send
        //how do we send eth to a contract? to allow the function to receive, you make it payabele

    }

    function withdraw() public{

    }
}