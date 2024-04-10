// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;


//using structs, to define the properties of a person
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    
    // uint256[] public anArray; - a dynamic array
    Person[] public listOfPeople;


//to get a specific person's favorite number we need a way, eg a dictionary to look up
//we use mapping, it's like a set of keys with each key returning some info
//to define mapping
    mapping(string => uint256) public nameToFavoriteNumber;


//function that helps us store a umber as favorite nummber
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

//a view fn to see what the favorite number is
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

//how to add info to arrays, we have defined the properties of the person using a struct
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        //bring the mapping logic
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}