pragma solidity ^0.5.11;


import "../../contracts/Donation.sol";

interface EventsInterface {
  event Issue(address indexed _beneficiary, uint256 indexed _tokenId, bytes32 indexed _wearableIdKey, string _wearableId, uint256 _issuedId);
}

contract DummyDonation is Donation, EventsInterface {

    constructor(
        address payable fundsRecipient,
        ERC721Collection _erc721Collection,
         uint256 _minDonation
    )  Donation (
          fundsRecipient,
          _erc721Collection,
          _minDonation
    ) public {}

}