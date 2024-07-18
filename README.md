## Project Title  
Solidity Error Handling

## Problem Statement
write a smart contract that implements the require(), assert() and revert() statements.

## Description  
The Example contract in Solidity manages a variable 'a' and calculates eligibility for voting based on age criteria:

1. setA(uint _a): Sets the value of 'a' with a requirement that it must be less than 2024.
2. checkA(): Asserts that the value of 'a' is always less than 2024.
3. votingAge(): Checks if the age difference ('j') is less than 18 years using revert if not eligible.


## Features

1. Error Handling: Demonstrates the use of require(), assert(), and revert() statements in Solidity for robust error handling.
2. State Variables: Includes public state variables 'a', 'year', and 'j' to store and calculate values related to voting age.
3. Modularity: Functions are designed to perform specific tasks, promoting modularity and readability.
4. Security: Use of require() ensures that inputs meet specified conditions before executing state changes.
5. Invariant Checking: Uses assert() to validate an invariant condition that 'a' should always be less than 2024.

## Getting Started

### Installing  
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension . Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Example {
    uint public a;          // Public state variable to store 'a'
    uint public year = 2024;  // Public state variable to store the current year (assumed as 2024)
    uint public j;          // Public state variable to store the difference between 'year' and 'a'

    // Function to set the value of 'a' with a check using 'require'
    function setA(uint _a) public {
        require(_a < 2024, "The given value of 'a' should be less than 2024.");  
        a = _a;             // Assign the provided value of 'a' to the state variable 'a'
        j = year - a;       // Calculate the difference between 'year' and 'a'
        votingAge();        // Call the 'votingAge' function to check eligibility based on 'j'
    }
 
    // Function to check an invariant using 'assert'
    function checkA() public view {
        assert(a < 2024);   // Assert that the value of 'a' is always less than 2024
    }

    // Function to check voting age using 'revert'
    function votingAge() public view {
        if (j < 18) {                       // Check if 'j' (difference between 'year' and 'a') is less than 18
            revert("You are not eligible for voting as you are less than 18 years old.");  // Revert with an error message if not eligible
        }
       
    }
}


```

###  Executing program    
#### How to Run the Program      
Navigate to the project directory  
Compile the Solidity contract  
Deploy the contract using your preferred Ethereum development environment   

#### For Remix:    
Open Remix IDE.  
Upload ErrorHandling.sol.  
Compile and deploy the contract.  


## Authors  
Sandeep Kaur @Sandeep1925

## License  
This project is licensed under the MIT License - see the LICENSE.md file for details.  

We have established a solidity contract with this code. 
