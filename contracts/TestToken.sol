pragma solidity ^0.4.13;

import '../node_modules/zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

/**
 * @title Capped token
 * @dev Mintable token with a token cap.
 */
contract TestToken is StandardToken {

  string public constant name = "Testoken"; // solium-disable-line uppercase
  string public constant symbol = "TEST"; // solium-disable-line uppercase
  uint8 public constant decimals = 18; // solium-disable-line uppercase

  uint256 public constant INITIAL_SUPPLY = 100000000000000 * (10 ** uint256(decimals));


 function TestToken() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}