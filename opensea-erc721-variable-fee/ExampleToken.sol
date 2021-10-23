//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "./ERC721Tradable.sol";

contract DecayContract is ERC721Tradable {
    constructor(address _proxyRegistryAddress)
        ERC721Tradable("Decay Token", "DECAY", _proxyRegistryAddress)
    {}

    function baseTokenURI() public pure override returns (string memory) {
        return "https://us-central1-lamp-a6d75.cloudfunctions.net/app/token/";
    }

    function contractURI() public pure returns (string memory) {
        return "https://us-central1-lamp-a6d75.cloudfunctions.net/app/contract-metadata";
    }
}
