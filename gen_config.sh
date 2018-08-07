#!/bin/bash

cat  << EOF
rpcuser=$USER
rpcpassword=$PASSWORD
rpcallowip=$RPCALLOW
rpcport=36964
txindex=1
addnode=202.182.107.127:36963
addnode=185.205.210.36:36963
addnode=45.76.117.173:36963
addnode=172.245.36.4:36963
addnode=107.174.133.144:36963
addnode=172.245.36.202:36963
addnode=159.89.110.156:36963

EOF