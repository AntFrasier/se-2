//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "hardhat/console.sol";
// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
// import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A smart contract that ......
 * @author cmaranber.eth
 */

/**
 * todo : 
 *  remove all the inutil public
 */
contract LoyaltEthFactory {
    
    address private nftrAddress; // nft referral smart contract address
    struct Campaign {
        string name;
        string url;
        address payable receiver;
        address admin;
    }

    Campaign[] public campaigns;
    mapping (address => Campaign[] ) public myCampaignsId;

    constructor (address _nftrAdd) {
        nftrAddress = _nftrAdd;
    }

    function createCampaign (string memory _name, string memory _url, address payable _receiver ) public returns (Campaign memory campaign) {
     // _receiver; //todo This contract should create a receive contract with all the rewards mecanisme
        campaign = Campaign(_name, _url, _receiver, msg.sender);
        myCampaignsId[msg.sender].push(campaign);
        campaigns.push(campaign);
        return campaign;
    }

    function getCampaignById( uint id ) public view returns (Campaign memory campaign) {
        return campaigns[id];
    }

    function getNumberOfCampaign () public view returns (Campaign[] memory, address) {
        
        return (myCampaignsId[0x55d4929C735474f2b9be3959F86fB3a2e74D7614], msg.sender);
        console.log(msg.sender);
    }

    function getOwnersCampaigns() public view returns (Campaign[] memory) {
        // uint[] memory myIds = ;
        // require (myCampaignsId[msg.sender].length > 0, "no campaign");
        // uint n = myCampaignsId[msg.sender].length;
        // Campaign[] memory ownersCampaigns = new Campaign[](n);
        // for (uint i = 0 ; i < myCampaignsId[msg.sender].length; i++){
        //     ownersCampaigns[i] = campaigns[myCampaignsId[msg.sender][i]];
        // }
        // return ownersCampaigns;
    }



    receive() external payable {}
}