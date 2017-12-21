#!/bin/bash

geth --datadir /opt/datadir init /opt/genesis/genesis.json

geth --datadir /opt/datadir --networkid $NETWORK_ID