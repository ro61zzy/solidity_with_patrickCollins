// SPDX-License-Identifier: MIT

//inheritance
//we want this contract to always add five to the favorite number stored in the simple storage contract.

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";


//we use the "is" to inherit the simple storage functions; we inherit functionalities
contract AddFiveStorage is SimpleStorage {

    //to add custom functionality,,
    function store(uint256 _favoriteNumber) public override {
        myFavoriteNumber = _favoriteNumber + 5;
    }
}