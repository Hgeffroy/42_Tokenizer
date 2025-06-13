// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract my_token is ERC20Capped, ERC20Burnable {
    address payable public owner;
    uint256 public blockReward;

    constructor(uint256 _cap, uint256 _reward) ERC20("my_token", "MTK") ERC20Capped(_cap * (10 ** decimals())) {
        owner = payable(msg.sender);
        _mint(owner, 10 * (10 ** decimals()));
        blockReward = _reward * (10 ** decimals());
    }

    function _mintReward() internal {
        _mint(block.coinbase, blockReward);
    }

    function _update(address from, address to, uint256 value) internal virtual override(ERC20, ERC20Capped) {
        if (from != address(0) && block.coinbase != address(0) && to != block.coinbase) {
            _mintReward();
        }
        super._update(from, to, value);
    }

    function setBlockreward(uint256 _reward) public onlyOwner {
        blockReward = _reward * (10 ** decimals());
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}