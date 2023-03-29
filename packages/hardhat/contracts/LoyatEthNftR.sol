//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "hardhat/console.sol";
// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
// import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/**
 * This smart contract is the NFT referral generator
 * @author cmaranber.eth
 */

contract LoyatEthNftR is ERC721 ("LoyaltEth Referals", "NFTr") {

}