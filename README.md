 # ARA NFT Minting DApp
  ARA NFT Minting DApp is a decentralized application (DApp) enables users to mint their own NFTs (Non-Fungible Tokens) directly onto the Ethereum blockchain. Built with Solidity, Hardhat, and React.js, this project leverages the ERC-721 standard for NFT creation, offering a user-friendly interface and seamless minting process.

**Features**
* NFT Minting: Users can create their own unique digital assets as NFTs.
* ERC-721 Compliance: Fully compliant with the ERC-721 standard, ensuring interoperability with other Ethereum blockchain applications and marketplaces.
* Interactive UI: A modern, responsive web interface built with React.js for an optimal user experience.
* Blockchain Integration: Integrated with Ethereum for secure and verifiable transactions.

**Technologies Used**
* Solidity: Smart contract programming language used to write immutable logic on the Ethereum blockchain.
* Hardhat: Ethereum development environment for deploying contracts, running tests, and debugging.
* React.js: A JavaScript library for building user interfaces, used here to create a responsive front-end.
* ERC-721: A standard for representing ownership of non-fungible tokens.
  
**Getting Started**

*Prerequisites*
* Node.js and npm (Node Package Manager)
* MetaMask browser extension installed and connected to the Ethereum network

*Installation*
* Clone the repository
  
      git clone https://github.com/yourusername/ARA-NFT-Minting-DApp.git
      cd ARA-NFT-Minting-DApp

* Install dependencies

      npm install

* Set up environment variables
  Create a .env file in the root directory and add the following variables:
  
      REACT_APP_INFURA_KEY = "YourInfuraProjectKey"
      REACT_APP_PRIVATE_KEY = "YourEthereumWalletPrivateKey"

* Compile the smart contracts

      npx hardhat compile
  
* Deploy the smart contracts
  
      npx hardhat run scripts/deploy.js --network network_name

* To start the project, move to nft_mint_frontend folder

      cd nft_mint_frontend
 
 
 * This folder contains the frontend side of the Dapp, Now install the node modules
 
      npm install
 
 
 * Start the development server
 
      npm start
 
 
This will launch the React application on http://localhost:3000.

**How to Use**
* Connect your MetaMask Wallet: Use the MetaMask extension to connect to the application.
* Mint your NFT: Follow the on-screen instructions to mint your NFT. You can customize your NFT by uploading an image and adding a description.


**Contributing**
Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

* Fork the Project
* Create your Feature Branch (git checkout -b feature/AmazingFeature)
* Commit your Changes (git commit -m 'Add some AmazingFeature')
* Push to the Branch (git push origin feature/AmazingFeature)
* Open a Pull Request
