#!/bin/bash
set -eux

mydir="$(dirname $0)"
kubectl delete -f "$mydir/manifests/node.yaml"
kubectl delete -f "$mydir/manifests/controller.yaml"
