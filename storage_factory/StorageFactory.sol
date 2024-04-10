// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// import {SimpleStorage, SimpleStorage2} from "./SimpleStorage.sol";
//specify, named imports
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    //type simplestorage azin we are creating something that follows simplw storage
    //create an array of all that are created
    SimpleStorage[] public listOfSimpleStorageContracts;


//a function that creates/deploys a simplestorage contract
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorageContractVariable = new SimpleStorage();
        // SimpleStorage simpleStorage = new SimpleStorage();
        //add the created simple storages into the array
        listOfSimpleStorageContracts.push(simpleStorageContractVariable);
    }

    function sfStore(
        uint256 _simpleStorageIndex,
        uint256 _simpleStorageNumber
    ) public {
        // Address
        // ABI
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        listOfSimpleStorageContracts[_simpleStorageIndex].store(
            _simpleStorageNumber
        );
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}