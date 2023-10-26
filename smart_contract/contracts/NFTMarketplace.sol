// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

import "hardhat/console.sol";

contract NFTMarketplace {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    Counters.Counter private _itemsSold;

    uint256 transactionCount;

    uint256 listingPrice = 0.025 ether;
    address payable owner;
    mapping(uint256 => MarketItem) private idToMarketItem;

    struct TransferrStruct {
        uint256 tokenId;
        address owner;
        address seller;
        uint price;
        uint256 timestamp;
    }
    TransferrStruct[] transactions;

    struct MarketItem {
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }
    event Transferr(
        uint256 tokenId,
        address owner,
        address seller,
        uint amount,
        uint256 timestamp
    );

    event MarketItemCreated(
        uint256 indexed tokenId,
        address seller,
        address owner,
        uint256 price,
        bool sold
    );

    constructor() ERC721("Metaverse Tokens", "METT") {
        owner = payable(msg.sender);
    }
}
