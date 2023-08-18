#!/bin/bash

if [ ! -f /root/.ethereum/password.txt ]; then
  echo "No password file found. Creating an account..."
  geth account new --datadir /root/.ethereum --password /root/.ethereum/password.txt
fi

if [ ! -f /root/.ethereum/geth/chaindata/LOCK ]; then
  echo "Initializing geth..."
  geth --datadir /root/.ethereum init /root/.ethereum/genesis.json
fi

geth --datadir /root/.ethereum --networkid 1337 --rpc --rpcaddr 0.0.0.0 --rpcport 8545 --nodiscover
