#!/usr/bin/env bash
set -euo pipefail
NAMESPACE="${NAMESPACE:-platform-demo}"
DEPLOYMENT="${DEPLOYMENT:-platform-target}"
kubectl scale deployment "$DEPLOYMENT" -n "$NAMESPACE" --replicas=0
sleep 10
kubectl scale deployment "$DEPLOYMENT" -n "$NAMESPACE" --replicas=2
kubectl rollout status deployment "$DEPLOYMENT" -n "$NAMESPACE" --timeout=120s
echo "Recovery validation completed."
