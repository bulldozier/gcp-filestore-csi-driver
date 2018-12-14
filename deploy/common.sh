#!/bin/bash

set -o nounset

export GCFS_SA_DIR="${GCFS_SA_DIR:-$HOME}"
# If you override the file name, then kubernetes/controller.yaml must also be
# updated
export GCFS_SA_FILE="$GCFS_SA_DIR/gcp_filestore_csi_driver_sa.json"
export GCFS_SA_NAME=gcp-filestore-csi-driver-sa
export GCFS_NS=gcp-filestore-csi-driver
