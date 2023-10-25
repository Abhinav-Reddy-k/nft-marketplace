require('@nomiclabs/hardhat-waffle');

module.exports = {
  networks: {
    localhost: {
      url: "http://localhost:8545",
      chainId: 31337 
    },
  },
  solidity: '0.8.4',
};
