#!/bin/bash
set -eux

mydir="$(dirname $0)"
source $mydir/../common.sh
kubectl delete secret gcp-filestore-csi-driver-sa --namespace=$GCFS_NS
kubectl delete -f "$mydir/manifests/setup_cluster.yaml"
