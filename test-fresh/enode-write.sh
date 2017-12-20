#!/bin/bash

sleep 15

geth --exec 'admin.nodeInfo.enode' attach ipc:/opt/datadir/geth.ipc > "/opt/enode-registry/$(date +%s).enode"
