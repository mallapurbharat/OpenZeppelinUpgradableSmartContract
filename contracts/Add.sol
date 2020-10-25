// SPDX-License-Identifier: MIT
/*
pragma solidity >=0.4.22 <0.8.0;

import "@openzeppelin/upgrades/contracts/Initializable.sol";
contract Add is Initializable {
    string public name;
    uint256 public u;
    uint256 public inc;
    function initialize(string memory _name) initializer public {
        name = _name;
        u=0;
    }
    function decrementBy(uint256 x) public returns (uint256) {
        return u -= x;
    }
    function incrementBy(uint256 x) public returns (uint256) {
        return u +=x;
    }
    
}
*/


// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;
import "@openzeppelin/contracts-ethereum-package/contracts/math/SafeMath.sol";
import "@openzeppelin/upgrades/contracts/Initializable.sol";
contract Add is Initializable {
    using SafeMath for uint;
    string public name;
    uint256 public u;
    uint256 public inc;
    function initialize(string memory _name) initializer public {
        name = _name;
        u=0;
    }
    function decrementBy(uint256 x) public returns (uint256) {
        return u = u.sub(x);
    }
    function incrementBy(uint256 x) public returns (uint256) {
        return u = u.add(x);
    }
    
}
