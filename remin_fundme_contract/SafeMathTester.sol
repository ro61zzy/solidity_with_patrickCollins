//SPDX-Licence-Identifier: MIT
pragma solidity ^0.8.0;
//version 0.6 was unchecked

contract SafeMathTester{
    uint8 public bigNumber = 255; //checked

    function add() public{
        //to make version 0.8 checked you can add the unchecked keyword
        // unchecked {bigNumber = bugNumber + 1;}, we use this to minimize ga s
        bigNumber = bigNumber + 1;
    }
} 