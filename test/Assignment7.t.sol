// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Assignment7} from "../src/Assignment7.sol";

contract Assignment7Test is Test {
    Assignment7 assignment;
    address owner = address(0x1); 
    function setUp() public {
        assignment = new Assignment7();
    }

    function testMintAndTransfer() public {
      
        vm.prank(owner); 
        assignment.mint(owner, 1000 * 10**18);

               uint256 balance = assignment.balanceOf(owner);
        assertEq(balance, 1000 * 10**18, "Balance should be 1000 tokens");
    }
}
