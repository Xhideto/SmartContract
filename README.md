# Smart Contract

A simple smart contract for a for managing a simple bank.

## Description

This smart contract simulates a simple banking system where users can deposit, withdraw, and request refunds. It also includes mechanisms to ensure the contract’s state remains consistent. It implements error handling of solidity like `require()`, `assert()`, & `revert()`.

## Getting Started

### Installing

To use this contract, This can be done using the online version of the Solidity IDE, known as Remix.

1. Go to the Remix website at Remix Ethereum.
2. Create a new file by clicking on the “+” icon in the left-hand sidebar.
3. Save the file with a .sol extension

### Executing program

1. Copy and paste the code `SmartCon.sol` file

### Compile the code

- Click on the “Solidity Compiler” tab in the left-hand sidebar.
- Ensure the “Compiler” option is set to a compatible version.
- Click on the "Compile `SmartCon.sol`" button or check the "Auto-compile" for automatic compiling of the code.

### Deploying and run the contract

- Click on the “Deploy & Run Transactions” tab in the left-hand sidebar.
- Make sure the "contract" is set to "SmartContract" with your file.
- Click on the “Deploy” button.

### Contract interaction

- Click on the drop-down deployed “SmartContract” contract.
- Set the a value of any value on Wei.
- Use the `Deposit` and `Withdraw` functions to manage the value that is set.
- In `Refund` function, copy your account address before setting value balance because only you or the shareholder can manage the refund to recipient.

## Help

- Check your Solidity compiler version.

- Make sure the value is set before depositing.

## Author

Jairell Louis J. Ignacio
https://github.com/Xhideto

## License

This project is licensed under the MIT
