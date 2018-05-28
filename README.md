# docker-anucoin
Wallet and daemon for AnuCoin [ANU] cryptocurrency on docker

# Quickstart
Type `docker run -it joshendriks/anucoin` and see the wallet starting.

```
Docker AnuCoin wallet

By: Jos Hendriks
GitHub: https://github.com/joshendriks/
Docker: https://hub.docker.com/r/joshendriks/

BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk
ANU: ALQp1z7bFiHNTCETcshGvhjYxnpERCrwGG

Starting ANU daemon...
```

# Proper start
Use a volume to store all data. The image stores it's data in `/data`. So mapping that volume will do the trick.

Additionally you can override the config and wallet file using volumes pointing to `/config/AnuCoin.conf` and `/config/wallet.data`

# Donations:
BTC: 1NCZgpMMoNwL6ZeFsEQ2kRZEzzzTd5TuGk

ANU: ALQp1z7bFiHNTCETcshGvhjYxnpERCrwGG

# License
MIT, see LICENSE file