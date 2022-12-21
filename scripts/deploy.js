const { utils } = require("ethers");

async function main() {
    const baseTokenURI = "https://gateway.pinata.cloud/ipfs/QmZ3zNed6u5RUiZQiQNaXftzXMVtmjTuxNu2kPRWEDNPXF";

    // Get owner/deployer's wallet address
    const [owner] = await hre.ethers.getSigners();
    
    // Get contract that we want to deploy
    const contractFactory  = await ethers.getContractFactory("nftMint");

    // Deploy contract with the correct constructor arguments
    const contract = await contractFactory.deploy(baseTokenURI);

    // Wait for this transaction to be mined
    await contract.deployed();

    console.log("Contract deployed to address:", contract.address);

    // Get all token IDs of the owner
    let tokens = await contract.walletOfOwner(owner.address)
    console.log("Owner has tokens: ", tokens);
 
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });