#!/bin/sh

mkdir -p /run/openrc
touch /run/openrc/softlevel
rc-update add nfs
rc-update add rpc.statd
rc-service nfs start

while true; do
    sleep 60
    ps -ef
done
