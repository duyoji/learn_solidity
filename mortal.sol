pragma solidity ^0.4.0;

import "motal.sol";

contract mortal {
    address owner;

    modifier onlyowner() {
        if(msg.sender == owner) {
            _;
        } else {
            revert();
        }
    }

    function mortal() public {
        owner = msg.sender;
    }

    function kill() onlyowner public {
        selfdestruct(owner);
    }
}
