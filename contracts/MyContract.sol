// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/upgrades/contracts/Initializable.sol";

contract MyContract is Initializable {
    address owner;
    bool bInitialized;

    function initialize() public /*initializer*/ {

        //require(bInitialized == false, "You can only initialize once");
        owner = msg.sender;
    }
}