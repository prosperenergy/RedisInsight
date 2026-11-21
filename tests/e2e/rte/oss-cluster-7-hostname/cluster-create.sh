#!/bin/sh

echo 'Try to sleep for a while...'
sleep 25
echo 'Creating cluster with hostname-announced nodes...'
echo "yes" | valkey-cli \
  --cluster create \
  172.31.100.231:6379 \
  172.31.100.232:6379 \
  172.31.100.233:6379 \
  --cluster-replicas 0 \
  && valkey-server
