progma solidity ^0.4.11;

import './SafeMath.sol';
import './ERCX_interface.sol';

contract ERCXv0 is ERCXInterface {
  using SafeMath for uint;
  mapping(address => uint) balances;

  function transfer(address to, uint tokens) {
    balances[msg.sender] = balances[msg.sender].sub(tokens);
    balances[to] = balances[to].add(tokens);
    Transfer(msg.sender, to, tokens);
    return true;
  }

  function mutate(address child, uint tokens) {
    ERCXInterface nextNode = ERCXInterface(child);
    balances[msg.sender] = balances[msg.sender].sub(tokens);
    return nextNode.birth(msg.sender, tokens);
  }
  function birth(address to, uint tokens) {
    revert();
    return false;
  }
}
