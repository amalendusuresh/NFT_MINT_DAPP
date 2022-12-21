// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";

contract nftMint is ERC721, Ownable, ERC721Enumerable, ERC721URIStorage {
    using Strings for uint256;
    using SafeMath for uint256;
    using Counters for Counters.Counter;
    
    Counters.Counter private _tokenIds;
    
    string public baseTokenURI;
    string public baseExtension = ".json";

    uint256 public constant maxSupply = 100;
    uint256 public cost =  0.01 ether;
    uint256 public maxPerMint = 5;
    
    bool public isSaleActive;
    mapping(address => bool) public whitelisted;

    constructor(string memory baseURI) ERC721("ARA", "NORMA") {
        setBaseURI(baseURI);
    } 

    function mintNFTs(uint256 _count) public payable {
        uint totalMinted = _tokenIds.current();

        require(totalMinted.add(_count) <= maxSupply, "Not enough NFTs left!");
        require(_count > 0 && _count <= maxPerMint, "Cannot mint specified number of NFTs.");
        require(msg.value >= cost.mul(_count), "Not enough ether to purchase NFTs.");

        if (msg.sender != owner()) {
            if(whitelisted[msg.sender] != true) {
                require(msg.value >= cost * _count);
            }
        }

        for(uint256 i = 0; i <= _count; i++) {
            uint newTokenID = _tokenIds.current();
            _safeMint(msg.sender, newTokenID);
            _tokenIds.increment();
                
        }     
              
    }

    function _baseURI() internal view virtual override returns (string memory) {
        return baseTokenURI;
    }

    function setBaseURI(string memory _baseTokenURI) public onlyOwner {
        baseTokenURI = _baseTokenURI;

    }

    function walletOfOwner(address _owner) public view returns (uint256[] memory) {
        uint256 ownerTokenCount = balanceOf(_owner);
        uint256[] memory tokenIds = new uint256[](ownerTokenCount);
        for (uint256 i; i < ownerTokenCount; i++) {
            tokenIds[i] = tokenOfOwnerByIndex(_owner, i);
        }
        return tokenIds;
    }


    function tokenURI(uint256 tokenId) public view virtual override(ERC721, ERC721URIStorage) returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
 
        string memory currentBaseURI = _baseURI();
        return bytes(currentBaseURI).length > 0
            ? string(abi.encodePacked(currentBaseURI, tokenId.toString(), baseExtension))
            : "";
    }

    function setCost(uint256 _newCost) public onlyOwner {
        cost = _newCost;
    }

    function setmaxMintAmount(uint256 _newmaxPerMint) public onlyOwner {
        maxPerMint = _newmaxPerMint;
    }

    function setBaseExtension(string memory _newBaseExtension) public onlyOwner {
        baseExtension = _newBaseExtension;
    }

    function flipSaleState() external onlyOwner {
        isSaleActive = !isSaleActive;
    }

    function whitelistUser(address _user) public onlyOwner {
        whitelisted[_user] = true;
    }
    
    function removeWhitelistUser(address _user) public onlyOwner {
        whitelisted[_user] = false;
    }

    function withdraw() public payable onlyOwner {
        require(payable(msg.sender).send(address(this).balance));
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) internal override(ERC721, ERC721Enumerable){
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }

    function _burn(uint256 tokenId) internal override(ERC721, ERC721URIStorage) {
        super._burn(tokenId);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, ERC721Enumerable) returns (bool){
        return super.supportsInterface(interfaceId);
    }


}