// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => bool) public hasVoted;// mapping of address to bool
    mapping(bytes32 => uint256) public voteCount;

    function vote(bytes32 candidate) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        voteCount[candidate] += 1;
        hasVoted[msg.sender] = true;
    }
}
