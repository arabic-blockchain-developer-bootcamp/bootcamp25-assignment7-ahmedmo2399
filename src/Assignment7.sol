// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Assignment7 is ERC20 {
    // Constructor to initialize the token
    constructor() ERC20("MyToken", "MTK") {}

    // Function to mint tokens
    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}
