#!/bin/bash
echo "Docker AnuCoin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/ 

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
ANU: ALQp1z7bFiHNTCETcshGvhjYxnpERCrwGG"

config="/config/AnuCoin.conf"
if [ -f "$config" ]
then
    echo "Using $config"
    cp $config /data/.AnuCoin/AnuCoin.conf
fi

wallet="/config/wallet.dat"
if [ -f "$wallet" ]
then
    echo "Using $wallet"
    cp $wallet /data/.AnuCoin/wallet.dat
fi

echo "Starting ANU daemon..."
AnuCoind
