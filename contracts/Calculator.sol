// SPDX-License-Identifier: MIT
pragma solidity  = 0.8.4;

contract Calculator {
  address from;
  bytes32 action;
  uint result;

  event Calculation(
    address _from,
    bytes32 _action,
    uint _input1,
    uint _input2,
    uint _result
  );

  function add(uint value1, uint value2) public {
      from = msg.sender;
      action = "Add"; 
      result = value1 + value2;

       emit Calculation(msg.sender,
            "Add", value1, value2, result);
  }
}
