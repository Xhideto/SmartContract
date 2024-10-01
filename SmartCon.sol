// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

    //variables
contract SmartContract {
    mapping(address => uint) private balances;
    address public shareholder;
    uint private totalDeposit;

    //Initializes the shareholder as the sender
    constructor() {
        shareholder = msg.sender;
        totalDeposit = 0;
    }

    //function to deposit ether
    function deposit(uint amount) public payable {
        require(amount > 0, "Deposit amount must be greater than zero");
        require(msg.value == amount, "Sent value must match the deposit amount");
        balances[msg.sender] += amount;
        totalDeposit += amount;
    }

    //function to withdraw ether
    function withdraw(uint amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance");
        balances[msg.sender] -= amount;
        totalDeposit -= amount;
        payable(msg.sender).transfer(amount);
    }

    //function to refund ether but the shareholder only can refund
    function refund(address recipient, uint amount) public {
        require(msg.sender == shareholder, "Only the Shareholder can issue refunds");
        require(amount <= balances[recipient], "Insufficient balance to refund");
        balances[recipient] -= amount;
        totalDeposit -= amount;
        payable(recipient).transfer(amount);
    }

    //Balance of the caller
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }

    //function to check Invariant balance
    function checkInvariant() public view {
        assert(address(this).balance >= totalDeposit);
    }
}
