pragma solidity ^0.4.0;

// Import from file system.
import "./mortal.sol";

// Import from Github.
// import "github.com/ethereum/solidity/std/mortal.sol";

contract MyContract is mortal {
    uint myVariable;

    function MyContract() payable public {
        myVariable = 5;
    }

    function setMyVariable(uint myNewVariable) onlyowner public {
        myVariable = myNewVariable;
    }

    function getMyVariable() constant returns(uint) {
        return myVariable;
    }

    function getMyContractBalance() constant returns(uint) {
        return this.balance;
    }

    // fallback function.
    function () payable {

    }
}
