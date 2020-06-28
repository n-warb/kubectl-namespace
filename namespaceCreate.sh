#// Copyright 2020 nw1984

#!/usr/bin/env bash

function kubectlns() {
  ctx=`kubectl config current-context`
  ns=$1

  # verify that the namespace exists
  ns=`kubectl get namespace $1 --no-headers --output=go-template={{.metadata.name}} 2>/dev/null`
  if [ -z "${ns}" ]; then
    echo "Namespace (${1}) not found, creating"
    kubectl create namespace ${1}
  else
    echo "Namespace (${1}) already exists"
  fi
}

kubectlns $1
