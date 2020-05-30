pragma solidity ^0.4.10;
import './StandardToken.sol';
// requires 133,650,000 CRT deposited here
contract CRTSafe {
  mapping (address => uint256) allocations;
  uint256 public unlockDate;
  address public CRT;
  uint256 public constant exponent = 10**18;

  function CRTSafe(address _CRT) {
    CRT = _CRT;
    unlockDate = now + 6 * 30 days;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 16000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 16000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 16000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 16000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 8000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 8000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 8000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 4000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 4000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2250000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 2000000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 700000;
    allocations[0x09ABa9217C1420beC065c0dc64E3aFd79239be8c] = 700000;
  }

  function unlock() external {
    if(now < unlockDate) throw;
    uint256 entitled = allocations[msg.sender];
    allocations[msg.sender] = 0;
    if(!StandardToken(CRT).transfer(msg.sender, entitled * exponent)) throw;
  }

}
