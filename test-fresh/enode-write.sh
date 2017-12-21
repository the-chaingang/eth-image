#!/bin/bash

sleep 15

geth --exec 'admin.nodeInfo.enode' attach ipc:/opt/datadir/geth.ipc | \
    sed "s/\"enode:\/\/\(.*\)\@\[\:\:\]\(.*\)\"/enode\:\/\/\1\@$HOST_NAME\2/" > \
    "/opt/enode-registry/$(date +%s).enode"