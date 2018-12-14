#!/bin/sh
set -eux

set -o errexit

trap "{ exit 0 }" TERM

service rpcbind start
service nfs-common start

sleep infinity
