// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GrandTheftAuto is ERC20, Ownable(msg.sender) {

    uint public constant LootAmount = 999;

    constructor() ERC20("GrandTheftAuto", "GTA") {
        _mint(msg.sender, LootAmount);
    }

    function mintLoot(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function burnLoot(uint amount) public {
        require(balanceOf(msg.sender) >= amount, "Balance is insufficient");

        _burn(msg.sender, amount);
    }

}
