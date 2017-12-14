// https://ethereum.stackexchange.com/questions/15998/what-is-the-best-practice-to-store-and-retreive-large-data-in-solidity-smart-con
// https://ethereum.stackexchange.com/questions/3217/why-do-we-need-event-indexed-params
// https://ethereum.stackexchange.com/questions/12133/web3-do-i-need-to-get-past-events-and-watch-future-events-separately
pragma solidity ^0.4.18;

import "./LendingOffer.sol";

contract P2PLending {

  struct LendingData {
    
  }

  event LendingOfferCreated(address indexed lender, address contractAddress);
  function P2PLending() public {

  }

  function createLendingOffer(uint _interestRateMultipliedBy100) external payable returns (address) {
    require(msg.value > 0);

    address lendingContract = (new LendingOffer).value(msg.value)(msg.sender, msg.value, _interestRateMultipliedBy100);
    
    LendingOfferCreated(msg.sender, lendingContract);
    return lendingContract;
  }

  // data: { amount, interest, due date, status }
  // and in JS: store listing id and array position when listeing to events
  // 
  // event listing created(id, from, data)
  // event listing closed(id, from, data)
  // event listing agreed(id, from, data)
  // make agreement to valid listing only, agreement (id => data), then ask for approval from creator
  // event approval requested(id, from, to)

  function createLendingOfferListing() {

  }
}