# NFT Minting DApp


**Building NFT Minting DApp from Scratch**



**1. To start the project we will use the hardhat** 

       - npm init -y

       - npm add hardhat -D

       - npx hardhat

       - npx hardhat test
       
       

**2. Connect Metamask & Alchemy** 

  - Download and create a Metamask account.

  - Once you have an account, make sure to switch to the "Goerli Test Network" in the upper right.

  - Acquire some GoerliETH
  

  From Alchemy's dashboard,

    1. Hover over the Apps drop-down menu and choose Create App

    2. Provide a Name and Description for your app.

    3. For Chain, select Ethereum and for Network select Goerli.

    4. Click the Create App button.

    5. Click on app's View Key button in the dashboard and save the API KEY

**3. Update .env file in the root directory** 

      API\_URL = "https://eth-goerli.g.alchemy.com/v2/your-api-key"

      PRIVATE\_KEY = "your-metamask-private-key"

**4. Deployment script** 

scripts/deploy.js

  - Provide baseTokenURI - the link of the image that is stored IPFS/cloud

  - Here, we used Pinata for storing the image.

  - Write the deployment script as per your contract details..

**5. Compile and Deploy** 

       - npx hardhat compile

       - npx hardhat run scripts/deploy.js --network goerli

  OR

       - Compile and deploy via Remix IDE.

**6. Frontend Implementation** 

         - npx create-react-app nft\_mint\_frontend

         - cd nft\_mint\_frontend

         - npm start

**7. Getting contract ABI and address** 

  - To find your ABI file, go to your hardhat project and navigate to

        artifacts\contracts\nftMint.sol\nftMint.json

        Contract address - will get from step 5

**8. Update src\App.js** 

  - Give your personalized details so that the webpage looks so..

  - In mintNftHandler - update the mint function - same as your contract mint function

**9. Update App.css files** 

  - Style your webpage in src\App.css

**10. Start the development server** 

         - npm start 
  
