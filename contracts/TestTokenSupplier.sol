pragma solidity ^0.4.13;

import '../node_modules/zeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import './TestToken.sol';

contract TestTokenSupplier is Crowdsale {

  function TestTokenSupplier(uint256 _rate, address _wallet, TestToken _token) public
        Crowdsale(_rate, _wallet, _token)
  {

  }
 }