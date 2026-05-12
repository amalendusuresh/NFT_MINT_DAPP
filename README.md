# ARA NFT Minting DApp

A full-stack **NFT minting decentralized application** that lets users mint their own **ERC-721 NFTs** directly on the Ethereum blockchain. Built with **Solidity + Hardhat** for the smart contract layer and **React.js** for the user-facing DApp.

![Solidity](https://img.shields.io/badge/Solidity-0.8.x-363636?logo=solidity)
![Hardhat](https://img.shields.io/badge/Built%20with-Hardhat-FFF100?logo=hardhat&logoColor=black)
![React](https://img.shields.io/badge/Frontend-React-61DAFB?logo=react&logoColor=black)
![Standard](https://img.shields.io/badge/Token-ERC--721-4E5EE4)
![License](https://img.shields.io/badge/license-MIT-blue)
![Stars](https://img.shields.io/github/stars/amalendusuresh/NFT_MINT_DAPP?style=flat&logo=github)
![Forks](https://img.shields.io/github/forks/amalendusuresh/NFT_MINT_DAPP?style=flat&logo=github)

---

## ✨ Features

- ✅ **One-click NFT minting** — connect MetaMask, upload artwork, mint
- ✅ **ERC-721 compliant** — full marketplace and wallet interoperability
- ✅ **IPFS metadata storage** — decentralized, censorship-resistant asset hosting
- ✅ **React frontend** with responsive UI and live transaction feedback
- ✅ **MetaMask integration** for wallet connection and transaction signing
- ✅ **Hardhat development environment** — compile, test, deploy in one toolchain
- ✅ **Multi-network ready** — deploy to Sepolia / Goerli / Mainnet with one flag

---

## 🏗️ Architecture

```
   ┌──────────────────────┐
   │   React Frontend     │
   │  (nft_mint_frontend) │
   └──────────┬───────────┘
              │ Ethers.js + MetaMask
              ▼
   ┌──────────────────────┐         ┌──────────────────┐
   │    NFT.sol (ERC-721) │ ◄────── │      IPFS        │
   │  • mint(to, tokenURI)│ metadata│  (image + JSON)  │
   │  • tokenURI(tokenId) │         └──────────────────┘
   │  • Ownable           │
   └──────────────────────┘
              │
              ▼
       Ethereum / EVM chain
```

---

## 📂 Project Structure

```
NFT_MINT_DAPP/
├── contracts/                  # Solidity ERC-721 contracts
├── scripts/                    # Hardhat deployment scripts
├── nft_mint_frontend/          # React DApp
│   ├── src/
│   ├── public/
│   └── package.json
├── hardhat.config.js           # Hardhat configuration
├── package.json
├── Steps.md                    # Step-by-step build notes
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- **Node.js** ≥ 16.x
- **npm** or **yarn**
- **MetaMask** browser extension
- **Infura** (or Alchemy) API key for RPC access
- Some **testnet ETH** (Sepolia recommended) for minting

### Installation

```bash
git clone https://github.com/amalendusuresh/NFT_MINT_DAPP.git
cd NFT_MINT_DAPP
npm install
```

### Environment Setup

Create a `.env` file in the project root (**never commit this file**):

```bash
INFURA_KEY=YourInfuraProjectKey
PRIVATE_KEY=YourEthereumWalletPrivateKey
ETHERSCAN_API_KEY=YourEtherscanApiKey
```

> ⚠️ **Critical:** `.env` must be in `.gitignore`. Never commit private keys or API tokens to a public repo.

### Compile Contracts

```bash
npx hardhat compile
```

### Deploy Contracts

```bash
# Deploy to Sepolia testnet
npx hardhat run scripts/deploy.js --network sepolia

# Deploy to Mainnet (use with caution)
npx hardhat run scripts/deploy.js --network mainnet
```

### Run the Frontend

```bash
cd nft_mint_frontend
npm install
npm start
```

The DApp opens at [http://localhost:3000](http://localhost:3000).

---

## 💡 How to Use

1. **Connect Wallet** — click "Connect" and approve MetaMask. Make sure you're on the same network where the contract is deployed.
2. **Upload Artwork** — choose an image file. The DApp pins it to IPFS and gets a content hash.
3. **Add Metadata** — give your NFT a name and description. The DApp builds a metadata JSON and pins it to IPFS.
4. **Mint** — click "Mint NFT". MetaMask asks you to sign the transaction. Pay gas, wait for confirmation.
5. **View** — your new NFT appears in your wallet and is visible on OpenSea (testnet or mainnet) under your address.

---

## 🔐 Security Considerations

- **OpenZeppelin foundations** — built on audited ERC-721 and Ownable primitives
- **Solidity 0.8.x** — built-in overflow / underflow protection
- **Access-controlled mint** — owner-only or open mint (configurable)
- **`.env` excluded** from git via `.gitignore` — keys never enter the repo
- **MetaMask signing** — keys never leave the user's browser

> ⚠️ This is a reference DApp for learning and prototyping. Get a professional audit before deploying mint contracts that handle real value on mainnet.

---

## 🗺️ Roadmap

- [ ] Lazy minting (gasless mint, buyer pays when claimed)
- [ ] Allowlist / Merkle-proof gated mint
- [ ] Multiple mint phases (Pre-sale → Public)
- [ ] Royalty support via EIP-2981
- [ ] Reveal mechanism (placeholder URI → real metadata after reveal)
- [ ] Subgraph for tracking mints and owners
- [ ] Tailwind UI refresh + dark mode

---

## 📚 Tech Stack

- **Smart Contracts:** Solidity 0.8.x
- **Framework:** Hardhat
- **Standard:** ERC-721 (OpenZeppelin)
- **Frontend:** React.js · Ethers.js · MetaMask
- **Storage:** IPFS (for images + metadata JSON)
- **Network:** Ethereum (Sepolia / Mainnet)

---

## 🤝 Contributing

Contributions are welcome! Open-source thrives on community input.

1. Fork the project
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

MIT © [Amalendu Suresh](https://github.com/amalendusuresh)

---

## 🤝 Contact

**Amalendu Suresh** — Blockchain Engineer

- 💼 **LinkedIn:** [amalendu-blockchain](https://www.linkedin.com/in/amalendu-blockchain/)
- ✍️ **Medium:** [@amalenduvishnu](https://medium.com/@amalenduvishnu)
- 📧 **Email:** amalendusuresh95@gmail.com

If you find this project useful, please ⭐ star the repo!
