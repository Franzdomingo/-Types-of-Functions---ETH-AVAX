// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CustomToken is ERC20, Ownable {
    // Custom errors for gas efficiency
    error InvalidMintAmount();
    error InvalidBurnAmount();

    // Events for important state changes
    event TokensMinted(address indexed to, uint256 amount);
    event TokensBurned(address indexed from, uint256 amount);

    constructor(string memory name, string memory symbol) 
        ERC20(name, symbol)
        Ownable(msg.sender) 
    {}

    /**
     * @dev Allows owner to mint new tokens
     * @param to Address receiving the tokens
     * @param amount Amount of tokens to mint
     */
    function mint(address to, uint256 amount) external onlyOwner {
        if(amount == 0) revert InvalidMintAmount();
        _mint(to, amount);
        emit TokensMinted(to, amount);
    }

    /**
     * @dev Allows users to burn their tokens
     * @param amount Amount of tokens to burn
     */
    function burn(uint256 amount) external {
        if(amount == 0) revert InvalidBurnAmount();
        _burn(msg.sender, amount);
        emit TokensBurned(msg.sender, amount);
    }
}
