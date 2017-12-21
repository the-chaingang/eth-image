#!/bin/bash

sleep 30

ENODE_FILE=$(ls -1 /opt/enode-registry | head -n 1 | sed -e "s/\(.\+\)/\/opt\/enode-registry\/\1/")
BOOTNODE_URL=$(cat $ENODE_FILE)

geth --datadir /opt/datadir --networkid $NETWORK_ID --bootnodes "$BOOTNODE_URL"