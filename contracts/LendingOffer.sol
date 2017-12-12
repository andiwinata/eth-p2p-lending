pragma solidity ^0.4.18;

contract LendingOffer {
  address lender;
  uint amount;
  uint interestRateMultipliedBy100;

  function LendingOffer(address _creator, uint _amount, uint _interestRateMultipliedBy100) payable public {
    lender = _creator;
    amount = _amount;
    interestRateMultipliedBy100 = _interestRateMultipliedBy100;
  }

  function() payable external {
    // should not modify state here, it will be expensive
  }
}
