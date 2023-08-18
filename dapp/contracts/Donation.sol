// dapp/contracts/Donation.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Donation {
    address public owner;
    uint256 public totalDonations;

    event DonationReceived(address indexed donor, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function donate() public payable {
        require(msg.value > 0, "Donation amount must be greater than 0");
        totalDonations += msg.value;
        emit DonationReceived(msg.sender, msg.value);
    }

    function withdrawDonations() public onlyOwner {
        require(totalDonations > 0, "No donations to withdraw");
        payable(owner).transfer(totalDonations);
        totalDonations = 0;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
