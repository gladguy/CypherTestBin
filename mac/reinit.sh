#!/bin/bash

systemctl stop cypher.service
sleep 2

./run.sh cleandb 1
./run.sh init 1

systemctl start cypher.service
sleep .5

systemctl status cypher.service -l
sleep .5

./build/bin/cypher attach chaindb/1/cypher.ipc
