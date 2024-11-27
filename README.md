# Custom ERC20 Token

A secure ERC20 token implementation with minting and burning capabilities using OpenZeppelin contracts.

## Description

This contract implements an ERC20 token with:
- Owner-only minting
- Public burning functionality
- Standard ERC20 transfer operations
- Custom events for tracking token mints and burns
- Gas-optimized error handling

## Getting Started

### Executing program

1. Visit [Remix IDE](https://remix.ethereum.org/)
2. Create `CustomToken.sol`
3. Copy contract code
4. Compile:
   - Select compiler v0.8.20
   - Enable optimization
   - Click "Compile CustomToken.sol"
5. Deploy:
   - Environment: "Injected Provider - MetaMask"
   - Enter token name and symbol
   - Deploy and confirm in MetaMask

### Interacting with Contract

- **Mint tokens** (owner only):
  - Use `mint(address to, uint256 amount)`
- **Transfer tokens**:
  - Use `transfer(address to, uint256 amount)`
- **Burn tokens**:
  - Use `burn(uint256 amount)`

## Authors

Franz Phillip G. Domingo

## License

MIT License
