# Your Solution

#!/bin/bash

# Deleting the Kubernetes deployment
kubectl delete -f ./scripts/kubernetes/deployment.yaml

echo "Kubernetes deployment has been deleted."
