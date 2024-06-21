// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;


contract DipanshuToken {
  //public variables here
  string public tokenName = "CHANDIGARHMETA";
  string public tokenAbbrv = "CUMT";
  uint public totalIntake = 0;

  //mapping variables here
  mapping(address => uint) public remainder;

  //mint function
  function mint(address add, uint _value) public {
    totalIntake += _value;
    remainder[add] += _value;
  }

  //burn function
  function burn(address add, uint _value) public {
    if(remainder[add] >= _value){
      totalIntake -= _value;
      remainder[add] -= _value;
}
}
}  
