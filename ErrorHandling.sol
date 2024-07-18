// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint public a;
    uint public year = 2025;
    uint public j;

    // Function to set the value of 'a' with a check using 'require'
    function setA(uint _a) public {
        require(_a < 2025, "The given value of 'a' should be less than 2024 .");  
        a = _a;
        j = year - a;  
        votingAge();
    }
 
    // Function to check an invariant using 'assert'
    function checkA() public view {
        assert(a < 2024); // This should always be true if setA is used correctly
    }

    // Function to check voting age using 'revert'
    function votingAge() public view {
        if (j < 18) {
            revert("You are not eligible for voting as you are less than 18 years old.");
        }

    }
}
