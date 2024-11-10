// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EmailEducatethNFT is ERC721URIStorage, Ownable {
    uint256 public tokenCounter;

    constructor(address initialOwner) 
ERC721("EmailEducatethNFT", "EDNFT")
Ownable(initialOwner) {
        	tokenCounter = 0;
 }

    function createNFT() public onlyOwner returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, "https://purple-high-eel-287.mypinata.cloud/ipfs/QmWvnViQa1kma1ZeJhWNEgaRA8D57XDRPm5eZM57sM5Fkn");
        tokenCounter += 1;
        return newTokenId;
    }
}
