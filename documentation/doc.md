# General concepts

## What is a blockchain ?
The definition of IBM is the following:\
Blockchain is a shared, immutable digital ledger, enabling the recording of transactions and the tracking of assets within a business network and providing a single source of truth.\
This is possible thanks to a decentralized database, and a system of transaction validations that goes through a consensus.

## History
The first protocols starting to look like the ones used in the modern blockchains were proposed in the 80's. 
But the real breaking point was the idea to decentralized the data which was proposed by Satoshi Nakamoto in 2008. 
This would give birth to the infamous Bitcoin. To this day we still don'y know who is (or are ?) Satoshi Nakamoto.

## Token vs Cryptocurrency
The differences between a token and a cryptocurrency are often blurry.
In fact, both of them are digital assets stored in a blockchain, but there is a fundamental difference:
- Cryptocurrency is inherent to the blockchain
- A token is an asset existing on the blockchain but still needs the blockchain currency (called gas fee) to use its features

## Mining vs minting
So how to obtain the digital assets ? There are actually three ways similar to a regular currency.
- Mining: You can validate transactions and getting rewarded for it. Before AI boomed, some GPU were developed to optimize this type of work. For a regular currency, this would be the equivalent of working and getting a salary for it. 
- Minting: Creating a assets. In most case, this option is only available to the creator of the token or the cryptocurrency. This will indeed increase the number of asset available on the blockchain but has for consequence to devalue the individual value of an asset. For a regular currency, this would be the equivalent of a state printing new banknotes.
- Trading: Trading some of your assets.

# About the technologies used for this project

## Ethereum
For this project, I chose to deploy my token on the blockchain Ethereum. This is indeed one of the main blockchain out there and its language Solidity is easy to take on if you have basic knowledge of JavaScript. 
- Cryptocurrency = Ether
- Language = Solidity
- Advantages: Well-known and trusted, Decentralized, Active (transition to Ethereum 2.0), Open-Source
- Drawbacks: Slow with a low scalability, High gas fees, High carbon footprint

## Smart contract and ERC20
To create a token on the blockchain Ethereum, you need to develop a smart contract.
Before this norm, every token provider had to develop a library of methods for it to be usable. But each provider had his way to do this which meant that the token browsers also had to adapt to them.
To solve these problems, the norm ERC20 was provided. It consists of 6 mandatory methods.
- totalSupply: Maximum number of tokens available.
- balanceOf: Number of tokens in possession of an address
- transfer: Transfer tokens from the provider to a given address (mining)
- transferFrom: Transfer tokens from an address to another address.
- approve: Check if the transaction won't make the number of assets exceed the limit.
- allowance: Check if the address emitting the assets has enough of them to actually make the transaction.

Now some libraries such as openzeppelin offer basic ERC20 contracts so that blockchain developers don't need to redevelop these methods each time they make a new smart contract.

# Sources
IBM definition of blockchain : https://www.ibm.com/think/topics/blockchain \
ERC20 : https://fr.wikipedia.org/wiki/ERC20

