// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract GrandTheftAuto is ERC20, Ownable(msg.sender) {

    uint public constant Gift = 10;
    mapping(address => bool) private GiftRedeemed;


    constructor() ERC20("GrandTheftAuto", "GTA") {
        _mint(msg.sender, Gift);
    }

    function mintLoot(address account, uint amount) public onlyOwner {
        _mint(account, amount);
    }

    function redeemItem() public {

        require(balanceOf(msg.sender) >= Gift, "Balance is insufficient");

        require(!GiftRedeemed[msg.sender], "Gift redeemed already");

        GiftRedeemed[msg.sender] = true;
        _burn(msg.sender, Gift);
    }

   function burnLoot(uint amount) public {
        _burn(msg.sender, amount);
    }

}
