// https://ethereum.stackexchange.com/questions/15998/what-is-the-best-practice-to-store-and-retreive-large-data-in-solidity-smart-con
// https://ethereum.stackexchange.com/questions/3217/why-do-we-need-event-indexed-params
// https://ethereum.stackexchange.com/questions/12133/web3-do-i-need-to-get-past-events-and-watch-future-events-separately
pragma solidity ^0.4.18;

import "./LendingOffer.sol";

contract P2PLending {

  event LendingOfferCreated(address indexed lender, address contractAddress);
  event BorrowRequestCreated(address indexed borrower, address contractAddress);

  function P2PLending() {

  }

  function createLendingOffer(uint _interestRateMultipliedBy100) external payable returns (address) {
    address lendingContract = new LendingOffer(msg.sender, msg.value, _interestRateMultipliedBy100);
    lendingContract.transfer(msg.value);
    
    LendingOfferCreated(msg.sender, lendingContract);
    return lendingContract;
  }
}