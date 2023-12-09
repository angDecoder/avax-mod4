# GrandTheftAuto Token

## Overview

GrandTheftAuto (GTA) is an ERC-20 token implemented on the Ethereum blockchain. This token is designed to represent in-game assets or rewards within a fictional context. The contract is built on the Solidity programming language and utilizes the OpenZeppelin library for ERC-20 implementation and ownership functionality.

## Features

- **Token Standard**: GrandTheftAuto follows the ERC-20 standard, providing compatibility with various decentralized applications (DApps) and exchanges.
  
- **Ownership**: The token contract inherits from the Ownable contract, allowing the owner (deployer) to have exclusive privileges, such as minting new tokens.

- **Minting**: The initial supply of GrandTheftAuto tokens is minted to the deployer's address during contract deployment. Additional tokens can be minted by the owner using the `mintLoot` function.

- **Burning**: Token holders can burn their tokens using the `burnLoot` function, reducing their balance. This function requires the sender to have a sufficient balance.

