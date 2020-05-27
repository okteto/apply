#!/bin/sh
set -e

manifest=$1
namespace=$2
params=""
if [ ! -z $namespace ]; then
params="--namespace $namespace"
fi

echo running: kubectl apply -f $manifest $params
kubectl apply -f $manifest $params