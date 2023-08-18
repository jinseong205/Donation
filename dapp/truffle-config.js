// dapp/truffle-config.js
module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 8545,
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.8.0", // 사용하는 Solidity 버전에 맞게 변경
      optimizer: {
        enabled: true,
        runs: 200,
      },
    },
  },
};
