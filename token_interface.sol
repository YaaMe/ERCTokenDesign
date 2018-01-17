pragma solidity ^0.4.9;

contract ERCX {
  uint public totalSupply;
  function balanceOf(address who) public view returns (uint);

  function name() public view returns (string _name);
  function symbol() public view returns (string _symbol);
  function decimals() public view returns (uint8 _decimals);
  function totalSupply() public view returns (uint256 _supply);

  function transfer(address to, uint value) public returns (bool ok);
  event Transfer(address indexed from, address indexed to, uint value, bytes indexed data);

  function mutate(address child, uint value) public returns (bool ok);
  function birth(address parent, uint value) public returns (bool ok);
}