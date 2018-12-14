#!/bin/bash
set -eux

set -x
set -o nounset
set -o errexit

mydir="$(dirname $0)"

source "$mydir/../common.sh"

kubectl apply -f "$mydir/manifests/node.yaml"
kubectl apply -f "$mydir/manifests/controller.yaml"
