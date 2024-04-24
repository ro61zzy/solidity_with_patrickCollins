// SPDX-Licence-Identifier: MIT

pragma solidity ^0.8.19;

//import {PriceConverter} from "./PriceConverter";

//we want this contract to 
// a.) get funds from users
// b.) withdraw funds
// c.) set the minimum funding value in usd, azin the minimum a person can send to the contract

contract FundMe{

    using PriceConverter for uint256;

    uint256 public minimumUsd = 5e18;

    address[] public funders;

    mapping(address => uint256) public addressToAmountFunded;


//to set the contract so that only the owner of the contract can withdraw, we create a constructor
//is a special function that is immediately called when you deploy a contract
//so create a variable called owner, to set the address of the owner of the contract
address public owner;
     constructor() {
        //.sender here being the owner of the contract
        i_owner = msg.sender;
    }

    //the two main functions that we need are, fund and withdraw
    function fund() public payable{

        require(msg.value.getConversionRate() >= minimumUsd, "didn't send enough");
        //this function will allow users to send money
        // aslo set the minimum amount in dollar, a user can send
        //how do we send eth to a contract? to allow the function to receive, you make it payabele
        //so whenever this function is called, we will send eth to this contract
        //require(msg.value > 1e18, "didn't send enough"); //we require users to send atleast 1 ether, revert to the message if it fails
        //so if we want our users to send not less than $5 worth of eth, we need to get the price of eth and calculate and see how much we get

       // require(getConversionRate(msg.value) >= minimumUsd, "didn't send enough"); ///so we need to convert the usd to eth for msg.value to understand
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;

    }
        //where oracles n chainlink come in; we need data from the real world
        //to figure out if the amount of eth send is equal to the 5usd, we need to do conversion, first get the price of eth
        //create fn to get price
       // function getPrice() public {
            //wse'll need the chainlink contract that stores the price of eth, to interact with another contract, we need the address and the ABI
            //address 0x694AA1769357215DE4FAC081bf1f309aDC325306
            //ABI -- we can get the interface by importing from github and use it
          //  AggregatorV3Interface priceFeed = AggregatorV3Interface(
         //   0x694AA1769357215DE4FAC081bf1f309aDC325306
     //   );

    //    (, int256 price, , , ) = priceFeed.latestRoundData();
        // ETH/USD rate in 18 digit 1e18
    //    return uint256(price * 10000000000);

    //    }

        //convert the msg.value to it's equivalent dollars
     //   function getConversionRate(uint256 ethAmount) public view returns (uint256){
      //      uint256 ethPrice = getPrice();
      //      uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
     //       return ethAmountInUsd;
     //   }

           
   // function getVersion() public view returns (uint256){
    //    AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    //    return priceFeed.version();
 //   }
    

    

    function withdraw() public{
        //to set so that the only person who can withdraw funds from this contract is the sender, let's require owner's address
       // require(msg.sender == owner, "must be owner"); //but we can't do this on every function that needs a 
        //for loop
        /* starting index, ending index, step amount */
        // 0, 10, 1
        //1,2,3,4
        for( uint256 funderIndex = 0; funderIndex < funders.length; fundersIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        //reset array to 0
        funders = new address[](0);

         // // transfer
        // payable(msg.sender).transfer(address(this).balance);
        
        // // send
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, "Send failed");

        // call
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");
    }
    // Explainer from: https://solidity-by-example.org/fallback/
    // Ether is sent to contract
    //      is msg.data empty?
    //          /   \ 
    //         yes  no
    //         /     \
    //    receive()?  fallback() 
    //     /   \ 
    //   yes   no
    //  /        \
    //receive()  fallback()

    // fallback() external payable {
    //     fund();
    // }

    // receive() external payable {
    //     fund();
    // }
   //  }
}